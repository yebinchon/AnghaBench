; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dispatch.c_got_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dispatch.c_got_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protocol = type { i32, %struct.interface_info* }
%struct.interface_info = type { i32, i32, i32, i64 }
%struct.sockaddr_in = type { i32, i32 }
%struct.hardware = type { i32 }
%struct.iaddr = type { i32, i32 }
%union.anon = type { %struct.dhcp_packet, [4092 x i8] }
%struct.dhcp_packet = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"receive_packet failed on %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Interface %s no longer appears valid.\00", align 1
@interfaces_invalidated = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @got_one(%struct.protocol* %0) #0 {
  %2 = alloca %struct.protocol*, align 8
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca %struct.hardware, align 4
  %5 = alloca %struct.iaddr, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.anon, align 4
  %8 = alloca %struct.interface_info*, align 8
  store %struct.protocol* %0, %struct.protocol** %2, align 8
  %9 = load %struct.protocol*, %struct.protocol** %2, align 8
  %10 = getelementptr inbounds %struct.protocol, %struct.protocol* %9, i32 0, i32 1
  %11 = load %struct.interface_info*, %struct.interface_info** %10, align 8
  store %struct.interface_info* %11, %struct.interface_info** %8, align 8
  %12 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %13 = bitcast %union.anon* %7 to [4095 x i8]*
  %14 = getelementptr inbounds [4095 x i8], [4095 x i8]* %13, i64 0, i64 0
  %15 = call i32 @receive_packet(%struct.interface_info* %12, i8* %14, i32 4096, %struct.sockaddr_in* %3, %struct.hardware* %4)
  store i32 %15, i32* %6, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %57

17:                                               ; preds = %1
  %18 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %19 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @errno, align 4
  %22 = call i32 @strerror(i32 %21)
  %23 = call i32 (i8*, i32, ...) @warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %22)
  %24 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %25 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %29 = call i32 @interface_status(%struct.interface_info* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %17
  %32 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %33 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %31
  %37 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %38 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 20
  br i1 %40, label %41, label %56

41:                                               ; preds = %36, %17
  %42 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %43 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i8*, i32, ...) @warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %47 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  store i32 1, i32* @interfaces_invalidated, align 4
  %48 = load %struct.protocol*, %struct.protocol** %2, align 8
  %49 = getelementptr inbounds %struct.protocol, %struct.protocol* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @close(i32 %50)
  %52 = load %struct.protocol*, %struct.protocol** %2, align 8
  %53 = call i32 @remove_protocol(%struct.protocol* %52)
  %54 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %55 = call i32 @free(%struct.interface_info* %54)
  br label %56

56:                                               ; preds = %41, %36, %31
  br label %78

57:                                               ; preds = %1
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %78

61:                                               ; preds = %57
  br i1 true, label %62, label %78

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %5, i32 0, i32 0
  store i32 4, i32* %63, align 4
  %64 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %5, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  %67 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %5, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @memcpy(i32 %65, i32* %66, i32 %68)
  %70 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %71 = bitcast %union.anon* %7 to %struct.dhcp_packet*
  %72 = load i32, i32* %6, align 4
  %73 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = bitcast %struct.iaddr* %5 to i64*
  %76 = load i64, i64* %75, align 4
  %77 = call i32 @bootp_packet_handler(%struct.interface_info* %70, %struct.dhcp_packet* %71, i32 %72, i32 %74, i64 %76, %struct.hardware* %4)
  br label %78

78:                                               ; preds = %56, %60, %62, %61
  ret void
}

declare dso_local i32 @receive_packet(%struct.interface_info*, i8*, i32, %struct.sockaddr_in*, %struct.hardware*) #1

declare dso_local i32 @warning(i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @interface_status(%struct.interface_info*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @remove_protocol(%struct.protocol*) #1

declare dso_local i32 @free(%struct.interface_info*) #1

declare dso_local i32 @bootp_packet_handler(%struct.interface_info*, %struct.dhcp_packet*, i32, i32, i64, %struct.hardware*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

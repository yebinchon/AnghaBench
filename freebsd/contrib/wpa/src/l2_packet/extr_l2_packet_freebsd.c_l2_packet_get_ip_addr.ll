; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_freebsd.c_l2_packet_get_ip_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_freebsd.c_l2_packet_get_ip_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2_packet_data = type { i32 }
%struct.TYPE_4__ = type { %struct.pcap_addr*, i32, %struct.TYPE_4__* }
%struct.pcap_addr = type { %struct.pcap_addr*, i64 }
%struct.sockaddr_in = type { i64, i32 }

@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"pcap_findalldevs: %s\0A\00", align 1
@AF_INET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l2_packet_get_ip_addr(%struct.l2_packet_data* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.l2_packet_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.pcap_addr*, align 8
  %11 = alloca %struct.sockaddr_in*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.l2_packet_data* %0, %struct.l2_packet_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = call i64 @pcap_findalldevs(%struct.TYPE_4__** %8, i8* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %91

26:                                               ; preds = %3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %9, align 8
  br label %28

28:                                               ; preds = %80, %26
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %30 = icmp ne %struct.TYPE_4__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i1 [ false, %28 ], [ %34, %31 ]
  br i1 %36, label %37, label %84

37:                                               ; preds = %35
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.l2_packet_data*, %struct.l2_packet_data** %5, align 8
  %42 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @os_strcmp(i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %80

47:                                               ; preds = %37
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.pcap_addr*, %struct.pcap_addr** %49, align 8
  store %struct.pcap_addr* %50, %struct.pcap_addr** %10, align 8
  br label %51

51:                                               ; preds = %75, %47
  %52 = load %struct.pcap_addr*, %struct.pcap_addr** %10, align 8
  %53 = icmp ne %struct.pcap_addr* %52, null
  br i1 %53, label %54, label %79

54:                                               ; preds = %51
  %55 = load %struct.pcap_addr*, %struct.pcap_addr** %10, align 8
  %56 = getelementptr inbounds %struct.pcap_addr, %struct.pcap_addr* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %58, %struct.sockaddr_in** %11, align 8
  %59 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %60 = icmp ne %struct.sockaddr_in* %59, null
  br i1 %60, label %61, label %75

61:                                               ; preds = %54
  %62 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %63 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @AF_INET, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load i8*, i8** %6, align 8
  %69 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %70 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @inet_ntoa(i32 %71)
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @os_strlcpy(i8* %68, i32 %72, i64 %73)
  store i32 1, i32* %12, align 4
  br label %79

75:                                               ; preds = %61, %54
  %76 = load %struct.pcap_addr*, %struct.pcap_addr** %10, align 8
  %77 = getelementptr inbounds %struct.pcap_addr, %struct.pcap_addr* %76, i32 0, i32 0
  %78 = load %struct.pcap_addr*, %struct.pcap_addr** %77, align 8
  store %struct.pcap_addr* %78, %struct.pcap_addr** %10, align 8
  br label %51

79:                                               ; preds = %67, %51
  br label %80

80:                                               ; preds = %79, %46
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  store %struct.TYPE_4__* %83, %struct.TYPE_4__** %9, align 8
  br label %28

84:                                               ; preds = %35
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %86 = call i32 @pcap_freealldevs(%struct.TYPE_4__* %85)
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 0, i32 -1
  store i32 %90, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %91

91:                                               ; preds = %84, %23
  %92 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @pcap_findalldevs(%struct.TYPE_4__**, i8*) #2

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #2

declare dso_local i64 @os_strcmp(i32, i32) #2

declare dso_local i32 @os_strlcpy(i8*, i32, i64) #2

declare dso_local i32 @inet_ntoa(i32) #2

declare dso_local i32 @pcap_freealldevs(%struct.TYPE_4__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

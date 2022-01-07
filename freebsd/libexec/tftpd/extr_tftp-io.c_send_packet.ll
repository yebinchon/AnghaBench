; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-io.c_send_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-io.c_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.tftphdr = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"send_packet\00", align 1
@peer_sock = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"%s block %d, attempt %d successful\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"%s block %d, attempt %d failed (Error %d: %s)\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"send_packet: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32)* @send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_packet(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %61, %4
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 12
  br i1 %14, label %15, label %64

15:                                               ; preds = %12
  %16 = call i32 @DROPPACKETn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0)
  %17 = load i32, i32* %6, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @peer_sock, i32 0, i32 0), align 4
  %21 = call i32 @sendto(i32 %17, i8* %18, i32 %19, i32 0, %struct.sockaddr* bitcast (%struct.TYPE_2__* @peer_sock to %struct.sockaddr*), i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %15
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load i32, i32* @LOG_ERR, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = bitcast i8* %29 to %struct.tftphdr*
  %31 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ntohs(i32 %32)
  %34 = call i32 @packettype(i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 (i32, i8*, i32, ...) @tftp_log(i32 %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %27, %24
  store i32 0, i32* %5, align 4
  br label %69

39:                                               ; preds = %15
  %40 = load i32, i32* @LOG_ERR, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = bitcast i8* %41 to %struct.tftphdr*
  %43 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ntohs(i32 %44)
  %46 = call i32 @packettype(i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @errno, align 4
  %50 = load i32, i32* @errno, align 4
  %51 = call i32 @strerror(i32 %50)
  %52 = call i32 (i32, i8*, i32, ...) @tftp_log(i32 %40, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %47, i32 %48, i32 %49, i32 %51)
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @sleep(i32 %53)
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 32
  br i1 %56, label %57, label %60

57:                                               ; preds = %39
  %58 = load i32, i32* %11, align 4
  %59 = shl i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %57, %39
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %12

64:                                               ; preds = %12
  %65 = load i32, i32* @LOG_ERR, align 4
  %66 = load i32, i32* @errno, align 4
  %67 = call i32 @strerror(i32 %66)
  %68 = call i32 (i32, i8*, i32, ...) @tftp_log(i32 %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  store i32 1, i32* %5, align 4
  br label %69

69:                                               ; preds = %64, %38
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @DROPPACKETn(i8*, i32) #1

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @tftp_log(i32, i8*, i32, ...) #1

declare dso_local i32 @packettype(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

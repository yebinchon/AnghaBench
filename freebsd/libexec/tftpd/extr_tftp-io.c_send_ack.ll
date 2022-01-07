; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-io.c_send_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-io.c_send_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.tftphdr = type { i8*, i8* }
%struct.sockaddr = type { i32 }

@MAXPKTSIZE = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEBUG_PACKETS = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Sending ACK for block %d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"send_ack\00", align 1
@ACK = common dso_local global i64 0, align 8
@peer_sock = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"send_ack: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_ack(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.tftphdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %11 = load i32, i32* @MAXPKTSIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32, i32* @debug, align 4
  %16 = load i32, i32* @DEBUG_PACKETS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @LOG_DEBUG, align 4
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @tftp_log(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %21)
  br label %23

23:                                               ; preds = %19, %2
  %24 = call i32 @DROPPACKETn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %25 = bitcast i8* %14 to %struct.tftphdr*
  store %struct.tftphdr* %25, %struct.tftphdr** %6, align 8
  %26 = sub i64 %12, 2
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load i64, i64* @ACK, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i8* @htons(i32 %29)
  %31 = load %struct.tftphdr*, %struct.tftphdr** %6, align 8
  %32 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load i64, i64* %5, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i8* @htons(i32 %34)
  %36 = load %struct.tftphdr*, %struct.tftphdr** %6, align 8
  %37 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  store i32 4, i32* %7, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @peer_sock, i32 0, i32 0), align 4
  %41 = call i32 @sendto(i32 %38, i8* %14, i32 %39, i32 0, %struct.sockaddr* bitcast (%struct.TYPE_2__* @peer_sock to %struct.sockaddr*), i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %23
  %45 = load i32, i32* @LOG_INFO, align 4
  %46 = load i32, i32* @errno, align 4
  %47 = call i64 @strerror(i32 %46)
  %48 = call i32 @tftp_log(i32 %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %50

49:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %50

50:                                               ; preds = %49, %44
  %51 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %51)
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @tftp_log(i32, i8*, i64) #2

declare dso_local i32 @DROPPACKETn(i8*, i32) #2

declare dso_local i8* @htons(i32) #2

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #2

declare dso_local i64 @strerror(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

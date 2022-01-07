; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdate/extr_ntpdate.c_sendpkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdate/extr_ntpdate.c_sendpkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkt = type { i32 }
%struct.sockaddr = type { i32 }

@INVALID_SOCKET = common dso_local global i64 0, align 8
@MAX_AF = common dso_local global i32 0, align 4
@fd_family = common dso_local global i64* null, align 8
@fd = common dso_local global i64* null, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"cannot find family compatible socket to send ntp packet\00", align 1
@SOCKET_ERROR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"sendto(%s): %m\00", align 1
@WSAENOBUFS = common dso_local global i64 0, align 8
@WSAEWOULDBLOCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.pkt*, i32)* @sendpkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sendpkt(i32* %0, %struct.pkt* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pkt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.pkt* %1, %struct.pkt** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* @INVALID_SOCKET, align 8
  store i64 %10, i64* %9, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %31, %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @MAX_AF, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %11
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @AF(i32* %16)
  %18 = load i64*, i64** @fd_family, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %17, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %15
  %25 = load i64*, i64** @fd, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %9, align 8
  br label %34

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %11

34:                                               ; preds = %24, %11
  %35 = load i64, i64* @INVALID_SOCKET, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @LOG_ERR, align 4
  %40 = call i32 (i32, i8*, ...) @msyslog(i32 %39, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 @exit(i32 1) #3
  unreachable

42:                                               ; preds = %34
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.pkt*, %struct.pkt** %5, align 8
  %45 = bitcast %struct.pkt* %44 to i8*
  %46 = load i32, i32* %6, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = bitcast i32* %47 to %struct.sockaddr*
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @SOCKLEN(i32* %49)
  %51 = call i32 @sendto(i64 %43, i8* %45, i32 %46, i32 0, %struct.sockaddr* %48, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* @SOCKET_ERROR, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %42
  %56 = load i64, i64* @errno, align 8
  %57 = load i64, i64* @EWOULDBLOCK, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load i64, i64* @errno, align 8
  %61 = load i64, i64* @ENOBUFS, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32, i32* @LOG_ERR, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @stohost(i32* %65)
  %67 = call i32 (i32, i8*, ...) @msyslog(i32 %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %63, %59, %55
  br label %69

69:                                               ; preds = %68, %42
  ret void
}

declare dso_local i64 @AF(i32*) #1

declare dso_local i32 @msyslog(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sendto(i64, i8*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @SOCKLEN(i32*) #1

declare dso_local i32 @stohost(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

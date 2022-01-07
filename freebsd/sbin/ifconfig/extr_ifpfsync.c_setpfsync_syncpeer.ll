; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifpfsync.c_setpfsync_syncpeer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifpfsync.c_setpfsync_syncpeer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.afswtch = type { i32 }
%struct.pfsyncreq = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.addrinfo = type { %struct.TYPE_7__*, i32, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.sockaddr_in = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ifr = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@SIOCGETPFSYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"SIOCGETPFSYNC\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"error in parsing address string: %s\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"only IPv4 addresses supported for the syncpeer\00", align 1
@SIOCSETPFSYNC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"SIOCSETPFSYNC\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setpfsync_syncpeer(i8* %0, i32 %1, i32 %2, %struct.afswtch* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.afswtch*, align 8
  %9 = alloca %struct.pfsyncreq, align 4
  %10 = alloca %struct.addrinfo, align 8
  %11 = alloca %struct.addrinfo*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.afswtch* %3, %struct.afswtch** %8, align 8
  %13 = bitcast %struct.pfsyncreq* %9 to i8*
  %14 = call i32 @bzero(i8* %13, i32 4)
  %15 = ptrtoint %struct.pfsyncreq* %9 to i64
  store i64 %15, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ifr, i32 0, i32 0), align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @SIOCGETPFSYNC, align 4
  %18 = call i32 @ioctl(i32 %16, i32 %17, i64 ptrtoint (%struct.TYPE_8__* @ifr to i64))
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %4
  %23 = call i32 @memset(%struct.addrinfo* %10, i32 0, i32 24)
  %24 = load i64, i64* @AF_INET, align 8
  %25 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 2
  store i64 %24, i64* %25, align 8
  %26 = load i32, i32* @SOCK_DGRAM, align 4
  %27 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @getaddrinfo(i8* %28, i32* null, %struct.addrinfo* %10, %struct.addrinfo** %11)
  store i32 %29, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @gai_strerror(i32 %32)
  %34 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %22
  %36 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %37 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AF_INET, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %35
  %46 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %47 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = bitcast %struct.TYPE_7__* %48 to %struct.sockaddr_in*
  %50 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.pfsyncreq, %struct.pfsyncreq* %9, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @SIOCSETPFSYNC, align 4
  %57 = call i32 @ioctl(i32 %55, i32 %56, i64 ptrtoint (%struct.TYPE_8__* @ifr to i64))
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %61

59:                                               ; preds = %45
  %60 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %45
  %62 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %63 = call i32 @freeaddrinfo(%struct.addrinfo* %62)
  ret void
}

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @ioctl(i32, i32, i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

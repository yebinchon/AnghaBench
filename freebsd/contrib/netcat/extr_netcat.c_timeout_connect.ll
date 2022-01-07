; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netcat/extr_netcat.c_timeout_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netcat/extr_netcat.c_timeout_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.pollfd = type { i32, i32 }

@timeout = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"set non-blocking mode\00", align 1
@errno = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ERROR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"poll failed\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"restoring flags\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timeout_connect(i32 %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pollfd, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @timeout, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %28

14:                                               ; preds = %3
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @F_GETFL, align 4
  %17 = call i32 @fcntl(i32 %15, i32 %16, i32 0)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @F_SETFL, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @O_NONBLOCK, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @fcntl(i32 %18, i32 %19, i32 %22)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = call i32 @err(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %14
  br label %28

28:                                               ; preds = %27, %3
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @connect(i32 %29, %struct.sockaddr* %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %68

34:                                               ; preds = %28
  %35 = load i32, i32* @errno, align 4
  %36 = load i32, i32* @EINPROGRESS, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %68

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %7, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @POLLOUT, align 4
  %42 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %7, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @timeout, align 4
  %44 = call i32 @poll(%struct.pollfd* %7, i32 1, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %59

46:                                               ; preds = %38
  store i32 4, i32* %8, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @SOL_SOCKET, align 4
  %49 = load i32, i32* @SO_ERROR, align 4
  %50 = call i32 @getsockopt(i32 %47, i32 %48, i32 %49, i32* %10, i32* %8)
  store i32 %50, i32* %11, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* @errno, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 0, i32 -1
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %52, %46
  br label %67

59:                                               ; preds = %38
  %60 = load i32, i32* %11, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %63, i32* @errno, align 4
  store i32 -1, i32* %11, align 4
  br label %66

64:                                               ; preds = %59
  %65 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %62
  br label %67

67:                                               ; preds = %66, %58
  br label %68

68:                                               ; preds = %67, %34, %28
  %69 = load i32, i32* @timeout, align 4
  %70 = icmp ne i32 %69, -1
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @F_SETFL, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @fcntl(i32 %72, i32 %73, i32 %74)
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %71, %68
  %80 = load i32, i32* %11, align 4
  ret i32 %80
}

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @getsockopt(i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

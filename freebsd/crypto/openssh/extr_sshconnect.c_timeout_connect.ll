; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect.c_timeout_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect.c_timeout_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@errno = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"getsockopt: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sockaddr*, i32, i32*)* @timeout_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timeout_connect(i32 %0, %struct.sockaddr* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 4, i32* %11, align 4
  %12 = load i32*, i32** %9, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @connect(i32 %16, %struct.sockaddr* %17, i32 %18)
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %5, align 4
  br label %62

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @set_nonblock(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @connect(i32 %24, %struct.sockaddr* %25, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @unset_nonblock(i32 %30)
  store i32 0, i32* %5, align 4
  br label %62

32:                                               ; preds = %21
  %33 = load i32, i32* @errno, align 4
  %34 = load i32, i32* @EINPROGRESS, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 -1, i32* %5, align 4
  br label %62

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @waitrfd(i32 %39, i32* %40)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 -1, i32* %5, align 4
  br label %62

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @SOL_SOCKET, align 4
  %47 = load i32, i32* @SO_ERROR, align 4
  %48 = call i32 @getsockopt(i32 %45, i32 %46, i32 %47, i32* %10, i32* %11)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* @errno, align 4
  %52 = call i32 @strerror(i32 %51)
  %53 = call i32 @debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %52)
  store i32 -1, i32* %5, align 4
  br label %62

54:                                               ; preds = %44
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %62

59:                                               ; preds = %54
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @unset_nonblock(i32 %60)
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %59, %57, %50, %43, %36, %29, %15
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @set_nonblock(i32) #1

declare dso_local i32 @unset_nonblock(i32) #1

declare dso_local i32 @waitrfd(i32, i32*) #1

declare dso_local i32 @getsockopt(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @debug(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

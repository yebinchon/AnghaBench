; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/mcast/extr_mcast.c_receiver.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/mcast/extr_mcast.c_receiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i64 }
%struct.pollfd = type { i32, i32 }

@bind = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"poll (%s)\00", align 1
@errno = common dso_local global i32 0, align 4
@ss = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"recv (%s)\00", align 1
@debug = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"got\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"seq: expect=%zu actual=%zu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i64, i32, i32)* @receiver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receiver(i32 %0, i8* %1, i8* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.message, align 8
  %17 = alloca %struct.pollfd, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i32, i32* @bind, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @getsocket(i8* %19, i8* %20, i32 %21, i32* %18, i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %17, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @POLLIN, align 4
  %27 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %17, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @synchronize(i32 %28, i32 0)
  store i64 0, i64* %15, align 8
  br label %30

30:                                               ; preds = %79, %6
  %31 = load i64, i64* %15, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %82

34:                                               ; preds = %30
  %35 = call i32 @poll(%struct.pollfd* %17, i32 1, i32 10000)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i32, i32* @EXIT_FAILURE, align 4
  %39 = load i32, i32* @errno, align 4
  %40 = call i32 @strerror(i32 %39)
  %41 = sext i32 %40 to i64
  %42 = call i32 (i32, i8*, i64, ...) @ERRX(i32 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %41)
  br label %43

43:                                               ; preds = %37, %34
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @recv(i32 %47, %struct.message* %16, i32 8, i32 0)
  br label %52

49:                                               ; preds = %43
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @recvfrom(i32 %50, %struct.message* %16, i32 8, i32 0, i8* bitcast (i32* @ss to i8*), i32* %18)
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi i32 [ %48, %46 ], [ %51, %49 ]
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i32, i32* @EXIT_FAILURE, align 4
  %58 = load i32, i32* @errno, align 4
  %59 = call i32 @strerror(i32 %58)
  %60 = sext i32 %59 to i64
  %61 = call i32 (i32, i8*, i64, ...) @ERRX(i32 %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  br label %62

62:                                               ; preds = %56, %52
  %63 = load i64, i64* @debug, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 @show(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %struct.message* %16)
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i64, i64* %15, align 8
  %69 = getelementptr inbounds %struct.message, %struct.message* %16, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %68, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load i32, i32* @EXIT_FAILURE, align 4
  %74 = load i64, i64* %15, align 8
  %75 = getelementptr inbounds %struct.message, %struct.message* %16, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 (i32, i8*, i64, ...) @ERRX(i32 %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %74, i64 %76)
  br label %78

78:                                               ; preds = %72, %67
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %15, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %15, align 8
  br label %30

82:                                               ; preds = %30
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @synchronize(i32 %83, i32 0)
  ret void
}

declare dso_local i32 @getsocket(i8*, i8*, i32, i32*, i32) #1

declare dso_local i32 @synchronize(i32, i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @ERRX(i32, i8*, i64, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @recv(i32, %struct.message*, i32, i32) #1

declare dso_local i32 @recvfrom(i32, %struct.message*, i32, i32, i8*, i32*) #1

declare dso_local i32 @show(i8*, %struct.message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

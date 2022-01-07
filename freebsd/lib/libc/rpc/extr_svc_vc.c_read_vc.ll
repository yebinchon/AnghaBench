; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_vc.c_read_vc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_vc.c_read_vc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.pollfd = type { i32, i32, i32 }
%struct.cf_conn = type { i32, i32, i64 }

@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@POLLIN = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@XPRT_DIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @read_vc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_vc(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pollfd, align 4
  %12 = alloca %struct.cf_conn*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 35000, i32* %10, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %8, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.cf_conn*
  store %struct.cf_conn* %25, %struct.cf_conn** %12, align 8
  %26 = load %struct.cf_conn*, %struct.cf_conn** %12, align 8
  %27 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %3
  %31 = load i32, i32* %9, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = call i32 @_read(i32 %31, i8* %32, i64 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load i64, i64* @errno, align 8
  %40 = load i64, i64* @EAGAIN, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %44

43:                                               ; preds = %38
  br label %91

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %44, %30
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load %struct.cf_conn*, %struct.cf_conn** %12, align 8
  %50 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %49, i32 0, i32 1
  %51 = call i32 @gettimeofday(i32* %50, i32* null)
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %4, align 4
  br label %98

54:                                               ; preds = %3
  br label %55

55:                                               ; preds = %72, %54
  %56 = load i32, i32* %9, align 4
  %57 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %11, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @POLLIN, align 4
  %59 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %11, i32 0, i32 2
  store i32 %58, i32* %59, align 4
  %60 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %11, i32 0, i32 0
  store i32 0, i32* %60, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @_poll(%struct.pollfd* %11, i32 1, i32 %61)
  switch i32 %62, label %70 [
    i32 -1, label %63
    i32 0, label %69
  ]

63:                                               ; preds = %55
  %64 = load i64, i64* @errno, align 8
  %65 = load i64, i64* @EINTR, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %72

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %55, %68
  br label %91

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71, %67
  %73 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %11, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @POLLIN, align 4
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %55, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %9, align 4
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = call i32 @_read(i32 %79, i8* %80, i64 %82)
  store i32 %83, i32* %7, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load %struct.cf_conn*, %struct.cf_conn** %12, align 8
  %87 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %86, i32 0, i32 1
  %88 = call i32 @gettimeofday(i32* %87, i32* null)
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %4, align 4
  br label %98

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90, %69, %43
  %92 = load i32, i32* @XPRT_DIED, align 4
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to %struct.cf_conn*
  %97 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %96, i32 0, i32 0
  store i32 %92, i32* %97, align 8
  store i32 -1, i32* %4, align 4
  br label %98

98:                                               ; preds = %91, %85, %52
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_read(i32, i8*, i64) #1

declare dso_local i32 @gettimeofday(i32*, i32*) #1

declare dso_local i32 @_poll(%struct.pollfd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

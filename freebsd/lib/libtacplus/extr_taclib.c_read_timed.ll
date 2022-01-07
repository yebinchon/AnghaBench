; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_read_timed.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_read_timed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tac_handle = type { i64 }
%struct.timeval = type { i64 }

@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Network read error: %s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"select: %s\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Network read timed out\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"unexpected EOF from server\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tac_handle*, i8*, i64, %struct.timeval*)* @read_timed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_timed(%struct.tac_handle* %0, i8* %1, i64 %2, %struct.timeval* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tac_handle*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.timeval*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.timeval, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.tac_handle* %0, %struct.tac_handle** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.timeval* %3, %struct.timeval** %9, align 8
  %15 = load i8*, i8** %7, align 8
  store i8* %15, i8** %10, align 8
  br label %16

16:                                               ; preds = %87, %4
  %17 = load i64, i64* %8, align 8
  %18 = icmp ugt i64 %17, 0
  br i1 %18, label %19, label %88

19:                                               ; preds = %16
  %20 = load %struct.tac_handle*, %struct.tac_handle** %6, align 8
  %21 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @read(i64 %22, i8* %23, i64 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %71

28:                                               ; preds = %19
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @EAGAIN, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.tac_handle*, %struct.tac_handle** %6, align 8
  %34 = load i64, i64* @errno, align 8
  %35 = call i32 @strerror(i64 %34)
  %36 = call i32 (%struct.tac_handle*, i8*, ...) @generr(%struct.tac_handle* %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 -1, i32* %5, align 4
  br label %89

37:                                               ; preds = %28
  %38 = call i32 @gettimeofday(%struct.timeval* %12, i32* null)
  %39 = load %struct.timeval*, %struct.timeval** %9, align 8
  %40 = call i32 @timersub(%struct.timeval* %39, %struct.timeval* %12, %struct.timeval* %12)
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %37
  %45 = call i32 @FD_ZERO(i32* %14)
  %46 = load %struct.tac_handle*, %struct.tac_handle** %6, align 8
  %47 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @FD_SET(i64 %48, i32* %14)
  %50 = load %struct.tac_handle*, %struct.tac_handle** %6, align 8
  %51 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  %54 = call i32 @select(i64 %53, i32* %14, i32* null, i32* null, %struct.timeval* %12)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %62

57:                                               ; preds = %44
  %58 = load %struct.tac_handle*, %struct.tac_handle** %6, align 8
  %59 = load i64, i64* @errno, align 8
  %60 = call i32 @strerror(i64 %59)
  %61 = call i32 (%struct.tac_handle*, i8*, ...) @generr(%struct.tac_handle* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  store i32 -1, i32* %5, align 4
  br label %89

62:                                               ; preds = %44
  br label %64

63:                                               ; preds = %37
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %63, %62
  %65 = load i32, i32* %13, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct.tac_handle*, %struct.tac_handle** %6, align 8
  %69 = call i32 (%struct.tac_handle*, i8*, ...) @generr(%struct.tac_handle* %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %89

70:                                               ; preds = %64
  br label %87

71:                                               ; preds = %19
  %72 = load i32, i32* %11, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.tac_handle*, %struct.tac_handle** %6, align 8
  %76 = call i32 (%struct.tac_handle*, i8*, ...) @generr(%struct.tac_handle* %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %89

77:                                               ; preds = %71
  %78 = load i32, i32* %11, align 4
  %79 = load i8*, i8** %10, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %8, align 8
  %85 = sub i64 %84, %83
  store i64 %85, i64* %8, align 8
  br label %86

86:                                               ; preds = %77
  br label %87

87:                                               ; preds = %86, %70
  br label %16

88:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %74, %67, %57, %32
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @read(i64, i8*, i64) #1

declare dso_local i32 @generr(%struct.tac_handle*, i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @timersub(%struct.timeval*, %struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

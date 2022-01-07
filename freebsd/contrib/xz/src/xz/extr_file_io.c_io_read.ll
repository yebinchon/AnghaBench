; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_file_io.c_io_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_file_io.c_io_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32* }

@SSIZE_MAX = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@user_abort = common dso_local global i64 0, align 8
@SIZE_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"%s: Read error: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @io_read(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @SSIZE_MAX, align 8
  %14 = icmp ult i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %8, align 8
  %20 = load i64, i64* %7, align 8
  store i64 %20, i64* %9, align 8
  br label %21

21:                                               ; preds = %77, %58, %48, %3
  %22 = load i64, i64* %9, align 8
  %23 = icmp ugt i64 %22, 0
  br i1 %23, label %24, label %86

24:                                               ; preds = %21
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @read(i32 %27, i32* %28, i64 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  br label %86

36:                                               ; preds = %24
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %77

39:                                               ; preds = %36
  %40 = load i64, i64* @errno, align 8
  %41 = load i64, i64* @EINTR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i64, i64* @user_abort, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i64, i64* @SIZE_MAX, align 8
  store i64 %47, i64* %4, align 8
  br label %90

48:                                               ; preds = %43
  br label %21

49:                                               ; preds = %39
  %50 = load i64, i64* @errno, align 8
  %51 = call i64 @IS_EAGAIN_OR_EWOULDBLOCK(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = call i32 (...) @mytime_get_flush_timeout()
  %56 = call i32 @io_wait(%struct.TYPE_7__* %54, i32 %55, i32 1)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  switch i32 %57, label %65 [
    i32 129, label %58
    i32 130, label %59
    i32 128, label %61
  ]

58:                                               ; preds = %53
  br label %21

59:                                               ; preds = %53
  %60 = load i64, i64* @SIZE_MAX, align 8
  store i64 %60, i64* %4, align 8
  br label %90

61:                                               ; preds = %53
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %9, align 8
  %64 = sub i64 %62, %63
  store i64 %64, i64* %4, align 8
  br label %90

65:                                               ; preds = %53
  %66 = call i32 (...) @message_bug()
  br label %67

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %67, %49
  %69 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* @errno, align 8
  %74 = call i32 @strerror(i64 %73)
  %75 = call i32 @message_error(i32 %69, i32 %72, i32 %74)
  %76 = load i64, i64* @SIZE_MAX, align 8
  store i64 %76, i64* %4, align 8
  br label %90

77:                                               ; preds = %36
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = load i32*, i32** %8, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 %79
  store i32* %81, i32** %8, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %9, align 8
  %85 = sub i64 %84, %83
  store i64 %85, i64* %9, align 8
  br label %21

86:                                               ; preds = %33, %21
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* %9, align 8
  %89 = sub i64 %87, %88
  store i64 %89, i64* %4, align 8
  br label %90

90:                                               ; preds = %86, %68, %61, %59, %46
  %91 = load i64, i64* %4, align 8
  ret i64 %91
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read(i32, i32*, i64) #1

declare dso_local i64 @IS_EAGAIN_OR_EWOULDBLOCK(i64) #1

declare dso_local i32 @io_wait(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @mytime_get_flush_timeout(...) #1

declare dso_local i32 @message_bug(...) #1

declare dso_local i32 @message_error(i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

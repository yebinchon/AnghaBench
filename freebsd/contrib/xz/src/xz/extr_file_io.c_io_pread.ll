; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_file_io.c_io_pread.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_file_io.c_io_pread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: Error seeking the file: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: Unexpected end of file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @io_pread(%struct.TYPE_4__* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* %9, align 8
  %15 = load i32, i32* @SEEK_SET, align 4
  %16 = call i64 @lseek(i32 %13, i64 %14, i32 %15)
  %17 = load i64, i64* %9, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %4
  %20 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @errno, align 4
  %25 = call i32 @strerror(i32 %24)
  %26 = call i32 (i32, i32, ...) @message_error(i32 %20, i32 %23, i32 %25)
  store i32 1, i32* %5, align 4
  br label %47

27:                                               ; preds = %4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @io_read(%struct.TYPE_4__* %28, i32* %29, i64 %30)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @SIZE_MAX, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 1, i32* %5, align 4
  br label %47

36:                                               ; preds = %27
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i32, ...) @message_error(i32 %41, i32 %44)
  store i32 1, i32* %5, align 4
  br label %47

46:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %40, %35, %19
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @message_error(i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @io_read(%struct.TYPE_4__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

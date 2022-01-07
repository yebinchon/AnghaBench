; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_file_io.c_io_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_file_io.c_io_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i64 }
%struct.TYPE_7__ = type { i32 }

@IO_BUFFER_SIZE = common dso_local global i64 0, align 8
@SEEK_CUR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"%s: Seeking failed when trying to create a sparse file: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @io_write(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IO_BUFFER_SIZE, align 8
  %10 = icmp ule i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %64

17:                                               ; preds = %3
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @IO_BUFFER_SIZE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = call i64 @is_sparse(%struct.TYPE_7__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, %26
  store i64 %30, i64* %28, align 8
  store i32 0, i32* %4, align 4
  br label %71

31:                                               ; preds = %21
  br label %37

32:                                               ; preds = %17
  %33 = load i64, i64* %7, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %71

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %36, %31
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %37
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @SEEK_CUR, align 4
  %50 = call i32 @lseek(i32 %45, i64 %48, i32 %49)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %60

52:                                               ; preds = %42
  %53 = call i32 @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @errno, align 4
  %58 = call i32 @strerror(i32 %57)
  %59 = call i32 @message_error(i32 %53, i32 %56, i32 %58)
  store i32 1, i32* %4, align 4
  br label %71

60:                                               ; preds = %42
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %60, %37
  br label %64

64:                                               ; preds = %63, %3
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @io_write_buf(%struct.TYPE_8__* %65, i32 %68, i64 %69)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %64, %52, %35, %25
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @is_sparse(%struct.TYPE_7__*) #1

declare dso_local i32 @lseek(i32, i64, i32) #1

declare dso_local i32 @message_error(i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @io_write_buf(%struct.TYPE_8__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

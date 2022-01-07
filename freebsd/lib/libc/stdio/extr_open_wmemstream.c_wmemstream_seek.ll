; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_open_wmemstream.c_wmemstream_seek.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_open_wmemstream.c_wmemstream_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmemstream = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@FPOS_MAX = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i32)* @wmemstream_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wmemstream_seek(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wmemstream*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.wmemstream*
  store %struct.wmemstream* %11, %struct.wmemstream** %8, align 8
  %12 = load %struct.wmemstream*, %struct.wmemstream** %8, align 8
  %13 = getelementptr inbounds %struct.wmemstream, %struct.wmemstream* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %61 [
    i32 128, label %16
    i32 130, label %24
    i32 129, label %29
  ]

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = icmp sge i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.wmemstream*, %struct.wmemstream** %8, align 8
  %23 = getelementptr inbounds %struct.wmemstream, %struct.wmemstream* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %61

24:                                               ; preds = %3
  %25 = load i64, i64* %6, align 8
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  br label %61

29:                                               ; preds = %3
  %30 = load i64, i64* %6, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.wmemstream*, %struct.wmemstream** %8, align 8
  %35 = getelementptr inbounds %struct.wmemstream, %struct.wmemstream* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* @errno, align 4
  store i64 -1, i64* %4, align 8
  br label %77

41:                                               ; preds = %32
  br label %53

42:                                               ; preds = %29
  %43 = load i64, i64* @FPOS_MAX, align 8
  %44 = load %struct.wmemstream*, %struct.wmemstream** %8, align 8
  %45 = getelementptr inbounds %struct.wmemstream, %struct.wmemstream* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  %48 = load i64, i64* %6, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* @EOVERFLOW, align 4
  store i32 %51, i32* @errno, align 4
  store i64 -1, i64* %4, align 8
  br label %77

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %41
  %54 = load %struct.wmemstream*, %struct.wmemstream** %8, align 8
  %55 = getelementptr inbounds %struct.wmemstream, %struct.wmemstream* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = add nsw i64 %56, %57
  %59 = load %struct.wmemstream*, %struct.wmemstream** %8, align 8
  %60 = getelementptr inbounds %struct.wmemstream, %struct.wmemstream* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %3, %53, %24, %16
  %62 = load %struct.wmemstream*, %struct.wmemstream** %8, align 8
  %63 = getelementptr inbounds %struct.wmemstream, %struct.wmemstream* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %9, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.wmemstream*, %struct.wmemstream** %8, align 8
  %69 = getelementptr inbounds %struct.wmemstream, %struct.wmemstream* %68, i32 0, i32 2
  %70 = call i32 @memset(i32* %69, i32 0, i32 4)
  br label %71

71:                                               ; preds = %67, %61
  %72 = load %struct.wmemstream*, %struct.wmemstream** %8, align 8
  %73 = call i32 @wmemstream_update(%struct.wmemstream* %72)
  %74 = load %struct.wmemstream*, %struct.wmemstream** %8, align 8
  %75 = getelementptr inbounds %struct.wmemstream, %struct.wmemstream* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %4, align 8
  br label %77

77:                                               ; preds = %71, %50, %39
  %78 = load i64, i64* %4, align 8
  ret i64 %78
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @wmemstream_update(%struct.wmemstream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

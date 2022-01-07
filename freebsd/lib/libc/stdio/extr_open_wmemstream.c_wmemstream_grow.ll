; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_open_wmemstream.c_wmemstream_grow.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_open_wmemstream.c_wmemstream_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmemstream = type { i32, i32** }

@SSIZE_MAX = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmemstream*, i32)* @wmemstream_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmemstream_grow(%struct.wmemstream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wmemstream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.wmemstream* %0, %struct.wmemstream** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = load i32, i32* @SSIZE_MAX, align 4
  %14 = sext i32 %13 to i64
  %15 = udiv i64 %14, 4
  %16 = icmp uge i64 %12, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %10, %2
  %18 = load i32, i32* @SSIZE_MAX, align 4
  %19 = sext i32 %18 to i64
  %20 = udiv i64 %19, 4
  %21 = sub i64 %20, 1
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %7, align 4
  br label %25

23:                                               ; preds = %10
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %23, %17
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.wmemstream*, %struct.wmemstream** %4, align 8
  %28 = getelementptr inbounds %struct.wmemstream, %struct.wmemstream* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %26, %29
  br i1 %30, label %31, label %63

31:                                               ; preds = %25
  %32 = load %struct.wmemstream*, %struct.wmemstream** %4, align 8
  %33 = getelementptr inbounds %struct.wmemstream, %struct.wmemstream* %32, i32 0, i32 1
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  %38 = call i32* @reallocarray(i32* %35, i32 %37, i32 4)
  store i32* %38, i32** %6, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %62

41:                                               ; preds = %31
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.wmemstream*, %struct.wmemstream** %4, align 8
  %44 = getelementptr inbounds %struct.wmemstream, %struct.wmemstream* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.wmemstream*, %struct.wmemstream** %4, align 8
  %51 = getelementptr inbounds %struct.wmemstream, %struct.wmemstream* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %49, %52
  %54 = call i32 @wmemset(i32* %48, i32 0, i32 %53)
  %55 = load i32*, i32** %6, align 8
  %56 = load %struct.wmemstream*, %struct.wmemstream** %4, align 8
  %57 = getelementptr inbounds %struct.wmemstream, %struct.wmemstream* %56, i32 0, i32 1
  %58 = load i32**, i32*** %57, align 8
  store i32* %55, i32** %58, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.wmemstream*, %struct.wmemstream** %4, align 8
  %61 = getelementptr inbounds %struct.wmemstream, %struct.wmemstream* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  store i32 1, i32* %3, align 4
  br label %64

62:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %64

63:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %62, %41
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32* @reallocarray(i32*, i32, i32) #1

declare dso_local i32 @wmemset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

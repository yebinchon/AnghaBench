; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_open_wmemstream.c_open_wmemstream.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_open_wmemstream.c_open_wmemstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmemstream = type { i64*, i32, i64, i64, %struct.wmemstream** }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@wmemstream_write = common dso_local global i32 0, align 4
@wmemstream_seek = common dso_local global i32 0, align 4
@wmemstream_close = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @open_wmemstream(%struct.wmemstream** %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.wmemstream**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.wmemstream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.wmemstream** %0, %struct.wmemstream*** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load %struct.wmemstream**, %struct.wmemstream*** %4, align 8
  %10 = icmp eq %struct.wmemstream** %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i64*, i64** %5, align 8
  %13 = icmp eq i64* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* @errno, align 4
  store i32* null, i32** %3, align 8
  br label %70

16:                                               ; preds = %11
  %17 = call %struct.wmemstream* @calloc(i32 1, i32 40)
  %18 = load %struct.wmemstream**, %struct.wmemstream*** %4, align 8
  store %struct.wmemstream* %17, %struct.wmemstream** %18, align 8
  %19 = load %struct.wmemstream**, %struct.wmemstream*** %4, align 8
  %20 = load %struct.wmemstream*, %struct.wmemstream** %19, align 8
  %21 = icmp eq %struct.wmemstream* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32* null, i32** %3, align 8
  br label %70

23:                                               ; preds = %16
  %24 = call %struct.wmemstream* @malloc(i32 40)
  store %struct.wmemstream* %24, %struct.wmemstream** %6, align 8
  %25 = load %struct.wmemstream*, %struct.wmemstream** %6, align 8
  %26 = icmp eq %struct.wmemstream* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i32, i32* @errno, align 4
  store i32 %28, i32* %7, align 4
  %29 = load %struct.wmemstream**, %struct.wmemstream*** %4, align 8
  %30 = load %struct.wmemstream*, %struct.wmemstream** %29, align 8
  %31 = call i32 @free(%struct.wmemstream* %30)
  %32 = load %struct.wmemstream**, %struct.wmemstream*** %4, align 8
  store %struct.wmemstream* null, %struct.wmemstream** %32, align 8
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* @errno, align 4
  store i32* null, i32** %3, align 8
  br label %70

34:                                               ; preds = %23
  %35 = load %struct.wmemstream**, %struct.wmemstream*** %4, align 8
  %36 = load %struct.wmemstream*, %struct.wmemstream** %6, align 8
  %37 = getelementptr inbounds %struct.wmemstream, %struct.wmemstream* %36, i32 0, i32 4
  store %struct.wmemstream** %35, %struct.wmemstream*** %37, align 8
  %38 = load i64*, i64** %5, align 8
  %39 = load %struct.wmemstream*, %struct.wmemstream** %6, align 8
  %40 = getelementptr inbounds %struct.wmemstream, %struct.wmemstream* %39, i32 0, i32 0
  store i64* %38, i64** %40, align 8
  %41 = load %struct.wmemstream*, %struct.wmemstream** %6, align 8
  %42 = getelementptr inbounds %struct.wmemstream, %struct.wmemstream* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.wmemstream*, %struct.wmemstream** %6, align 8
  %44 = getelementptr inbounds %struct.wmemstream, %struct.wmemstream* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.wmemstream*, %struct.wmemstream** %6, align 8
  %46 = getelementptr inbounds %struct.wmemstream, %struct.wmemstream* %45, i32 0, i32 1
  %47 = call i32 @memset(i32* %46, i32 0, i32 4)
  %48 = load %struct.wmemstream*, %struct.wmemstream** %6, align 8
  %49 = call i32 @wmemstream_update(%struct.wmemstream* %48)
  %50 = load %struct.wmemstream*, %struct.wmemstream** %6, align 8
  %51 = load i32, i32* @wmemstream_write, align 4
  %52 = load i32, i32* @wmemstream_seek, align 4
  %53 = load i32, i32* @wmemstream_close, align 4
  %54 = call i32* @funopen(%struct.wmemstream* %50, i32* null, i32 %51, i32 %52, i32 %53)
  store i32* %54, i32** %8, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %34
  %58 = load i32, i32* @errno, align 4
  store i32 %58, i32* %7, align 4
  %59 = load %struct.wmemstream*, %struct.wmemstream** %6, align 8
  %60 = call i32 @free(%struct.wmemstream* %59)
  %61 = load %struct.wmemstream**, %struct.wmemstream*** %4, align 8
  %62 = load %struct.wmemstream*, %struct.wmemstream** %61, align 8
  %63 = call i32 @free(%struct.wmemstream* %62)
  %64 = load %struct.wmemstream**, %struct.wmemstream*** %4, align 8
  store %struct.wmemstream* null, %struct.wmemstream** %64, align 8
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* @errno, align 4
  store i32* null, i32** %3, align 8
  br label %70

66:                                               ; preds = %34
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @fwide(i32* %67, i32 1)
  %69 = load i32*, i32** %8, align 8
  store i32* %69, i32** %3, align 8
  br label %70

70:                                               ; preds = %66, %57, %27, %22, %14
  %71 = load i32*, i32** %3, align 8
  ret i32* %71
}

declare dso_local %struct.wmemstream* @calloc(i32, i32) #1

declare dso_local %struct.wmemstream* @malloc(i32) #1

declare dso_local i32 @free(%struct.wmemstream*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @wmemstream_update(%struct.wmemstream*) #1

declare dso_local i32* @funopen(%struct.wmemstream*, i32*, i32, i32, i32) #1

declare dso_local i32 @fwide(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

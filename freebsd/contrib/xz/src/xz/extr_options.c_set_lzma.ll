; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_options.c_set_lzma.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_options.c_set_lzma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@LZMA_PRESET_EXTREME = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i8*)* @set_lzma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_lzma(i8* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %9, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %108 [
    i32 128, label %14
    i32 135, label %76
    i32 134, label %80
    i32 133, label %84
    i32 129, label %88
    i32 131, label %92
    i32 130, label %96
    i32 132, label %100
    i32 136, label %104
  ]

14:                                               ; preds = %4
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp slt i32 %18, 48
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sgt i32 %24, 57
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %14
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @error_lzma_preset(i8* %27)
  br label %29

29:                                               ; preds = %26, %20
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = sub nsw i32 %33, 48
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %10, align 1
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %29
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 101
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load i8, i8* @LZMA_PRESET_EXTREME, align 1
  %49 = sext i8 %48 to i32
  %50 = load i8, i8* %10, align 1
  %51 = sext i8 %50 to i32
  %52 = or i32 %51, %49
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %10, align 1
  br label %57

54:                                               ; preds = %41
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @error_lzma_preset(i8* %55)
  br label %57

57:                                               ; preds = %54, %47
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @error_lzma_preset(i8* %64)
  br label %66

66:                                               ; preds = %63, %57
  br label %67

67:                                               ; preds = %66, %29
  %68 = load i8*, i8** %5, align 8
  %69 = load i8, i8* %10, align 1
  %70 = call i32 @lzma_lzma_preset(i8* %68, i8 signext %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @error_lzma_preset(i8* %73)
  br label %75

75:                                               ; preds = %72, %67
  br label %108

76:                                               ; preds = %4
  %77 = load i8*, i8** %7, align 8
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 7
  store i8* %77, i8** %79, align 8
  br label %108

80:                                               ; preds = %4
  %81 = load i8*, i8** %7, align 8
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 6
  store i8* %81, i8** %83, align 8
  br label %108

84:                                               ; preds = %4
  %85 = load i8*, i8** %7, align 8
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 5
  store i8* %85, i8** %87, align 8
  br label %108

88:                                               ; preds = %4
  %89 = load i8*, i8** %7, align 8
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 4
  store i8* %89, i8** %91, align 8
  br label %108

92:                                               ; preds = %4
  %93 = load i8*, i8** %7, align 8
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 3
  store i8* %93, i8** %95, align 8
  br label %108

96:                                               ; preds = %4
  %97 = load i8*, i8** %7, align 8
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  br label %108

100:                                              ; preds = %4
  %101 = load i8*, i8** %7, align 8
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  br label %108

104:                                              ; preds = %4
  %105 = load i8*, i8** %7, align 8
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 8
  br label %108

108:                                              ; preds = %4, %104, %100, %96, %92, %88, %84, %80, %76, %75
  ret void
}

declare dso_local i32 @error_lzma_preset(i8*) #1

declare dso_local i32 @lzma_lzma_preset(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

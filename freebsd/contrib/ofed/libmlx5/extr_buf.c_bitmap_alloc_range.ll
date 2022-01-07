; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_buf.c_bitmap_alloc_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_buf.c_bitmap_alloc_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_bitmap = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_bitmap*, i32, i32)* @bitmap_alloc_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_alloc_range(%struct.mlx5_bitmap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_bitmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx5_bitmap* %0, %struct.mlx5_bitmap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %5, align 8
  %18 = call i32 @mlx5_bitmap_alloc(%struct.mlx5_bitmap* %17)
  store i32 %18, i32* %4, align 4
  br label %131

19:                                               ; preds = %13, %3
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %5, align 8
  %22 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %131

26:                                               ; preds = %19
  %27 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %5, align 8
  %28 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %5, align 8
  %31 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %5, align 8
  %34 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @find_aligned_range(i32 %29, i32 %32, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %5, align 8
  %41 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %39, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %26
  %45 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %5, align 8
  %46 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %5, align 8
  %49 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %47, %50
  %52 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %5, align 8
  %53 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %51, %54
  %56 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %5, align 8
  %57 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %5, align 8
  %59 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %5, align 8
  %62 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @find_aligned_range(i32 %60, i32 0, i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %44, %26
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %5, align 8
  %70 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %119

73:                                               ; preds = %67
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %86, %73
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %74
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %79, %80
  %82 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %5, align 8
  %83 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @mlx5_set_bit(i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %78
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %74

89:                                               ; preds = %74
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %5, align 8
  %92 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %90, %93
  br i1 %94, label %95, label %112

95:                                               ; preds = %89
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %96, %97
  %99 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %5, align 8
  %100 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %5, align 8
  %102 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %5, align 8
  %105 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp sge i32 %103, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %95
  %109 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %5, align 8
  %110 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %109, i32 0, i32 1
  store i32 0, i32* %110, align 4
  br label %111

111:                                              ; preds = %108, %95
  br label %112

112:                                              ; preds = %111, %89
  %113 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %5, align 8
  %114 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %8, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %9, align 4
  br label %120

119:                                              ; preds = %67
  store i32 -1, i32* %9, align 4
  br label %120

120:                                              ; preds = %119, %112
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, -1
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %5, align 8
  %126 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = sub nsw i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %123, %120
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %129, %25, %16
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @mlx5_bitmap_alloc(%struct.mlx5_bitmap*) #1

declare dso_local i32 @find_aligned_range(i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx5_set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

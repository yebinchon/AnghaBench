; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_buf.c_mlx5_free_actual_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_buf.c_mlx5_free_actual_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_context = type { i32 }
%struct.mlx5_buf = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Bad allocation type\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_free_actual_buf(%struct.mlx5_context* %0, %struct.mlx5_buf* %1) #0 {
  %3 = alloca %struct.mlx5_context*, align 8
  %4 = alloca %struct.mlx5_buf*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_context* %0, %struct.mlx5_context** %3, align 8
  store %struct.mlx5_buf* %1, %struct.mlx5_buf** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.mlx5_buf*, %struct.mlx5_buf** %4, align 8
  %7 = getelementptr inbounds %struct.mlx5_buf, %struct.mlx5_buf* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %20 [
    i32 130, label %9
    i32 128, label %12
    i32 129, label %16
  ]

9:                                                ; preds = %2
  %10 = load %struct.mlx5_buf*, %struct.mlx5_buf** %4, align 8
  %11 = call i32 @mlx5_free_buf(%struct.mlx5_buf* %10)
  br label %23

12:                                               ; preds = %2
  %13 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %14 = load %struct.mlx5_buf*, %struct.mlx5_buf** %4, align 8
  %15 = call i32 @free_huge_buf(%struct.mlx5_context* %13, %struct.mlx5_buf* %14)
  br label %23

16:                                               ; preds = %2
  %17 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %18 = load %struct.mlx5_buf*, %struct.mlx5_buf** %4, align 8
  %19 = call i32 @mlx5_free_buf_contig(%struct.mlx5_context* %17, %struct.mlx5_buf* %18)
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %16, %12, %9
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @mlx5_free_buf(%struct.mlx5_buf*) #1

declare dso_local i32 @free_huge_buf(%struct.mlx5_context*, %struct.mlx5_buf*) #1

declare dso_local i32 @mlx5_free_buf_contig(%struct.mlx5_context*, %struct.mlx5_buf*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

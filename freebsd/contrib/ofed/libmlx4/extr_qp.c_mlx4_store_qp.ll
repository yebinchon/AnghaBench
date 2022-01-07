; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_qp.c_mlx4_store_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_qp.c_mlx4_store_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_context = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlx4_qp**, i32 }
%struct.mlx4_qp = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_store_qp(%struct.mlx4_context* %0, i32 %1, %struct.mlx4_qp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_qp*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx4_context* %0, %struct.mlx4_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mlx4_qp* %2, %struct.mlx4_qp** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.mlx4_context*, %struct.mlx4_context** %5, align 8
  %11 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, 1
  %14 = and i32 %9, %13
  %15 = load %struct.mlx4_context*, %struct.mlx4_context** %5, align 8
  %16 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %14, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.mlx4_context*, %struct.mlx4_context** %5, align 8
  %20 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %52, label %28

28:                                               ; preds = %3
  %29 = load %struct.mlx4_context*, %struct.mlx4_context** %5, align 8
  %30 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  %33 = call %struct.mlx4_qp** @calloc(i32 %32, i32 8)
  %34 = load %struct.mlx4_context*, %struct.mlx4_context** %5, align 8
  %35 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store %struct.mlx4_qp** %33, %struct.mlx4_qp*** %40, align 8
  %41 = load %struct.mlx4_context*, %struct.mlx4_context** %5, align 8
  %42 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %41, i32 0, i32 3
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.mlx4_qp**, %struct.mlx4_qp*** %47, align 8
  %49 = icmp ne %struct.mlx4_qp** %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %28
  store i32 -1, i32* %4, align 4
  br label %78

51:                                               ; preds = %28
  br label %52

52:                                               ; preds = %51, %3
  %53 = load %struct.mlx4_context*, %struct.mlx4_context** %5, align 8
  %54 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %53, i32 0, i32 3
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.mlx4_qp*, %struct.mlx4_qp** %7, align 8
  %63 = load %struct.mlx4_context*, %struct.mlx4_context** %5, align 8
  %64 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %63, i32 0, i32 3
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load %struct.mlx4_qp**, %struct.mlx4_qp*** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.mlx4_context*, %struct.mlx4_context** %5, align 8
  %73 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %71, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.mlx4_qp*, %struct.mlx4_qp** %70, i64 %76
  store %struct.mlx4_qp* %62, %struct.mlx4_qp** %77, align 8
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %52, %50
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.mlx4_qp** @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

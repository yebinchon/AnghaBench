; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_srq.c_mlx4_store_xsrq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_srq.c_mlx4_store_xsrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_xsrq_table = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlx4_srq**, i32 }
%struct.mlx4_srq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_store_xsrq(%struct.mlx4_xsrq_table* %0, i32 %1, %struct.mlx4_srq* %2) #0 {
  %4 = alloca %struct.mlx4_xsrq_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_srq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx4_xsrq_table* %0, %struct.mlx4_xsrq_table** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mlx4_srq* %2, %struct.mlx4_srq** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.mlx4_xsrq_table*, %struct.mlx4_xsrq_table** %4, align 8
  %11 = getelementptr inbounds %struct.mlx4_xsrq_table, %struct.mlx4_xsrq_table* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, 1
  %14 = and i32 %9, %13
  %15 = load %struct.mlx4_xsrq_table*, %struct.mlx4_xsrq_table** %4, align 8
  %16 = getelementptr inbounds %struct.mlx4_xsrq_table, %struct.mlx4_xsrq_table* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %14, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.mlx4_xsrq_table*, %struct.mlx4_xsrq_table** %4, align 8
  %20 = getelementptr inbounds %struct.mlx4_xsrq_table, %struct.mlx4_xsrq_table* %19, i32 0, i32 3
  %21 = call i32 @pthread_mutex_lock(i32* %20)
  %22 = load %struct.mlx4_xsrq_table*, %struct.mlx4_xsrq_table** %4, align 8
  %23 = getelementptr inbounds %struct.mlx4_xsrq_table, %struct.mlx4_xsrq_table* %22, i32 0, i32 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %55, label %31

31:                                               ; preds = %3
  %32 = load %struct.mlx4_xsrq_table*, %struct.mlx4_xsrq_table** %4, align 8
  %33 = getelementptr inbounds %struct.mlx4_xsrq_table, %struct.mlx4_xsrq_table* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  %36 = call %struct.mlx4_srq** @calloc(i32 %35, i32 8)
  %37 = load %struct.mlx4_xsrq_table*, %struct.mlx4_xsrq_table** %4, align 8
  %38 = getelementptr inbounds %struct.mlx4_xsrq_table, %struct.mlx4_xsrq_table* %37, i32 0, i32 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store %struct.mlx4_srq** %36, %struct.mlx4_srq*** %43, align 8
  %44 = load %struct.mlx4_xsrq_table*, %struct.mlx4_xsrq_table** %4, align 8
  %45 = getelementptr inbounds %struct.mlx4_xsrq_table, %struct.mlx4_xsrq_table* %44, i32 0, i32 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.mlx4_srq**, %struct.mlx4_srq*** %50, align 8
  %52 = icmp ne %struct.mlx4_srq** %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %31
  store i32 -1, i32* %8, align 4
  br label %81

54:                                               ; preds = %31
  br label %55

55:                                               ; preds = %54, %3
  %56 = load %struct.mlx4_xsrq_table*, %struct.mlx4_xsrq_table** %4, align 8
  %57 = getelementptr inbounds %struct.mlx4_xsrq_table, %struct.mlx4_xsrq_table* %56, i32 0, i32 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  %65 = load %struct.mlx4_srq*, %struct.mlx4_srq** %6, align 8
  %66 = load %struct.mlx4_xsrq_table*, %struct.mlx4_xsrq_table** %4, align 8
  %67 = getelementptr inbounds %struct.mlx4_xsrq_table, %struct.mlx4_xsrq_table* %66, i32 0, i32 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load %struct.mlx4_srq**, %struct.mlx4_srq*** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.mlx4_xsrq_table*, %struct.mlx4_xsrq_table** %4, align 8
  %76 = getelementptr inbounds %struct.mlx4_xsrq_table, %struct.mlx4_xsrq_table* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %74, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.mlx4_srq*, %struct.mlx4_srq** %73, i64 %79
  store %struct.mlx4_srq* %65, %struct.mlx4_srq** %80, align 8
  br label %81

81:                                               ; preds = %55, %53
  %82 = load %struct.mlx4_xsrq_table*, %struct.mlx4_xsrq_table** %4, align 8
  %83 = getelementptr inbounds %struct.mlx4_xsrq_table, %struct.mlx4_xsrq_table* %82, i32 0, i32 3
  %84 = call i32 @pthread_mutex_unlock(i32* %83)
  %85 = load i32, i32* %8, align 4
  ret i32 %85
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local %struct.mlx4_srq** @calloc(i32, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

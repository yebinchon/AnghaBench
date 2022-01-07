; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_cq.c_mlx4_cq_resize_copy_cqes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_cq.c_mlx4_cq_resize_copy_cqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_cq = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_cqe = type { i32 }

@MLX4_CQE_OPCODE_MASK = common dso_local global i32 0, align 4
@MLX4_CQE_OPCODE_RESIZE = common dso_local global i32 0, align 4
@MLX4_CQE_OWNER_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_cq_resize_copy_cqes(%struct.mlx4_cq* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_cq*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_cqe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx4_cq* %0, %struct.mlx4_cq** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %11 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 64
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 1, i32 0
  store i32 %15, i32* %9, align 4
  %16 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %17 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %20, %21
  %23 = call %struct.mlx4_cqe* @get_cqe(%struct.mlx4_cq* %19, i32 %22)
  store %struct.mlx4_cqe* %23, %struct.mlx4_cqe** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %7, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %25, i64 %26
  store %struct.mlx4_cqe* %27, %struct.mlx4_cqe** %7, align 8
  br label %28

28:                                               ; preds = %55, %3
  %29 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %7, align 8
  %30 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MLX4_CQE_OPCODE_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @MLX4_CQE_OPCODE_RESIZE, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %94

36:                                               ; preds = %28
  %37 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %7, align 8
  %38 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MLX4_CQE_OWNER_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  %45 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %46 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  %50 = and i32 %44, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %36
  %53 = load i32, i32* @MLX4_CQE_OWNER_MASK, align 4
  br label %55

54:                                               ; preds = %36
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ %53, %52 ], [ 0, %54 ]
  %57 = or i32 %42, %56
  %58 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %7, align 8
  %59 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  %63 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %64 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %62, %66
  %68 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %69 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %67, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr i8, i8* %60, i64 %72
  %74 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %7, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = sub i64 0, %76
  %78 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %74, i64 %77
  %79 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %80 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @memcpy(i8* %73, %struct.mlx4_cqe* %78, i32 %81)
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  %85 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %6, align 4
  %88 = and i32 %86, %87
  %89 = call %struct.mlx4_cqe* @get_cqe(%struct.mlx4_cq* %85, i32 %88)
  store %struct.mlx4_cqe* %89, %struct.mlx4_cqe** %7, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %7, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %91, i64 %92
  store %struct.mlx4_cqe* %93, %struct.mlx4_cqe** %7, align 8
  br label %28

94:                                               ; preds = %28
  %95 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %96 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  ret void
}

declare dso_local %struct.mlx4_cqe* @get_cqe(%struct.mlx4_cq*, i32) #1

declare dso_local i32 @memcpy(i8*, %struct.mlx4_cqe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_mlx4.c_mlx4_uninit_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_mlx4.c_mlx4_uninit_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.verbs_device = type { i32 }
%struct.ibv_context = type { i32 }
%struct.mlx4_context = type { %struct.TYPE_3__, i64, i64, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.verbs_device*, %struct.ibv_context*)* @mlx4_uninit_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_uninit_context(%struct.verbs_device* %0, %struct.ibv_context* %1) #0 {
  %3 = alloca %struct.verbs_device*, align 8
  %4 = alloca %struct.ibv_context*, align 8
  %5 = alloca %struct.mlx4_context*, align 8
  store %struct.verbs_device* %0, %struct.verbs_device** %3, align 8
  store %struct.ibv_context* %1, %struct.ibv_context** %4, align 8
  %6 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %7 = call %struct.mlx4_context* @to_mctx(%struct.ibv_context* %6)
  store %struct.mlx4_context* %7, %struct.mlx4_context** %5, align 8
  %8 = load %struct.mlx4_context*, %struct.mlx4_context** %5, align 8
  %9 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.verbs_device*, %struct.verbs_device** %3, align 8
  %12 = getelementptr inbounds %struct.verbs_device, %struct.verbs_device* %11, i32 0, i32 0
  %13 = call %struct.TYPE_4__* @to_mdev(i32* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @munmap(i64 %10, i32 %15)
  %17 = load %struct.mlx4_context*, %struct.mlx4_context** %5, align 8
  %18 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load %struct.mlx4_context*, %struct.mlx4_context** %5, align 8
  %23 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.verbs_device*, %struct.verbs_device** %3, align 8
  %26 = getelementptr inbounds %struct.verbs_device, %struct.verbs_device* %25, i32 0, i32 0
  %27 = call %struct.TYPE_4__* @to_mdev(i32* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @munmap(i64 %24, i32 %29)
  br label %31

31:                                               ; preds = %21, %2
  %32 = load %struct.mlx4_context*, %struct.mlx4_context** %5, align 8
  %33 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = load %struct.mlx4_context*, %struct.mlx4_context** %5, align 8
  %38 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.mlx4_context*, %struct.mlx4_context** %5, align 8
  %41 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %39, %43
  %45 = load %struct.verbs_device*, %struct.verbs_device** %3, align 8
  %46 = getelementptr inbounds %struct.verbs_device, %struct.verbs_device* %45, i32 0, i32 0
  %47 = call %struct.TYPE_4__* @to_mdev(i32* %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @munmap(i64 %44, i32 %49)
  br label %51

51:                                               ; preds = %36, %31
  ret void
}

declare dso_local %struct.mlx4_context* @to_mctx(%struct.ibv_context*) #1

declare dso_local i32 @munmap(i64, i32) #1

declare dso_local %struct.TYPE_4__* @to_mdev(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

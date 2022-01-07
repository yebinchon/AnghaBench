; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_mlx5.c_adjust_uar_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_mlx5.c_adjust_uar_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_device = type { i32 }
%struct.mlx5_context = type { i32, i32 }
%struct.mlx5_alloc_ucontext_resp = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_device*, %struct.mlx5_context*, i64)* @adjust_uar_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_uar_info(%struct.mlx5_device* %0, %struct.mlx5_context* %1, i64 %2) #0 {
  %4 = alloca %struct.mlx5_alloc_ucontext_resp, align 4
  %5 = alloca %struct.mlx5_device*, align 8
  %6 = alloca %struct.mlx5_context*, align 8
  %7 = bitcast %struct.mlx5_alloc_ucontext_resp* %4 to i64*
  store i64 %2, i64* %7, align 4
  store %struct.mlx5_device* %0, %struct.mlx5_device** %5, align 8
  store %struct.mlx5_context* %1, %struct.mlx5_context** %6, align 8
  %8 = getelementptr inbounds %struct.mlx5_alloc_ucontext_resp, %struct.mlx5_alloc_ucontext_resp* %4, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.mlx5_alloc_ucontext_resp, %struct.mlx5_alloc_ucontext_resp* %4, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = load %struct.mlx5_device*, %struct.mlx5_device** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5_device, %struct.mlx5_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mlx5_context*, %struct.mlx5_context** %6, align 8
  %20 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.mlx5_context*, %struct.mlx5_context** %6, align 8
  %22 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  br label %33

23:                                               ; preds = %11, %3
  %24 = getelementptr inbounds %struct.mlx5_alloc_ucontext_resp, %struct.mlx5_alloc_ucontext_resp* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 1, %25
  %27 = load %struct.mlx5_context*, %struct.mlx5_context** %6, align 8
  %28 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = getelementptr inbounds %struct.mlx5_alloc_ucontext_resp, %struct.mlx5_alloc_ucontext_resp* %4, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mlx5_context*, %struct.mlx5_context** %6, align 8
  %32 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %23, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

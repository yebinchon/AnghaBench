; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_alloc_mw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_alloc_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_mw = type { i32 }
%struct.ibv_pd = type { i32 }
%struct.ibv_alloc_mw = type { i32 }
%struct.ibv_alloc_mw_resp = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibv_mw* @mlx4_alloc_mw(%struct.ibv_pd* %0, i32 %1) #0 {
  %3 = alloca %struct.ibv_mw*, align 8
  %4 = alloca %struct.ibv_pd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ibv_mw*, align 8
  %7 = alloca %struct.ibv_alloc_mw, align 4
  %8 = alloca %struct.ibv_alloc_mw_resp, align 4
  %9 = alloca i32, align 4
  store %struct.ibv_pd* %0, %struct.ibv_pd** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = call %struct.ibv_mw* @calloc(i32 1, i32 4)
  store %struct.ibv_mw* %10, %struct.ibv_mw** %6, align 8
  %11 = load %struct.ibv_mw*, %struct.ibv_mw** %6, align 8
  %12 = icmp ne %struct.ibv_mw* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.ibv_mw* null, %struct.ibv_mw** %3, align 8
  br label %26

14:                                               ; preds = %2
  %15 = load %struct.ibv_pd*, %struct.ibv_pd** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.ibv_mw*, %struct.ibv_mw** %6, align 8
  %18 = call i32 @ibv_cmd_alloc_mw(%struct.ibv_pd* %15, i32 %16, %struct.ibv_mw* %17, %struct.ibv_alloc_mw* %7, i32 4, %struct.ibv_alloc_mw_resp* %8, i32 4)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.ibv_mw*, %struct.ibv_mw** %6, align 8
  %23 = call i32 @free(%struct.ibv_mw* %22)
  store %struct.ibv_mw* null, %struct.ibv_mw** %3, align 8
  br label %26

24:                                               ; preds = %14
  %25 = load %struct.ibv_mw*, %struct.ibv_mw** %6, align 8
  store %struct.ibv_mw* %25, %struct.ibv_mw** %3, align 8
  br label %26

26:                                               ; preds = %24, %21, %13
  %27 = load %struct.ibv_mw*, %struct.ibv_mw** %3, align 8
  ret %struct.ibv_mw* %27
}

declare dso_local %struct.ibv_mw* @calloc(i32, i32) #1

declare dso_local i32 @ibv_cmd_alloc_mw(%struct.ibv_pd*, i32, %struct.ibv_mw*, %struct.ibv_alloc_mw*, i32, %struct.ibv_alloc_mw_resp*, i32) #1

declare dso_local i32 @free(%struct.ibv_mw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

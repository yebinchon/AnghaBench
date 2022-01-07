; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_open_xrcd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_open_xrcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_xrcd = type { i32 }
%struct.ibv_context = type { i32 }
%struct.ibv_xrcd_init_attr = type { i32 }
%struct.ibv_open_xrcd = type { i32 }
%struct.ibv_open_xrcd_resp = type { i32 }
%struct.verbs_xrcd = type { %struct.ibv_xrcd }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibv_xrcd* @mlx4_open_xrcd(%struct.ibv_context* %0, %struct.ibv_xrcd_init_attr* %1) #0 {
  %3 = alloca %struct.ibv_xrcd*, align 8
  %4 = alloca %struct.ibv_context*, align 8
  %5 = alloca %struct.ibv_xrcd_init_attr*, align 8
  %6 = alloca %struct.ibv_open_xrcd, align 4
  %7 = alloca %struct.ibv_open_xrcd_resp, align 4
  %8 = alloca %struct.verbs_xrcd*, align 8
  %9 = alloca i32, align 4
  store %struct.ibv_context* %0, %struct.ibv_context** %4, align 8
  store %struct.ibv_xrcd_init_attr* %1, %struct.ibv_xrcd_init_attr** %5, align 8
  %10 = call %struct.verbs_xrcd* @calloc(i32 1, i32 4)
  store %struct.verbs_xrcd* %10, %struct.verbs_xrcd** %8, align 8
  %11 = load %struct.verbs_xrcd*, %struct.verbs_xrcd** %8, align 8
  %12 = icmp ne %struct.verbs_xrcd* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.ibv_xrcd* null, %struct.ibv_xrcd** %3, align 8
  br label %28

14:                                               ; preds = %2
  %15 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %16 = load %struct.verbs_xrcd*, %struct.verbs_xrcd** %8, align 8
  %17 = load %struct.ibv_xrcd_init_attr*, %struct.ibv_xrcd_init_attr** %5, align 8
  %18 = call i32 @ibv_cmd_open_xrcd(%struct.ibv_context* %15, %struct.verbs_xrcd* %16, i32 4, %struct.ibv_xrcd_init_attr* %17, %struct.ibv_open_xrcd* %6, i32 4, %struct.ibv_open_xrcd_resp* %7, i32 4)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %25

22:                                               ; preds = %14
  %23 = load %struct.verbs_xrcd*, %struct.verbs_xrcd** %8, align 8
  %24 = getelementptr inbounds %struct.verbs_xrcd, %struct.verbs_xrcd* %23, i32 0, i32 0
  store %struct.ibv_xrcd* %24, %struct.ibv_xrcd** %3, align 8
  br label %28

25:                                               ; preds = %21
  %26 = load %struct.verbs_xrcd*, %struct.verbs_xrcd** %8, align 8
  %27 = call i32 @free(%struct.verbs_xrcd* %26)
  store %struct.ibv_xrcd* null, %struct.ibv_xrcd** %3, align 8
  br label %28

28:                                               ; preds = %25, %22, %13
  %29 = load %struct.ibv_xrcd*, %struct.ibv_xrcd** %3, align 8
  ret %struct.ibv_xrcd* %29
}

declare dso_local %struct.verbs_xrcd* @calloc(i32, i32) #1

declare dso_local i32 @ibv_cmd_open_xrcd(%struct.ibv_context*, %struct.verbs_xrcd*, i32, %struct.ibv_xrcd_init_attr*, %struct.ibv_open_xrcd*, i32, %struct.ibv_open_xrcd_resp*, i32) #1

declare dso_local i32 @free(%struct.verbs_xrcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

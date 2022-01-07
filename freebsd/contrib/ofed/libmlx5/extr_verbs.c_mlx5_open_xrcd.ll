; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_open_xrcd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_open_xrcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_xrcd = type { i32 }
%struct.ibv_context = type { i32 }
%struct.ibv_xrcd_init_attr = type { i32 }
%struct.verbs_xrcd = type { %struct.ibv_xrcd }
%struct.ibv_open_xrcd = type { i32 }
%struct.ibv_open_xrcd_resp = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibv_xrcd* @mlx5_open_xrcd(%struct.ibv_context* %0, %struct.ibv_xrcd_init_attr* %1) #0 {
  %3 = alloca %struct.ibv_xrcd*, align 8
  %4 = alloca %struct.ibv_context*, align 8
  %5 = alloca %struct.ibv_xrcd_init_attr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.verbs_xrcd*, align 8
  %8 = alloca %struct.ibv_open_xrcd, align 4
  %9 = alloca %struct.ibv_open_xrcd_resp, align 4
  store %struct.ibv_context* %0, %struct.ibv_context** %4, align 8
  store %struct.ibv_xrcd_init_attr* %1, %struct.ibv_xrcd_init_attr** %5, align 8
  %10 = bitcast %struct.ibv_open_xrcd* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = bitcast %struct.ibv_open_xrcd_resp* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = call %struct.verbs_xrcd* @calloc(i32 1, i32 4)
  store %struct.verbs_xrcd* %12, %struct.verbs_xrcd** %7, align 8
  %13 = load %struct.verbs_xrcd*, %struct.verbs_xrcd** %7, align 8
  %14 = icmp ne %struct.verbs_xrcd* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.ibv_xrcd* null, %struct.ibv_xrcd** %3, align 8
  br label %29

16:                                               ; preds = %2
  %17 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %18 = load %struct.verbs_xrcd*, %struct.verbs_xrcd** %7, align 8
  %19 = load %struct.ibv_xrcd_init_attr*, %struct.ibv_xrcd_init_attr** %5, align 8
  %20 = call i32 @ibv_cmd_open_xrcd(%struct.ibv_context* %17, %struct.verbs_xrcd* %18, i32 4, %struct.ibv_xrcd_init_attr* %19, %struct.ibv_open_xrcd* %8, i32 4, %struct.ibv_open_xrcd_resp* %9, i32 4)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.verbs_xrcd*, %struct.verbs_xrcd** %7, align 8
  %25 = call i32 @free(%struct.verbs_xrcd* %24)
  store %struct.ibv_xrcd* null, %struct.ibv_xrcd** %3, align 8
  br label %29

26:                                               ; preds = %16
  %27 = load %struct.verbs_xrcd*, %struct.verbs_xrcd** %7, align 8
  %28 = getelementptr inbounds %struct.verbs_xrcd, %struct.verbs_xrcd* %27, i32 0, i32 0
  store %struct.ibv_xrcd* %28, %struct.ibv_xrcd** %3, align 8
  br label %29

29:                                               ; preds = %26, %23, %15
  %30 = load %struct.ibv_xrcd*, %struct.ibv_xrcd** %3, align 8
  ret %struct.ibv_xrcd* %30
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.verbs_xrcd* @calloc(i32, i32) #2

declare dso_local i32 @ibv_cmd_open_xrcd(%struct.ibv_context*, %struct.verbs_xrcd*, i32, %struct.ibv_xrcd_init_attr*, %struct.ibv_open_xrcd*, i32, %struct.ibv_open_xrcd_resp*, i32) #2

declare dso_local i32 @free(%struct.verbs_xrcd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

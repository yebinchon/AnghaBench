; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_verbs.c_c4iw_alloc_pd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_verbs.c_c4iw_alloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_pd = type { i32 }
%struct.ibv_context = type { i32 }
%struct.ibv_alloc_pd = type { i32 }
%struct.c4iw_alloc_pd_resp = type { i32 }
%struct.c4iw_pd = type { %struct.ibv_pd }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibv_pd* @c4iw_alloc_pd(%struct.ibv_context* %0) #0 {
  %2 = alloca %struct.ibv_pd*, align 8
  %3 = alloca %struct.ibv_context*, align 8
  %4 = alloca %struct.ibv_alloc_pd, align 4
  %5 = alloca %struct.c4iw_alloc_pd_resp, align 4
  %6 = alloca %struct.c4iw_pd*, align 8
  store %struct.ibv_context* %0, %struct.ibv_context** %3, align 8
  %7 = call %struct.c4iw_pd* @malloc(i32 4)
  store %struct.c4iw_pd* %7, %struct.c4iw_pd** %6, align 8
  %8 = load %struct.c4iw_pd*, %struct.c4iw_pd** %6, align 8
  %9 = icmp ne %struct.c4iw_pd* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.ibv_pd* null, %struct.ibv_pd** %2, align 8
  br label %24

11:                                               ; preds = %1
  %12 = load %struct.ibv_context*, %struct.ibv_context** %3, align 8
  %13 = load %struct.c4iw_pd*, %struct.c4iw_pd** %6, align 8
  %14 = getelementptr inbounds %struct.c4iw_pd, %struct.c4iw_pd* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.c4iw_alloc_pd_resp, %struct.c4iw_alloc_pd_resp* %5, i32 0, i32 0
  %16 = call i64 @ibv_cmd_alloc_pd(%struct.ibv_context* %12, %struct.ibv_pd* %14, %struct.ibv_alloc_pd* %4, i32 4, i32* %15, i32 4)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load %struct.c4iw_pd*, %struct.c4iw_pd** %6, align 8
  %20 = call i32 @free(%struct.c4iw_pd* %19)
  store %struct.ibv_pd* null, %struct.ibv_pd** %2, align 8
  br label %24

21:                                               ; preds = %11
  %22 = load %struct.c4iw_pd*, %struct.c4iw_pd** %6, align 8
  %23 = getelementptr inbounds %struct.c4iw_pd, %struct.c4iw_pd* %22, i32 0, i32 0
  store %struct.ibv_pd* %23, %struct.ibv_pd** %2, align 8
  br label %24

24:                                               ; preds = %21, %18, %10
  %25 = load %struct.ibv_pd*, %struct.ibv_pd** %2, align 8
  ret %struct.ibv_pd* %25
}

declare dso_local %struct.c4iw_pd* @malloc(i32) #1

declare dso_local i64 @ibv_cmd_alloc_pd(%struct.ibv_context*, %struct.ibv_pd*, %struct.ibv_alloc_pd*, i32, i32*, i32) #1

declare dso_local i32 @free(%struct.c4iw_pd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_compat-1_0.c___ibv_alloc_pd_1_0.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_compat-1_0.c___ibv_alloc_pd_1_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_pd_1_0 = type { %struct.ibv_pd*, %struct.ibv_context_1_0* }
%struct.ibv_pd = type { i32 }
%struct.ibv_context_1_0 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibv_pd_1_0* @__ibv_alloc_pd_1_0(%struct.ibv_context_1_0* %0) #0 {
  %2 = alloca %struct.ibv_pd_1_0*, align 8
  %3 = alloca %struct.ibv_context_1_0*, align 8
  %4 = alloca %struct.ibv_pd*, align 8
  %5 = alloca %struct.ibv_pd_1_0*, align 8
  store %struct.ibv_context_1_0* %0, %struct.ibv_context_1_0** %3, align 8
  %6 = call %struct.ibv_pd_1_0* @malloc(i32 16)
  store %struct.ibv_pd_1_0* %6, %struct.ibv_pd_1_0** %5, align 8
  %7 = load %struct.ibv_pd_1_0*, %struct.ibv_pd_1_0** %5, align 8
  %8 = icmp ne %struct.ibv_pd_1_0* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.ibv_pd_1_0* null, %struct.ibv_pd_1_0** %2, align 8
  br label %28

10:                                               ; preds = %1
  %11 = load %struct.ibv_context_1_0*, %struct.ibv_context_1_0** %3, align 8
  %12 = getelementptr inbounds %struct.ibv_context_1_0, %struct.ibv_context_1_0* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ibv_pd* @ibv_alloc_pd(i32 %13)
  store %struct.ibv_pd* %14, %struct.ibv_pd** %4, align 8
  %15 = load %struct.ibv_pd*, %struct.ibv_pd** %4, align 8
  %16 = icmp ne %struct.ibv_pd* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = load %struct.ibv_pd_1_0*, %struct.ibv_pd_1_0** %5, align 8
  %19 = call i32 @free(%struct.ibv_pd_1_0* %18)
  store %struct.ibv_pd_1_0* null, %struct.ibv_pd_1_0** %2, align 8
  br label %28

20:                                               ; preds = %10
  %21 = load %struct.ibv_context_1_0*, %struct.ibv_context_1_0** %3, align 8
  %22 = load %struct.ibv_pd_1_0*, %struct.ibv_pd_1_0** %5, align 8
  %23 = getelementptr inbounds %struct.ibv_pd_1_0, %struct.ibv_pd_1_0* %22, i32 0, i32 1
  store %struct.ibv_context_1_0* %21, %struct.ibv_context_1_0** %23, align 8
  %24 = load %struct.ibv_pd*, %struct.ibv_pd** %4, align 8
  %25 = load %struct.ibv_pd_1_0*, %struct.ibv_pd_1_0** %5, align 8
  %26 = getelementptr inbounds %struct.ibv_pd_1_0, %struct.ibv_pd_1_0* %25, i32 0, i32 0
  store %struct.ibv_pd* %24, %struct.ibv_pd** %26, align 8
  %27 = load %struct.ibv_pd_1_0*, %struct.ibv_pd_1_0** %5, align 8
  store %struct.ibv_pd_1_0* %27, %struct.ibv_pd_1_0** %2, align 8
  br label %28

28:                                               ; preds = %20, %17, %9
  %29 = load %struct.ibv_pd_1_0*, %struct.ibv_pd_1_0** %2, align 8
  ret %struct.ibv_pd_1_0* %29
}

declare dso_local %struct.ibv_pd_1_0* @malloc(i32) #1

declare dso_local %struct.ibv_pd* @ibv_alloc_pd(i32) #1

declare dso_local i32 @free(%struct.ibv_pd_1_0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

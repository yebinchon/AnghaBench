; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c___ibv_alloc_pd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c___ibv_alloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_pd = type { %struct.ibv_context* }
%struct.ibv_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibv_pd* @__ibv_alloc_pd(%struct.ibv_context* %0) #0 {
  %2 = alloca %struct.ibv_context*, align 8
  %3 = alloca %struct.ibv_pd*, align 8
  store %struct.ibv_context* %0, %struct.ibv_context** %2, align 8
  %4 = load %struct.ibv_context*, %struct.ibv_context** %2, align 8
  %5 = getelementptr inbounds %struct.ibv_context, %struct.ibv_context* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = bitcast {}** %6 to %struct.ibv_pd* (%struct.ibv_context*)**
  %8 = load %struct.ibv_pd* (%struct.ibv_context*)*, %struct.ibv_pd* (%struct.ibv_context*)** %7, align 8
  %9 = load %struct.ibv_context*, %struct.ibv_context** %2, align 8
  %10 = call %struct.ibv_pd* %8(%struct.ibv_context* %9)
  store %struct.ibv_pd* %10, %struct.ibv_pd** %3, align 8
  %11 = load %struct.ibv_pd*, %struct.ibv_pd** %3, align 8
  %12 = icmp ne %struct.ibv_pd* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.ibv_context*, %struct.ibv_context** %2, align 8
  %15 = load %struct.ibv_pd*, %struct.ibv_pd** %3, align 8
  %16 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %15, i32 0, i32 0
  store %struct.ibv_context* %14, %struct.ibv_context** %16, align 8
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.ibv_pd*, %struct.ibv_pd** %3, align 8
  ret %struct.ibv_pd* %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

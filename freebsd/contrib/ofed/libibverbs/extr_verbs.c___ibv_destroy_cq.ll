; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c___ibv_destroy_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c___ibv_destroy_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq = type { %struct.TYPE_5__*, %struct.ibv_comp_channel* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { {}* }
%struct.ibv_comp_channel = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ibv_destroy_cq(%struct.ibv_cq* %0) #0 {
  %2 = alloca %struct.ibv_cq*, align 8
  %3 = alloca %struct.ibv_comp_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.ibv_cq* %0, %struct.ibv_cq** %2, align 8
  %5 = load %struct.ibv_cq*, %struct.ibv_cq** %2, align 8
  %6 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %5, i32 0, i32 1
  %7 = load %struct.ibv_comp_channel*, %struct.ibv_comp_channel** %6, align 8
  store %struct.ibv_comp_channel* %7, %struct.ibv_comp_channel** %3, align 8
  %8 = load %struct.ibv_cq*, %struct.ibv_cq** %2, align 8
  %9 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to i32 (%struct.ibv_cq*)**
  %14 = load i32 (%struct.ibv_cq*)*, i32 (%struct.ibv_cq*)** %13, align 8
  %15 = load %struct.ibv_cq*, %struct.ibv_cq** %2, align 8
  %16 = call i32 %14(%struct.ibv_cq* %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.ibv_comp_channel*, %struct.ibv_comp_channel** %3, align 8
  %18 = icmp ne %struct.ibv_comp_channel* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %19
  %23 = load %struct.ibv_comp_channel*, %struct.ibv_comp_channel** %3, align 8
  %24 = getelementptr inbounds %struct.ibv_comp_channel, %struct.ibv_comp_channel* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = call i32 @pthread_mutex_lock(i32* %26)
  %28 = load %struct.ibv_comp_channel*, %struct.ibv_comp_channel** %3, align 8
  %29 = getelementptr inbounds %struct.ibv_comp_channel, %struct.ibv_comp_channel* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 8
  %32 = load %struct.ibv_comp_channel*, %struct.ibv_comp_channel** %3, align 8
  %33 = getelementptr inbounds %struct.ibv_comp_channel, %struct.ibv_comp_channel* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = call i32 @pthread_mutex_unlock(i32* %35)
  br label %37

37:                                               ; preds = %22, %19
  br label %38

38:                                               ; preds = %37, %1
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

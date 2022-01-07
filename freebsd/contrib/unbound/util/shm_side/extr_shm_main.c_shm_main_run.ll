; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/shm_side/extr_shm_main.c_shm_main_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/shm_side/extr_shm_main.c_shm_main_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { i32, %struct.TYPE_15__*, %struct.TYPE_18__ }
%struct.TYPE_15__ = type { i64, %struct.TYPE_13__*, %struct.TYPE_17__, %struct.TYPE_17__, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { i32*, i32* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_10__ = type { %struct.ub_shm_stat_info*, %struct.ub_stats_info* }
%struct.ub_shm_stat_info = type { %struct.TYPE_14__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i64, i64, i32, i32, i32, i32 }
%struct.ub_stats_info = type { double }
%struct.TYPE_18__ = type { %struct.TYPE_12__*, i32*, %struct.TYPE_16__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i64, i64 }

@VERB_DETAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shm_main_run(%struct.worker* %0) #0 {
  %2 = alloca %struct.worker*, align 8
  store %struct.worker* %0, %struct.worker** %2, align 8
  %3 = load %struct.worker*, %struct.worker** %2, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

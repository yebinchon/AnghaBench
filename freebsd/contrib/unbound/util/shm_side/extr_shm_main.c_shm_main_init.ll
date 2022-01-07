; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/shm_side/extr_shm_main.c_shm_main_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/shm_side/extr_shm_main.c_shm_main_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.daemon = type { i32, %struct.shm_main_info*, %struct.TYPE_2__* }
%struct.shm_main_info = type { i64, i64, i64, i8*, i8* }
%struct.TYPE_2__ = type { i64, i64, i32 }

@IPC_CREAT = common dso_local global i32 0, align 4
@IPC_RMID = common dso_local global i32 0, align 4
@SHM_R = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shm_main_init(%struct.daemon* %0) #0 {
  %2 = alloca %struct.daemon*, align 8
  store %struct.daemon* %0, %struct.daemon** %2, align 8
  %3 = load %struct.daemon*, %struct.daemon** %2, align 8
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

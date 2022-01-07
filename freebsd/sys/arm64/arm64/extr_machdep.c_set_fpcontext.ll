; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_machdep.c_set_fpcontext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_machdep.c_set_fpcontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.pcb* }
%struct.pcb = type { i32, %struct.TYPE_6__, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.thread = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@PCB_FP_USERMASK = common dso_local global i32 0, align 4
@_MC_FP_VALID = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*, %struct.TYPE_8__*)* @set_fpcontext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_fpcontext(%struct.thread* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

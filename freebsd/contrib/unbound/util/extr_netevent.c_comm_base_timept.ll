; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_base_timept.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_base_timept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_base = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.timeval, i32 }
%struct.timeval = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comm_base_timept(%struct.comm_base* %0, i32** %1, %struct.timeval** %2) #0 {
  %4 = alloca %struct.comm_base*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.timeval**, align 8
  store %struct.comm_base* %0, %struct.comm_base** %4, align 8
  store i32** %1, i32*** %5, align 8
  store %struct.timeval** %2, %struct.timeval*** %6, align 8
  %7 = load %struct.comm_base*, %struct.comm_base** %4, align 8
  %8 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32**, i32*** %5, align 8
  store i32* %10, i32** %11, align 8
  %12 = load %struct.comm_base*, %struct.comm_base** %4, align 8
  %13 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.timeval**, %struct.timeval*** %6, align 8
  store %struct.timeval* %15, %struct.timeval** %16, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

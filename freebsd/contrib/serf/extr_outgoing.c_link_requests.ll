; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/extr_outgoing.c_link_requests.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/extr_outgoing.c_link_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__**, %struct.TYPE_5__**, %struct.TYPE_5__*)* @link_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_requests(%struct.TYPE_5__** %0, %struct.TYPE_5__** %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca %struct.TYPE_5__**, align 8
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %4, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %7 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = icmp eq %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %12, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %14, align 8
  br label %22

15:                                               ; preds = %3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %19, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %21, align 8
  br label %22

22:                                               ; preds = %15, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

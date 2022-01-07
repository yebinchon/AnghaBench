; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_telldir.c__reclaim_telldir.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_telldir.c__reclaim_telldir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ddloc_mem = type { i32 }

@loc_lqe = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_reclaim_telldir(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.ddloc_mem*, align 8
  %4 = alloca %struct.ddloc_mem*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = call %struct.ddloc_mem* @LIST_FIRST(i32* %8)
  store %struct.ddloc_mem* %9, %struct.ddloc_mem** %3, align 8
  br label %10

10:                                               ; preds = %13, %1
  %11 = load %struct.ddloc_mem*, %struct.ddloc_mem** %3, align 8
  %12 = icmp ne %struct.ddloc_mem* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load %struct.ddloc_mem*, %struct.ddloc_mem** %3, align 8
  store %struct.ddloc_mem* %14, %struct.ddloc_mem** %4, align 8
  %15 = load %struct.ddloc_mem*, %struct.ddloc_mem** %3, align 8
  %16 = load i32, i32* @loc_lqe, align 4
  %17 = call %struct.ddloc_mem* @LIST_NEXT(%struct.ddloc_mem* %15, i32 %16)
  store %struct.ddloc_mem* %17, %struct.ddloc_mem** %3, align 8
  %18 = load %struct.ddloc_mem*, %struct.ddloc_mem** %4, align 8
  %19 = call i32 @free(%struct.ddloc_mem* %18)
  br label %10

20:                                               ; preds = %10
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @LIST_INIT(i32* %24)
  ret void
}

declare dso_local %struct.ddloc_mem* @LIST_FIRST(i32*) #1

declare dso_local %struct.ddloc_mem* @LIST_NEXT(%struct.ddloc_mem*, i32) #1

declare dso_local i32 @free(%struct.ddloc_mem*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

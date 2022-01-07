; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_ag_del.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_ag_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag_info = type { %struct.ag_info*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ag_info* }

@ag_corsest = common dso_local global %struct.ag_info* null, align 8
@ag_finest = common dso_local global %struct.TYPE_2__* null, align 8
@ag_avail = common dso_local global %struct.ag_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ag_info*)* @ag_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ag_del(%struct.ag_info* %0) #0 {
  %2 = alloca %struct.ag_info*, align 8
  store %struct.ag_info* %0, %struct.ag_info** %2, align 8
  %3 = call i32 (...) @CHECK_AG()
  %4 = load %struct.ag_info*, %struct.ag_info** %2, align 8
  %5 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp eq %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.ag_info*, %struct.ag_info** %2, align 8
  %10 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %9, i32 0, i32 0
  %11 = load %struct.ag_info*, %struct.ag_info** %10, align 8
  store %struct.ag_info* %11, %struct.ag_info** @ag_corsest, align 8
  br label %20

12:                                               ; preds = %1
  %13 = load %struct.ag_info*, %struct.ag_info** %2, align 8
  %14 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %13, i32 0, i32 0
  %15 = load %struct.ag_info*, %struct.ag_info** %14, align 8
  %16 = load %struct.ag_info*, %struct.ag_info** %2, align 8
  %17 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.ag_info* %15, %struct.ag_info** %19, align 8
  br label %20

20:                                               ; preds = %12, %8
  %21 = load %struct.ag_info*, %struct.ag_info** %2, align 8
  %22 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %21, i32 0, i32 0
  %23 = load %struct.ag_info*, %struct.ag_info** %22, align 8
  %24 = icmp eq %struct.ag_info* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.ag_info*, %struct.ag_info** %2, align 8
  %27 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  store %struct.TYPE_2__* %28, %struct.TYPE_2__** @ag_finest, align 8
  br label %37

29:                                               ; preds = %20
  %30 = load %struct.ag_info*, %struct.ag_info** %2, align 8
  %31 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load %struct.ag_info*, %struct.ag_info** %2, align 8
  %34 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %33, i32 0, i32 0
  %35 = load %struct.ag_info*, %struct.ag_info** %34, align 8
  %36 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %35, i32 0, i32 1
  store %struct.TYPE_2__* %32, %struct.TYPE_2__** %36, align 8
  br label %37

37:                                               ; preds = %29, %25
  %38 = load %struct.ag_info*, %struct.ag_info** @ag_avail, align 8
  %39 = load %struct.ag_info*, %struct.ag_info** %2, align 8
  %40 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %39, i32 0, i32 0
  store %struct.ag_info* %38, %struct.ag_info** %40, align 8
  %41 = load %struct.ag_info*, %struct.ag_info** %2, align 8
  store %struct.ag_info* %41, %struct.ag_info** @ag_avail, align 8
  %42 = call i32 (...) @CHECK_AG()
  ret void
}

declare dso_local i32 @CHECK_AG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

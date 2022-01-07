; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_watch.c_db_set_watchpoints.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_watch.c_db_set_watchpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }

@db_watchpoints_inserted = common dso_local global i32 0, align 4
@db_watchpoint_list = common dso_local global %struct.TYPE_5__* null, align 8
@VM_PROT_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_set_watchpoints() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = load i32, i32* @db_watchpoints_inserted, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %0
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @db_watchpoint_list, align 8
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %1, align 8
  br label %6

6:                                                ; preds = %25, %4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %6
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @trunc_page(i32 %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @round_page(i32 %21)
  %23 = load i32, i32* @VM_PROT_READ, align 4
  %24 = call i32 @pmap_protect(i32 %14, i32 %18, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %9
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %1, align 8
  br label %6

29:                                               ; preds = %6
  store i32 1, i32* @db_watchpoints_inserted, align 4
  br label %30

30:                                               ; preds = %29, %0
  ret void
}

declare dso_local i32 @pmap_protect(i32, i32, i32, i32) #1

declare dso_local i32 @trunc_page(i32) #1

declare dso_local i32 @round_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

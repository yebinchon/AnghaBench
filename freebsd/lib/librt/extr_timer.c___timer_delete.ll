; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librt/extr_timer.c___timer_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librt/extr_timer.c___timer_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__timer_delete(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = call i32 (...) @__sigev_list_lock()
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @__sigev_delete_node(i32* %13)
  %15 = call i32 (...) @__sigev_list_unlock()
  br label %16

16:                                               ; preds = %9, %1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @__sys_ktimer_delete(i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @errno, align 4
  store i32 %21, i32* %4, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = call i32 @free(%struct.TYPE_4__* %22)
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* @errno, align 4
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @__sigev_list_lock(...) #1

declare dso_local i32 @__sigev_delete_node(i32*) #1

declare dso_local i32 @__sigev_list_unlock(...) #1

declare dso_local i32 @__sys_ktimer_delete(i32) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

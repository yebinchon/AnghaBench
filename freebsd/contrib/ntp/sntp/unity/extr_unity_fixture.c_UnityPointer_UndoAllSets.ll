; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/unity/extr_unity_fixture.c_UnityPointer_UndoAllSets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/unity/extr_unity_fixture.c_UnityPointer_UndoAllSets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@pointer_index = common dso_local global i64 0, align 8
@pointer_store = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UnityPointer_UndoAllSets() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = load i64, i64* @pointer_index, align 8
  %3 = icmp ugt i64 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = load i64, i64* @pointer_index, align 8
  %6 = add i64 %5, -1
  store i64 %6, i64* @pointer_index, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pointer_store, align 8
  %8 = load i64, i64* @pointer_index, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pointer_store, align 8
  %13 = load i64, i64* @pointer_index, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32 %11, i32* %16, align 4
  br label %1

17:                                               ; preds = %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_cap.c_login_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_cap.c_login_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__* }

@lc_object_count = common dso_local global i64 0, align 8
@internal_string = common dso_local global %struct.TYPE_6__* null, align 8
@internal_array = common dso_local global %struct.TYPE_6__* null, align 8
@internal_arraysz = common dso_local global i64 0, align 8
@internal_stringsz = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @login_close(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %4 = icmp ne %struct.TYPE_6__* %3, null
  br i1 %4, label %5, label %30

5:                                                ; preds = %1
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = call i32 @free(%struct.TYPE_6__* %8)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = call i32 @free(%struct.TYPE_6__* %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = call i32 @free(%struct.TYPE_6__* %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = call i32 @free(%struct.TYPE_6__* %18)
  %20 = load i64, i64* @lc_object_count, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* @lc_object_count, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %5
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @internal_string, align 8
  %25 = call i32 @free(%struct.TYPE_6__* %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @internal_array, align 8
  %27 = call i32 @free(%struct.TYPE_6__* %26)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** @internal_array, align 8
  store i64 0, i64* @internal_arraysz, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** @internal_string, align 8
  store i64 0, i64* @internal_stringsz, align 8
  %28 = call i32 (...) @cgetclose()
  br label %29

29:                                               ; preds = %23, %5
  br label %30

30:                                               ; preds = %29, %1
  ret void
}

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i32 @cgetclose(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

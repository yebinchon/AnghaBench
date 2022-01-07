; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_task_api.c_isc_task_sendanddetach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_task_api.c_isc_task_sendanddetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__**, i32**)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isc_task_sendanddetach(%struct.TYPE_7__** %0, i32** %1) #0 {
  %3 = alloca %struct.TYPE_7__**, align 8
  %4 = alloca i32**, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %3, align 8
  store i32** %1, i32*** %4, align 8
  %5 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %6 = icmp ne %struct.TYPE_7__** %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = call i64 @ISCAPI_TASK_VALID(%struct.TYPE_7__* %9)
  %11 = icmp ne i64 %10, 0
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i1 [ false, %2 ], [ %11, %7 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @REQUIRE(i32 %14)
  %16 = load i32**, i32*** %4, align 8
  %17 = icmp ne i32** %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i32**, i32*** %4, align 8
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br label %22

22:                                               ; preds = %18, %12
  %23 = phi i1 [ false, %12 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @REQUIRE(i32 %24)
  %26 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_7__**, i32**)*, i32 (%struct.TYPE_7__**, i32**)** %30, align 8
  %32 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %33 = load i32**, i32*** %4, align 8
  %34 = call i32 %31(%struct.TYPE_7__** %32, i32** %33)
  %35 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = icmp eq %struct.TYPE_7__* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %22
  %39 = load i32**, i32*** %4, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br label %42

42:                                               ; preds = %38, %22
  %43 = phi i1 [ false, %22 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @ENSURE(i32 %44)
  ret void
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i64 @ISCAPI_TASK_VALID(%struct.TYPE_7__*) #1

declare dso_local i32 @ENSURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

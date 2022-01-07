; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_attr.c__thr_attr_setguardsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_attr.c__thr_attr_setguardsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_thr_attr_setguardsize(%struct.TYPE_3__** %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %7 = icmp eq %struct.TYPE_3__** %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp eq %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %5, align 4
  br label %19

14:                                               ; preds = %8
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i64 %15, i64* %18, align 8
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %14, %12
  %20 = load i32, i32* %5, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_attr.c__pthread_attr_getstack.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_attr.c__pthread_attr_getstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_pthread_attr_getstack(%struct.TYPE_3__** noalias %0, i8** noalias %1, i64* noalias %2) #0 {
  %4 = alloca %struct.TYPE_3__**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %9 = icmp eq %struct.TYPE_3__** %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %3
  %11 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = icmp eq %struct.TYPE_3__* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = load i8**, i8*** %5, align 8
  %16 = icmp eq i8** %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i64*, i64** %6, align 8
  %19 = icmp eq i64* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %14, %10, %3
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %7, align 4
  br label %33

22:                                               ; preds = %17
  %23 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = load i8**, i8*** %5, align 8
  store i8* %26, i8** %27, align 8
  %28 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %6, align 8
  store i64 %31, i64* %32, align 8
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %22, %20
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

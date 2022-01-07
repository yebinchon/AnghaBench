; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_attr.c__thr_attr_setschedparam.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_attr.c__thr_attr_setschedparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.sched_param = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@SCHED_FIFO = common dso_local global i32 0, align 4
@SCHED_RR = common dso_local global i32 0, align 4
@_thr_priorities = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_thr_attr_setschedparam(%struct.TYPE_4__** noalias %0, %struct.sched_param* noalias %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__**, align 8
  %5 = alloca %struct.sched_param*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %4, align 8
  store %struct.sched_param* %1, %struct.sched_param** %5, align 8
  %7 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %8 = icmp eq %struct.TYPE_4__** %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp eq %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %67

15:                                               ; preds = %9
  %16 = load %struct.sched_param*, %struct.sched_param** %5, align 8
  %17 = icmp eq %struct.sched_param* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @ENOTSUP, align 4
  store i32 %19, i32* %3, align 4
  br label %67

20:                                               ; preds = %15
  %21 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @SCHED_FIFO, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @SCHED_RR, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %28, %20
  %33 = load %struct.sched_param*, %struct.sched_param** %5, align 8
  %34 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_thr_priorities, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %35, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %32
  %45 = load %struct.sched_param*, %struct.sched_param** %5, align 8
  %46 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_thr_priorities, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %47, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %44, %32
  %57 = load i32, i32* @ENOTSUP, align 4
  store i32 %57, i32* %3, align 4
  br label %67

58:                                               ; preds = %44
  br label %60

59:                                               ; preds = %28
  br label %60

60:                                               ; preds = %59, %58
  %61 = load %struct.sched_param*, %struct.sched_param** %5, align 8
  %62 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i64 %63, i64* %66, align 8
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %60, %56, %18, %13
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

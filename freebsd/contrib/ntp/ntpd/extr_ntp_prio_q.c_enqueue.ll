; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_prio_q.c_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_prio_q.c_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 (%struct.TYPE_8__*, %struct.TYPE_8__*)*, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_8__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @enqueue(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_8__*
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i64 -1
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %7, align 8
  br label %14

14:                                               ; preds = %29, %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64 (%struct.TYPE_8__*, %struct.TYPE_8__*)*, i64 (%struct.TYPE_8__*, %struct.TYPE_8__*)** %19, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i64 1
  %25 = call i64 %20(%struct.TYPE_8__* %22, %struct.TYPE_8__* %24)
  %26 = icmp sgt i64 %25, 0
  br label %27

27:                                               ; preds = %17, %14
  %28 = phi i1 [ false, %14 ], [ %26, %17 ]
  br i1 %28, label %29, label %34

29:                                               ; preds = %27
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %6, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %7, align 8
  br label %14

34:                                               ; preds = %27
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = icmp eq %struct.TYPE_8__* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %42, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %45, align 8
  br label %55

46:                                               ; preds = %34
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %51, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %54, align 8
  br label %55

55:                                               ; preds = %46, %37
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

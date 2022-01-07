; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_ibnetdisc.c_ibnd_iter_nodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_ibnetdisc.c_ibnd_iter_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_6__* }

@.str = private unnamed_addr constant [23 x i8] c"fabric parameter NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"func parameter NULL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ibnd_iter_nodes(%struct.TYPE_7__* %0, i32 (%struct.TYPE_6__*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32 (%struct.TYPE_6__*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 (%struct.TYPE_6__*, i8*)* %1, i32 (%struct.TYPE_6__*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %7, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = icmp ne %struct.TYPE_7__* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = call i32 @IBND_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %33

12:                                               ; preds = %3
  %13 = load i32 (%struct.TYPE_6__*, i8*)*, i32 (%struct.TYPE_6__*, i8*)** %5, align 8
  %14 = icmp ne i32 (%struct.TYPE_6__*, i8*)* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = call i32 @IBND_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %33

17:                                               ; preds = %12
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %7, align 8
  br label %21

21:                                               ; preds = %29, %17
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i32 (%struct.TYPE_6__*, i8*)*, i32 (%struct.TYPE_6__*, i8*)** %5, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 %25(%struct.TYPE_6__* %26, i8* %27)
  br label %29

29:                                               ; preds = %24
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %7, align 8
  br label %21

33:                                               ; preds = %10, %15, %21
  ret void
}

declare dso_local i32 @IBND_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

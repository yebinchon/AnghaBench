; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_ibnetdisc.c_ibnd_iter_nodes_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_ibnetdisc.c_ibnd_iter_nodes_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_6__* }

@.str = private unnamed_addr constant [23 x i8] c"fabric parameter NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"func parameter NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Invalid node_type specified %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ibnd_iter_nodes_type(%struct.TYPE_7__* %0, i32 (%struct.TYPE_6__*, i8*)* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32 (%struct.TYPE_6__*, i8*)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 (%struct.TYPE_6__*, i8*)* %1, i32 (%struct.TYPE_6__*, i8*)** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %10, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = call i32 (i8*, ...) @IBND_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %51

15:                                               ; preds = %4
  %16 = load i32 (%struct.TYPE_6__*, i8*)*, i32 (%struct.TYPE_6__*, i8*)** %6, align 8
  %17 = icmp ne i32 (%struct.TYPE_6__*, i8*)* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = call i32 (i8*, ...) @IBND_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %51

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %34 [
    i32 128, label %22
    i32 130, label %26
    i32 129, label %30
  ]

22:                                               ; preds = %20
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %9, align 8
  br label %37

26:                                               ; preds = %20
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %9, align 8
  br label %37

30:                                               ; preds = %20
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %9, align 8
  br label %37

34:                                               ; preds = %20
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (i8*, ...) @IBND_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %34, %30, %26, %22
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %10, align 8
  br label %39

39:                                               ; preds = %47, %37
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %41 = icmp ne %struct.TYPE_6__* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load i32 (%struct.TYPE_6__*, i8*)*, i32 (%struct.TYPE_6__*, i8*)** %6, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 %43(%struct.TYPE_6__* %44, i8* %45)
  br label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %10, align 8
  br label %39

51:                                               ; preds = %13, %18, %39
  ret void
}

declare dso_local i32 @IBND_DEBUG(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

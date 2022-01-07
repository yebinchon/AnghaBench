; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtutils.c_DtWalkTableTree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtutils.c_DtWalkTableTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_11__*, i64 }

@AslGbl_RootTable = common dso_local global %struct.TYPE_11__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DtWalkTableTree(%struct.TYPE_11__* %0, i32 (%struct.TYPE_11__*, i8*, i8*)* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32 (%struct.TYPE_11__*, i8*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 (%struct.TYPE_11__*, i8*, i8*)* %1, i32 (%struct.TYPE_11__*, i8*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %10, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %13 = icmp ne %struct.TYPE_11__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  br label %57

15:                                               ; preds = %4
  %16 = load i32 (%struct.TYPE_11__*, i8*, i8*)*, i32 (%struct.TYPE_11__*, i8*, i8*)** %6, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 %16(%struct.TYPE_11__* %17, i8* %18, i8* %19)
  br label %21

21:                                               ; preds = %15, %56
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %24 = call %struct.TYPE_11__* @DtGetNextSubtable(%struct.TYPE_11__* %22, %struct.TYPE_11__* %23)
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %10, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %26 = icmp ne %struct.TYPE_11__* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = load i32 (%struct.TYPE_11__*, i8*, i8*)*, i32 (%struct.TYPE_11__*, i8*, i8*)** %6, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 %28(%struct.TYPE_11__* %29, i8* %30, i8* %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %10, align 8
  br label %39

39:                                               ; preds = %37, %27
  br label %56

40:                                               ; preds = %21
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %10, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** @AslGbl_RootTable, align 8
  %44 = icmp eq %struct.TYPE_11__* %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %57

46:                                               ; preds = %40
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %48 = call %struct.TYPE_11__* @DtGetParentSubtable(%struct.TYPE_11__* %47)
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %9, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = icmp eq %struct.TYPE_11__* %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %57

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %39
  br label %21

57:                                               ; preds = %14, %54, %45
  ret void
}

declare dso_local %struct.TYPE_11__* @DtGetNextSubtable(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @DtGetParentSubtable(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

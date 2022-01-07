; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtutils.c_DtSetTableLength.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtutils.c_DtSetTableLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64 }

@AslGbl_RootTable = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DtSetTableLength() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = load %struct.TYPE_9__*, %struct.TYPE_9__** @AslGbl_RootTable, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %1, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %5 = icmp ne %struct.TYPE_9__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %73

7:                                                ; preds = %0
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %9 = call i32 @DtSetSubtableLength(%struct.TYPE_9__* %8)
  br label %10

10:                                               ; preds = %7, %72
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = call %struct.TYPE_9__* @DtGetNextSubtable(%struct.TYPE_9__* %11, %struct.TYPE_9__* %12)
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %2, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = icmp ne %struct.TYPE_9__* %14, null
  br i1 %15, label %16, label %48

16:                                               ; preds = %10
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = call i32 @DtSetSubtableLength(%struct.TYPE_9__* %22)
  br label %24

24:                                               ; preds = %21, %16
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %1, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %47

31:                                               ; preds = %24
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, %34
  store i64 %38, i64* %36, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %31
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %45 = call i32 @DtSetSubtableLength(%struct.TYPE_9__* %44)
  br label %46

46:                                               ; preds = %43, %31
  br label %47

47:                                               ; preds = %46, %29
  br label %72

48:                                               ; preds = %10
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %2, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** @AslGbl_RootTable, align 8
  %52 = icmp eq %struct.TYPE_9__* %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %73

54:                                               ; preds = %48
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %56 = call %struct.TYPE_9__* @DtGetParentSubtable(%struct.TYPE_9__* %55)
  store %struct.TYPE_9__* %56, %struct.TYPE_9__** %1, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, %59
  store i64 %63, i64* %61, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %54
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %70 = call i32 @DtSetSubtableLength(%struct.TYPE_9__* %69)
  br label %71

71:                                               ; preds = %68, %54
  br label %72

72:                                               ; preds = %71, %47
  br label %10

73:                                               ; preds = %6, %53
  ret void
}

declare dso_local i32 @DtSetSubtableLength(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @DtGetNextSubtable(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @DtGetParentSubtable(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_sqlite3_expert_report.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_sqlite3_expert_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i8*, i8*, i8*, %struct.TYPE_5__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sqlite3_expert_report(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %67

15:                                               ; preds = %3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %9, align 8
  br label %19

19:                                               ; preds = %31, %15
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %25, %26
  br label %28

28:                                               ; preds = %22, %19
  %29 = phi i1 [ false, %19 ], [ %27, %22 ]
  br i1 %29, label %30, label %35

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %9, align 8
  br label %19

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %65 [
    i32 128, label %37
    i32 130, label %45
    i32 129, label %53
    i32 131, label %61
  ]

37:                                               ; preds = %35
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %39 = icmp ne %struct.TYPE_5__* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %8, align 8
  br label %44

44:                                               ; preds = %40, %37
  br label %65

45:                                               ; preds = %35
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %47 = icmp ne %struct.TYPE_5__* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %8, align 8
  br label %52

52:                                               ; preds = %48, %45
  br label %65

53:                                               ; preds = %35
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %55 = icmp ne %struct.TYPE_5__* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %8, align 8
  br label %60

60:                                               ; preds = %56, %53
  br label %65

61:                                               ; preds = %35
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %8, align 8
  br label %65

65:                                               ; preds = %35, %61, %60, %52, %44
  %66 = load i8*, i8** %8, align 8
  store i8* %66, i8** %4, align 8
  br label %67

67:                                               ; preds = %65, %14
  %68 = load i8*, i8** %4, align 8
  ret i8* %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

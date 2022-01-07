; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex.c_ex_badaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex.c_ex_badaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { i32* }

@M_SYSERR = common dso_local global i32 0, align 4
@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"099|Address value overflow\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"100|Address value underflow\00", align 1
@EXM_NOFILEYET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"101|Illegal address combination\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"102|Illegal address: only %lu lines in the file\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"103|Illegal address: the file is empty\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"104|The %s command doesn't permit an address of 0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_badaddr(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  switch i32 %10, label %24 [
    i32 130, label %11
    i32 131, label %12
    i32 129, label %16
    i32 128, label %20
  ]

11:                                               ; preds = %4
  br label %24

12:                                               ; preds = %4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = load i32, i32* @M_SYSERR, align 4
  %15 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @msgq(%struct.TYPE_9__* %13, i32 %14, i8* null)
  br label %76

16:                                               ; preds = %4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = load i32, i32* @M_ERR, align 4
  %19 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @msgq(%struct.TYPE_9__* %17, i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %76

20:                                               ; preds = %4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = load i32, i32* @M_ERR, align 4
  %23 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @msgq(%struct.TYPE_9__* %21, i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %76

24:                                               ; preds = %4, %11
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = icmp ne %struct.TYPE_10__* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  br label %38

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i32* [ %36, %33 ], [ null, %37 ]
  %40 = load i32, i32* @EXM_NOFILEYET, align 4
  %41 = call i32 @ex_wemsg(%struct.TYPE_9__* %30, i32* %39, i32 %40)
  br label %76

42:                                               ; preds = %24
  %43 = load i32, i32* %7, align 4
  switch i32 %43, label %75 [
    i32 136, label %44
    i32 134, label %48
    i32 135, label %62
    i32 133, label %66
    i32 132, label %68
  ]

44:                                               ; preds = %42
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = load i32, i32* @M_ERR, align 4
  %47 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @msgq(%struct.TYPE_9__* %45, i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %75

48:                                               ; preds = %42
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = call i32 @db_last(%struct.TYPE_9__* %49, i32* %9)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %76

53:                                               ; preds = %48
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = load i32, i32* @M_ERR, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @msgq(%struct.TYPE_9__* %57, i32 %58, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  br label %75

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %42, %61
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = load i32, i32* @M_ERR, align 4
  %65 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @msgq(%struct.TYPE_9__* %63, i32 %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %75

66:                                               ; preds = %42
  %67 = call i32 (...) @abort() #3
  unreachable

68:                                               ; preds = %42
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = load i32, i32* @M_ERR, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @msgq_wstr(%struct.TYPE_9__* %69, i32 %70, i32* %73, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  br label %75

75:                                               ; preds = %42, %68, %62, %56, %44
  br label %76

76:                                               ; preds = %75, %52, %38, %20, %16, %12
  ret void
}

declare dso_local i32 @msgq(%struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i32 @ex_wemsg(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @db_last(%struct.TYPE_9__*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @msgq_wstr(%struct.TYPE_9__*, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

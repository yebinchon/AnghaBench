; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_mark.c_mark_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_mark.c_mark_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_7__ = type { i64, i32, i64 }

@ABSMARK2 = common dso_local global i64 0, align 8
@ABSMARK1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"017|Mark %s: not set\00", align 1
@MARK_DELETED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"018|Mark %s: the line was deleted\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"019|Mark %s: cursor position no longer exists\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mark_get(i32* %0, i64 %1, %struct.TYPE_6__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @ABSMARK2, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i64, i64* @ABSMARK1, align 8
  store i64 %15, i64* %7, align 8
  br label %16

16:                                               ; preds = %14, %4
  %17 = load i32*, i32** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call %struct.TYPE_7__* @mark_find(i32* %17, i64 %18)
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %10, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %21 = icmp eq %struct.TYPE_7__* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22, %16
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @KEY_NAME(i32* %31, i64 %32)
  %34 = call i32 @msgq(i32* %29, i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 1, i32* %5, align 4
  br label %82

35:                                               ; preds = %22
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %37 = load i32, i32* @MARK_DELETED, align 4
  %38 = call i64 @F_ISSET(%struct.TYPE_7__* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @KEY_NAME(i32* %43, i64 %44)
  %46 = call i32 @msgq(i32* %41, i32 %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  store i32 1, i32* %5, align 4
  br label %82

47:                                               ; preds = %35
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %52, %47
  %58 = load i32*, i32** %6, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @db_exist(i32* %58, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %57
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @KEY_NAME(i32* %67, i64 %68)
  %70 = call i32 @msgq(i32* %65, i32 %66, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  store i32 1, i32* %5, align 4
  br label %82

71:                                               ; preds = %57, %52
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %71, %64, %40, %28
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local %struct.TYPE_7__* @mark_find(i32*, i64) #1

declare dso_local i32 @msgq(i32*, i32, i8*, i32) #1

declare dso_local i32 @KEY_NAME(i32*, i64) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @db_exist(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

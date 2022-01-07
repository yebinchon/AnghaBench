; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_awksprintf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_awksprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_11__* }

@recsize = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"out of memory in awksprintf\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"sprintf string %.30s... too long.  can't happen.\00", align 1
@STR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @awksprintf(%struct.TYPE_11__** %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @recsize, align 4
  %10 = mul nsw i32 3, %9
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call i64 @malloc(i32 %11)
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %7, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %2
  %18 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %18, i64 0
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %6, align 8
  %23 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %23, i64 0
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = call %struct.TYPE_12__* @execute(%struct.TYPE_11__* %25)
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %5, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = call i32 @getsval(%struct.TYPE_12__* %27)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = call i32 @format(i8** %7, i32* %8, i32 %28, %struct.TYPE_11__* %29)
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %35

32:                                               ; preds = %17
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %32, %17
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = call i32 @tempfree(%struct.TYPE_12__* %36)
  %38 = call %struct.TYPE_12__* (...) @gettemp()
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %5, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* @STR, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  ret %struct.TYPE_12__* %45
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @FATAL(i8*, ...) #1

declare dso_local %struct.TYPE_12__* @execute(%struct.TYPE_11__*) #1

declare dso_local i32 @format(i8**, i32*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @getsval(%struct.TYPE_12__*) #1

declare dso_local i32 @tempfree(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @gettemp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_printstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_printstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__* }

@stdout = common dso_local global i32* null, align 8
@orsloc = common dso_local global i32 0, align 4
@ofsloc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"write error on %s\00", align 1
@True = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @printstat(%struct.TYPE_6__** %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %8, i64 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = icmp eq %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32*, i32** @stdout, align 8
  store i32* %13, i32** %7, align 8
  br label %23

14:                                               ; preds = %2
  %15 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %15, i64 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = call i32 @ptoi(%struct.TYPE_6__* %17)
  %19 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %19, i64 2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = call i32* @redirect(i32 %18, %struct.TYPE_6__* %21)
  store i32* %22, i32** %7, align 8
  br label %23

23:                                               ; preds = %14, %12
  %24 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %24, i64 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %5, align 8
  br label %27

27:                                               ; preds = %54, %23
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  br i1 %29, label %30, label %58

30:                                               ; preds = %27
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = call i32* @execute(%struct.TYPE_6__* %31)
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @getpssval(i32* %33)
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @fputs(i32 %34, i32* %35)
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @tempfree(i32* %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = icmp eq %struct.TYPE_6__* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %30
  %44 = load i32, i32* @orsloc, align 4
  %45 = call i32 @getsval(i32 %44)
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @fputs(i32 %45, i32* %46)
  br label %53

48:                                               ; preds = %30
  %49 = load i32, i32* @ofsloc, align 4
  %50 = call i32 @getsval(i32 %49)
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @fputs(i32 %50, i32* %51)
  br label %53

53:                                               ; preds = %48, %43
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %5, align 8
  br label %27

58:                                               ; preds = %27
  %59 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %59, i64 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = icmp ne %struct.TYPE_6__* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @fflush(i32* %64)
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32*, i32** %7, align 8
  %68 = call i64 @ferror(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @filename(i32* %71)
  %73 = call i32 @FATAL(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %70, %66
  %75 = load i32*, i32** @True, align 8
  ret i32* %75
}

declare dso_local i32* @redirect(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @ptoi(%struct.TYPE_6__*) #1

declare dso_local i32* @execute(%struct.TYPE_6__*) #1

declare dso_local i32 @fputs(i32, i32*) #1

declare dso_local i32 @getpssval(i32*) #1

declare dso_local i32 @tempfree(i32*) #1

declare dso_local i32 @getsval(i32) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @FATAL(i8*, i32) #1

declare dso_local i32 @filename(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

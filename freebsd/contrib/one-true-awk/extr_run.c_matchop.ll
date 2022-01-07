; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_matchop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_matchop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }

@MATCHFCN = common dso_local global i32 0, align 4
@patbeg = common dso_local global i8* null, align 8
@patlen = common dso_local global i64 0, align 8
@rstartloc = common dso_local global i32 0, align 4
@rlengthloc = common dso_local global i32 0, align 4
@NUM = common dso_local global i32 0, align 4
@MATCH = common dso_local global i32 0, align 4
@NOTMATCH = common dso_local global i32 0, align 4
@True = common dso_local global %struct.TYPE_9__* null, align 8
@False = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @matchop(i32** %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32 (i32*, i8*)*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 (i32*, i8*)* @match, i32 (i32*, i8*)** %12, align 8
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MATCHFCN, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 (i32*, i8*)* @pmatch, i32 (i32*, i8*)** %12, align 8
  store i32 1, i32* %13, align 4
  br label %19

19:                                               ; preds = %18, %2
  %20 = load i32**, i32*** %4, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 1
  %22 = load i32*, i32** %21, align 8
  %23 = call %struct.TYPE_9__* @execute(i32* %22)
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %6, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = call i8* @getsval(%struct.TYPE_9__* %24)
  store i8* %25, i8** %8, align 8
  %26 = load i32**, i32*** %4, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %19
  %31 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %12, align 8
  %32 = load i32**, i32*** %4, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 %31(i32* %34, i8* %35)
  store i32 %36, i32* %10, align 4
  br label %53

37:                                               ; preds = %19
  %38 = load i32**, i32*** %4, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 2
  %40 = load i32*, i32** %39, align 8
  %41 = call %struct.TYPE_9__* @execute(i32* %40)
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %7, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = call i8* @getsval(%struct.TYPE_9__* %42)
  store i8* %43, i8** %9, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32* @makedfa(i8* %44, i32 %45)
  store i32* %46, i32** %11, align 8
  %47 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %12, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 %47(i32* %48, i8* %49)
  store i32 %50, i32* %10, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %52 = call i32 @tempfree(%struct.TYPE_9__* %51)
  br label %53

53:                                               ; preds = %37, %30
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %55 = call i32 @tempfree(%struct.TYPE_9__* %54)
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @MATCHFCN, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %86

59:                                               ; preds = %53
  %60 = load i8*, i8** @patbeg, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = add nsw i64 %64, 1
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %14, align 4
  %67 = load i64, i64* @patlen, align 8
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  store i32 0, i32* %14, align 4
  br label %70

70:                                               ; preds = %69, %59
  %71 = load i32, i32* @rstartloc, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @setfval(i32 %71, i32 %72)
  %74 = load i32, i32* @rlengthloc, align 4
  %75 = load i64, i64* @patlen, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 @setfval(i32 %74, i32 %76)
  %78 = call %struct.TYPE_9__* (...) @gettemp()
  store %struct.TYPE_9__* %78, %struct.TYPE_9__** %6, align 8
  %79 = load i32, i32* @NUM, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %85, %struct.TYPE_9__** %3, align 8
  br label %104

86:                                               ; preds = %53
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @MATCH, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* %10, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %100, label %93

93:                                               ; preds = %90, %86
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @NOTMATCH, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load i32, i32* %10, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97, %90
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** @True, align 8
  store %struct.TYPE_9__* %101, %struct.TYPE_9__** %3, align 8
  br label %104

102:                                              ; preds = %97, %93
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** @False, align 8
  store %struct.TYPE_9__* %103, %struct.TYPE_9__** %3, align 8
  br label %104

104:                                              ; preds = %102, %100, %70
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %105
}

declare dso_local i32 @match(i32*, i8*) #1

declare dso_local i32 @pmatch(i32*, i8*) #1

declare dso_local %struct.TYPE_9__* @execute(i32*) #1

declare dso_local i8* @getsval(%struct.TYPE_9__*) #1

declare dso_local i32* @makedfa(i8*, i32) #1

declare dso_local i32 @tempfree(%struct.TYPE_9__*) #1

declare dso_local i32 @setfval(i32, i32) #1

declare dso_local %struct.TYPE_9__* @gettemp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

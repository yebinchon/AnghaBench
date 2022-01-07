; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_tag.c_ex_tag_prev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_tag.c_ex_tag_prev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64, i64, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__*, i32 }

@TAG_EMPTY = common dso_local global i32 0, align 4
@_tagqh = common dso_local global i32 0, align 4
@q = common dso_local global i32 0, align 4
@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"255|Already at the first tag of this group\00", align 1
@E_C_FORCE = common dso_local global i32 0, align 4
@TAG_CSCOPE = common dso_local global i32 0, align 4
@M_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex_tag_prev(i32* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call %struct.TYPE_16__* @EXP(i32* %11)
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %6, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_14__* @TAILQ_FIRST(i32 %15)
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %8, align 8
  %17 = icmp eq %struct.TYPE_14__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @TAG_EMPTY, align 4
  %21 = call i32 @tag_msg(i32* %19, i32 %20, i32* null)
  store i32 0, i32* %3, align 4
  br label %98

22:                                               ; preds = %2
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %26 = load i32, i32* @_tagqh, align 4
  %27 = load i32, i32* @q, align 4
  %28 = call %struct.TYPE_15__* @TAILQ_PREV(%struct.TYPE_15__* %25, i32 %26, i32 %27)
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %7, align 8
  %29 = icmp eq %struct.TYPE_15__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @M_ERR, align 4
  %33 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %31, i32 %32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %98

34:                                               ; preds = %22
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @E_C_FORCE, align 4
  %41 = call i32 @FL_ISSET(i32 %39, i32 %40)
  %42 = call i64 @ex_tag_nswitch(i32* %35, %struct.TYPE_15__* %36, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %98

45:                                               ; preds = %34
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  store %struct.TYPE_15__* %46, %struct.TYPE_15__** %48, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %50 = load i32, i32* @TAG_CSCOPE, align 4
  %51 = call i64 @F_ISSET(%struct.TYPE_14__* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %57 = call i32 @cscope_search(i32* %54, %struct.TYPE_14__* %55, %struct.TYPE_15__* %56)
  br label %70

58:                                               ; preds = %45
  %59 = load i32*, i32** %4, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @ctag_search(i32* %59, i32 %62, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %58, %53
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %97

77:                                               ; preds = %70
  %78 = load i32*, i32** %4, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, 1
  %90 = load i8*, i8** %9, align 8
  %91 = load i64, i64* %10, align 8
  %92 = call i32 @INT2CHAR(i32* %78, i64 %83, i64 %89, i8* %90, i64 %91)
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* @M_INFO, align 4
  %95 = load i8*, i8** %9, align 8
  %96 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %93, i32 %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %77, %70
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %44, %30, %18
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.TYPE_16__* @EXP(i32*) #1

declare dso_local %struct.TYPE_14__* @TAILQ_FIRST(i32) #1

declare dso_local i32 @tag_msg(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_15__* @TAILQ_PREV(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @msgq(i32*, i32, i8*, ...) #1

declare dso_local i64 @ex_tag_nswitch(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @FL_ISSET(i32, i32) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @cscope_search(i32*, %struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @ctag_search(i32*, i32, i32, i32) #1

declare dso_local i32 @INT2CHAR(i32*, i64, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

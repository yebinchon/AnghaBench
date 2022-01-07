; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_tag.c_ex_tag_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_tag.c_ex_tag_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64, i64, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__*, i32 }

@TAG_EMPTY = common dso_local global i32 0, align 4
@q = common dso_local global i32 0, align 4
@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"282|Already at the last tag of this group\00", align 1
@E_C_FORCE = common dso_local global i32 0, align 4
@TAG_CSCOPE = common dso_local global i32 0, align 4
@M_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex_tag_next(i32* %0, %struct.TYPE_17__* %1) #0 {
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
  store i32 1, i32* %3, align 4
  br label %97

22:                                               ; preds = %2
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %26 = load i32, i32* @q, align 4
  %27 = call %struct.TYPE_15__* @TAILQ_NEXT(%struct.TYPE_15__* %25, i32 %26)
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %7, align 8
  %28 = icmp eq %struct.TYPE_15__* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @M_ERR, align 4
  %32 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %30, i32 %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %97

33:                                               ; preds = %22
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @E_C_FORCE, align 4
  %40 = call i32 @FL_ISSET(i32 %38, i32 %39)
  %41 = call i64 @ex_tag_nswitch(i32* %34, %struct.TYPE_15__* %35, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %97

44:                                               ; preds = %33
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  store %struct.TYPE_15__* %45, %struct.TYPE_15__** %47, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %49 = load i32, i32* @TAG_CSCOPE, align 4
  %50 = call i64 @F_ISSET(%struct.TYPE_14__* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load i32*, i32** %4, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %56 = call i32 @cscope_search(i32* %53, %struct.TYPE_14__* %54, %struct.TYPE_15__* %55)
  br label %69

57:                                               ; preds = %44
  %58 = load i32*, i32** %4, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ctag_search(i32* %58, i32 %61, i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %57, %52
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %69
  %77 = load i32*, i32** %4, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, 1
  %89 = load i8*, i8** %9, align 8
  %90 = load i64, i64* %10, align 8
  %91 = call i32 @INT2CHAR(i32* %77, i64 %82, i64 %88, i8* %89, i64 %90)
  %92 = load i32*, i32** %4, align 8
  %93 = load i32, i32* @M_INFO, align 4
  %94 = load i8*, i8** %9, align 8
  %95 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %92, i32 %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %76, %69
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %43, %29, %18
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.TYPE_16__* @EXP(i32*) #1

declare dso_local %struct.TYPE_14__* @TAILQ_FIRST(i32) #1

declare dso_local i32 @tag_msg(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_15__* @TAILQ_NEXT(%struct.TYPE_15__*, i32) #1

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

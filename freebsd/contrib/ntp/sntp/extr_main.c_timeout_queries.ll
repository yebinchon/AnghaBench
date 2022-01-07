; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_main.c_timeout_queries.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_main.c_timeout_queries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__*, i32, i64, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.timeval = type { i64 }

@.str = private unnamed_addr constant [43 x i8] c"timeout_queries: called to check %u items\0A\00", align 1
@fam_listheads = common dso_local global %struct.TYPE_8__** null, align 8
@base = common dso_local global i32 0, align 4
@CTX_xCST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"spkt->dctx->flags neither UCST nor BCST\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%s %s %cCST age %ld\0A\00", align 1
@response_timeout = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [49 x i8] c"timeout_queries: didsomething is %d, age is %ld\0A\00", align 1
@start_tv = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"timeout_queries: bail!\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@shutting_down = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timeout_queries() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i32 0, i32* %7, align 4
  %9 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @fam_listheads, align 8
  %10 = call i64 @COUNTOF(%struct.TYPE_8__** %9)
  %11 = trunc i64 %10 to i32
  %12 = zext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = call i32 @TRACE(i32 3, i8* %13)
  %15 = load i32, i32* @base, align 4
  %16 = call i32 @gettimeofday_cached(i32 %15, %struct.timeval* %1)
  store i64 0, i64* %2, align 8
  br label %17

17:                                               ; preds = %86, %0
  %18 = load i64, i64* %2, align 8
  %19 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @fam_listheads, align 8
  %20 = call i64 @COUNTOF(%struct.TYPE_8__** %19)
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %22, label %89

22:                                               ; preds = %17
  %23 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @fam_listheads, align 8
  %24 = load i64, i64* %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %23, i64 %24
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %3, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %4, align 8
  br label %28

28:                                               ; preds = %83, %22
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = icmp ne %struct.TYPE_8__* %29, null
  br i1 %30, label %31, label %85

31:                                               ; preds = %28
  store i32 1, i32* %7, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CTX_xCST, align 4
  %38 = and i32 %36, %37
  switch i32 %38, label %41 [
    i32 129, label %39
    i32 128, label %40
  ]

39:                                               ; preds = %31
  store i8 66, i8* %8, align 1
  br label %43

40:                                               ; preds = %31
  store i8 85, i8* %8, align 1
  br label %43

41:                                               ; preds = %31
  %42 = call i32 @INSIST(i32 0)
  br label %43

43:                                               ; preds = %41, %40, %39
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %5, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 0, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %43
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51, %43
  br label %83

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %59, %62
  store i64 %63, i64* %6, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = call i32 @stoa(i32* %65)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i8, i8* %8, align 1
  %73 = load i64, i64* %6, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = call i32 @TRACE(i32 3, i8* %74)
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* @response_timeout, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %57
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = call i32 @timeout_query(%struct.TYPE_8__* %80)
  br label %82

82:                                               ; preds = %79, %57
  br label %83

83:                                               ; preds = %82, %56
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %84, %struct.TYPE_8__** %4, align 8
  br label %28

85:                                               ; preds = %28
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %2, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %2, align 8
  br label %17

89:                                               ; preds = %17
  %90 = load i32, i32* %7, align 4
  %91 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @start_tv, i32 0, i32 0), align 8
  %94 = sub nsw i64 %92, %93
  %95 = inttoptr i64 %94 to i8*
  %96 = call i32 @TRACE(i32 3, i8* %95)
  %97 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @start_tv, i32 0, i32 0), align 8
  %100 = sub nsw i64 %98, %99
  %101 = load i64, i64* @response_timeout, align 8
  %102 = icmp sgt i64 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %89
  %104 = call i32 @TRACE(i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %105 = load i32, i32* @base, align 4
  %106 = call i32 @event_base_loopexit(i32 %105, i32* null)
  %107 = load i32, i32* @TRUE, align 4
  store i32 %107, i32* @shutting_down, align 4
  br label %108

108:                                              ; preds = %103, %89
  ret void
}

declare dso_local i32 @TRACE(i32, i8*) #1

declare dso_local i64 @COUNTOF(%struct.TYPE_8__**) #1

declare dso_local i32 @gettimeofday_cached(i32, %struct.timeval*) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @stoa(i32*) #1

declare dso_local i32 @timeout_query(%struct.TYPE_8__*) #1

declare dso_local i32 @event_base_loopexit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

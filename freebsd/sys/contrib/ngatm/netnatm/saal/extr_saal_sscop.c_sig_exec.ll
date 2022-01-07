; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/saal/extr_saal_sscop.c_sig_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/saal/extr_saal_sscop.c_sig_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { void (%struct.sscop*, %struct.sscop_msg*)*, i32 (%struct.sscop*)* }
%struct.sscop = type { i64, i32 }
%struct.sscop_msg = type { i32 }

@state_matrix = common dso_local global %struct.TYPE_2__** null, align 8
@SSCOP_DBG_BUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"no handler for %s in state %s - ignored\00", align 1
@events = common dso_local global i32* null, align 8
@states = common dso_local global i32* null, align 8
@SSCOP_DBG_EXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"executing %s in %s\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"delaying %s in %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sscop*, i64, %struct.sscop_msg*)* @sig_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sig_exec(%struct.sscop* %0, i64 %1, %struct.sscop_msg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sscop*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sscop_msg*, align 8
  %8 = alloca void (%struct.sscop*, %struct.sscop_msg*)*, align 8
  %9 = alloca i32 (%struct.sscop*)*, align 8
  store %struct.sscop* %0, %struct.sscop** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.sscop_msg* %2, %struct.sscop_msg** %7, align 8
  %10 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @state_matrix, align 8
  %11 = load %struct.sscop*, %struct.sscop** %5, align 8
  %12 = getelementptr inbounds %struct.sscop, %struct.sscop* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %10, i64 %13
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load void (%struct.sscop*, %struct.sscop_msg*)*, void (%struct.sscop*, %struct.sscop_msg*)** %18, align 8
  store void (%struct.sscop*, %struct.sscop_msg*)* %19, void (%struct.sscop*, %struct.sscop_msg*)** %8, align 8
  %20 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @state_matrix, align 8
  %21 = load %struct.sscop*, %struct.sscop** %5, align 8
  %22 = getelementptr inbounds %struct.sscop, %struct.sscop* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %20, i64 %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32 (%struct.sscop*)*, i32 (%struct.sscop*)** %28, align 8
  store i32 (%struct.sscop*)* %29, i32 (%struct.sscop*)** %9, align 8
  %30 = load void (%struct.sscop*, %struct.sscop_msg*)*, void (%struct.sscop*, %struct.sscop_msg*)** %8, align 8
  %31 = icmp eq void (%struct.sscop*, %struct.sscop_msg*)* %30, null
  br i1 %31, label %32, label %54

32:                                               ; preds = %3
  %33 = load %struct.sscop*, %struct.sscop** %5, align 8
  %34 = load i32, i32* @SSCOP_DBG_BUG, align 4
  %35 = load %struct.sscop*, %struct.sscop** %5, align 8
  %36 = load %struct.sscop*, %struct.sscop** %5, align 8
  %37 = getelementptr inbounds %struct.sscop, %struct.sscop* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** @events, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** @states, align 8
  %44 = load %struct.sscop*, %struct.sscop** %5, align 8
  %45 = getelementptr inbounds %struct.sscop, %struct.sscop* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to %struct.sscop*
  %51 = call i32 @VERBOSE(%struct.sscop* %33, i32 %34, %struct.sscop* %50)
  %52 = load %struct.sscop_msg*, %struct.sscop_msg** %7, align 8
  %53 = call i32 @SSCOP_MSG_FREE(%struct.sscop_msg* %52)
  store i32 1, i32* %4, align 4
  br label %105

54:                                               ; preds = %3
  %55 = load i32 (%struct.sscop*)*, i32 (%struct.sscop*)** %9, align 8
  %56 = icmp eq i32 (%struct.sscop*)* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = load i32 (%struct.sscop*)*, i32 (%struct.sscop*)** %9, align 8
  %59 = load %struct.sscop*, %struct.sscop** %5, align 8
  %60 = call i32 %58(%struct.sscop* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %57, %54
  %63 = load %struct.sscop*, %struct.sscop** %5, align 8
  %64 = load i32, i32* @SSCOP_DBG_EXEC, align 4
  %65 = load %struct.sscop*, %struct.sscop** %5, align 8
  %66 = load %struct.sscop*, %struct.sscop** %5, align 8
  %67 = getelementptr inbounds %struct.sscop, %struct.sscop* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** @events, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** @states, align 8
  %74 = load %struct.sscop*, %struct.sscop** %5, align 8
  %75 = getelementptr inbounds %struct.sscop, %struct.sscop* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to %struct.sscop*
  %81 = call i32 @VERBOSE(%struct.sscop* %63, i32 %64, %struct.sscop* %80)
  %82 = load void (%struct.sscop*, %struct.sscop_msg*)*, void (%struct.sscop*, %struct.sscop_msg*)** %8, align 8
  %83 = load %struct.sscop*, %struct.sscop** %5, align 8
  %84 = load %struct.sscop_msg*, %struct.sscop_msg** %7, align 8
  call void %82(%struct.sscop* %83, %struct.sscop_msg* %84)
  store i32 1, i32* %4, align 4
  br label %105

85:                                               ; preds = %57
  %86 = load %struct.sscop*, %struct.sscop** %5, align 8
  %87 = load i32, i32* @SSCOP_DBG_EXEC, align 4
  %88 = load %struct.sscop*, %struct.sscop** %5, align 8
  %89 = load %struct.sscop*, %struct.sscop** %5, align 8
  %90 = getelementptr inbounds %struct.sscop, %struct.sscop* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32*, i32** @events, align 8
  %93 = load i64, i64* %6, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** @states, align 8
  %97 = load %struct.sscop*, %struct.sscop** %5, align 8
  %98 = getelementptr inbounds %struct.sscop, %struct.sscop* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to %struct.sscop*
  %104 = call i32 @VERBOSE(%struct.sscop* %86, i32 %87, %struct.sscop* %103)
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %85, %62, %32
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @VERBOSE(%struct.sscop*, i32, %struct.sscop*) #1

declare dso_local i32 @SSCOP_MSG_FREE(%struct.sscop_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

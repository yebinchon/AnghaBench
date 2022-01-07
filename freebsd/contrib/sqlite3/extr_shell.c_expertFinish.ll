; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_expertFinish.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_expertFinish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32, i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@EXPERT_REPORT_CANDIDATES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"-- Candidates -----------------------------\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@EXPERT_REPORT_SQL = common dso_local global i32 0, align 4
@EXPERT_REPORT_INDEXES = common dso_local global i32 0, align 4
@EXPERT_REPORT_PLAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"(no new indexes)\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"-- Query %d --------------------------------\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i8**)* @expertFinish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expertFinish(%struct.TYPE_5__* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %17 = load i32, i32* @SQLITE_OK, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = ptrtoint i32* %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %3
  %28 = load i8**, i8*** %6, align 8
  %29 = icmp eq i8** %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i8**, i8*** %6, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = icmp eq i8* %32, null
  br label %34

34:                                               ; preds = %30, %27, %3
  %35 = phi i1 [ true, %27 ], [ true, %3 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %112

40:                                               ; preds = %34
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %9, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %10, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = load i8**, i8*** %6, align 8
  %50 = call i32 @sqlite3_expert_analyze(i32* %48, i8** %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @SQLITE_OK, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %111

54:                                               ; preds = %40
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @sqlite3_expert_count(i32* %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* @EXPERT_REPORT_CANDIDATES, align 4
  %62 = call i8* @sqlite3_expert_report(i32* %60, i32 0, i32 %61)
  store i8* %62, i8** %13, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 (i32*, i8*, ...) @raw_printf(i32* %63, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %65 = load i32*, i32** %9, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = call i32 (i32*, i8*, ...) @raw_printf(i32* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %59, %54
  store i32 0, i32* %12, align 4
  br label %69

69:                                               ; preds = %107, %68
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %110

73:                                               ; preds = %69
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @EXPERT_REPORT_SQL, align 4
  %77 = call i8* @sqlite3_expert_report(i32* %74, i32 %75, i32 %76)
  store i8* %77, i8** %14, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @EXPERT_REPORT_INDEXES, align 4
  %81 = call i8* @sqlite3_expert_report(i32* %78, i32 %79, i32 %80)
  store i8* %81, i8** %15, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @EXPERT_REPORT_PLAN, align 4
  %85 = call i8* @sqlite3_expert_report(i32* %82, i32 %83, i32 %84)
  store i8* %85, i8** %16, align 8
  %86 = load i8*, i8** %15, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %73
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %15, align 8
  br label %89

89:                                               ; preds = %88, %73
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  %96 = call i32 (i32*, i8*, ...) @raw_printf(i32* %93, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  %97 = load i32*, i32** %9, align 8
  %98 = load i8*, i8** %14, align 8
  %99 = call i32 (i32*, i8*, ...) @raw_printf(i32* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %98)
  br label %100

100:                                              ; preds = %92, %89
  %101 = load i32*, i32** %9, align 8
  %102 = load i8*, i8** %15, align 8
  %103 = call i32 (i32*, i8*, ...) @raw_printf(i32* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %102)
  %104 = load i32*, i32** %9, align 8
  %105 = load i8*, i8** %16, align 8
  %106 = call i32 (i32*, i8*, ...) @raw_printf(i32* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %105)
  br label %107

107:                                              ; preds = %100
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  br label %69

110:                                              ; preds = %69
  br label %111

111:                                              ; preds = %110, %40
  br label %112

112:                                              ; preds = %111, %34
  %113 = load i32*, i32** %8, align 8
  %114 = call i32 @sqlite3_expert_destroy(i32* %113)
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  store i32* null, i32** %117, align 8
  %118 = load i32, i32* %7, align 4
  ret i32 %118
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_expert_analyze(i32*, i8**) #1

declare dso_local i32 @sqlite3_expert_count(i32*) #1

declare dso_local i8* @sqlite3_expert_report(i32*, i32, i32) #1

declare dso_local i32 @raw_printf(i32*, i8*, ...) #1

declare dso_local i32 @sqlite3_expert_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

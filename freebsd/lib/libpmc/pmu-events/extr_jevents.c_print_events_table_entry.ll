; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/pmu-events/extr_jevents.c_print_events_table_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/pmu-events/extr_jevents.c_print_events_table_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_entry_data = type { i8*, i32* }

@.str = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"\09.name = \22%s\22,\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"\09.event = \22%s\22,\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"\09.desc = \22%s\22,\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"\09.topic = \22%s\22,\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"\09.long_desc = \22%s\22,\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"\09.pmu = \22%s\22,\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"\09.unit = \22%s\22,\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"\09.perpkg = \22%s\22,\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"\09.metric_expr = \22%s\22,\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"\09.metric_name = \22%s\22,\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"\09.metric_group = \22%s\22,\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"},\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* @print_events_table_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_events_table_entry(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9, i8* %10) #0 {
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.perf_entry_data*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i8* %6, i8** %18, align 8
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  store i8* %10, i8** %22, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = bitcast i8* %26 to %struct.perf_entry_data*
  store %struct.perf_entry_data* %27, %struct.perf_entry_data** %23, align 8
  %28 = load %struct.perf_entry_data*, %struct.perf_entry_data** %23, align 8
  %29 = getelementptr inbounds %struct.perf_entry_data, %struct.perf_entry_data* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %24, align 8
  %31 = load %struct.perf_entry_data*, %struct.perf_entry_data** %23, align 8
  %32 = getelementptr inbounds %struct.perf_entry_data, %struct.perf_entry_data* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %25, align 8
  %34 = load i32*, i32** %24, align 8
  %35 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %36 = load i8*, i8** %13, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %11
  %39 = load i32*, i32** %24, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = call i32 (i32*, i8*, ...) @fprintf(i32* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %38, %11
  %43 = load i8*, i8** %14, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32*, i32** %24, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = call i32 (i32*, i8*, ...) @fprintf(i32* %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %45, %42
  %50 = load i32*, i32** %24, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = call i32 (i32*, i8*, ...) @fprintf(i32* %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  %53 = load i32*, i32** %24, align 8
  %54 = load i8*, i8** %25, align 8
  %55 = call i32 (i32*, i8*, ...) @fprintf(i32* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %54)
  %56 = load i8*, i8** %16, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %49
  %59 = load i8*, i8** %16, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32*, i32** %24, align 8
  %66 = load i8*, i8** %16, align 8
  %67 = call i32 (i32*, i8*, ...) @fprintf(i32* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %64, %58, %49
  %69 = load i8*, i8** %17, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32*, i32** %24, align 8
  %73 = load i8*, i8** %17, align 8
  %74 = call i32 (i32*, i8*, ...) @fprintf(i32* %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %71, %68
  %76 = load i8*, i8** %18, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32*, i32** %24, align 8
  %80 = load i8*, i8** %18, align 8
  %81 = call i32 (i32*, i8*, ...) @fprintf(i32* %79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %78, %75
  %83 = load i8*, i8** %19, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32*, i32** %24, align 8
  %87 = load i8*, i8** %19, align 8
  %88 = call i32 (i32*, i8*, ...) @fprintf(i32* %86, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %85, %82
  %90 = load i8*, i8** %20, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i32*, i32** %24, align 8
  %94 = load i8*, i8** %20, align 8
  %95 = call i32 (i32*, i8*, ...) @fprintf(i32* %93, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %92, %89
  %97 = load i8*, i8** %21, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i32*, i32** %24, align 8
  %101 = load i8*, i8** %21, align 8
  %102 = call i32 (i32*, i8*, ...) @fprintf(i32* %100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %99, %96
  %104 = load i8*, i8** %22, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32*, i32** %24, align 8
  %108 = load i8*, i8** %22, align 8
  %109 = call i32 (i32*, i8*, ...) @fprintf(i32* %107, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i8* %108)
  br label %110

110:                                              ; preds = %106, %103
  %111 = load i32*, i32** %24, align 8
  %112 = call i32 (i32*, i8*, ...) @fprintf(i32* %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

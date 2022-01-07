; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc_pmu_util.c_pmc_pmu_print_counter_full.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc_pmu_util.c_pmc_pmu_print_counter_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_events_map = type { %struct.pmu_event* }
%struct.pmu_event = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"name: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"desc: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"event: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"topic: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"pmu: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"unit: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"perpkg: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"metric_expr: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"metric_name: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"metric_group: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmc_pmu_print_counter_full(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pmu_events_map*, align 8
  %4 = alloca %struct.pmu_event*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call %struct.pmu_events_map* @pmu_events_map_get(i32* null)
  store %struct.pmu_events_map* %5, %struct.pmu_events_map** %3, align 8
  %6 = icmp eq %struct.pmu_events_map* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %152

8:                                                ; preds = %1
  %9 = load %struct.pmu_events_map*, %struct.pmu_events_map** %3, align 8
  %10 = getelementptr inbounds %struct.pmu_events_map, %struct.pmu_events_map* %9, i32 0, i32 0
  %11 = load %struct.pmu_event*, %struct.pmu_event** %10, align 8
  store %struct.pmu_event* %11, %struct.pmu_event** %4, align 8
  br label %12

12:                                               ; preds = %149, %8
  %13 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %14 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %12
  %18 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %19 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %24 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br label %27

27:                                               ; preds = %22, %17, %12
  %28 = phi i1 [ true, %17 ], [ true, %12 ], [ %26, %22 ]
  br i1 %28, label %29, label %152

29:                                               ; preds = %27
  %30 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %31 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %149

35:                                               ; preds = %29
  %36 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %37 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %2, align 8
  %40 = call i32* @strcasestr(i8* %38, i8* %39)
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %149

43:                                               ; preds = %35
  %44 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %45 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %46)
  %48 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %49 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %48, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %54 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %53, i32 0, i32 3
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  br label %68

57:                                               ; preds = %43
  %58 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %59 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %64 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %62, %57
  br label %68

68:                                               ; preds = %67, %52
  %69 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %70 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %75 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %73, %68
  %79 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %80 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %79, i32 0, i32 4
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %85 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %84, i32 0, i32 4
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %83, %78
  %89 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %90 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %89, i32 0, i32 5
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %95 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %94, i32 0, i32 5
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %93, %88
  %99 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %100 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %99, i32 0, i32 6
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %105 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %104, i32 0, i32 6
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %106)
  br label %108

108:                                              ; preds = %103, %98
  %109 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %110 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %109, i32 0, i32 7
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %115 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %114, i32 0, i32 7
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %116)
  br label %118

118:                                              ; preds = %113, %108
  %119 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %120 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %119, i32 0, i32 8
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %125 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %124, i32 0, i32 8
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %126)
  br label %128

128:                                              ; preds = %123, %118
  %129 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %130 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %129, i32 0, i32 9
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %135 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %134, i32 0, i32 9
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %136)
  br label %138

138:                                              ; preds = %133, %128
  %139 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %140 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %139, i32 0, i32 10
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %145 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %144, i32 0, i32 10
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %146)
  br label %148

148:                                              ; preds = %143, %138
  br label %149

149:                                              ; preds = %148, %42, %34
  %150 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %151 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %150, i32 1
  store %struct.pmu_event* %151, %struct.pmu_event** %4, align 8
  br label %12

152:                                              ; preds = %7, %27
  ret void
}

declare dso_local %struct.pmu_events_map* @pmu_events_map_get(i32*) #1

declare dso_local i32* @strcasestr(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

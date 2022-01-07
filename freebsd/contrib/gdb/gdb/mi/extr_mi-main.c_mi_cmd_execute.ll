; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_mi_cmd_execute.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_mi_cmd_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mi_parse = type { i8*, i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 (i32, i32, i32)*, i32 (i32, i32)*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@target_executing = common dso_local global i64 0, align 8
@previous_async_command = common dso_local global i8* null, align 8
@last_async_command = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"exec-interrupt\00", align 1
@raw_stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"^error,msg=\22\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Cannot execute command \00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c" while target running\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@MI_CMD_ERROR = common dso_local global i32 0, align 4
@free_current_contents = common dso_local global i32 0, align 4
@MI_CMD_DONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"Undefined mi command: \00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c" (missing implementation)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mi_parse*)* @mi_cmd_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mi_cmd_execute(%struct.mi_parse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mi_parse*, align 8
  store %struct.mi_parse* %0, %struct.mi_parse** %3, align 8
  %4 = load %struct.mi_parse*, %struct.mi_parse** %3, align 8
  %5 = getelementptr inbounds %struct.mi_parse, %struct.mi_parse* %4, i32 0, i32 3
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %7, align 8
  %9 = icmp ne i32 (i32, i32, i32)* %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load %struct.mi_parse*, %struct.mi_parse** %3, align 8
  %12 = getelementptr inbounds %struct.mi_parse, %struct.mi_parse* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32 (i32, i32)*, i32 (i32, i32)** %14, align 8
  %16 = icmp ne i32 (i32, i32)* %15, null
  br i1 %16, label %17, label %92

17:                                               ; preds = %10, %1
  %18 = load i64, i64* @target_executing, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %53

20:                                               ; preds = %17
  %21 = load i8*, i8** @previous_async_command, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i8*, i8** @last_async_command, align 8
  %25 = call i8* @xstrdup(i8* %24)
  store i8* %25, i8** @previous_async_command, align 8
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %struct.mi_parse*, %struct.mi_parse** %3, align 8
  %28 = getelementptr inbounds %struct.mi_parse, %struct.mi_parse* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @strcmp(i32 %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %26
  %33 = load %struct.mi_parse*, %struct.mi_parse** %3, align 8
  %34 = getelementptr inbounds %struct.mi_parse, %struct.mi_parse* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* @raw_stdout, align 4
  %37 = call i32 @fputs_unfiltered(i8* %35, i32 %36)
  %38 = load i32, i32* @raw_stdout, align 4
  %39 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @raw_stdout, align 4
  %41 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load %struct.mi_parse*, %struct.mi_parse** %3, align 8
  %43 = getelementptr inbounds %struct.mi_parse, %struct.mi_parse* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @raw_stdout, align 4
  %46 = call i32 @fputstr_unfiltered(i32 %44, i8 signext 34, i32 %45)
  %47 = load i32, i32* @raw_stdout, align 4
  %48 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @raw_stdout, align 4
  %50 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @MI_CMD_ERROR, align 4
  store i32 %51, i32* %2, align 4
  br label %138

52:                                               ; preds = %26
  br label %53

53:                                               ; preds = %52, %17
  %54 = load %struct.mi_parse*, %struct.mi_parse** %3, align 8
  %55 = getelementptr inbounds %struct.mi_parse, %struct.mi_parse* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i8* @xstrdup(i8* %56)
  store i8* %57, i8** @last_async_command, align 8
  %58 = load i32, i32* @free_current_contents, align 4
  %59 = call i32 @make_exec_cleanup(i32 %58, i8** @last_async_command)
  %60 = load %struct.mi_parse*, %struct.mi_parse** %3, align 8
  %61 = getelementptr inbounds %struct.mi_parse, %struct.mi_parse* %60, i32 0, i32 3
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32 (i32, i32)*, i32 (i32, i32)** %63, align 8
  %65 = icmp ne i32 (i32, i32)* %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %53
  %67 = load %struct.mi_parse*, %struct.mi_parse** %3, align 8
  %68 = getelementptr inbounds %struct.mi_parse, %struct.mi_parse* %67, i32 0, i32 3
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32 (i32, i32)*, i32 (i32, i32)** %70, align 8
  %72 = load %struct.mi_parse*, %struct.mi_parse** %3, align 8
  %73 = getelementptr inbounds %struct.mi_parse, %struct.mi_parse* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 %71(i32 %74, i32 0)
  store i32 %75, i32* %2, align 4
  br label %138

76:                                               ; preds = %53
  %77 = load %struct.mi_parse*, %struct.mi_parse** %3, align 8
  %78 = getelementptr inbounds %struct.mi_parse, %struct.mi_parse* %77, i32 0, i32 3
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %80, align 8
  %82 = load %struct.mi_parse*, %struct.mi_parse** %3, align 8
  %83 = getelementptr inbounds %struct.mi_parse, %struct.mi_parse* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.mi_parse*, %struct.mi_parse** %3, align 8
  %86 = getelementptr inbounds %struct.mi_parse, %struct.mi_parse* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.mi_parse*, %struct.mi_parse** %3, align 8
  %89 = getelementptr inbounds %struct.mi_parse, %struct.mi_parse* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = call i32 %81(i32 %84, i32 %87, i32 %90)
  store i32 %91, i32* %2, align 4
  br label %138

92:                                               ; preds = %10
  %93 = load %struct.mi_parse*, %struct.mi_parse** %3, align 8
  %94 = getelementptr inbounds %struct.mi_parse, %struct.mi_parse* %93, i32 0, i32 3
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %118

100:                                              ; preds = %92
  %101 = load %struct.mi_parse*, %struct.mi_parse** %3, align 8
  %102 = getelementptr inbounds %struct.mi_parse, %struct.mi_parse* %101, i32 0, i32 3
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.mi_parse*, %struct.mi_parse** %3, align 8
  %108 = getelementptr inbounds %struct.mi_parse, %struct.mi_parse* %107, i32 0, i32 3
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.mi_parse*, %struct.mi_parse** %3, align 8
  %114 = getelementptr inbounds %struct.mi_parse, %struct.mi_parse* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @mi_execute_cli_command(i64 %106, i32 %112, i32 %115)
  %117 = load i32, i32* @MI_CMD_DONE, align 4
  store i32 %117, i32* %2, align 4
  br label %138

118:                                              ; preds = %92
  %119 = load %struct.mi_parse*, %struct.mi_parse** %3, align 8
  %120 = getelementptr inbounds %struct.mi_parse, %struct.mi_parse* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load i32, i32* @raw_stdout, align 4
  %123 = call i32 @fputs_unfiltered(i8* %121, i32 %122)
  %124 = load i32, i32* @raw_stdout, align 4
  %125 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @raw_stdout, align 4
  %127 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %126)
  %128 = load %struct.mi_parse*, %struct.mi_parse** %3, align 8
  %129 = getelementptr inbounds %struct.mi_parse, %struct.mi_parse* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @raw_stdout, align 4
  %132 = call i32 @fputstr_unfiltered(i32 %130, i8 signext 34, i32 %131)
  %133 = load i32, i32* @raw_stdout, align 4
  %134 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* @raw_stdout, align 4
  %136 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @MI_CMD_ERROR, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %118, %100, %76, %66, %32
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @fputs_unfiltered(i8*, i32) #1

declare dso_local i32 @fputstr_unfiltered(i32, i8 signext, i32) #1

declare dso_local i32 @make_exec_cleanup(i32, i8**) #1

declare dso_local i32 @mi_execute_cli_command(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

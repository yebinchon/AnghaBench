; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_captured_mi_execute_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_captured_mi_execute_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_out = type { i32 }
%struct.captured_mi_execute_command_args = type { i32, i8*, %struct.mi_parse* }
%struct.mi_parse = type { i32, i8*, i32, i32 }

@mi_debug_p = common dso_local global i32 0, align 4
@raw_stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c" token=`%s' command=`%s' args=`%s'\0A\00", align 1
@EXECUTE_COMMAND_DISPLAY_PROMPT = common dso_local global i8* null, align 8
@target_executing = common dso_local global i32 0, align 4
@MI_CMD_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"^done\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MI_CMD_ERROR = common dso_local global i32 0, align 4
@mi_error_message = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"^error,msg=\22\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@MI_CMD_CAUGHT_ERROR = common dso_local global i32 0, align 4
@EXECUTE_COMMAND_DISPLAY_ERROR = common dso_local global i8* null, align 8
@sync_execution = common dso_local global i32 0, align 4
@EXECUTE_COMMAND_SUPRESS_PROMPT = common dso_local global i8* null, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@INTERP_MI = common dso_local global i32 0, align 4
@INTERP_MI1 = common dso_local global i32 0, align 4
@INTERP_MI2 = common dso_local global i32 0, align 4
@INTERP_MI3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ui_out*, i8*)* @captured_mi_execute_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @captured_mi_execute_command(%struct.ui_out* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ui_out*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.captured_mi_execute_command_args*, align 8
  %7 = alloca %struct.mi_parse*, align 8
  store %struct.ui_out* %0, %struct.ui_out** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.captured_mi_execute_command_args*
  store %struct.captured_mi_execute_command_args* %9, %struct.captured_mi_execute_command_args** %6, align 8
  %10 = load %struct.captured_mi_execute_command_args*, %struct.captured_mi_execute_command_args** %6, align 8
  %11 = getelementptr inbounds %struct.captured_mi_execute_command_args, %struct.captured_mi_execute_command_args* %10, i32 0, i32 2
  %12 = load %struct.mi_parse*, %struct.mi_parse** %11, align 8
  store %struct.mi_parse* %12, %struct.mi_parse** %7, align 8
  %13 = load %struct.mi_parse*, %struct.mi_parse** %7, align 8
  %14 = getelementptr inbounds %struct.mi_parse, %struct.mi_parse* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %168 [
    i32 128, label %16
    i32 129, label %119
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @mi_debug_p, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load i32, i32* @raw_stdout, align 4
  %21 = load %struct.mi_parse*, %struct.mi_parse** %7, align 8
  %22 = getelementptr inbounds %struct.mi_parse, %struct.mi_parse* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.mi_parse*, %struct.mi_parse** %7, align 8
  %25 = getelementptr inbounds %struct.mi_parse, %struct.mi_parse* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.mi_parse*, %struct.mi_parse** %7, align 8
  %28 = getelementptr inbounds %struct.mi_parse, %struct.mi_parse* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, i8*, ...) @fprintf_unfiltered(i32 %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %19, %16
  %32 = load i8*, i8** @EXECUTE_COMMAND_DISPLAY_PROMPT, align 8
  %33 = load %struct.captured_mi_execute_command_args*, %struct.captured_mi_execute_command_args** %6, align 8
  %34 = getelementptr inbounds %struct.captured_mi_execute_command_args, %struct.captured_mi_execute_command_args* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.mi_parse*, %struct.mi_parse** %7, align 8
  %36 = call i32 @mi_cmd_execute(%struct.mi_parse* %35)
  %37 = load %struct.captured_mi_execute_command_args*, %struct.captured_mi_execute_command_args** %6, align 8
  %38 = getelementptr inbounds %struct.captured_mi_execute_command_args, %struct.captured_mi_execute_command_args* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = call i32 (...) @target_can_async_p()
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32, i32* @target_executing, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %110, label %44

44:                                               ; preds = %41, %31
  %45 = load %struct.captured_mi_execute_command_args*, %struct.captured_mi_execute_command_args** %6, align 8
  %46 = getelementptr inbounds %struct.captured_mi_execute_command_args, %struct.captured_mi_execute_command_args* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MI_CMD_DONE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %44
  %51 = load %struct.mi_parse*, %struct.mi_parse** %7, align 8
  %52 = getelementptr inbounds %struct.mi_parse, %struct.mi_parse* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* @raw_stdout, align 4
  %55 = call i32 @fputs_unfiltered(i8* %53, i32 %54)
  %56 = load i32, i32* @raw_stdout, align 4
  %57 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %59 = load i32, i32* @raw_stdout, align 4
  %60 = call i32 @mi_out_put(%struct.ui_out* %58, i32 %59)
  %61 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %62 = call i32 @mi_out_rewind(%struct.ui_out* %61)
  %63 = load i32, i32* @raw_stdout, align 4
  %64 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %109

65:                                               ; preds = %44
  %66 = load %struct.captured_mi_execute_command_args*, %struct.captured_mi_execute_command_args** %6, align 8
  %67 = getelementptr inbounds %struct.captured_mi_execute_command_args, %struct.captured_mi_execute_command_args* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @MI_CMD_ERROR, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %92

71:                                               ; preds = %65
  %72 = load i32, i32* @mi_error_message, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %71
  %75 = load %struct.mi_parse*, %struct.mi_parse** %7, align 8
  %76 = getelementptr inbounds %struct.mi_parse, %struct.mi_parse* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* @raw_stdout, align 4
  %79 = call i32 @fputs_unfiltered(i8* %77, i32 %78)
  %80 = load i32, i32* @raw_stdout, align 4
  %81 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @mi_error_message, align 4
  %83 = load i32, i32* @raw_stdout, align 4
  %84 = call i32 @fputstr_unfiltered(i32 %82, i8 signext 34, i32 %83)
  %85 = load i32, i32* @mi_error_message, align 4
  %86 = call i32 @xfree(i32 %85)
  %87 = load i32, i32* @raw_stdout, align 4
  %88 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %74, %71
  %90 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %91 = call i32 @mi_out_rewind(%struct.ui_out* %90)
  br label %108

92:                                               ; preds = %65
  %93 = load %struct.captured_mi_execute_command_args*, %struct.captured_mi_execute_command_args** %6, align 8
  %94 = getelementptr inbounds %struct.captured_mi_execute_command_args, %struct.captured_mi_execute_command_args* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @MI_CMD_CAUGHT_ERROR, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %92
  %99 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %100 = call i32 @mi_out_rewind(%struct.ui_out* %99)
  %101 = load i8*, i8** @EXECUTE_COMMAND_DISPLAY_ERROR, align 8
  %102 = load %struct.captured_mi_execute_command_args*, %struct.captured_mi_execute_command_args** %6, align 8
  %103 = getelementptr inbounds %struct.captured_mi_execute_command_args, %struct.captured_mi_execute_command_args* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  store i32 1, i32* %3, align 4
  br label %169

104:                                              ; preds = %92
  %105 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %106 = call i32 @mi_out_rewind(%struct.ui_out* %105)
  br label %107

107:                                              ; preds = %104
  br label %108

108:                                              ; preds = %107, %89
  br label %109

109:                                              ; preds = %108, %50
  br label %118

110:                                              ; preds = %41
  %111 = load i32, i32* @sync_execution, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i8*, i8** @EXECUTE_COMMAND_SUPRESS_PROMPT, align 8
  %115 = load %struct.captured_mi_execute_command_args*, %struct.captured_mi_execute_command_args** %6, align 8
  %116 = getelementptr inbounds %struct.captured_mi_execute_command_args, %struct.captured_mi_execute_command_args* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  store i32 1, i32* %3, align 4
  br label %169

117:                                              ; preds = %110
  br label %118

118:                                              ; preds = %117, %109
  br label %168

119:                                              ; preds = %2
  %120 = load i32, i32* @gdb_stdlog, align 4
  %121 = load %struct.mi_parse*, %struct.mi_parse** %7, align 8
  %122 = getelementptr inbounds %struct.mi_parse, %struct.mi_parse* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = inttoptr i64 %124 to i8*
  %126 = call i32 (i32, i8*, i8*, ...) @fprintf_unfiltered(i32 %120, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %125)
  %127 = load %struct.mi_parse*, %struct.mi_parse** %7, align 8
  %128 = getelementptr inbounds %struct.mi_parse, %struct.mi_parse* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @mi_execute_cli_command(i32 %129, i32 0, i32* null)
  %131 = load i32, i32* @INTERP_MI, align 4
  %132 = call i32 @current_interp_named_p(i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %146, label %134

134:                                              ; preds = %119
  %135 = load i32, i32* @INTERP_MI1, align 4
  %136 = call i32 @current_interp_named_p(i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %134
  %139 = load i32, i32* @INTERP_MI2, align 4
  %140 = call i32 @current_interp_named_p(i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %138
  %143 = load i32, i32* @INTERP_MI3, align 4
  %144 = call i32 @current_interp_named_p(i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %167

146:                                              ; preds = %142, %138, %134, %119
  %147 = load %struct.mi_parse*, %struct.mi_parse** %7, align 8
  %148 = getelementptr inbounds %struct.mi_parse, %struct.mi_parse* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = load i32, i32* @raw_stdout, align 4
  %151 = call i32 @fputs_unfiltered(i8* %149, i32 %150)
  %152 = load i32, i32* @raw_stdout, align 4
  %153 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %152)
  %154 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %155 = load i32, i32* @raw_stdout, align 4
  %156 = call i32 @mi_out_put(%struct.ui_out* %154, i32 %155)
  %157 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %158 = call i32 @mi_out_rewind(%struct.ui_out* %157)
  %159 = load i32, i32* @raw_stdout, align 4
  %160 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %159)
  %161 = load i8*, i8** @EXECUTE_COMMAND_DISPLAY_PROMPT, align 8
  %162 = load %struct.captured_mi_execute_command_args*, %struct.captured_mi_execute_command_args** %6, align 8
  %163 = getelementptr inbounds %struct.captured_mi_execute_command_args, %struct.captured_mi_execute_command_args* %162, i32 0, i32 1
  store i8* %161, i8** %163, align 8
  %164 = load i32, i32* @MI_CMD_DONE, align 4
  %165 = load %struct.captured_mi_execute_command_args*, %struct.captured_mi_execute_command_args** %6, align 8
  %166 = getelementptr inbounds %struct.captured_mi_execute_command_args, %struct.captured_mi_execute_command_args* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  br label %167

167:                                              ; preds = %146, %142
  br label %168

168:                                              ; preds = %2, %167, %118
  store i32 1, i32* %3, align 4
  br label %169

169:                                              ; preds = %168, %113, %98
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i8*, ...) #1

declare dso_local i32 @mi_cmd_execute(%struct.mi_parse*) #1

declare dso_local i32 @target_can_async_p(...) #1

declare dso_local i32 @fputs_unfiltered(i8*, i32) #1

declare dso_local i32 @mi_out_put(%struct.ui_out*, i32) #1

declare dso_local i32 @mi_out_rewind(%struct.ui_out*) #1

declare dso_local i32 @fputstr_unfiltered(i32, i8 signext, i32) #1

declare dso_local i32 @xfree(i32) #1

declare dso_local i32 @mi_execute_cli_command(i32, i32, i32*) #1

declare dso_local i32 @current_interp_named_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

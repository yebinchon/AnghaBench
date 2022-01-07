; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_print_frame_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_print_frame_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.symtab_and_line = type { i64, i64, i64 }
%struct.cleanup = type { i32 }

@DUMMY_FRAME = common dso_local global i64 0, align 8
@SIGTRAMP_FRAME = common dso_local global i64 0, align 8
@uiout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@ui_left = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"<function called from gdb>\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"<signal handler called>\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@LOCATION = common dso_local global i32 0, align 4
@LOC_AND_ADDRESS = common dso_local global i32 0, align 4
@SRC_AND_LOC = common dso_local global i32 0, align 4
@SRC_LINE = common dso_local global i32 0, align 4
@annotation_level = common dso_local global i64 0, align 8
@addressprint = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@gdb_stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_frame_info(%struct.frame_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.frame_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.symtab_and_line, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cleanup*, align 8
  %13 = alloca %struct.symtab_and_line, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.symtab_and_line, align 8
  store %struct.frame_info* %0, %struct.frame_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %18 = call i64 @get_frame_type(%struct.frame_info* %17)
  %19 = load i64, i64* @DUMMY_FRAME, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %23 = call i64 @get_frame_type(%struct.frame_info* %22)
  %24 = load i64, i64* @SIGTRAMP_FRAME, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %84

26:                                               ; preds = %21, %4
  %27 = load i32, i32* @uiout, align 4
  %28 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.cleanup* %28, %struct.cleanup** %12, align 8
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  br label %34

34:                                               ; preds = %32, %31
  %35 = phi i32 [ 0, %31 ], [ %33, %32 ]
  %36 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %37 = call i64 @get_frame_pc(%struct.frame_info* %36)
  %38 = call i32 @annotate_frame_begin(i32 %35, i64 %37)
  %39 = load i32, i32* %6, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load i32, i32* @uiout, align 4
  %43 = call i32 @ui_out_text(i32 %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @uiout, align 4
  %45 = load i32, i32* @ui_left, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @ui_out_field_fmt_int(i32 %44, i32 2, i32 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %41, %34
  %49 = load i32, i32* @uiout, align 4
  %50 = call i64 @ui_out_is_mi_like_p(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = call i32 (...) @annotate_frame_address()
  %54 = load i32, i32* @uiout, align 4
  %55 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %56 = call i64 @get_frame_pc(%struct.frame_info* %55)
  %57 = call i32 @ui_out_field_core_addr(i32 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %56)
  %58 = call i32 (...) @annotate_frame_address_end()
  br label %59

59:                                               ; preds = %52, %48
  %60 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %61 = call i64 @get_frame_type(%struct.frame_info* %60)
  %62 = load i64, i64* @DUMMY_FRAME, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = call i32 (...) @annotate_function_call()
  %66 = load i32, i32* @uiout, align 4
  %67 = call i32 @ui_out_field_string(i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %78

68:                                               ; preds = %59
  %69 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %70 = call i64 @get_frame_type(%struct.frame_info* %69)
  %71 = load i64, i64* @SIGTRAMP_FRAME, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = call i32 (...) @annotate_signal_handler_caller()
  %75 = load i32, i32* @uiout, align 4
  %76 = call i32 @ui_out_field_string(i32 %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %77

77:                                               ; preds = %73, %68
  br label %78

78:                                               ; preds = %77, %64
  %79 = load i32, i32* @uiout, align 4
  %80 = call i32 @ui_out_text(i32 %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %81 = call i32 (...) @annotate_frame_end()
  %82 = load %struct.cleanup*, %struct.cleanup** %12, align 8
  %83 = call i32 @do_cleanups(%struct.cleanup* %82)
  br label %224

84:                                               ; preds = %21
  %85 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %86 = call i32 @find_frame_sal(%struct.frame_info* %85, %struct.symtab_and_line* %9)
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @LOCATION, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %98, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @LOC_AND_ADDRESS, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @SRC_AND_LOC, align 4
  %97 = icmp eq i32 %95, %96
  br label %98

98:                                               ; preds = %94, %90, %84
  %99 = phi i1 [ true, %90 ], [ true, %84 ], [ %97, %94 ]
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %9, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %103, %98
  %108 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @print_frame(%struct.frame_info* %108, i32 %109, i32 %110, i32 %111, %struct.symtab_and_line* byval(%struct.symtab_and_line) align 8 %9)
  br label %113

113:                                              ; preds = %107, %103
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @SRC_LINE, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %121, label %117

117:                                              ; preds = %113
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @SRC_AND_LOC, align 4
  %120 = icmp eq i32 %118, %119
  br label %121

121:                                              ; preds = %117, %113
  %122 = phi i1 [ true, %113 ], [ %120, %117 ]
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %10, align 4
  %124 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %9, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = call i32 @set_current_source_symtab_and_line(%struct.symtab_and_line* %9)
  br label %129

129:                                              ; preds = %127, %121
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %209

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %9, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %209

136:                                              ; preds = %132
  store i32 0, i32* %14, align 4
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @SRC_LINE, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %136
  %141 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %142 = call i64 @get_frame_pc(%struct.frame_info* %141)
  %143 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %9, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %142, %144
  br label %146

146:                                              ; preds = %140, %136
  %147 = phi i1 [ false, %136 ], [ %145, %140 ]
  %148 = zext i1 %147 to i32
  store i32 %148, i32* %15, align 4
  %149 = load i64, i64* @annotation_level, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %9, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %9, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* %15, align 4
  %157 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %158 = call i64 @get_frame_pc(%struct.frame_info* %157)
  %159 = call i32 @identify_source_line(i64 %153, i64 %155, i32 %156, i64 %158)
  store i32 %159, i32* %14, align 4
  br label %160

160:                                              ; preds = %151, %146
  %161 = load i32, i32* %14, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %196, label %163

163:                                              ; preds = %160
  br i1 true, label %164, label %173

164:                                              ; preds = %163
  %165 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %9, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %9, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %9, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %170, 1
  %172 = call i32 @print_frame_info_listing_hook(i64 %166, i64 %168, i64 %171, i32 0)
  br label %195

173:                                              ; preds = %163
  %174 = load i64, i64* @addressprint, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %173
  %177 = load i32, i32* %15, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %176
  %180 = load i32, i32* @uiout, align 4
  %181 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %182 = call i64 @get_frame_pc(%struct.frame_info* %181)
  %183 = call i32 @ui_out_field_core_addr(i32 %180, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %182)
  %184 = load i32, i32* @uiout, align 4
  %185 = call i32 @ui_out_text(i32 %184, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %186

186:                                              ; preds = %179, %176, %173
  %187 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %9, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %9, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %9, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %192, 1
  %194 = call i32 @print_source_lines(i64 %188, i64 %190, i64 %193, i32 0)
  br label %195

195:                                              ; preds = %186, %164
  br label %196

196:                                              ; preds = %195, %160
  %197 = call i32 (...) @set_default_source_symtab_and_line()
  call void (%struct.symtab_and_line*, ...) @get_current_source_symtab_and_line(%struct.symtab_and_line* sret %16)
  %198 = bitcast %struct.symtab_and_line* %13 to i8*
  %199 = bitcast %struct.symtab_and_line* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %198, i8* align 8 %199, i64 24, i1 false)
  %200 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %9, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = call i32 (...) @get_lines_to_list()
  %203 = sdiv i32 %202, 2
  %204 = sext i32 %203 to i64
  %205 = sub nsw i64 %201, %204
  %206 = call i64 @max(i64 %205, i32 1)
  %207 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %13, i32 0, i32 1
  store i64 %206, i64* %207, align 8
  %208 = call i32 @set_current_source_symtab_and_line(%struct.symtab_and_line* %13)
  br label %209

209:                                              ; preds = %196, %132, %129
  %210 = load i32, i32* %7, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %220

212:                                              ; preds = %209
  %213 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %214 = call i64 @get_frame_pc(%struct.frame_info* %213)
  %215 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %9, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %9, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @set_default_breakpoint(i32 1, i64 %214, i64 %216, i64 %218)
  br label %220

220:                                              ; preds = %212, %209
  %221 = call i32 (...) @annotate_frame_end()
  %222 = load i32, i32* @gdb_stdout, align 4
  %223 = call i32 @gdb_flush(i32 %222)
  br label %224

224:                                              ; preds = %220, %78
  ret void
}

declare dso_local i64 @get_frame_type(%struct.frame_info*) #1

declare dso_local %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32, i8*) #1

declare dso_local i32 @annotate_frame_begin(i32, i64) #1

declare dso_local i64 @get_frame_pc(%struct.frame_info*) #1

declare dso_local i32 @ui_out_text(i32, i8*) #1

declare dso_local i32 @ui_out_field_fmt_int(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @ui_out_is_mi_like_p(i32) #1

declare dso_local i32 @annotate_frame_address(...) #1

declare dso_local i32 @ui_out_field_core_addr(i32, i8*, i64) #1

declare dso_local i32 @annotate_frame_address_end(...) #1

declare dso_local i32 @annotate_function_call(...) #1

declare dso_local i32 @ui_out_field_string(i32, i8*, i8*) #1

declare dso_local i32 @annotate_signal_handler_caller(...) #1

declare dso_local i32 @annotate_frame_end(...) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @find_frame_sal(%struct.frame_info*, %struct.symtab_and_line*) #1

declare dso_local i32 @print_frame(%struct.frame_info*, i32, i32, i32, %struct.symtab_and_line* byval(%struct.symtab_and_line) align 8) #1

declare dso_local i32 @set_current_source_symtab_and_line(%struct.symtab_and_line*) #1

declare dso_local i32 @identify_source_line(i64, i64, i32, i64) #1

declare dso_local i32 @print_frame_info_listing_hook(i64, i64, i64, i32) #1

declare dso_local i32 @print_source_lines(i64, i64, i64, i32) #1

declare dso_local i32 @set_default_source_symtab_and_line(...) #1

declare dso_local void @get_current_source_symtab_and_line(%struct.symtab_and_line* sret, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @max(i64, i32) #1

declare dso_local i32 @get_lines_to_list(...) #1

declare dso_local i32 @set_default_breakpoint(i32, i64, i64, i64) #1

declare dso_local i32 @gdb_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

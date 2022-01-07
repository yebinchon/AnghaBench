; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_print_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_print_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.symtab_and_line = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.symbol = type { i32 }
%struct.ui_stream = type { i32 }
%struct.cleanup = type { i32 }
%struct.minimal_symbol = type opaque
%struct.minimal_symbol.0 = type opaque
%struct.print_args_args = type { i32, %struct.symbol*, %struct.frame_info* }

@language_unknown = common dso_local global i32 0, align 4
@uiout = common dso_local global i32 0, align 4
@language_cplus = common dso_local global i32 0, align 4
@DMGL_ANSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@ui_left = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@addressprint = common dso_local global i64 0, align 8
@LOC_AND_ADDRESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" in \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@print_args_stub = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RETURN_MASK_ALL = common dso_local global i32 0, align 4
@QUIT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c" at \00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame_info*, i32, i32, i32, %struct.symtab_and_line*)* @print_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_frame(%struct.frame_info* %0, i32 %1, i32 %2, i32 %3, %struct.symtab_and_line* byval(%struct.symtab_and_line) align 8 %4) #0 {
  %6 = alloca %struct.frame_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.symbol*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ui_stream*, align 8
  %14 = alloca %struct.cleanup*, align 8
  %15 = alloca %struct.cleanup*, align 8
  %16 = alloca %struct.minimal_symbol*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.minimal_symbol.0*, align 8
  %19 = alloca %struct.print_args_args, align 8
  %20 = alloca %struct.cleanup*, align 8
  store %struct.frame_info* %0, %struct.frame_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %11, align 8
  %21 = load i32, i32* @language_unknown, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* @uiout, align 4
  %23 = call %struct.ui_stream* @ui_out_stream_new(i32 %22)
  store %struct.ui_stream* %23, %struct.ui_stream** %13, align 8
  %24 = load %struct.ui_stream*, %struct.ui_stream** %13, align 8
  %25 = call %struct.cleanup* @make_cleanup_ui_out_stream_delete(%struct.ui_stream* %24)
  store %struct.cleanup* %25, %struct.cleanup** %14, align 8
  %26 = load %struct.frame_info*, %struct.frame_info** %6, align 8
  %27 = call i32 @get_frame_address_in_block(%struct.frame_info* %26)
  %28 = call %struct.symbol* @find_pc_function(i32 %27)
  store %struct.symbol* %28, %struct.symbol** %10, align 8
  %29 = load %struct.symbol*, %struct.symbol** %10, align 8
  %30 = icmp ne %struct.symbol* %29, null
  br i1 %30, label %31, label %73

31:                                               ; preds = %5
  %32 = load %struct.frame_info*, %struct.frame_info** %6, align 8
  %33 = call i32 @get_frame_address_in_block(%struct.frame_info* %32)
  %34 = call %struct.symbol* @lookup_minimal_symbol_by_pc(i32 %33)
  %35 = bitcast %struct.symbol* %34 to %struct.minimal_symbol*
  store %struct.minimal_symbol* %35, %struct.minimal_symbol** %16, align 8
  %36 = load %struct.minimal_symbol*, %struct.minimal_symbol** %16, align 8
  %37 = icmp ne %struct.minimal_symbol* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %31
  %39 = load %struct.minimal_symbol*, %struct.minimal_symbol** %16, align 8
  %40 = bitcast %struct.minimal_symbol* %39 to %struct.symbol*
  %41 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.symbol* %40)
  %42 = load %struct.symbol*, %struct.symbol** %10, align 8
  %43 = call i32 @SYMBOL_BLOCK_VALUE(%struct.symbol* %42)
  %44 = call i64 @BLOCK_START(i32 %43)
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  store %struct.symbol* null, %struct.symbol** %10, align 8
  %47 = load %struct.minimal_symbol*, %struct.minimal_symbol** %16, align 8
  %48 = bitcast %struct.minimal_symbol* %47 to %struct.symbol*
  %49 = call i8* @DEPRECATED_SYMBOL_NAME(%struct.symbol* %48)
  store i8* %49, i8** %11, align 8
  %50 = load %struct.minimal_symbol*, %struct.minimal_symbol** %16, align 8
  %51 = bitcast %struct.minimal_symbol* %50 to %struct.symbol*
  %52 = call i32 @SYMBOL_LANGUAGE(%struct.symbol* %51)
  store i32 %52, i32* %12, align 4
  br label %72

53:                                               ; preds = %38, %31
  %54 = load %struct.symbol*, %struct.symbol** %10, align 8
  %55 = call i8* @DEPRECATED_SYMBOL_NAME(%struct.symbol* %54)
  store i8* %55, i8** %11, align 8
  %56 = load %struct.symbol*, %struct.symbol** %10, align 8
  %57 = call i32 @SYMBOL_LANGUAGE(%struct.symbol* %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @language_cplus, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %53
  %62 = load i8*, i8** %11, align 8
  %63 = load i32, i32* @DMGL_ANSI, align 4
  %64 = call i8* @cplus_demangle(i8* %62, i32 %63)
  store i8* %64, i8** %17, align 8
  %65 = load i8*, i8** %17, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load %struct.symbol*, %struct.symbol** %10, align 8
  %69 = call i8* @SYMBOL_PRINT_NAME(%struct.symbol* %68)
  store i8* %69, i8** %11, align 8
  br label %70

70:                                               ; preds = %67, %61
  br label %71

71:                                               ; preds = %70, %53
  br label %72

72:                                               ; preds = %71, %46
  br label %88

73:                                               ; preds = %5
  %74 = load %struct.frame_info*, %struct.frame_info** %6, align 8
  %75 = call i32 @get_frame_address_in_block(%struct.frame_info* %74)
  %76 = call %struct.symbol* @lookup_minimal_symbol_by_pc(i32 %75)
  %77 = bitcast %struct.symbol* %76 to %struct.minimal_symbol.0*
  store %struct.minimal_symbol.0* %77, %struct.minimal_symbol.0** %18, align 8
  %78 = load %struct.minimal_symbol.0*, %struct.minimal_symbol.0** %18, align 8
  %79 = icmp ne %struct.minimal_symbol.0* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load %struct.minimal_symbol.0*, %struct.minimal_symbol.0** %18, align 8
  %82 = bitcast %struct.minimal_symbol.0* %81 to %struct.symbol*
  %83 = call i8* @DEPRECATED_SYMBOL_NAME(%struct.symbol* %82)
  store i8* %83, i8** %11, align 8
  %84 = load %struct.minimal_symbol.0*, %struct.minimal_symbol.0** %18, align 8
  %85 = bitcast %struct.minimal_symbol.0* %84 to %struct.symbol*
  %86 = call i32 @SYMBOL_LANGUAGE(%struct.symbol* %85)
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %80, %73
  br label %88

88:                                               ; preds = %87, %72
  %89 = load i32, i32* %7, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %94

92:                                               ; preds = %88
  %93 = load i32, i32* %7, align 4
  br label %94

94:                                               ; preds = %92, %91
  %95 = phi i32 [ 0, %91 ], [ %93, %92 ]
  %96 = load %struct.frame_info*, %struct.frame_info** %6, align 8
  %97 = call i64 @get_frame_pc(%struct.frame_info* %96)
  %98 = call i32 @annotate_frame_begin(i32 %95, i64 %97)
  %99 = load i32, i32* @uiout, align 4
  %100 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32 %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.cleanup* %100, %struct.cleanup** %15, align 8
  %101 = load i32, i32* %7, align 4
  %102 = icmp sge i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %94
  %104 = load i32, i32* @uiout, align 4
  %105 = call i32 @ui_out_text(i32 %104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32, i32* @uiout, align 4
  %107 = load i32, i32* @ui_left, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @ui_out_field_fmt_int(i32 %106, i32 2, i32 %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %103, %94
  %111 = load i64, i64* @addressprint, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %137

113:                                              ; preds = %110
  %114 = load %struct.frame_info*, %struct.frame_info** %6, align 8
  %115 = call i64 @get_frame_pc(%struct.frame_info* %114)
  %116 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %4, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %115, %117
  br i1 %118, label %127, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %4, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = icmp ne %struct.TYPE_2__* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @LOC_AND_ADDRESS, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %123, %119, %113
  %128 = call i32 (...) @annotate_frame_address()
  %129 = load i32, i32* @uiout, align 4
  %130 = load %struct.frame_info*, %struct.frame_info** %6, align 8
  %131 = call i64 @get_frame_pc(%struct.frame_info* %130)
  %132 = call i32 @ui_out_field_core_addr(i32 %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %131)
  %133 = call i32 (...) @annotate_frame_address_end()
  %134 = load i32, i32* @uiout, align 4
  %135 = call i32 @ui_out_text(i32 %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %136

136:                                              ; preds = %127, %123
  br label %137

137:                                              ; preds = %136, %110
  %138 = call i32 (...) @annotate_frame_function_name()
  %139 = load %struct.ui_stream*, %struct.ui_stream** %13, align 8
  %140 = getelementptr inbounds %struct.ui_stream, %struct.ui_stream* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i8*, i8** %11, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %146

144:                                              ; preds = %137
  %145 = load i8*, i8** %11, align 8
  br label %147

146:                                              ; preds = %137
  br label %147

147:                                              ; preds = %146, %144
  %148 = phi i8* [ %145, %144 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %146 ]
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* @DMGL_ANSI, align 4
  %151 = call i32 @fprintf_symbol_filtered(i32 %141, i8* %148, i32 %149, i32 %150)
  %152 = load i32, i32* @uiout, align 4
  %153 = load %struct.ui_stream*, %struct.ui_stream** %13, align 8
  %154 = call i32 @ui_out_field_stream(i32 %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), %struct.ui_stream* %153)
  %155 = load i32, i32* @uiout, align 4
  %156 = call i32 @ui_out_wrap_hint(i32 %155, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %157 = call i32 (...) @annotate_frame_args()
  %158 = load i32, i32* @uiout, align 4
  %159 = call i32 @ui_out_text(i32 %158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %177

162:                                              ; preds = %147
  %163 = load %struct.frame_info*, %struct.frame_info** %6, align 8
  %164 = getelementptr inbounds %struct.print_args_args, %struct.print_args_args* %19, i32 0, i32 2
  store %struct.frame_info* %163, %struct.frame_info** %164, align 8
  %165 = load %struct.symbol*, %struct.symbol** %10, align 8
  %166 = getelementptr inbounds %struct.print_args_args, %struct.print_args_args* %19, i32 0, i32 1
  store %struct.symbol* %165, %struct.symbol** %166, align 8
  %167 = load i32, i32* @gdb_stdout, align 4
  %168 = getelementptr inbounds %struct.print_args_args, %struct.print_args_args* %19, i32 0, i32 0
  store i32 %167, i32* %168, align 8
  %169 = load i32, i32* @uiout, align 4
  %170 = call %struct.cleanup* @make_cleanup_ui_out_list_begin_end(i32 %169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  store %struct.cleanup* %170, %struct.cleanup** %20, align 8
  %171 = load i32, i32* @print_args_stub, align 4
  %172 = load i32, i32* @RETURN_MASK_ALL, align 4
  %173 = call i32 @catch_errors(i32 %171, %struct.print_args_args* %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i32 %172)
  %174 = load %struct.cleanup*, %struct.cleanup** %20, align 8
  %175 = call i32 @do_cleanups(%struct.cleanup* %174)
  %176 = load i32, i32* @QUIT, align 4
  br label %177

177:                                              ; preds = %162, %147
  %178 = load i32, i32* @uiout, align 4
  %179 = call i32 @ui_out_text(i32 %178, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %180 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %4, i32 0, i32 1
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %180, align 8
  %182 = icmp ne %struct.TYPE_2__* %181, null
  br i1 %182, label %183, label %211

183:                                              ; preds = %177
  %184 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %4, i32 0, i32 1
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %189, label %211

189:                                              ; preds = %183
  %190 = call i32 (...) @annotate_frame_source_begin()
  %191 = load i32, i32* @uiout, align 4
  %192 = call i32 @ui_out_wrap_hint(i32 %191, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %193 = load i32, i32* @uiout, align 4
  %194 = call i32 @ui_out_text(i32 %193, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %195 = call i32 (...) @annotate_frame_source_file()
  %196 = load i32, i32* @uiout, align 4
  %197 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %4, i32 0, i32 1
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @ui_out_field_string(i32 %196, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %200)
  %202 = call i32 (...) @annotate_frame_source_file_end()
  %203 = load i32, i32* @uiout, align 4
  %204 = call i32 @ui_out_text(i32 %203, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %205 = call i32 (...) @annotate_frame_source_line()
  %206 = load i32, i32* @uiout, align 4
  %207 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %4, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @ui_out_field_int(i32 %206, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 %208)
  %210 = call i32 (...) @annotate_frame_source_end()
  br label %211

211:                                              ; preds = %189, %183, %177
  %212 = load %struct.cleanup*, %struct.cleanup** %15, align 8
  %213 = call i32 @do_cleanups(%struct.cleanup* %212)
  %214 = load i32, i32* @uiout, align 4
  %215 = call i32 @ui_out_text(i32 %214, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %216 = load %struct.cleanup*, %struct.cleanup** %14, align 8
  %217 = call i32 @do_cleanups(%struct.cleanup* %216)
  ret void
}

declare dso_local %struct.ui_stream* @ui_out_stream_new(i32) #1

declare dso_local %struct.cleanup* @make_cleanup_ui_out_stream_delete(%struct.ui_stream*) #1

declare dso_local %struct.symbol* @find_pc_function(i32) #1

declare dso_local i32 @get_frame_address_in_block(%struct.frame_info*) #1

declare dso_local %struct.symbol* @lookup_minimal_symbol_by_pc(i32) #1

declare dso_local i64 @SYMBOL_VALUE_ADDRESS(%struct.symbol*) #1

declare dso_local i64 @BLOCK_START(i32) #1

declare dso_local i32 @SYMBOL_BLOCK_VALUE(%struct.symbol*) #1

declare dso_local i8* @DEPRECATED_SYMBOL_NAME(%struct.symbol*) #1

declare dso_local i32 @SYMBOL_LANGUAGE(%struct.symbol*) #1

declare dso_local i8* @cplus_demangle(i8*, i32) #1

declare dso_local i8* @SYMBOL_PRINT_NAME(%struct.symbol*) #1

declare dso_local i32 @annotate_frame_begin(i32, i64) #1

declare dso_local i64 @get_frame_pc(%struct.frame_info*) #1

declare dso_local %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32, i8*) #1

declare dso_local i32 @ui_out_text(i32, i8*) #1

declare dso_local i32 @ui_out_field_fmt_int(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @annotate_frame_address(...) #1

declare dso_local i32 @ui_out_field_core_addr(i32, i8*, i64) #1

declare dso_local i32 @annotate_frame_address_end(...) #1

declare dso_local i32 @annotate_frame_function_name(...) #1

declare dso_local i32 @fprintf_symbol_filtered(i32, i8*, i32, i32) #1

declare dso_local i32 @ui_out_field_stream(i32, i8*, %struct.ui_stream*) #1

declare dso_local i32 @ui_out_wrap_hint(i32, i8*) #1

declare dso_local i32 @annotate_frame_args(...) #1

declare dso_local %struct.cleanup* @make_cleanup_ui_out_list_begin_end(i32, i8*) #1

declare dso_local i32 @catch_errors(i32, %struct.print_args_args*, i8*, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @annotate_frame_source_begin(...) #1

declare dso_local i32 @annotate_frame_source_file(...) #1

declare dso_local i32 @ui_out_field_string(i32, i8*, i8*) #1

declare dso_local i32 @annotate_frame_source_file_end(...) #1

declare dso_local i32 @annotate_frame_source_line(...) #1

declare dso_local i32 @ui_out_field_int(i32, i8*, i32) #1

declare dso_local i32 @annotate_frame_source_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

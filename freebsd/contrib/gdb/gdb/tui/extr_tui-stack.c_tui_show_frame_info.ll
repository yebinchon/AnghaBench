; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-stack.c_tui_show_frame_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-stack.c_tui_show_frame_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.frame_info = type { i32 }
%struct.tui_gen_win_info = type { i64* }
%struct.symtab_and_line = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i8* }
%union.tui_which_element = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%union.tui_line_or_address = type { i32 }
%struct.TYPE_8__ = type { i32, i64* }
%struct.tui_win_element = type { %union.tui_which_element }

@.str = private unnamed_addr constant [3 x i8] c"??\00", align 1
@TUI_SRC_WIN = common dso_local global %struct.tui_win_info* null, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"No function contains program counter for selected frame.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@TUI_DISASM_WIN = common dso_local global %struct.tui_win_info* null, align 8
@EMPTY_SOURCE_PROMPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_show_frame_info(%struct.frame_info* %0) #0 {
  %2 = alloca %struct.frame_info*, align 8
  %3 = alloca %struct.tui_win_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tui_gen_win_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.symtab_and_line, align 8
  %11 = alloca %union.tui_which_element*, align 8
  %12 = alloca %union.tui_line_or_address, align 4
  %13 = alloca %union.tui_line_or_address, align 4
  store %struct.frame_info* %0, %struct.frame_info** %2, align 8
  %14 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %15 = icmp ne %struct.frame_info* %14, null
  br i1 %15, label %16, label %185

16:                                               ; preds = %1
  %17 = call %struct.tui_gen_win_info* (...) @tui_locator_win_info_ptr()
  store %struct.tui_gen_win_info* %17, %struct.tui_gen_win_info** %8, align 8
  %18 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %19 = call i32 @find_frame_sal(%struct.frame_info* %18, %struct.symtab_and_line* %10)
  %20 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %10, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = icmp ne %struct.TYPE_7__* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %10, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @tui_source_is_displayed(i8* %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %23, %16
  %31 = phi i1 [ false, %16 ], [ %29, %23 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %10, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = icmp eq %struct.TYPE_7__* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %42

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %10, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  br label %42

42:                                               ; preds = %37, %36
  %43 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %36 ], [ %41, %37 ]
  %44 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %45 = call i32* @tui_get_function_from_frame(%struct.frame_info* %44)
  %46 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %10, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %49 = call i32 @get_frame_pc(%struct.frame_info* %48)
  %50 = call i32 @tui_set_locator_info(i8* %43, i32* %45, i32 %47, i32 %49)
  %51 = call i32 (...) @tui_show_locator_content()
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %181, %42
  %53 = load i32, i32* %6, align 4
  %54 = call %struct.TYPE_8__* (...) @tui_source_windows()
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %184

58:                                               ; preds = %52
  %59 = call %struct.TYPE_8__* (...) @tui_source_windows()
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.tui_win_info*
  store %struct.tui_win_info* %66, %struct.tui_win_info** %3, align 8
  %67 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %8, align 8
  %68 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.tui_win_element*
  %73 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %72, i32 0, i32 0
  store %union.tui_which_element* %73, %union.tui_which_element** %11, align 8
  %74 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %75 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_SRC_WIN, align 8
  %76 = icmp eq %struct.tui_win_info* %74, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %58
  %78 = load %union.tui_which_element*, %union.tui_which_element** %11, align 8
  %79 = bitcast %union.tui_which_element* %78 to %struct.TYPE_6__*
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %83 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sdiv i32 %85, 2
  %87 = sub nsw i32 %81, %86
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp sle i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %77
  store i32 1, i32* %5, align 4
  br label %92

92:                                               ; preds = %91, %77
  br label %106

93:                                               ; preds = %58
  %94 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %95 = call i32 @get_frame_pc(%struct.frame_info* %94)
  %96 = call i64 @find_pc_partial_function(i32 %95, i8** null, i32* %7, i32 0)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = call i32 @error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %105

100:                                              ; preds = %93
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %103 = call i32 @get_frame_pc(%struct.frame_info* %102)
  %104 = call i32 @tui_get_low_disassembly_address(i32 %101, i32 %103)
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %100, %98
  br label %106

106:                                              ; preds = %105, %92
  %107 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %108 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_SRC_WIN, align 8
  %109 = icmp eq %struct.tui_win_info* %107, %108
  br i1 %109, label %110, label %143

110:                                              ; preds = %106
  %111 = load i32, i32* %5, align 4
  %112 = bitcast %union.tui_line_or_address* %12 to i32*
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %110
  %116 = load %union.tui_which_element*, %union.tui_which_element** %11, align 8
  %117 = bitcast %union.tui_which_element* %116 to %struct.TYPE_6__*
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %121 = load i32, i32* @TRUE, align 4
  %122 = call i64 @tui_line_is_displayed(i32 %119, %struct.tui_win_info* %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %132, label %124

124:                                              ; preds = %115, %110
  %125 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %126 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %10, i32 0, i32 0
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = load i32, i32* @TRUE, align 4
  %129 = getelementptr inbounds %union.tui_line_or_address, %union.tui_line_or_address* %12, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @tui_update_source_window(%struct.tui_win_info* %125, %struct.TYPE_7__* %127, i32 %130, i32 %128)
  br label %142

132:                                              ; preds = %115
  %133 = load %union.tui_which_element*, %union.tui_which_element** %11, align 8
  %134 = bitcast %union.tui_which_element* %133 to %struct.TYPE_6__*
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = bitcast %union.tui_line_or_address* %12 to i32*
  store i32 %136, i32* %137, align 4
  %138 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %139 = getelementptr inbounds %union.tui_line_or_address, %union.tui_line_or_address* %12, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @tui_set_is_exec_point_at(i32 %140, %struct.tui_win_info* %138)
  br label %142

142:                                              ; preds = %132, %124
  br label %178

143:                                              ; preds = %106
  %144 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %145 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_DISASM_WIN, align 8
  %146 = icmp eq %struct.tui_win_info* %144, %145
  br i1 %146, label %147, label %177

147:                                              ; preds = %143
  %148 = load i32, i32* %7, align 4
  %149 = bitcast %union.tui_line_or_address* %13 to i32*
  store i32 %148, i32* %149, align 4
  %150 = load %union.tui_which_element*, %union.tui_which_element** %11, align 8
  %151 = bitcast %union.tui_which_element* %150 to %struct.TYPE_6__*
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %155 = load i32, i32* @TRUE, align 4
  %156 = call i32 @tui_addr_is_displayed(i32 %153, %struct.tui_win_info* %154, i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %166, label %158

158:                                              ; preds = %147
  %159 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %160 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %10, i32 0, i32 0
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = load i32, i32* @TRUE, align 4
  %163 = getelementptr inbounds %union.tui_line_or_address, %union.tui_line_or_address* %13, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @tui_update_source_window(%struct.tui_win_info* %159, %struct.TYPE_7__* %161, i32 %164, i32 %162)
  br label %176

166:                                              ; preds = %147
  %167 = load %union.tui_which_element*, %union.tui_which_element** %11, align 8
  %168 = bitcast %union.tui_which_element* %167 to %struct.TYPE_6__*
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = bitcast %union.tui_line_or_address* %13 to i32*
  store i32 %170, i32* %171, align 4
  %172 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %173 = getelementptr inbounds %union.tui_line_or_address, %union.tui_line_or_address* %13, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @tui_set_is_exec_point_at(i32 %174, %struct.tui_win_info* %172)
  br label %176

176:                                              ; preds = %166, %158
  br label %177

177:                                              ; preds = %176, %143
  br label %178

178:                                              ; preds = %177, %142
  %179 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %180 = call i32 @tui_update_exec_info(%struct.tui_win_info* %179)
  br label %181

181:                                              ; preds = %178
  %182 = load i32, i32* %6, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %6, align 4
  br label %52

184:                                              ; preds = %52
  br label %212

185:                                              ; preds = %1
  %186 = call i32 @tui_set_locator_info(i8* null, i32* null, i32 0, i32 0)
  %187 = call i32 (...) @tui_show_locator_content()
  store i32 0, i32* %4, align 4
  br label %188

188:                                              ; preds = %208, %185
  %189 = load i32, i32* %4, align 4
  %190 = call %struct.TYPE_8__* (...) @tui_source_windows()
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %194, label %211

194:                                              ; preds = %188
  %195 = call %struct.TYPE_8__* (...) @tui_source_windows()
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  %197 = load i64*, i64** %196, align 8
  %198 = load i32, i32* %4, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64, i64* %197, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = inttoptr i64 %201 to %struct.tui_win_info*
  store %struct.tui_win_info* %202, %struct.tui_win_info** %3, align 8
  %203 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %204 = load i32, i32* @EMPTY_SOURCE_PROMPT, align 4
  %205 = call i32 @tui_clear_source_content(%struct.tui_win_info* %203, i32 %204)
  %206 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %207 = call i32 @tui_update_exec_info(%struct.tui_win_info* %206)
  br label %208

208:                                              ; preds = %194
  %209 = load i32, i32* %4, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %4, align 4
  br label %188

211:                                              ; preds = %188
  br label %212

212:                                              ; preds = %211, %184
  ret void
}

declare dso_local %struct.tui_gen_win_info* @tui_locator_win_info_ptr(...) #1

declare dso_local i32 @find_frame_sal(%struct.frame_info*, %struct.symtab_and_line*) #1

declare dso_local i64 @tui_source_is_displayed(i8*) #1

declare dso_local i32 @tui_set_locator_info(i8*, i32*, i32, i32) #1

declare dso_local i32* @tui_get_function_from_frame(%struct.frame_info*) #1

declare dso_local i32 @get_frame_pc(%struct.frame_info*) #1

declare dso_local i32 @tui_show_locator_content(...) #1

declare dso_local %struct.TYPE_8__* @tui_source_windows(...) #1

declare dso_local i64 @find_pc_partial_function(i32, i8**, i32*, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @tui_get_low_disassembly_address(i32, i32) #1

declare dso_local i64 @tui_line_is_displayed(i32, %struct.tui_win_info*, i32) #1

declare dso_local i32 @tui_update_source_window(%struct.tui_win_info*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @tui_set_is_exec_point_at(i32, %struct.tui_win_info*) #1

declare dso_local i32 @tui_addr_is_displayed(i32, %struct.tui_win_info*, i32) #1

declare dso_local i32 @tui_update_exec_info(%struct.tui_win_info*) #1

declare dso_local i32 @tui_clear_source_content(%struct.tui_win_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

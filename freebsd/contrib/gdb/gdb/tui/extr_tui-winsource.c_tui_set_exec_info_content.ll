; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_set_exec_info_content.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_set_exec_info_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i64*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.tui_gen_win_info* }
%struct.tui_gen_win_info = type { i8**, i32, i32 }
%struct.tui_win_element = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }

@TUI_SUCCESS = common dso_local global i32 0, align 4
@TUI_EXECINFO_SIZE = common dso_local global i32 0, align 4
@TUI_BP_HIT = common dso_local global i32 0, align 4
@TUI_BP_HARDWARE = common dso_local global i32 0, align 4
@TUI_BP_HIT_POS = common dso_local global i64 0, align 8
@TUI_BP_ENABLED = common dso_local global i32 0, align 4
@TUI_BP_DISABLED = common dso_local global i32 0, align 4
@TUI_BP_BREAK_POS = common dso_local global i64 0, align 8
@TUI_EXEC_POS = common dso_local global i64 0, align 8
@TUI_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tui_set_exec_info_content(%struct.tui_win_info* %0) #0 {
  %2 = alloca %struct.tui_win_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tui_gen_win_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tui_win_element*, align 8
  %7 = alloca %struct.tui_win_element*, align 8
  %8 = alloca i32, align 4
  store %struct.tui_win_info* %0, %struct.tui_win_info** %2, align 8
  %9 = load i32, i32* @TUI_SUCCESS, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %11 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %13, align 8
  %15 = icmp ne %struct.tui_gen_win_info* %14, null
  br i1 %15, label %16, label %182

16:                                               ; preds = %1
  %17 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %18 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %20, align 8
  store %struct.tui_gen_win_info* %21, %struct.tui_gen_win_info** %4, align 8
  %22 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %4, align 8
  %23 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  %25 = icmp eq i8** %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %16
  %27 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %28 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %4, align 8
  %32 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @tui_alloc_content(i32 %30, i32 %33)
  %35 = inttoptr i64 %34 to i8**
  %36 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %4, align 8
  %37 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %36, i32 0, i32 0
  store i8** %35, i8*** %37, align 8
  br label %38

38:                                               ; preds = %26, %16
  %39 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %4, align 8
  %40 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %39, i32 0, i32 0
  %41 = load i8**, i8*** %40, align 8
  %42 = icmp ne i8** %41, null
  br i1 %42, label %43, label %179

43:                                               ; preds = %38
  %44 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %45 = call i32 @tui_update_breakpoint_info(%struct.tui_win_info* %44, i32 1)
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %169, %43
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %49 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %47, %51
  br i1 %52, label %53, label %172

53:                                               ; preds = %46
  %54 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %4, align 8
  %55 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %54, i32 0, i32 0
  %56 = load i8**, i8*** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = bitcast i8* %60 to %struct.tui_win_element*
  store %struct.tui_win_element* %61, %struct.tui_win_element** %6, align 8
  %62 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %63 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to %struct.tui_win_element*
  store %struct.tui_win_element* %70, %struct.tui_win_element** %7, align 8
  %71 = load %struct.tui_win_element*, %struct.tui_win_element** %6, align 8
  %72 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @memset(i8* %74, i8 signext 32, i32 8)
  %76 = load %struct.tui_win_element*, %struct.tui_win_element** %6, align 8
  %77 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* @TUI_EXECINFO_SIZE, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  store i8 0, i8* %83, align 1
  %84 = load %struct.tui_win_element*, %struct.tui_win_element** %7, align 8
  %85 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @TUI_BP_HIT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %53
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @TUI_BP_HARDWARE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 72, i32 66
  %100 = trunc i32 %99 to i8
  %101 = load %struct.tui_win_element*, %struct.tui_win_element** %6, align 8
  %102 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i64, i64* @TUI_BP_HIT_POS, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8 %100, i8* %106, align 1
  br label %129

107:                                              ; preds = %53
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @TUI_BP_ENABLED, align 4
  %110 = load i32, i32* @TUI_BP_DISABLED, align 4
  %111 = or i32 %109, %110
  %112 = and i32 %108, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %107
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @TUI_BP_HARDWARE, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 104, i32 98
  %121 = trunc i32 %120 to i8
  %122 = load %struct.tui_win_element*, %struct.tui_win_element** %6, align 8
  %123 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load i64, i64* @TUI_BP_HIT_POS, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  store i8 %121, i8* %127, align 1
  br label %128

128:                                              ; preds = %114, %107
  br label %129

129:                                              ; preds = %128, %93
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @TUI_BP_ENABLED, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %129
  %135 = load %struct.tui_win_element*, %struct.tui_win_element** %6, align 8
  %136 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = load i64, i64* @TUI_BP_BREAK_POS, align 8
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  store i8 43, i8* %140, align 1
  br label %154

141:                                              ; preds = %129
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @TUI_BP_DISABLED, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %141
  %147 = load %struct.tui_win_element*, %struct.tui_win_element** %6, align 8
  %148 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load i64, i64* @TUI_BP_BREAK_POS, align 8
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  store i8 45, i8* %152, align 1
  br label %153

153:                                              ; preds = %146, %141
  br label %154

154:                                              ; preds = %153, %134
  %155 = load %struct.tui_win_element*, %struct.tui_win_element** %7, align 8
  %156 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %154
  %162 = load %struct.tui_win_element*, %struct.tui_win_element** %6, align 8
  %163 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = load i64, i64* @TUI_EXEC_POS, align 8
  %167 = getelementptr inbounds i8, i8* %165, i64 %166
  store i8 62, i8* %167, align 1
  br label %168

168:                                              ; preds = %161, %154
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %5, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %5, align 4
  br label %46

172:                                              ; preds = %46
  %173 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %174 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %4, align 8
  %178 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 8
  br label %181

179:                                              ; preds = %38
  %180 = load i32, i32* @TUI_FAILURE, align 4
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %179, %172
  br label %182

182:                                              ; preds = %181, %1
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i64 @tui_alloc_content(i32, i32) #1

declare dso_local i32 @tui_update_breakpoint_info(%struct.tui_win_info*, i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

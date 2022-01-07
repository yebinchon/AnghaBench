; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c_new_height_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c_new_height_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64* }

@SRC_COMMAND = common dso_local global i32 0, align 4
@DISASSEM_COMMAND = common dso_local global i32 0, align 4
@CMD_WIN = common dso_local global i64 0, align 8
@MIN_CMD_WIN_HEIGHT = common dso_local global i32 0, align 4
@MIN_WIN_HEIGHT = common dso_local global i32 0, align 4
@TUI_CMD_WIN = common dso_local global %struct.tui_win_info* null, align 8
@SRC_DISASSEM_COMMAND = common dso_local global i32 0, align 4
@TUI_SRC_WIN = common dso_local global %struct.tui_win_info* null, align 8
@TUI_DISASM_WIN = common dso_local global %struct.tui_win_info* null, align 8
@TUI_DATA_WIN = common dso_local global %struct.tui_win_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tui_win_info*, i32)* @new_height_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @new_height_ok(%struct.tui_win_info* %0, i32 %1) #0 {
  %3 = alloca %struct.tui_win_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tui_win_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tui_win_info*, align 8
  %13 = alloca %struct.tui_win_info*, align 8
  store %struct.tui_win_info* %0, %struct.tui_win_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 (...) @tui_term_height()
  %16 = icmp slt i32 %14, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %266

20:                                               ; preds = %2
  %21 = call i32 (...) @tui_current_layout()
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %24 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %22, %26
  %28 = mul nsw i32 %27, -1
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @SRC_COMMAND, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %20
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @DISASSEM_COMMAND, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %101

36:                                               ; preds = %32, %20
  %37 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %38 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CMD_WIN, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load i32, i32* %4, align 4
  %45 = call i32 (...) @tui_term_height()
  %46 = sub nsw i32 %45, 4
  %47 = icmp sle i32 %44, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @MIN_CMD_WIN_HEIGHT, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %70, label %52

52:                                               ; preds = %48, %43, %36
  %53 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %54 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CMD_WIN, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %52
  %60 = load i32, i32* %4, align 4
  %61 = call i32 (...) @tui_term_height()
  %62 = sub nsw i32 %61, 2
  %63 = icmp sle i32 %60, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @MIN_WIN_HEIGHT, align 4
  %67 = icmp sge i32 %65, %66
  br label %68

68:                                               ; preds = %64, %59, %52
  %69 = phi i1 [ false, %59 ], [ false, %52 ], [ %67, %64 ]
  br label %70

70:                                               ; preds = %68, %48
  %71 = phi i1 [ true, %48 ], [ %69, %68 ]
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %100

75:                                               ; preds = %70
  %76 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %77 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_CMD_WIN, align 8
  %78 = icmp eq %struct.tui_win_info* %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = call %struct.TYPE_4__* (...) @tui_source_windows()
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to %struct.tui_win_info*
  store %struct.tui_win_info* %85, %struct.tui_win_info** %8, align 8
  br label %88

86:                                               ; preds = %75
  %87 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_CMD_WIN, align 8
  store %struct.tui_win_info* %87, %struct.tui_win_info** %8, align 8
  br label %88

88:                                               ; preds = %86, %79
  %89 = load i32, i32* %4, align 4
  %90 = load %struct.tui_win_info*, %struct.tui_win_info** %8, align 8
  %91 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %93, %94
  %96 = add nsw i32 %89, %95
  %97 = call i32 (...) @tui_term_height()
  %98 = icmp sle i32 %96, %97
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %88, %70
  br label %265

101:                                              ; preds = %32
  store i32 0, i32* %11, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @SRC_DISASSEM_COMMAND, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_SRC_WIN, align 8
  store %struct.tui_win_info* %106, %struct.tui_win_info** %12, align 8
  %107 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_DISASM_WIN, align 8
  store %struct.tui_win_info* %107, %struct.tui_win_info** %13, align 8
  br label %116

108:                                              ; preds = %101
  %109 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_DATA_WIN, align 8
  store %struct.tui_win_info* %109, %struct.tui_win_info** %12, align 8
  %110 = call %struct.TYPE_4__* (...) @tui_source_windows()
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 0
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to %struct.tui_win_info*
  store %struct.tui_win_info* %115, %struct.tui_win_info** %13, align 8
  br label %116

116:                                              ; preds = %108, %105
  %117 = load %struct.tui_win_info*, %struct.tui_win_info** %12, align 8
  %118 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.tui_win_info*, %struct.tui_win_info** %13, align 8
  %122 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %120, %124
  %126 = sub nsw i32 %125, 1
  %127 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_CMD_WIN, align 8
  %128 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %126, %130
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  store i32 %132, i32* %10, align 4
  %133 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %134 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_CMD_WIN, align 8
  %135 = icmp eq %struct.tui_win_info* %133, %134
  br i1 %135, label %136, label %176

136:                                              ; preds = %116
  %137 = load %struct.tui_win_info*, %struct.tui_win_info** %12, align 8
  %138 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.tui_win_info*, %struct.tui_win_info** %13, align 8
  %142 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %140, %144
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %145, %146
  %148 = load i32, i32* @MIN_WIN_HEIGHT, align 4
  %149 = mul nsw i32 %148, 2
  %150 = icmp sge i32 %147, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %136
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @MIN_CMD_WIN_HEIGHT, align 4
  %154 = icmp sge i32 %152, %153
  br label %155

155:                                              ; preds = %151, %136
  %156 = phi i1 [ false, %136 ], [ %154, %151 ]
  %157 = zext i1 %156 to i32
  store i32 %157, i32* %5, align 4
  %158 = load i32, i32* %5, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %175

160:                                              ; preds = %155
  %161 = load i32, i32* %4, align 4
  %162 = load %struct.tui_win_info*, %struct.tui_win_info** %12, align 8
  %163 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.tui_win_info*, %struct.tui_win_info** %13, align 8
  %167 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %165, %169
  %171 = load i32, i32* %6, align 4
  %172 = add nsw i32 %170, %171
  %173 = add nsw i32 %161, %172
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* @MIN_CMD_WIN_HEIGHT, align 4
  store i32 %174, i32* %11, align 4
  br label %175

175:                                              ; preds = %160, %155
  br label %250

176:                                              ; preds = %116
  %177 = load i32, i32* @MIN_WIN_HEIGHT, align 4
  store i32 %177, i32* %11, align 4
  %178 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_CMD_WIN, align 8
  %179 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %6, align 4
  %183 = add nsw i32 %181, %182
  %184 = icmp sgt i32 %183, 0
  %185 = zext i1 %184 to i32
  store i32 %185, i32* %5, align 4
  %186 = load i32, i32* %5, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %213, label %188

188:                                              ; preds = %176
  %189 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %190 = load %struct.tui_win_info*, %struct.tui_win_info** %12, align 8
  %191 = icmp eq %struct.tui_win_info* %189, %190
  br i1 %191, label %192, label %202

192:                                              ; preds = %188
  %193 = load %struct.tui_win_info*, %struct.tui_win_info** %13, align 8
  %194 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %6, align 4
  %198 = add nsw i32 %196, %197
  %199 = load i32, i32* %11, align 4
  %200 = icmp sge i32 %198, %199
  %201 = zext i1 %200 to i32
  store i32 %201, i32* %5, align 4
  br label %212

202:                                              ; preds = %188
  %203 = load %struct.tui_win_info*, %struct.tui_win_info** %12, align 8
  %204 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* %6, align 4
  %208 = add nsw i32 %206, %207
  %209 = load i32, i32* %11, align 4
  %210 = icmp sge i32 %208, %209
  %211 = zext i1 %210 to i32
  store i32 %211, i32* %5, align 4
  br label %212

212:                                              ; preds = %202, %192
  br label %213

213:                                              ; preds = %212, %176
  %214 = load i32, i32* %5, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %249

216:                                              ; preds = %213
  %217 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %218 = load %struct.tui_win_info*, %struct.tui_win_info** %12, align 8
  %219 = icmp eq %struct.tui_win_info* %217, %218
  br i1 %219, label %220, label %234

220:                                              ; preds = %216
  %221 = load i32, i32* %4, align 4
  %222 = load %struct.tui_win_info*, %struct.tui_win_info** %13, align 8
  %223 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = add nsw i32 %221, %225
  %227 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_CMD_WIN, align 8
  %228 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = add nsw i32 %226, %230
  %232 = load i32, i32* %6, align 4
  %233 = add nsw i32 %231, %232
  store i32 %233, i32* %10, align 4
  br label %248

234:                                              ; preds = %216
  %235 = load i32, i32* %4, align 4
  %236 = load %struct.tui_win_info*, %struct.tui_win_info** %12, align 8
  %237 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = add nsw i32 %235, %239
  %241 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_CMD_WIN, align 8
  %242 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = add nsw i32 %240, %244
  %246 = load i32, i32* %6, align 4
  %247 = add nsw i32 %245, %246
  store i32 %247, i32* %10, align 4
  br label %248

248:                                              ; preds = %234, %220
  br label %249

249:                                              ; preds = %248, %213
  br label %250

250:                                              ; preds = %249, %175
  %251 = load i32, i32* %5, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %264

253:                                              ; preds = %250
  %254 = load i32, i32* %4, align 4
  %255 = load i32, i32* %11, align 4
  %256 = icmp sge i32 %254, %255
  br i1 %256, label %257, label %261

257:                                              ; preds = %253
  %258 = load i32, i32* %10, align 4
  %259 = load i32, i32* %9, align 4
  %260 = icmp sle i32 %258, %259
  br label %261

261:                                              ; preds = %257, %253
  %262 = phi i1 [ false, %253 ], [ %260, %257 ]
  %263 = zext i1 %262 to i32
  store i32 %263, i32* %5, align 4
  br label %264

264:                                              ; preds = %261, %250
  br label %265

265:                                              ; preds = %264, %100
  br label %266

266:                                              ; preds = %265, %2
  %267 = load i32, i32* %5, align 4
  ret i32 %267
}

declare dso_local i32 @tui_term_height(...) #1

declare dso_local i32 @tui_current_layout(...) #1

declare dso_local %struct.TYPE_4__* @tui_source_windows(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-regs.c_tui_display_registers_from.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-regs.c_tui_display_registers_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.tui_data_info }
%struct.tui_data_info = type { i64, i32, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.tui_gen_win_info }
%struct.tui_gen_win_info = type { i32, i32, i32*, %struct.TYPE_12__, i64* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.tui_data_element = type { i8* }
%struct.tui_win_element = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.tui_data_element }

@TUI_DATA_WIN = common dso_local global %struct.TYPE_14__* null, align 8
@DONT_BOX_WINDOW = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_display_registers_from(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tui_data_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tui_data_element*, align 8
  %11 = alloca %struct.tui_gen_win_info*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.tui_gen_win_info*, align 8
  %15 = alloca %struct.tui_data_element*, align 8
  store i32 %0, i32* %2, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_DATA_WIN, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store %struct.tui_data_info* %18, %struct.tui_data_info** %3, align 8
  %19 = load %struct.tui_data_info*, %struct.tui_data_info** %3, align 8
  %20 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %19, i32 0, i32 2
  %21 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %20, align 8
  %22 = icmp ne %struct.TYPE_13__** %21, null
  br i1 %22, label %23, label %257

23:                                               ; preds = %1
  %24 = load %struct.tui_data_info*, %struct.tui_data_info** %3, align 8
  %25 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %257

28:                                               ; preds = %23
  %29 = load i32, i32* %2, align 4
  store i32 %29, i32* %4, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %88, %28
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = load %struct.tui_data_info*, %struct.tui_data_info** %3, align 8
  %34 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %91

37:                                               ; preds = %30
  %38 = load %struct.tui_data_info*, %struct.tui_data_info** %3, align 8
  %39 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %38, i32 0, i32 2
  %40 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %40, i64 %42
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  store %struct.tui_gen_win_info* %46, %struct.tui_gen_win_info** %11, align 8
  %47 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %11, align 8
  %48 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %47, i32 0, i32 4
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.tui_win_element*
  %53 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  store %struct.tui_data_element* %54, %struct.tui_data_element** %10, align 8
  store i32 0, i32* %13, align 4
  %55 = load %struct.tui_data_element*, %struct.tui_data_element** %10, align 8
  %56 = getelementptr inbounds %struct.tui_data_element, %struct.tui_data_element* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %12, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %81

60:                                               ; preds = %37
  br label %61

61:                                               ; preds = %79, %60
  %62 = load i8*, i8** %12, align 8
  %63 = load i8, i8* %62, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %61
  %66 = load i8*, i8** %12, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %12, align 8
  %68 = load i8, i8* %66, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 9
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load i32, i32* %13, align 4
  %73 = sdiv i32 %72, 8
  %74 = add nsw i32 %73, 1
  %75 = mul nsw i32 8, %74
  store i32 %75, i32* %13, align 4
  br label %79

76:                                               ; preds = %65
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %76, %71
  br label %61

80:                                               ; preds = %61
  br label %81

81:                                               ; preds = %80, %37
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %85, %81
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %30

91:                                               ; preds = %30
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %2, align 4
  store i32 %94, i32* %4, align 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_DATA_WIN, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %98, 2
  %100 = load i32, i32* %7, align 4
  %101 = sdiv i32 %99, %100
  %102 = load %struct.tui_data_info*, %struct.tui_data_info** %3, align 8
  %103 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load %struct.tui_data_info*, %struct.tui_data_info** %3, align 8
  %105 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %91
  %109 = load %struct.tui_data_info*, %struct.tui_data_info** %3, align 8
  %110 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %109, i32 0, i32 1
  store i32 1, i32* %110, align 8
  br label %111

111:                                              ; preds = %108, %91
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_DATA_WIN, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %115, 2
  %117 = load %struct.tui_data_info*, %struct.tui_data_info** %3, align 8
  %118 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = sdiv i32 %116, %119
  store i32 %120, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %121

121:                                              ; preds = %253, %111
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = load %struct.tui_data_info*, %struct.tui_data_info** %3, align 8
  %125 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp slt i64 %123, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %121
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_DATA_WIN, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp sle i32 %129, %133
  br label %135

135:                                              ; preds = %128, %121
  %136 = phi i1 [ false, %121 ], [ %134, %128 ]
  br i1 %136, label %137, label %256

137:                                              ; preds = %135
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %250, %137
  %139 = load i32, i32* %5, align 4
  %140 = load %struct.tui_data_info*, %struct.tui_data_info** %3, align 8
  %141 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %138
  %145 = load i32, i32* %4, align 4
  %146 = sext i32 %145 to i64
  %147 = load %struct.tui_data_info*, %struct.tui_data_info** %3, align 8
  %148 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp slt i64 %146, %149
  br label %151

151:                                              ; preds = %144, %138
  %152 = phi i1 [ false, %138 ], [ %150, %144 ]
  br i1 %152, label %153, label %253

153:                                              ; preds = %151
  %154 = load %struct.tui_data_info*, %struct.tui_data_info** %3, align 8
  %155 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %154, i32 0, i32 2
  %156 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %155, align 8
  %157 = load i32, i32* %4, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %156, i64 %158
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  store %struct.tui_gen_win_info* %162, %struct.tui_gen_win_info** %14, align 8
  %163 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %14, align 8
  %164 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %163, i32 0, i32 4
  %165 = load i64*, i64** %164, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 0
  %167 = load i64, i64* %166, align 8
  %168 = inttoptr i64 %167 to %struct.tui_win_element*
  %169 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  store %struct.tui_data_element* %170, %struct.tui_data_element** %15, align 8
  %171 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %14, align 8
  %172 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %210

175:                                              ; preds = %153
  %176 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %14, align 8
  %177 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 1
  br i1 %179, label %203, label %180

180:                                              ; preds = %175
  %181 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %14, align 8
  %182 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %7, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %203, label %186

186:                                              ; preds = %180
  %187 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %14, align 8
  %188 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* %5, align 4
  %193 = mul nsw i32 %191, %192
  %194 = add nsw i32 %193, 1
  %195 = icmp ne i32 %190, %194
  br i1 %195, label %203, label %196

196:                                              ; preds = %186
  %197 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %14, align 8
  %198 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %8, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %203, label %210

203:                                              ; preds = %196, %186, %180, %175
  %204 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %14, align 8
  %205 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = call i32 @tui_delete_win(i32* %206)
  %208 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %14, align 8
  %209 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %208, i32 0, i32 2
  store i32* null, i32** %209, align 8
  br label %210

210:                                              ; preds = %203, %196, %153
  %211 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %14, align 8
  %212 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = icmp eq i32* %213, null
  br i1 %214, label %215, label %240

215:                                              ; preds = %210
  %216 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %14, align 8
  %217 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %216, i32 0, i32 0
  store i32 1, i32* %217, align 8
  %218 = load i32, i32* %7, align 4
  %219 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %14, align 8
  %220 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %219, i32 0, i32 1
  store i32 %218, i32* %220, align 4
  %221 = load i32, i32* %7, align 4
  %222 = load i32, i32* %5, align 4
  %223 = mul nsw i32 %221, %222
  %224 = add nsw i32 %223, 1
  %225 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %14, align 8
  %226 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 0
  store i32 %224, i32* %227, align 8
  %228 = load i32, i32* %8, align 4
  %229 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %14, align 8
  %230 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %229, i32 0, i32 3
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 1
  store i32 %228, i32* %231, align 4
  %232 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %14, align 8
  %233 = load i32, i32* @DONT_BOX_WINDOW, align 4
  %234 = call i32 @tui_make_window(%struct.tui_gen_win_info* %232, i32 %233)
  %235 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %14, align 8
  %236 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %235, i32 0, i32 2
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* @FALSE, align 4
  %239 = call i32 @scrollok(i32* %237, i32 %238)
  br label %240

240:                                              ; preds = %215, %210
  %241 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %14, align 8
  %242 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %241, i32 0, i32 2
  %243 = load i32*, i32** %242, align 8
  %244 = call i32 @touchwin(i32* %243)
  %245 = load %struct.tui_data_element*, %struct.tui_data_element** %15, align 8
  %246 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %14, align 8
  %247 = call i32 @tui_display_register(%struct.tui_data_element* %245, %struct.tui_gen_win_info* %246)
  %248 = load i32, i32* %4, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %4, align 4
  br label %250

250:                                              ; preds = %240
  %251 = load i32, i32* %5, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %5, align 4
  br label %138

253:                                              ; preds = %151
  %254 = load i32, i32* %8, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %8, align 4
  br label %121

256:                                              ; preds = %135
  br label %257

257:                                              ; preds = %256, %23, %1
  ret void
}

declare dso_local i32 @tui_delete_win(i32*) #1

declare dso_local i32 @tui_make_window(%struct.tui_gen_win_info*, i32) #1

declare dso_local i32 @scrollok(i32*, i32) #1

declare dso_local i32 @touchwin(i32*) #1

declare dso_local i32 @tui_display_register(%struct.tui_data_element*, %struct.tui_gen_win_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

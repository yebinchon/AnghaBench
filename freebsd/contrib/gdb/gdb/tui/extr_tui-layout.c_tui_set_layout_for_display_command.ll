; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-layout.c_tui_set_layout_for_display_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-layout.c_tui_set_layout_for_display_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@TUI_SUCCESS = common dso_local global i32 0, align 4
@UNDEFINED_LAYOUT = common dso_local global i32 0, align 4
@TUI_UNDEFINED_REGS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Ambiguous command input.\0A\00", align 1
@TUI_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"SRC\00", align 1
@SRC_COMMAND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"ASM\00", align 1
@DISASSEM_COMMAND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"SPLIT\00", align 1
@SRC_DISASSEM_COMMAND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"REGS\00", align 1
@TUI_GENERAL_SPECIAL_REGS_NAME = common dso_local global i8* null, align 8
@TUI_GENERAL_REGS_NAME = common dso_local global i8* null, align 8
@TUI_FLOAT_REGS_NAME = common dso_local global i8* null, align 8
@TUI_SPECIAL_REGS_NAME = common dso_local global i8* null, align 8
@SRC_DATA_COMMAND = common dso_local global i32 0, align 4
@DISASSEM_DATA_COMMAND = common dso_local global i32 0, align 4
@TUI_DATA_WIN = common dso_local global %struct.TYPE_6__* null, align 8
@TUI_SFLOAT_REGS = common dso_local global i64 0, align 8
@TUI_DFLOAT_REGS = common dso_local global i64 0, align 8
@TUI_GENERAL_AND_SPECIAL_REGS = common dso_local global i32 0, align 4
@TUI_GENERAL_REGS = common dso_local global i32 0, align 4
@TUI_SPECIAL_REGS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"NEXT\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"PREV\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tui_set_layout_for_display_command(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @TUI_SUCCESS, align 4
  store i32 %9, i32* %3, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %215

12:                                               ; preds = %1
  %13 = load i32, i32* @UNDEFINED_LAYOUT, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i64, i64* @TUI_UNDEFINED_REGS, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = call i32 (...) @tui_current_layout()
  store i32 %16, i32* %8, align 4
  %17 = load i8*, i8** %2, align 8
  %18 = call i64 @xstrdup(i8* %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %5, align 8
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %36, %12
  %21 = load i32, i32* %4, align 4
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = call signext i8 @toupper(i8 signext %30)
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8 %31, i8* %35, align 1
  br label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %20

39:                                               ; preds = %20
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = icmp sle i32 %41, 1
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = load i8*, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 83
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %5, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 36
  br i1 %52, label %53, label %56

53:                                               ; preds = %48, %43
  %54 = call i32 @warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @TUI_FAILURE, align 4
  store i32 %55, i32* %3, align 4
  br label %214

56:                                               ; preds = %48, %39
  %57 = load i8*, i8** %5, align 8
  %58 = call i64 @subset_compare(i8* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @SRC_COMMAND, align 4
  store i32 %61, i32* %6, align 4
  br label %208

62:                                               ; preds = %56
  %63 = load i8*, i8** %5, align 8
  %64 = call i64 @subset_compare(i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* @DISASSEM_COMMAND, align 4
  store i32 %67, i32* %6, align 4
  br label %207

68:                                               ; preds = %62
  %69 = load i8*, i8** %5, align 8
  %70 = call i64 @subset_compare(i8* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @SRC_DISASSEM_COMMAND, align 4
  store i32 %73, i32* %6, align 4
  br label %206

74:                                               ; preds = %68
  %75 = load i8*, i8** %5, align 8
  %76 = call i64 @subset_compare(i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %98, label %78

78:                                               ; preds = %74
  %79 = load i8*, i8** %5, align 8
  %80 = load i8*, i8** @TUI_GENERAL_SPECIAL_REGS_NAME, align 8
  %81 = call i64 @subset_compare(i8* %79, i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %98, label %83

83:                                               ; preds = %78
  %84 = load i8*, i8** %5, align 8
  %85 = load i8*, i8** @TUI_GENERAL_REGS_NAME, align 8
  %86 = call i64 @subset_compare(i8* %84, i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %83
  %89 = load i8*, i8** %5, align 8
  %90 = load i8*, i8** @TUI_FLOAT_REGS_NAME, align 8
  %91 = call i64 @subset_compare(i8* %89, i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = load i8*, i8** %5, align 8
  %95 = load i8*, i8** @TUI_SPECIAL_REGS_NAME, align 8
  %96 = call i64 @subset_compare(i8* %94, i8* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %189

98:                                               ; preds = %93, %88, %83, %78, %74
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @SRC_COMMAND, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @SRC_DATA_COMMAND, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102, %98
  %107 = load i32, i32* @SRC_DATA_COMMAND, align 4
  store i32 %107, i32* %6, align 4
  br label %110

108:                                              ; preds = %102
  %109 = load i32, i32* @DISASSEM_DATA_COMMAND, align 4
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %108, %106
  %111 = load i8*, i8** %5, align 8
  %112 = load i8*, i8** @TUI_FLOAT_REGS_NAME, align 8
  %113 = call i64 @subset_compare(i8* %111, i8* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %142

115:                                              ; preds = %110
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TUI_DATA_WIN, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @TUI_SFLOAT_REGS, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %115
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TUI_DATA_WIN, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @TUI_DFLOAT_REGS, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %123
  %132 = load i64, i64* @TUI_SFLOAT_REGS, align 8
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %7, align 4
  br label %141

134:                                              ; preds = %123, %115
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TUI_DATA_WIN, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %134, %131
  br label %188

142:                                              ; preds = %110
  %143 = load i8*, i8** %5, align 8
  %144 = load i8*, i8** @TUI_GENERAL_SPECIAL_REGS_NAME, align 8
  %145 = call i64 @subset_compare(i8* %143, i8* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = load i32, i32* @TUI_GENERAL_AND_SPECIAL_REGS, align 4
  store i32 %148, i32* %7, align 4
  br label %187

149:                                              ; preds = %142
  %150 = load i8*, i8** %5, align 8
  %151 = load i8*, i8** @TUI_GENERAL_REGS_NAME, align 8
  %152 = call i64 @subset_compare(i8* %150, i8* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = load i32, i32* @TUI_GENERAL_REGS, align 4
  store i32 %155, i32* %7, align 4
  br label %186

156:                                              ; preds = %149
  %157 = load i8*, i8** %5, align 8
  %158 = load i8*, i8** @TUI_SPECIAL_REGS_NAME, align 8
  %159 = call i64 @subset_compare(i8* %157, i8* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = load i32, i32* @TUI_SPECIAL_REGS, align 4
  store i32 %162, i32* %7, align 4
  br label %185

163:                                              ; preds = %156
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TUI_DATA_WIN, align 8
  %165 = icmp ne %struct.TYPE_6__* %164, null
  br i1 %165, label %166, label %184

166:                                              ; preds = %163
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TUI_DATA_WIN, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @TUI_UNDEFINED_REGS, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %181

174:                                              ; preds = %166
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TUI_DATA_WIN, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %7, align 4
  br label %183

181:                                              ; preds = %166
  %182 = load i32, i32* @TUI_GENERAL_REGS, align 4
  store i32 %182, i32* %7, align 4
  br label %183

183:                                              ; preds = %181, %174
  br label %184

184:                                              ; preds = %183, %163
  br label %185

185:                                              ; preds = %184, %161
  br label %186

186:                                              ; preds = %185, %154
  br label %187

187:                                              ; preds = %186, %147
  br label %188

188:                                              ; preds = %187, %141
  br label %205

189:                                              ; preds = %93
  %190 = load i8*, i8** %5, align 8
  %191 = call i64 @subset_compare(i8* %190, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %189
  %194 = call i32 (...) @next_layout()
  store i32 %194, i32* %6, align 4
  br label %204

195:                                              ; preds = %189
  %196 = load i8*, i8** %5, align 8
  %197 = call i64 @subset_compare(i8* %196, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = call i32 (...) @prev_layout()
  store i32 %200, i32* %6, align 4
  br label %203

201:                                              ; preds = %195
  %202 = load i32, i32* @TUI_FAILURE, align 4
  store i32 %202, i32* %3, align 4
  br label %203

203:                                              ; preds = %201, %199
  br label %204

204:                                              ; preds = %203, %193
  br label %205

205:                                              ; preds = %204, %188
  br label %206

206:                                              ; preds = %205, %72
  br label %207

207:                                              ; preds = %206, %66
  br label %208

208:                                              ; preds = %207, %60
  %209 = load i8*, i8** %5, align 8
  %210 = call i32 @xfree(i8* %209)
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* %7, align 4
  %213 = call i32 @tui_set_layout(i32 %211, i32 %212)
  br label %214

214:                                              ; preds = %208, %53
  br label %217

215:                                              ; preds = %1
  %216 = load i32, i32* @TUI_FAILURE, align 4
  store i32 %216, i32* %3, align 4
  br label %217

217:                                              ; preds = %215, %214
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

declare dso_local i32 @tui_current_layout(...) #1

declare dso_local i64 @xstrdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i64 @subset_compare(i8*, i8*) #1

declare dso_local i32 @next_layout(...) #1

declare dso_local i32 @prev_layout(...) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @tui_set_layout(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

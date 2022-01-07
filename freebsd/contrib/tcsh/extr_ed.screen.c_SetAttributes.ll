; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.screen.c_SetAttributes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.screen.c_SetAttributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATTRIBUTES = common dso_local global i32 0, align 4
@cur_atr = common dso_local global i32 0, align 4
@me_all = common dso_local global i64 0, align 8
@T_me = common dso_local global i32 0, align 4
@BOLD = common dso_local global i32 0, align 4
@UNDER = common dso_local global i32 0, align 4
@STANDOUT = common dso_local global i32 0, align 4
@PUTPURE = common dso_local global i32 0, align 4
@T_md = common dso_local global i32 0, align 4
@T_se = common dso_local global i32 0, align 4
@T_ue = common dso_local global i32 0, align 4
@T_so = common dso_local global i32 0, align 4
@T_us = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetAttributes(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @ATTRIBUTES, align 4
  %4 = load i32, i32* %2, align 4
  %5 = and i32 %4, %3
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @cur_atr, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %228

9:                                                ; preds = %1
  %10 = load i64, i64* @me_all, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %52

12:                                               ; preds = %9
  %13 = load i32, i32* @T_me, align 4
  %14 = call i64 @GoodStr(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %52

16:                                               ; preds = %12
  %17 = load i32, i32* @cur_atr, align 4
  %18 = load i32, i32* @BOLD, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @BOLD, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %21, %16
  %27 = load i32, i32* @cur_atr, align 4
  %28 = load i32, i32* @UNDER, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @UNDER, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %31, %26
  %37 = load i32, i32* @cur_atr, align 4
  %38 = load i32, i32* @STANDOUT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @STANDOUT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41, %31, %21
  %47 = load i32, i32* @T_me, align 4
  %48 = call i32 @Str(i32 %47)
  %49 = load i32, i32* @PUTPURE, align 4
  %50 = call i32 @tputs(i32 %48, i32 1, i32 %49)
  store i32 0, i32* @cur_atr, align 4
  br label %51

51:                                               ; preds = %46, %41, %36
  br label %52

52:                                               ; preds = %51, %12, %9
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* @BOLD, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @cur_atr, align 4
  %57 = load i32, i32* @BOLD, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %137

60:                                               ; preds = %52
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* @BOLD, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %60
  %66 = load i32, i32* @T_md, align 4
  %67 = call i64 @GoodStr(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = load i32, i32* @T_me, align 4
  %71 = call i64 @GoodStr(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load i32, i32* @T_md, align 4
  %75 = call i32 @Str(i32 %74)
  %76 = load i32, i32* @PUTPURE, align 4
  %77 = call i32 @tputs(i32 %75, i32 1, i32 %76)
  %78 = load i32, i32* @BOLD, align 4
  %79 = load i32, i32* @cur_atr, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* @cur_atr, align 4
  br label %81

81:                                               ; preds = %73, %69, %65
  br label %136

82:                                               ; preds = %60
  %83 = load i32, i32* @T_md, align 4
  %84 = call i64 @GoodStr(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %135

86:                                               ; preds = %82
  %87 = load i32, i32* @T_me, align 4
  %88 = call i64 @GoodStr(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %135

90:                                               ; preds = %86
  %91 = load i32, i32* @T_me, align 4
  %92 = call i32 @Str(i32 %91)
  %93 = load i32, i32* @PUTPURE, align 4
  %94 = call i32 @tputs(i32 %92, i32 1, i32 %93)
  %95 = load i32, i32* @cur_atr, align 4
  %96 = load i32, i32* @STANDOUT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %90
  %100 = load i32, i32* @T_se, align 4
  %101 = call i64 @GoodStr(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %99
  %104 = load i32, i32* @T_se, align 4
  %105 = call i32 @Str(i32 %104)
  %106 = load i32, i32* @PUTPURE, align 4
  %107 = call i32 @tputs(i32 %105, i32 1, i32 %106)
  %108 = load i32, i32* @STANDOUT, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* @cur_atr, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* @cur_atr, align 4
  br label %112

112:                                              ; preds = %103, %99, %90
  %113 = load i32, i32* @cur_atr, align 4
  %114 = load i32, i32* @UNDER, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %112
  %118 = load i32, i32* @T_ue, align 4
  %119 = call i64 @GoodStr(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %117
  %122 = load i32, i32* @T_ue, align 4
  %123 = call i32 @Str(i32 %122)
  %124 = load i32, i32* @PUTPURE, align 4
  %125 = call i32 @tputs(i32 %123, i32 1, i32 %124)
  %126 = load i32, i32* @UNDER, align 4
  %127 = xor i32 %126, -1
  %128 = load i32, i32* @cur_atr, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* @cur_atr, align 4
  br label %130

130:                                              ; preds = %121, %117, %112
  %131 = load i32, i32* @BOLD, align 4
  %132 = xor i32 %131, -1
  %133 = load i32, i32* @cur_atr, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* @cur_atr, align 4
  br label %135

135:                                              ; preds = %130, %86, %82
  br label %136

136:                                              ; preds = %135, %81
  br label %137

137:                                              ; preds = %136, %52
  %138 = load i32, i32* %2, align 4
  %139 = load i32, i32* @STANDOUT, align 4
  %140 = and i32 %138, %139
  %141 = load i32, i32* @cur_atr, align 4
  %142 = load i32, i32* @STANDOUT, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %140, %143
  br i1 %144, label %145, label %182

145:                                              ; preds = %137
  %146 = load i32, i32* %2, align 4
  %147 = load i32, i32* @STANDOUT, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %167

150:                                              ; preds = %145
  %151 = load i32, i32* @T_so, align 4
  %152 = call i64 @GoodStr(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %150
  %155 = load i32, i32* @T_se, align 4
  %156 = call i64 @GoodStr(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %154
  %159 = load i32, i32* @T_so, align 4
  %160 = call i32 @Str(i32 %159)
  %161 = load i32, i32* @PUTPURE, align 4
  %162 = call i32 @tputs(i32 %160, i32 1, i32 %161)
  %163 = load i32, i32* @STANDOUT, align 4
  %164 = load i32, i32* @cur_atr, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* @cur_atr, align 4
  br label %166

166:                                              ; preds = %158, %154, %150
  br label %181

167:                                              ; preds = %145
  %168 = load i32, i32* @T_se, align 4
  %169 = call i64 @GoodStr(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %167
  %172 = load i32, i32* @T_se, align 4
  %173 = call i32 @Str(i32 %172)
  %174 = load i32, i32* @PUTPURE, align 4
  %175 = call i32 @tputs(i32 %173, i32 1, i32 %174)
  %176 = load i32, i32* @STANDOUT, align 4
  %177 = xor i32 %176, -1
  %178 = load i32, i32* @cur_atr, align 4
  %179 = and i32 %178, %177
  store i32 %179, i32* @cur_atr, align 4
  br label %180

180:                                              ; preds = %171, %167
  br label %181

181:                                              ; preds = %180, %166
  br label %182

182:                                              ; preds = %181, %137
  %183 = load i32, i32* %2, align 4
  %184 = load i32, i32* @UNDER, align 4
  %185 = and i32 %183, %184
  %186 = load i32, i32* @cur_atr, align 4
  %187 = load i32, i32* @UNDER, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %185, %188
  br i1 %189, label %190, label %227

190:                                              ; preds = %182
  %191 = load i32, i32* %2, align 4
  %192 = load i32, i32* @UNDER, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %212

195:                                              ; preds = %190
  %196 = load i32, i32* @T_us, align 4
  %197 = call i64 @GoodStr(i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %211

199:                                              ; preds = %195
  %200 = load i32, i32* @T_ue, align 4
  %201 = call i64 @GoodStr(i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %211

203:                                              ; preds = %199
  %204 = load i32, i32* @T_us, align 4
  %205 = call i32 @Str(i32 %204)
  %206 = load i32, i32* @PUTPURE, align 4
  %207 = call i32 @tputs(i32 %205, i32 1, i32 %206)
  %208 = load i32, i32* @UNDER, align 4
  %209 = load i32, i32* @cur_atr, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* @cur_atr, align 4
  br label %211

211:                                              ; preds = %203, %199, %195
  br label %226

212:                                              ; preds = %190
  %213 = load i32, i32* @T_ue, align 4
  %214 = call i64 @GoodStr(i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %225

216:                                              ; preds = %212
  %217 = load i32, i32* @T_ue, align 4
  %218 = call i32 @Str(i32 %217)
  %219 = load i32, i32* @PUTPURE, align 4
  %220 = call i32 @tputs(i32 %218, i32 1, i32 %219)
  %221 = load i32, i32* @UNDER, align 4
  %222 = xor i32 %221, -1
  %223 = load i32, i32* @cur_atr, align 4
  %224 = and i32 %223, %222
  store i32 %224, i32* @cur_atr, align 4
  br label %225

225:                                              ; preds = %216, %212
  br label %226

226:                                              ; preds = %225, %211
  br label %227

227:                                              ; preds = %226, %182
  br label %228

228:                                              ; preds = %227, %1
  ret void
}

declare dso_local i64 @GoodStr(i32) #1

declare dso_local i32 @tputs(i32, i32, i32) #1

declare dso_local i32 @Str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

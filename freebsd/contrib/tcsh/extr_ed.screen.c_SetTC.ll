; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.screen.c_SetTC.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.screen.c_SetTC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termcapstr = type { i8* }
%struct.termcapval = type { i8*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"settc\00", align 1
@tstr = common dso_local global %struct.termcapstr* null, align 8
@T_me = common dso_local global i32 0, align 4
@T_ue = common dso_local global i32 0, align 4
@me_all = common dso_local global i32 0, align 4
@T_se = common dso_local global i32 0, align 4
@T_ce = common dso_local global i32 0, align 4
@T_CanCEOL = common dso_local global i64 0, align 8
@T_dc = common dso_local global i32 0, align 4
@T_DC = common dso_local global i32 0, align 4
@T_CanDel = common dso_local global i32 0, align 4
@T_im = common dso_local global i32 0, align 4
@T_ic = common dso_local global i32 0, align 4
@T_IC = common dso_local global i32 0, align 4
@T_CanIns = common dso_local global i32 0, align 4
@T_up = common dso_local global i32 0, align 4
@T_UP = common dso_local global i32 0, align 4
@T_CanUP = common dso_local global i32 0, align 4
@tval = common dso_local global %struct.termcapval* null, align 8
@T_pt = common dso_local global i64 0, align 8
@T_km = common dso_local global i64 0, align 8
@T_am = common dso_local global i64 0, align 8
@T_xn = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@ERR_SETTCUS = common dso_local global i32 0, align 4
@T_Tabs = common dso_local global i8* null, align 8
@T_HasMeta = common dso_local global i8* null, align 8
@MARGIN_AUTO = common dso_local global i32 0, align 4
@T_Margin = common dso_local global i32 0, align 4
@MARGIN_MAGIC = common dso_local global i32 0, align 4
@T_li = common dso_local global i64 0, align 8
@T_co = common dso_local global i64 0, align 8
@T_Cols = common dso_local global i8* null, align 8
@T_Lines = common dso_local global i8* null, align 8
@ERR_NAME = common dso_local global i32 0, align 4
@ERR_TCCAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetTC(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.termcapstr*, align 8
  %6 = alloca %struct.termcapval*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call i32 @setname(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.termcapstr*, %struct.termcapstr** @tstr, align 8
  store %struct.termcapstr* %8, %struct.termcapstr** %5, align 8
  br label %9

9:                                                ; preds = %23, %2
  %10 = load %struct.termcapstr*, %struct.termcapstr** %5, align 8
  %11 = getelementptr inbounds %struct.termcapstr, %struct.termcapstr* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = load %struct.termcapstr*, %struct.termcapstr** %5, align 8
  %16 = getelementptr inbounds %struct.termcapstr, %struct.termcapstr* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i64 @strcmp(i8* %17, i8* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %26

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.termcapstr*, %struct.termcapstr** %5, align 8
  %25 = getelementptr inbounds %struct.termcapstr, %struct.termcapstr* %24, i32 1
  store %struct.termcapstr* %25, %struct.termcapstr** %5, align 8
  br label %9

26:                                               ; preds = %21, %9
  %27 = load %struct.termcapstr*, %struct.termcapstr** %5, align 8
  %28 = getelementptr inbounds %struct.termcapstr, %struct.termcapstr* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %106

31:                                               ; preds = %26
  %32 = load %struct.termcapstr*, %struct.termcapstr** %5, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @TCset(%struct.termcapstr* %32, i8* %33)
  %35 = load i32, i32* @T_me, align 4
  %36 = call i64 @GoodStr(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %31
  %39 = load i32, i32* @T_ue, align 4
  %40 = call i64 @GoodStr(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load i32, i32* @T_me, align 4
  %44 = call i8* @Str(i32 %43)
  %45 = load i32, i32* @T_ue, align 4
  %46 = call i8* @Str(i32 %45)
  %47 = call i64 @strcmp(i8* %44, i8* %46)
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  store i32 %49, i32* @me_all, align 4
  br label %51

50:                                               ; preds = %38, %31
  store i32 0, i32* @me_all, align 4
  br label %51

51:                                               ; preds = %50, %42
  %52 = load i32, i32* @T_me, align 4
  %53 = call i64 @GoodStr(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %51
  %56 = load i32, i32* @T_se, align 4
  %57 = call i64 @GoodStr(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load i32, i32* @T_me, align 4
  %61 = call i8* @Str(i32 %60)
  %62 = load i32, i32* @T_se, align 4
  %63 = call i8* @Str(i32 %62)
  %64 = call i64 @strcmp(i8* %61, i8* %63)
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* @me_all, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* @me_all, align 4
  br label %69

69:                                               ; preds = %59, %55, %51
  %70 = load i32, i32* @T_ce, align 4
  %71 = call i64 @GoodStr(i32 %70)
  store i64 %71, i64* @T_CanCEOL, align 8
  %72 = load i32, i32* @T_dc, align 4
  %73 = call i64 @GoodStr(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* @T_DC, align 4
  %77 = call i64 @GoodStr(i32 %76)
  %78 = icmp ne i64 %77, 0
  br label %79

79:                                               ; preds = %75, %69
  %80 = phi i1 [ true, %69 ], [ %78, %75 ]
  %81 = zext i1 %80 to i32
  store i32 %81, i32* @T_CanDel, align 4
  %82 = load i32, i32* @T_im, align 4
  %83 = call i64 @GoodStr(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* @T_ic, align 4
  %87 = call i64 @GoodStr(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* @T_IC, align 4
  %91 = call i64 @GoodStr(i32 %90)
  %92 = icmp ne i64 %91, 0
  br label %93

93:                                               ; preds = %89, %85, %79
  %94 = phi i1 [ true, %85 ], [ true, %79 ], [ %92, %89 ]
  %95 = zext i1 %94 to i32
  store i32 %95, i32* @T_CanIns, align 4
  %96 = load i32, i32* @T_up, align 4
  %97 = call i64 @GoodStr(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %93
  %100 = load i32, i32* @T_UP, align 4
  %101 = call i64 @GoodStr(i32 %100)
  %102 = icmp ne i64 %101, 0
  br label %103

103:                                              ; preds = %99, %93
  %104 = phi i1 [ true, %93 ], [ %102, %99 ]
  %105 = zext i1 %104 to i32
  store i32 %105, i32* @T_CanUP, align 4
  br label %249

106:                                              ; preds = %26
  %107 = load %struct.termcapval*, %struct.termcapval** @tval, align 8
  store %struct.termcapval* %107, %struct.termcapval** %6, align 8
  br label %108

108:                                              ; preds = %122, %106
  %109 = load %struct.termcapval*, %struct.termcapval** %6, align 8
  %110 = getelementptr inbounds %struct.termcapval, %struct.termcapval* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %125

113:                                              ; preds = %108
  %114 = load %struct.termcapval*, %struct.termcapval** %6, align 8
  %115 = getelementptr inbounds %struct.termcapval, %struct.termcapval* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load i8*, i8** %3, align 8
  %118 = call i64 @strcmp(i8* %116, i8* %117)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  br label %125

121:                                              ; preds = %113
  br label %122

122:                                              ; preds = %121
  %123 = load %struct.termcapval*, %struct.termcapval** %6, align 8
  %124 = getelementptr inbounds %struct.termcapval, %struct.termcapval* %123, i32 1
  store %struct.termcapval* %124, %struct.termcapval** %6, align 8
  br label %108

125:                                              ; preds = %120, %108
  %126 = load %struct.termcapval*, %struct.termcapval** %6, align 8
  %127 = getelementptr inbounds %struct.termcapval, %struct.termcapval* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %243

130:                                              ; preds = %125
  %131 = load %struct.termcapval*, %struct.termcapval** %6, align 8
  %132 = load %struct.termcapval*, %struct.termcapval** @tval, align 8
  %133 = load i64, i64* @T_pt, align 8
  %134 = getelementptr inbounds %struct.termcapval, %struct.termcapval* %132, i64 %133
  %135 = icmp eq %struct.termcapval* %131, %134
  br i1 %135, label %154, label %136

136:                                              ; preds = %130
  %137 = load %struct.termcapval*, %struct.termcapval** %6, align 8
  %138 = load %struct.termcapval*, %struct.termcapval** @tval, align 8
  %139 = load i64, i64* @T_km, align 8
  %140 = getelementptr inbounds %struct.termcapval, %struct.termcapval* %138, i64 %139
  %141 = icmp eq %struct.termcapval* %137, %140
  br i1 %141, label %154, label %142

142:                                              ; preds = %136
  %143 = load %struct.termcapval*, %struct.termcapval** %6, align 8
  %144 = load %struct.termcapval*, %struct.termcapval** @tval, align 8
  %145 = load i64, i64* @T_am, align 8
  %146 = getelementptr inbounds %struct.termcapval, %struct.termcapval* %144, i64 %145
  %147 = icmp eq %struct.termcapval* %143, %146
  br i1 %147, label %154, label %148

148:                                              ; preds = %142
  %149 = load %struct.termcapval*, %struct.termcapval** %6, align 8
  %150 = load %struct.termcapval*, %struct.termcapval** @tval, align 8
  %151 = load i64, i64* @T_xn, align 8
  %152 = getelementptr inbounds %struct.termcapval, %struct.termcapval* %150, i64 %151
  %153 = icmp eq %struct.termcapval* %149, %152
  br i1 %153, label %154, label %216

154:                                              ; preds = %148, %142, %136, %130
  %155 = load i8*, i8** %4, align 8
  %156 = call i64 @strcmp(i8* %155, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load %struct.termcapval*, %struct.termcapval** %6, align 8
  %160 = getelementptr inbounds %struct.termcapval, %struct.termcapval* %159, i32 0, i32 1
  store i32 1, i32* %160, align 8
  br label %175

161:                                              ; preds = %154
  %162 = load i8*, i8** %4, align 8
  %163 = call i64 @strcmp(i8* %162, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = load %struct.termcapval*, %struct.termcapval** %6, align 8
  %167 = getelementptr inbounds %struct.termcapval, %struct.termcapval* %166, i32 0, i32 1
  store i32 0, i32* %167, align 8
  br label %174

168:                                              ; preds = %161
  %169 = load i32, i32* @ERR_SETTCUS, align 4
  %170 = load %struct.termcapval*, %struct.termcapval** %6, align 8
  %171 = getelementptr inbounds %struct.termcapval, %struct.termcapval* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @stderror(i32 %169, i8* %172)
  br label %249

174:                                              ; preds = %165
  br label %175

175:                                              ; preds = %174, %158
  %176 = load i64, i64* @T_pt, align 8
  %177 = call i8* @Val(i64 %176)
  store i8* %177, i8** @T_Tabs, align 8
  %178 = load i64, i64* @T_km, align 8
  %179 = call i8* @Val(i64 %178)
  store i8* %179, i8** @T_HasMeta, align 8
  %180 = load i64, i64* @T_am, align 8
  %181 = call i8* @Val(i64 %180)
  %182 = icmp ne i8* %181, null
  br i1 %182, label %183, label %185

183:                                              ; preds = %175
  %184 = load i32, i32* @MARGIN_AUTO, align 4
  br label %186

185:                                              ; preds = %175
  br label %186

186:                                              ; preds = %185, %183
  %187 = phi i32 [ %184, %183 ], [ 0, %185 ]
  store i32 %187, i32* @T_Margin, align 4
  %188 = load i64, i64* @T_xn, align 8
  %189 = call i8* @Val(i64 %188)
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = load i32, i32* @MARGIN_MAGIC, align 4
  br label %194

193:                                              ; preds = %186
  br label %194

194:                                              ; preds = %193, %191
  %195 = phi i32 [ %192, %191 ], [ 0, %193 ]
  %196 = load i32, i32* @T_Margin, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* @T_Margin, align 4
  %198 = load %struct.termcapval*, %struct.termcapval** %6, align 8
  %199 = load %struct.termcapval*, %struct.termcapval** @tval, align 8
  %200 = load i64, i64* @T_am, align 8
  %201 = getelementptr inbounds %struct.termcapval, %struct.termcapval* %199, i64 %200
  %202 = icmp eq %struct.termcapval* %198, %201
  br i1 %202, label %209, label %203

203:                                              ; preds = %194
  %204 = load %struct.termcapval*, %struct.termcapval** %6, align 8
  %205 = load %struct.termcapval*, %struct.termcapval** @tval, align 8
  %206 = load i64, i64* @T_xn, align 8
  %207 = getelementptr inbounds %struct.termcapval, %struct.termcapval* %205, i64 %206
  %208 = icmp eq %struct.termcapval* %204, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %203, %194
  %210 = load i64, i64* @T_li, align 8
  %211 = call i8* @Val(i64 %210)
  %212 = load i64, i64* @T_co, align 8
  %213 = call i8* @Val(i64 %212)
  %214 = call i32 @ChangeSize(i8* %211, i8* %213)
  br label %215

215:                                              ; preds = %209, %203
  br label %249

216:                                              ; preds = %148
  %217 = load i8*, i8** %4, align 8
  %218 = call i32 @atoi(i8* %217)
  %219 = load %struct.termcapval*, %struct.termcapval** %6, align 8
  %220 = getelementptr inbounds %struct.termcapval, %struct.termcapval* %219, i32 0, i32 1
  store i32 %218, i32* %220, align 8
  %221 = load i64, i64* @T_co, align 8
  %222 = call i8* @Val(i64 %221)
  store i8* %222, i8** @T_Cols, align 8
  %223 = load i64, i64* @T_li, align 8
  %224 = call i8* @Val(i64 %223)
  store i8* %224, i8** @T_Lines, align 8
  %225 = load %struct.termcapval*, %struct.termcapval** %6, align 8
  %226 = load %struct.termcapval*, %struct.termcapval** @tval, align 8
  %227 = load i64, i64* @T_co, align 8
  %228 = getelementptr inbounds %struct.termcapval, %struct.termcapval* %226, i64 %227
  %229 = icmp eq %struct.termcapval* %225, %228
  br i1 %229, label %236, label %230

230:                                              ; preds = %216
  %231 = load %struct.termcapval*, %struct.termcapval** %6, align 8
  %232 = load %struct.termcapval*, %struct.termcapval** @tval, align 8
  %233 = load i64, i64* @T_li, align 8
  %234 = getelementptr inbounds %struct.termcapval, %struct.termcapval* %232, i64 %233
  %235 = icmp eq %struct.termcapval* %231, %234
  br i1 %235, label %236, label %242

236:                                              ; preds = %230, %216
  %237 = load i64, i64* @T_li, align 8
  %238 = call i8* @Val(i64 %237)
  %239 = load i64, i64* @T_co, align 8
  %240 = call i8* @Val(i64 %239)
  %241 = call i32 @ChangeSize(i8* %238, i8* %240)
  br label %242

242:                                              ; preds = %236, %230
  br label %249

243:                                              ; preds = %125
  %244 = load i32, i32* @ERR_NAME, align 4
  %245 = load i32, i32* @ERR_TCCAP, align 4
  %246 = or i32 %244, %245
  %247 = load i8*, i8** %3, align 8
  %248 = call i32 @stderror(i32 %246, i8* %247)
  br label %249

249:                                              ; preds = %243, %242, %215, %168, %103
  ret void
}

declare dso_local i32 @setname(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @TCset(%struct.termcapstr*, i8*) #1

declare dso_local i64 @GoodStr(i32) #1

declare dso_local i8* @Str(i32) #1

declare dso_local i32 @stderror(i32, i8*) #1

declare dso_local i8* @Val(i64) #1

declare dso_local i32 @ChangeSize(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

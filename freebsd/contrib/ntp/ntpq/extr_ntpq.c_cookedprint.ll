; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_cookedprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_cookedprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXVARLEN = common dso_local global i32 0, align 4
@MAXVALLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"status=%04x %s,\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%03lo\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Internal error in cookedprint, %s=%s, fmt %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i8*, i32, i32, i32*)* @cookedprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cookedprint(i32 %0, i64 %1, i8* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca [8 x i32], align 16
  %23 = alloca [12 x i8], align 1
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %27 = load i32, i32* @MAXVARLEN, align 4
  %28 = mul nsw i32 2, %27
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %24, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %25, align 8
  %32 = load i32, i32* @MAXVALLEN, align 4
  %33 = mul nsw i32 2, %32
  %34 = zext i32 %33 to i64
  %35 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %26, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @UNUSED_ARG(i32 %36)
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %6
  %41 = load i32*, i32** %12, align 8
  %42 = ptrtoint i32* %41 to i32
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i8* @statustoa(i32 %44, i32 %45)
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %43, i8* %46)
  br label %48

48:                                               ; preds = %40, %6
  %49 = call i32 (...) @startoutput()
  br label %50

50:                                               ; preds = %250, %48
  %51 = call i64 @nextvar(i64* %8, i8** %9, i8** %13, i8** %14)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %251

53:                                               ; preds = %50
  %54 = load i8*, i8** %13, align 8
  %55 = call i32 @varfmt(i8* %54)
  store i32 %55, i32* %16, align 4
  store i8 0, i8* %15, align 1
  %56 = load i32, i32* %16, align 4
  switch i32 %56, label %210 [
    i32 130, label %57
    i32 128, label %58
    i32 134, label %72
    i32 132, label %72
    i32 129, label %95
    i32 133, label %130
    i32 131, label %162
    i32 136, label %179
    i32 135, label %195
  ]

57:                                               ; preds = %53
  store i8 42, i8* %15, align 1
  br label %216

58:                                               ; preds = %53
  %59 = load i8*, i8** %14, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i8*, i8** %14, align 8
  %63 = call i32 @decodets(i8* %62, i32* %17)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61, %58
  store i8 63, i8* %15, align 1
  br label %71

66:                                               ; preds = %61
  %67 = load i32*, i32** %12, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = call i8* @prettydate(i32* %17)
  %70 = call i32 @output(i32* %67, i8* %68, i8* %69)
  br label %71

71:                                               ; preds = %66, %65
  br label %216

72:                                               ; preds = %53, %53
  %73 = load i8*, i8** %14, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i8*, i8** %14, align 8
  %77 = call i32 @decodenetnum(i8* %76, i32* %18)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75, %72
  store i8 63, i8* %15, align 1
  br label %94

80:                                               ; preds = %75
  %81 = load i32, i32* %16, align 4
  %82 = icmp eq i32 %81, 134
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i32*, i32** %12, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = call i8* @nntohost(i32* %18)
  %87 = call i32 @output(i32* %84, i8* %85, i8* %86)
  br label %93

88:                                               ; preds = %80
  %89 = load i32*, i32** %12, align 8
  %90 = load i8*, i8** %13, align 8
  %91 = call i8* @stoa(i32* %18)
  %92 = call i32 @output(i32* %89, i8* %90, i8* %91)
  br label %93

93:                                               ; preds = %88, %83
  br label %94

94:                                               ; preds = %93, %79
  br label %216

95:                                               ; preds = %53
  %96 = load i8*, i8** %14, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  store i8 63, i8* %15, align 1
  br label %129

99:                                               ; preds = %95
  %100 = load i8*, i8** %14, align 8
  %101 = call i32 @decodenetnum(i8* %100, i32* %18)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %99
  %104 = call i32 @ISREFCLOCKADR(i32* %18)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i32*, i32** %12, align 8
  %108 = load i8*, i8** %13, align 8
  %109 = call i8* @refnumtoa(i32* %18)
  %110 = call i32 @output(i32* %107, i8* %108, i8* %109)
  br label %116

111:                                              ; preds = %103
  %112 = load i32*, i32** %12, align 8
  %113 = load i8*, i8** %13, align 8
  %114 = call i8* @stoa(i32* %18)
  %115 = call i32 @output(i32* %112, i8* %113, i8* %114)
  br label %116

116:                                              ; preds = %111, %106
  br label %128

117:                                              ; preds = %99
  %118 = load i8*, i8** %14, align 8
  %119 = call i32 @strlen(i8* %118)
  %120 = icmp sle i32 %119, 4
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i32*, i32** %12, align 8
  %123 = load i8*, i8** %13, align 8
  %124 = load i8*, i8** %14, align 8
  %125 = call i32 @output(i32* %122, i8* %123, i8* %124)
  br label %127

126:                                              ; preds = %117
  store i8 63, i8* %15, align 1
  br label %127

127:                                              ; preds = %126, %121
  br label %128

128:                                              ; preds = %127, %116
  br label %129

129:                                              ; preds = %128, %98
  br label %216

130:                                              ; preds = %53
  %131 = load i8*, i8** %14, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %140

133:                                              ; preds = %130
  %134 = load i8*, i8** %14, align 8
  %135 = call i32 @decodeuint(i8* %134, i32* %19)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i32, i32* %19, align 4
  %139 = icmp sgt i32 %138, 3
  br i1 %139, label %140, label %141

140:                                              ; preds = %137, %133, %130
  store i8 63, i8* %15, align 1
  br label %161

141:                                              ; preds = %137
  %142 = load i32, i32* %19, align 4
  %143 = and i32 2, %142
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 49, i32 48
  %147 = trunc i32 %146 to i8
  %148 = getelementptr inbounds [12 x i8], [12 x i8]* %23, i64 0, i64 0
  store i8 %147, i8* %148, align 1
  %149 = load i32, i32* %19, align 4
  %150 = and i32 1, %149
  %151 = icmp ne i32 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i32 49, i32 48
  %154 = trunc i32 %153 to i8
  %155 = getelementptr inbounds [12 x i8], [12 x i8]* %23, i64 0, i64 1
  store i8 %154, i8* %155, align 1
  %156 = getelementptr inbounds [12 x i8], [12 x i8]* %23, i64 0, i64 2
  store i8 0, i8* %156, align 1
  %157 = load i32*, i32** %12, align 8
  %158 = load i8*, i8** %13, align 8
  %159 = getelementptr inbounds [12 x i8], [12 x i8]* %23, i64 0, i64 0
  %160 = call i32 @output(i32* %157, i8* %158, i8* %159)
  br label %161

161:                                              ; preds = %141, %140
  br label %216

162:                                              ; preds = %53
  %163 = load i8*, i8** %14, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load i8*, i8** %14, align 8
  %167 = call i32 @decodeuint(i8* %166, i32* %19)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %165, %162
  store i8 63, i8* %15, align 1
  br label %178

170:                                              ; preds = %165
  %171 = getelementptr inbounds [12 x i8], [12 x i8]* %23, i64 0, i64 0
  %172 = load i32, i32* %19, align 4
  %173 = call i32 @snprintf(i8* %171, i32 12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %172)
  %174 = load i32*, i32** %12, align 8
  %175 = load i8*, i8** %13, align 8
  %176 = getelementptr inbounds [12 x i8], [12 x i8]* %23, i64 0, i64 0
  %177 = call i32 @output(i32* %174, i8* %175, i8* %176)
  br label %178

178:                                              ; preds = %170, %169
  br label %216

179:                                              ; preds = %53
  %180 = load i8*, i8** %14, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %187

182:                                              ; preds = %179
  %183 = load i8*, i8** %14, align 8
  %184 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 0
  %185 = call i32 @decodearr(i8* %183, i32* %20, i32* %184, i32 8)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %182, %179
  store i8 63, i8* %15, align 1
  br label %194

188:                                              ; preds = %182
  %189 = load i32*, i32** %12, align 8
  %190 = load i8*, i8** %13, align 8
  %191 = load i32, i32* %20, align 4
  %192 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 0
  %193 = call i32 @outputarr(i32* %189, i8* %190, i32 %191, i32* %192)
  br label %194

194:                                              ; preds = %188, %187
  br label %216

195:                                              ; preds = %53
  %196 = load i8*, i8** %14, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %198, label %202

198:                                              ; preds = %195
  %199 = load i8*, i8** %14, align 8
  %200 = call i32 @decodeuint(i8* %199, i32* %19)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %198, %195
  store i8 63, i8* %15, align 1
  br label %209

203:                                              ; preds = %198
  %204 = load i32*, i32** %12, align 8
  %205 = load i8*, i8** %13, align 8
  %206 = load i32, i32* %19, align 4
  %207 = call i8* @tstflags(i32 %206)
  %208 = call i32 @output(i32* %204, i8* %205, i8* %207)
  br label %209

209:                                              ; preds = %203, %202
  br label %216

210:                                              ; preds = %53
  %211 = load i32, i32* @stderr, align 4
  %212 = load i8*, i8** %13, align 8
  %213 = load i8*, i8** %14, align 8
  %214 = load i32, i32* %16, align 4
  %215 = call i32 (i32, i8*, ...) @fprintf(i32 %211, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %212, i8* %213, i32 %214)
  store i8 63, i8* %15, align 1
  br label %216

216:                                              ; preds = %210, %209, %194, %178, %161, %129, %94, %71, %57
  %217 = load i8, i8* %15, align 1
  %218 = sext i8 %217 to i32
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %250

220:                                              ; preds = %216
  %221 = load i8*, i8** %13, align 8
  %222 = load i32, i32* @MAXVARLEN, align 4
  %223 = trunc i64 %29 to i32
  %224 = call i32 @atoascii(i8* %221, i32 %222, i8* %31, i32 %223)
  %225 = load i8, i8* %15, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp ne i32 %226, 42
  br i1 %227, label %228, label %242

228:                                              ; preds = %220
  %229 = load i8*, i8** %14, align 8
  %230 = load i32, i32* @MAXVALLEN, align 4
  %231 = sub i64 %34, 1
  %232 = trunc i64 %231 to i32
  %233 = call i32 @atoascii(i8* %229, i32 %230, i8* %35, i32 %232)
  %234 = call i32 @strlen(i8* %35)
  %235 = sext i32 %234 to i64
  store i64 %235, i64* %21, align 8
  %236 = load i8, i8* %15, align 1
  %237 = load i64, i64* %21, align 8
  %238 = getelementptr inbounds i8, i8* %35, i64 %237
  store i8 %236, i8* %238, align 1
  %239 = load i64, i64* %21, align 8
  %240 = add i64 %239, 1
  %241 = getelementptr inbounds i8, i8* %35, i64 %240
  store i8 0, i8* %241, align 1
  br label %247

242:                                              ; preds = %220
  %243 = load i8*, i8** %14, align 8
  %244 = load i32, i32* @MAXVALLEN, align 4
  %245 = trunc i64 %34 to i32
  %246 = call i32 @atoascii(i8* %243, i32 %244, i8* %35, i32 %245)
  br label %247

247:                                              ; preds = %242, %228
  %248 = load i32*, i32** %12, align 8
  %249 = call i32 @output(i32* %248, i8* %31, i8* %35)
  br label %250

250:                                              ; preds = %247, %216
  br label %50

251:                                              ; preds = %50
  %252 = load i32*, i32** %12, align 8
  %253 = call i32 @endoutput(i32* %252)
  %254 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %254)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @UNUSED_ARG(i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @statustoa(i32, i32) #2

declare dso_local i32 @startoutput(...) #2

declare dso_local i64 @nextvar(i64*, i8**, i8**, i8**) #2

declare dso_local i32 @varfmt(i8*) #2

declare dso_local i32 @decodets(i8*, i32*) #2

declare dso_local i32 @output(i32*, i8*, i8*) #2

declare dso_local i8* @prettydate(i32*) #2

declare dso_local i32 @decodenetnum(i8*, i32*) #2

declare dso_local i8* @nntohost(i32*) #2

declare dso_local i8* @stoa(i32*) #2

declare dso_local i32 @ISREFCLOCKADR(i32*) #2

declare dso_local i8* @refnumtoa(i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @decodeuint(i8*, i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @decodearr(i8*, i32*, i32*, i32) #2

declare dso_local i32 @outputarr(i32*, i8*, i32, i32*) #2

declare dso_local i8* @tstflags(i32) #2

declare dso_local i32 @atoascii(i8*, i32, i8*, i32) #2

declare dso_local i32 @endoutput(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

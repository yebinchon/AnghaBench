; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_parse_roles.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_parse_roles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8, i32 }

@.str = private unnamed_addr constant [31 x i8] c"backslash at the end of string\00", align 1
@xo_role_names = common dso_local global i32 0, align 4
@xo_modifier_names = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"unknown keyword ignored: '%.*s'\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"field descriptor uses multiple types: '%s'\00", align 1
@XFF_ARGUMENT = common dso_local global i32 0, align 4
@XFF_COLON = common dso_local global i32 0, align 4
@XFF_DISPLAY_ONLY = common dso_local global i32 0, align 4
@XFF_ENCODE_ONLY = common dso_local global i32 0, align 4
@XFF_GT_FIELD = common dso_local global i32 0, align 4
@XFF_HUMANIZE = common dso_local global i32 0, align 4
@XFF_KEY = common dso_local global i32 0, align 4
@XFF_LEAF_LIST = common dso_local global i32 0, align 4
@XFF_NOQUOTE = common dso_local global i32 0, align 4
@XFF_GT_PLURAL = common dso_local global i32 0, align 4
@XFF_QUOTE = common dso_local global i32 0, align 4
@XFF_TRIM_WS = common dso_local global i32 0, align 4
@XFF_WS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"field descriptor uses unknown modifier: '%s'\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"colon modifier on 'N' or 'U' field ignored: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i8*, %struct.TYPE_3__*)* @xo_parse_roles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xo_parse_roles(i32* %0, i8* %1, i8* %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load i8*, i8** %8, align 8
  store i8* %17, i8** %10, align 8
  br label %18

18:                                               ; preds = %239, %4
  %19 = load i8*, i8** %10, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i8*, i8** %10, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %21, %18
  %27 = phi i1 [ false, %18 ], [ %25, %21 ]
  br i1 %27, label %28, label %242

28:                                               ; preds = %26
  %29 = load i8*, i8** %10, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 58
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = load i8*, i8** %10, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 47
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i8*, i8** %10, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 125
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %33, %28
  br label %242

44:                                               ; preds = %38
  %45 = load i8*, i8** %10, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 92
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 (i32*, i8*, ...) @xo_failure(i32* %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %5, align 8
  br label %259

58:                                               ; preds = %49
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  store i8* %60, i8** %10, align 8
  br label %239

61:                                               ; preds = %44
  %62 = load i8*, i8** %10, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 44
  br i1 %65, label %66, label %136

66:                                               ; preds = %61
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %10, align 8
  store i8* %68, i8** %14, align 8
  br label %69

69:                                               ; preds = %95, %66
  %70 = load i8*, i8** %14, align 8
  %71 = load i8, i8* %70, align 1
  %72 = icmp ne i8 %71, 0
  br i1 %72, label %73, label %98

73:                                               ; preds = %69
  %74 = load i8*, i8** %14, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 58
  br i1 %77, label %93, label %78

78:                                               ; preds = %73
  %79 = load i8*, i8** %14, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 47
  br i1 %82, label %93, label %83

83:                                               ; preds = %78
  %84 = load i8*, i8** %14, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 125
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load i8*, i8** %14, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 44
  br i1 %92, label %93, label %94

93:                                               ; preds = %88, %83, %78, %73
  br label %98

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94
  %96 = load i8*, i8** %14, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %14, align 8
  br label %69

98:                                               ; preds = %93, %69
  %99 = load i8*, i8** %14, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  store i64 %103, i64* %15, align 8
  %104 = load i64, i64* %15, align 8
  %105 = icmp sgt i64 %104, 0
  br i1 %105, label %106, label %133

106:                                              ; preds = %98
  %107 = load i32, i32* @xo_role_names, align 4
  %108 = load i8*, i8** %10, align 8
  %109 = load i64, i64* %15, align 8
  %110 = call i32 @xo_name_lookup(i32 %107, i8* %108, i64 %109)
  store i32 %110, i32* %16, align 4
  %111 = load i32, i32* %16, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = load i32, i32* %16, align 4
  store i32 %114, i32* %11, align 4
  br label %132

115:                                              ; preds = %106
  %116 = load i32, i32* @xo_modifier_names, align 4
  %117 = load i8*, i8** %10, align 8
  %118 = load i64, i64* %15, align 8
  %119 = call i32 @xo_name_lookup(i32 %116, i8* %117, i64 %118)
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %16, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %115
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %12, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %12, align 4
  br label %131

126:                                              ; preds = %115
  %127 = load i32*, i32** %6, align 8
  %128 = load i64, i64* %15, align 8
  %129 = load i8*, i8** %10, align 8
  %130 = call i32 (i32*, i8*, ...) @xo_failure(i32* %127, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %128, i8* %129)
  br label %131

131:                                              ; preds = %126, %122
  br label %132

132:                                              ; preds = %131, %113
  br label %133

133:                                              ; preds = %132, %98
  %134 = load i8*, i8** %14, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 -1
  store i8* %135, i8** %10, align 8
  br label %239

136:                                              ; preds = %61
  %137 = load i8*, i8** %10, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  switch i32 %139, label %212 [
    i32 67, label %140
    i32 68, label %140
    i32 69, label %140
    i32 71, label %140
    i32 76, label %140
    i32 78, label %140
    i32 80, label %140
    i32 84, label %140
    i32 85, label %140
    i32 86, label %140
    i32 87, label %140
    i32 91, label %140
    i32 93, label %140
    i32 48, label %152
    i32 49, label %152
    i32 50, label %152
    i32 51, label %152
    i32 52, label %152
    i32 53, label %152
    i32 54, label %152
    i32 55, label %152
    i32 56, label %152
    i32 57, label %152
    i32 97, label %160
    i32 99, label %164
    i32 100, label %168
    i32 101, label %172
    i32 103, label %176
    i32 104, label %180
    i32 107, label %184
    i32 108, label %188
    i32 110, label %192
    i32 112, label %196
    i32 113, label %200
    i32 116, label %204
    i32 119, label %208
  ]

140:                                              ; preds = %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load i32*, i32** %6, align 8
  %145 = load i8*, i8** %7, align 8
  %146 = call i32 @xo_printable(i8* %145)
  %147 = call i32 (i32*, i8*, ...) @xo_failure(i32* %144, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %146)
  store i8* null, i8** %5, align 8
  br label %259

148:                                              ; preds = %140
  %149 = load i8*, i8** %10, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  store i32 %151, i32* %11, align 4
  br label %217

152:                                              ; preds = %136, %136, %136, %136, %136, %136, %136, %136, %136, %136
  %153 = load i32, i32* %13, align 4
  %154 = mul nsw i32 %153, 10
  %155 = load i8*, i8** %10, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = sub nsw i32 %157, 48
  %159 = add nsw i32 %154, %158
  store i32 %159, i32* %13, align 4
  br label %217

160:                                              ; preds = %136
  %161 = load i32, i32* @XFF_ARGUMENT, align 4
  %162 = load i32, i32* %12, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %12, align 4
  br label %217

164:                                              ; preds = %136
  %165 = load i32, i32* @XFF_COLON, align 4
  %166 = load i32, i32* %12, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %12, align 4
  br label %217

168:                                              ; preds = %136
  %169 = load i32, i32* @XFF_DISPLAY_ONLY, align 4
  %170 = load i32, i32* %12, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %12, align 4
  br label %217

172:                                              ; preds = %136
  %173 = load i32, i32* @XFF_ENCODE_ONLY, align 4
  %174 = load i32, i32* %12, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %12, align 4
  br label %217

176:                                              ; preds = %136
  %177 = load i32, i32* @XFF_GT_FIELD, align 4
  %178 = load i32, i32* %12, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %12, align 4
  br label %217

180:                                              ; preds = %136
  %181 = load i32, i32* @XFF_HUMANIZE, align 4
  %182 = load i32, i32* %12, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %12, align 4
  br label %217

184:                                              ; preds = %136
  %185 = load i32, i32* @XFF_KEY, align 4
  %186 = load i32, i32* %12, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %12, align 4
  br label %217

188:                                              ; preds = %136
  %189 = load i32, i32* @XFF_LEAF_LIST, align 4
  %190 = load i32, i32* %12, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %12, align 4
  br label %217

192:                                              ; preds = %136
  %193 = load i32, i32* @XFF_NOQUOTE, align 4
  %194 = load i32, i32* %12, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %12, align 4
  br label %217

196:                                              ; preds = %136
  %197 = load i32, i32* @XFF_GT_PLURAL, align 4
  %198 = load i32, i32* %12, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %12, align 4
  br label %217

200:                                              ; preds = %136
  %201 = load i32, i32* @XFF_QUOTE, align 4
  %202 = load i32, i32* %12, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %12, align 4
  br label %217

204:                                              ; preds = %136
  %205 = load i32, i32* @XFF_TRIM_WS, align 4
  %206 = load i32, i32* %12, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %12, align 4
  br label %217

208:                                              ; preds = %136
  %209 = load i32, i32* @XFF_WS, align 4
  %210 = load i32, i32* %12, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %12, align 4
  br label %217

212:                                              ; preds = %136
  %213 = load i32*, i32** %6, align 8
  %214 = load i8*, i8** %7, align 8
  %215 = call i32 @xo_printable(i8* %214)
  %216 = call i32 (i32*, i8*, ...) @xo_failure(i32* %213, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %215)
  store i8* null, i8** %5, align 8
  br label %259

217:                                              ; preds = %208, %204, %200, %196, %192, %188, %184, %180, %176, %172, %168, %164, %160, %152, %148
  %218 = load i32, i32* %11, align 4
  %219 = icmp eq i32 %218, 78
  br i1 %219, label %223, label %220

220:                                              ; preds = %217
  %221 = load i32, i32* %11, align 4
  %222 = icmp eq i32 %221, 85
  br i1 %222, label %223, label %238

223:                                              ; preds = %220, %217
  %224 = load i32, i32* %12, align 4
  %225 = load i32, i32* @XFF_COLON, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %223
  %229 = load i32*, i32** %6, align 8
  %230 = load i8*, i8** %7, align 8
  %231 = call i32 @xo_printable(i8* %230)
  %232 = call i32 (i32*, i8*, ...) @xo_failure(i32* %229, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %231)
  %233 = load i32, i32* @XFF_COLON, align 4
  %234 = xor i32 %233, -1
  %235 = load i32, i32* %12, align 4
  %236 = and i32 %235, %234
  store i32 %236, i32* %12, align 4
  br label %237

237:                                              ; preds = %228, %223
  br label %238

238:                                              ; preds = %237, %220
  br label %239

239:                                              ; preds = %238, %133, %58
  %240 = load i8*, i8** %10, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %10, align 8
  br label %18

242:                                              ; preds = %43, %26
  %243 = load i32, i32* %12, align 4
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 4
  %246 = load i32, i32* %11, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %242
  br label %250

249:                                              ; preds = %242
  br label %250

250:                                              ; preds = %249, %248
  %251 = phi i32 [ %246, %248 ], [ 86, %249 ]
  %252 = trunc i32 %251 to i8
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 1
  store i8 %252, i8* %254, align 4
  %255 = load i32, i32* %13, align 4
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 2
  store i32 %255, i32* %257, align 4
  %258 = load i8*, i8** %10, align 8
  store i8* %258, i8** %5, align 8
  br label %259

259:                                              ; preds = %250, %212, %143, %55
  %260 = load i8*, i8** %5, align 8
  ret i8* %260
}

declare dso_local i32 @xo_failure(i32*, i8*, ...) #1

declare dso_local i32 @xo_name_lookup(i32, i8*, i64) #1

declare dso_local i32 @xo_printable(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

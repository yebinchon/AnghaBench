; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_printies.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_printies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c" SSID\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" RATES\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" XRATES\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" DSPARMS<%u>\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" COUNTRY\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c" ERP<0x%x>\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" WPA\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" WME\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c" ATH\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c" WPS\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c" TDMA\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c" VEN\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c" RSN\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c" HTCAP\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c" HTINFO\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c" MESHID\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c" MESHCONF\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c" VHTCAP\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c" VHTOPMODE\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c" VHTPWRENV\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c" BSSLOAD\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c" APCHANREP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @printies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printies(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  br label %7

7:                                                ; preds = %268, %3
  %8 = load i32, i32* %5, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %282

10:                                               ; preds = %7
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %252 [
    i32 133, label %14
    i32 135, label %26
    i32 128, label %26
    i32 141, label %44
    i32 142, label %53
    i32 140, label %65
    i32 132, label %74
    i32 134, label %164
    i32 139, label %172
    i32 138, label %180
    i32 136, label %192
    i32 137, label %204
    i32 131, label %212
    i32 130, label %220
    i32 129, label %228
    i32 143, label %236
    i32 144, label %244
  ]

14:                                               ; preds = %10
  %15 = load i32, i32* @verbose, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load i32*, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 2, %21
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @printssid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %18, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %17, %14
  br label %268

26:                                               ; preds = %10, %10
  %27 = load i32, i32* @verbose, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 135
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 2, %39
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @printrates(i8* %35, i32* %36, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %29, %26
  br label %268

44:                                               ; preds = %10
  %45 = load i32, i32* @verbose, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %47, %44
  br label %268

53:                                               ; preds = %10
  %54 = load i32, i32* @verbose, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i32*, i32** %4, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 2, %60
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @printcountry(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %57, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %56, %53
  br label %268

65:                                               ; preds = %10
  %66 = load i32, i32* @verbose, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %68, %65
  br label %268

74:                                               ; preds = %10
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @iswpaoui(i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load i32*, i32** %4, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 2, %82
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @printwpaie(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* %79, i32 %83, i32 %84)
  br label %163

86:                                               ; preds = %74
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @iswmeinfo(i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = load i32*, i32** %4, align 8
  %92 = load i32*, i32** %4, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 2, %94
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @printwmeinfo(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* %91, i32 %95, i32 %96)
  br label %162

98:                                               ; preds = %86
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @iswmeparam(i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = load i32*, i32** %4, align 8
  %104 = load i32*, i32** %4, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 2, %106
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @printwmeparam(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* %103, i32 %107, i32 %108)
  br label %161

110:                                              ; preds = %98
  %111 = load i32*, i32** %4, align 8
  %112 = call i32 @isatherosoui(i32* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = load i32*, i32** %4, align 8
  %116 = load i32*, i32** %4, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 2, %118
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @printathie(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32* %115, i32 %119, i32 %120)
  br label %160

122:                                              ; preds = %110
  %123 = load i32*, i32** %4, align 8
  %124 = call i32 @iswpsoui(i32* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %122
  %127 = load i32*, i32** %4, align 8
  %128 = load i32*, i32** %4, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 2, %130
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @printwpsie(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32* %127, i32 %131, i32 %132)
  br label %159

134:                                              ; preds = %122
  %135 = load i32*, i32** %4, align 8
  %136 = call i32 @istdmaoui(i32* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %134
  %139 = load i32*, i32** %4, align 8
  %140 = load i32*, i32** %4, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 2, %142
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @printtdmaie(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32* %139, i32 %143, i32 %144)
  br label %158

146:                                              ; preds = %134
  %147 = load i32, i32* @verbose, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %146
  %150 = load i32*, i32** %4, align 8
  %151 = load i32*, i32** %4, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 2, %153
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @printie(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32* %150, i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %149, %146
  br label %158

158:                                              ; preds = %157, %138
  br label %159

159:                                              ; preds = %158, %126
  br label %160

160:                                              ; preds = %159, %114
  br label %161

161:                                              ; preds = %160, %102
  br label %162

162:                                              ; preds = %161, %90
  br label %163

163:                                              ; preds = %162, %78
  br label %268

164:                                              ; preds = %10
  %165 = load i32*, i32** %4, align 8
  %166 = load i32*, i32** %4, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 2, %168
  %170 = load i32, i32* %6, align 4
  %171 = call i32 @printrsnie(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32* %165, i32 %169, i32 %170)
  br label %268

172:                                              ; preds = %10
  %173 = load i32*, i32** %4, align 8
  %174 = load i32*, i32** %4, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 2, %176
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @printhtcap(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32* %173, i32 %177, i32 %178)
  br label %268

180:                                              ; preds = %10
  %181 = load i32, i32* @verbose, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %180
  %184 = load i32*, i32** %4, align 8
  %185 = load i32*, i32** %4, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 2, %187
  %189 = load i32, i32* %6, align 4
  %190 = call i32 @printhtinfo(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32* %184, i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %183, %180
  br label %268

192:                                              ; preds = %10
  %193 = load i32, i32* @verbose, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %192
  %196 = load i32*, i32** %4, align 8
  %197 = load i32*, i32** %4, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 2, %199
  %201 = load i32, i32* %6, align 4
  %202 = call i32 @printssid(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32* %196, i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %195, %192
  br label %268

204:                                              ; preds = %10
  %205 = load i32*, i32** %4, align 8
  %206 = load i32*, i32** %4, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 1
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 2, %208
  %210 = load i32, i32* %6, align 4
  %211 = call i32 @printmeshconf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32* %205, i32 %209, i32 %210)
  br label %268

212:                                              ; preds = %10
  %213 = load i32*, i32** %4, align 8
  %214 = load i32*, i32** %4, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 1
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 2, %216
  %218 = load i32, i32* %6, align 4
  %219 = call i32 @printvhtcap(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i32* %213, i32 %217, i32 %218)
  br label %268

220:                                              ; preds = %10
  %221 = load i32*, i32** %4, align 8
  %222 = load i32*, i32** %4, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 1
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 2, %224
  %226 = load i32, i32* %6, align 4
  %227 = call i32 @printvhtinfo(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i32* %221, i32 %225, i32 %226)
  br label %268

228:                                              ; preds = %10
  %229 = load i32*, i32** %4, align 8
  %230 = load i32*, i32** %4, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 1
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 2, %232
  %234 = load i32, i32* %6, align 4
  %235 = call i32 @printvhtpwrenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i32* %229, i32 %233, i32 %234)
  br label %268

236:                                              ; preds = %10
  %237 = load i32*, i32** %4, align 8
  %238 = load i32*, i32** %4, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 1
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 2, %240
  %242 = load i32, i32* %6, align 4
  %243 = call i32 @printbssload(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i32* %237, i32 %241, i32 %242)
  br label %268

244:                                              ; preds = %10
  %245 = load i32*, i32** %4, align 8
  %246 = load i32*, i32** %4, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 1
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 2, %248
  %250 = load i32, i32* %6, align 4
  %251 = call i32 @printapchanrep(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i32* %245, i32 %249, i32 %250)
  br label %268

252:                                              ; preds = %10
  %253 = load i32, i32* @verbose, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %267

255:                                              ; preds = %252
  %256 = load i32*, i32** %4, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 0
  %258 = load i32, i32* %257, align 4
  %259 = call i8* @iename(i32 %258)
  %260 = load i32*, i32** %4, align 8
  %261 = load i32*, i32** %4, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 1
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 2, %263
  %265 = load i32, i32* %6, align 4
  %266 = call i32 @printie(i8* %259, i32* %260, i32 %264, i32 %265)
  br label %267

267:                                              ; preds = %255, %252
  br label %268

268:                                              ; preds = %267, %244, %236, %228, %220, %212, %204, %203, %191, %172, %164, %163, %73, %64, %52, %43, %25
  %269 = load i32*, i32** %4, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 1
  %271 = load i32, i32* %270, align 4
  %272 = add nsw i32 2, %271
  %273 = load i32, i32* %5, align 4
  %274 = sub nsw i32 %273, %272
  store i32 %274, i32* %5, align 4
  %275 = load i32*, i32** %4, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 1
  %277 = load i32, i32* %276, align 4
  %278 = add nsw i32 2, %277
  %279 = load i32*, i32** %4, align 8
  %280 = sext i32 %278 to i64
  %281 = getelementptr inbounds i32, i32* %279, i64 %280
  store i32* %281, i32** %4, align 8
  br label %7

282:                                              ; preds = %7
  ret void
}

declare dso_local i32 @printssid(i8*, i32*, i32, i32) #1

declare dso_local i32 @printrates(i8*, i32*, i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @printcountry(i8*, i32*, i32, i32) #1

declare dso_local i32 @iswpaoui(i32*) #1

declare dso_local i32 @printwpaie(i8*, i32*, i32, i32) #1

declare dso_local i32 @iswmeinfo(i32*) #1

declare dso_local i32 @printwmeinfo(i8*, i32*, i32, i32) #1

declare dso_local i32 @iswmeparam(i32*) #1

declare dso_local i32 @printwmeparam(i8*, i32*, i32, i32) #1

declare dso_local i32 @isatherosoui(i32*) #1

declare dso_local i32 @printathie(i8*, i32*, i32, i32) #1

declare dso_local i32 @iswpsoui(i32*) #1

declare dso_local i32 @printwpsie(i8*, i32*, i32, i32) #1

declare dso_local i32 @istdmaoui(i32*) #1

declare dso_local i32 @printtdmaie(i8*, i32*, i32, i32) #1

declare dso_local i32 @printie(i8*, i32*, i32, i32) #1

declare dso_local i32 @printrsnie(i8*, i32*, i32, i32) #1

declare dso_local i32 @printhtcap(i8*, i32*, i32, i32) #1

declare dso_local i32 @printhtinfo(i8*, i32*, i32, i32) #1

declare dso_local i32 @printmeshconf(i8*, i32*, i32, i32) #1

declare dso_local i32 @printvhtcap(i8*, i32*, i32, i32) #1

declare dso_local i32 @printvhtinfo(i8*, i32*, i32, i32) #1

declare dso_local i32 @printvhtpwrenv(i8*, i32*, i32, i32) #1

declare dso_local i32 @printbssload(i8*, i32*, i32, i32) #1

declare dso_local i32 @printapchanrep(i8*, i32*, i32, i32) #1

declare dso_local i8* @iename(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

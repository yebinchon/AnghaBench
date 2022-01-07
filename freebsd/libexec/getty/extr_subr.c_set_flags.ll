; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/getty/extr_subr.c_set_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/getty/extr_subr.c_set_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8* }

@C0set = common dso_local global i32 0, align 4
@I0set = common dso_local global i32 0, align 4
@L0set = common dso_local global i32 0, align 4
@O0set = common dso_local global i32 0, align 4
@C0 = common dso_local global i8* null, align 8
@tmode = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@I0 = common dso_local global i8* null, align 8
@L0 = common dso_local global i8* null, align 8
@O0 = common dso_local global i8* null, align 8
@C1set = common dso_local global i32 0, align 4
@I1set = common dso_local global i32 0, align 4
@L1set = common dso_local global i32 0, align 4
@O1set = common dso_local global i32 0, align 4
@C1 = common dso_local global i8* null, align 8
@I1 = common dso_local global i8* null, align 8
@L1 = common dso_local global i8* null, align 8
@O1 = common dso_local global i8* null, align 8
@C2set = common dso_local global i32 0, align 4
@I2set = common dso_local global i32 0, align 4
@L2set = common dso_local global i32 0, align 4
@O2set = common dso_local global i32 0, align 4
@C2 = common dso_local global i8* null, align 8
@I2 = common dso_local global i8* null, align 8
@L2 = common dso_local global i8* null, align 8
@O2 = common dso_local global i8* null, align 8
@omode = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@NP = common dso_local global i64 0, align 8
@CSIZE = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@AP = common dso_local global i64 0, align 8
@EP = common dso_local global i64 0, align 8
@OP = common dso_local global i64 0, align 8
@CS7 = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@HC = common dso_local global i64 0, align 8
@HUPCL = common dso_local global i32 0, align 4
@MB = common dso_local global i64 0, align 8
@MDMBUF = common dso_local global i32 0, align 4
@HW = common dso_local global i64 0, align 8
@CRTSCTS = common dso_local global i32 0, align 4
@NL = common dso_local global i64 0, align 8
@ICRNL = common dso_local global i32 0, align 4
@ONLCR = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@HT = common dso_local global i32 0, align 4
@OXTABS = common dso_local global i32 0, align 4
@RW = common dso_local global i64 0, align 8
@ICANON = common dso_local global i32 0, align 4
@CE = common dso_local global i64 0, align 8
@ECHOE = common dso_local global i32 0, align 4
@CK = common dso_local global i64 0, align 8
@ECHOKE = common dso_local global i32 0, align 4
@PE = common dso_local global i64 0, align 8
@ECHOPRT = common dso_local global i32 0, align 4
@EC = common dso_local global i64 0, align 8
@ECHO = common dso_local global i32 0, align 4
@XC = common dso_local global i64 0, align 8
@ECHOCTL = common dso_local global i32 0, align 4
@DX = common dso_local global i64 0, align 8
@IXANY = common dso_local global i32 0, align 4
@CB = common dso_local global i64 0, align 8
@CRTBS = common dso_local global i32 0, align 4
@LCASE = common dso_local global i8* null, align 8
@UC = common dso_local global i64 0, align 8
@f = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_flags(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  switch i32 %7, label %44 [
    i32 0, label %8
    i32 1, label %26
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @C0set, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = load i32, i32* @I0set, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load i32, i32* @L0set, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load i32, i32* @O0set, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i8*, i8** @C0, align 8
  store i8* %21, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tmode, i32 0, i32 1), align 8
  %22 = load i8*, i8** @I0, align 8
  store i8* %22, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tmode, i32 0, i32 3), align 8
  %23 = load i8*, i8** @L0, align 8
  store i8* %23, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tmode, i32 0, i32 0), align 8
  %24 = load i8*, i8** @O0, align 8
  store i8* %24, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tmode, i32 0, i32 2), align 8
  br label %335

25:                                               ; preds = %17, %14, %11, %8
  br label %62

26:                                               ; preds = %1
  %27 = load i32, i32* @C1set, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load i32, i32* @I1set, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load i32, i32* @L1set, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load i32, i32* @O1set, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i8*, i8** @C1, align 8
  store i8* %39, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tmode, i32 0, i32 1), align 8
  %40 = load i8*, i8** @I1, align 8
  store i8* %40, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tmode, i32 0, i32 3), align 8
  %41 = load i8*, i8** @L1, align 8
  store i8* %41, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tmode, i32 0, i32 0), align 8
  %42 = load i8*, i8** @O1, align 8
  store i8* %42, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tmode, i32 0, i32 2), align 8
  br label %335

43:                                               ; preds = %35, %32, %29, %26
  br label %62

44:                                               ; preds = %1
  %45 = load i32, i32* @C2set, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load i32, i32* @I2set, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load i32, i32* @L2set, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load i32, i32* @O2set, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i8*, i8** @C2, align 8
  store i8* %57, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tmode, i32 0, i32 1), align 8
  %58 = load i8*, i8** @I2, align 8
  store i8* %58, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tmode, i32 0, i32 3), align 8
  %59 = load i8*, i8** @L2, align 8
  store i8* %59, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tmode, i32 0, i32 0), align 8
  %60 = load i8*, i8** @O2, align 8
  store i8* %60, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tmode, i32 0, i32 2), align 8
  br label %335

61:                                               ; preds = %53, %50, %47, %44
  br label %62

62:                                               ; preds = %61, %43, %25
  %63 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @omode, i32 0, i32 3), align 8
  store i8* %63, i8** %3, align 8
  %64 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @omode, i32 0, i32 2), align 8
  store i8* %64, i8** %4, align 8
  %65 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @omode, i32 0, i32 1), align 8
  store i8* %65, i8** %5, align 8
  %66 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @omode, i32 0, i32 0), align 8
  store i8* %66, i8** %6, align 8
  %67 = load i64, i64* @NP, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %62
  %70 = load i8*, i8** %5, align 8
  %71 = load i32, i32* @CSIZE, align 4
  %72 = load i32, i32* @PARENB, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @CLR(i8* %70, i32 %73)
  %75 = load i8*, i8** %5, align 8
  %76 = load i32, i32* @CS8, align 4
  %77 = call i32 @SET(i8* %75, i32 %76)
  %78 = load i8*, i8** %3, align 8
  %79 = load i32, i32* @ISTRIP, align 4
  %80 = load i32, i32* @INPCK, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @IGNPAR, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @CLR(i8* %78, i32 %83)
  br label %171

85:                                               ; preds = %62
  %86 = load i64, i64* @AP, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %85
  %89 = load i64, i64* @EP, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i64, i64* @OP, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %170

94:                                               ; preds = %91, %88, %85
  %95 = load i8*, i8** %5, align 8
  %96 = load i32, i32* @CSIZE, align 4
  %97 = call i32 @CLR(i8* %95, i32 %96)
  %98 = load i8*, i8** %5, align 8
  %99 = load i32, i32* @CS7, align 4
  %100 = load i32, i32* @PARENB, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @SET(i8* %98, i32 %101)
  %103 = load i8*, i8** %3, align 8
  %104 = load i32, i32* @ISTRIP, align 4
  %105 = call i32 @SET(i8* %103, i32 %104)
  %106 = load i64, i64* @OP, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %127

108:                                              ; preds = %94
  %109 = load i64, i64* @EP, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %127, label %111

111:                                              ; preds = %108
  %112 = load i8*, i8** %3, align 8
  %113 = load i32, i32* @INPCK, align 4
  %114 = load i32, i32* @IGNPAR, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @SET(i8* %112, i32 %115)
  %117 = load i8*, i8** %5, align 8
  %118 = load i32, i32* @PARODD, align 4
  %119 = call i32 @SET(i8* %117, i32 %118)
  %120 = load i64, i64* @AP, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %111
  %123 = load i8*, i8** %3, align 8
  %124 = load i32, i32* @INPCK, align 4
  %125 = call i32 @CLR(i8* %123, i32 %124)
  br label %126

126:                                              ; preds = %122, %111
  br label %169

127:                                              ; preds = %108, %94
  %128 = load i64, i64* @EP, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %149

130:                                              ; preds = %127
  %131 = load i64, i64* @OP, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %149, label %133

133:                                              ; preds = %130
  %134 = load i8*, i8** %3, align 8
  %135 = load i32, i32* @INPCK, align 4
  %136 = load i32, i32* @IGNPAR, align 4
  %137 = or i32 %135, %136
  %138 = call i32 @SET(i8* %134, i32 %137)
  %139 = load i8*, i8** %5, align 8
  %140 = load i32, i32* @PARODD, align 4
  %141 = call i32 @CLR(i8* %139, i32 %140)
  %142 = load i64, i64* @AP, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %133
  %145 = load i8*, i8** %3, align 8
  %146 = load i32, i32* @INPCK, align 4
  %147 = call i32 @CLR(i8* %145, i32 %146)
  br label %148

148:                                              ; preds = %144, %133
  br label %168

149:                                              ; preds = %130, %127
  %150 = load i64, i64* @AP, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %149
  %153 = load i64, i64* @EP, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %167

155:                                              ; preds = %152
  %156 = load i64, i64* @OP, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %155, %149
  %159 = load i8*, i8** %3, align 8
  %160 = load i32, i32* @INPCK, align 4
  %161 = load i32, i32* @IGNPAR, align 4
  %162 = or i32 %160, %161
  %163 = call i32 @CLR(i8* %159, i32 %162)
  %164 = load i8*, i8** %5, align 8
  %165 = load i32, i32* @PARODD, align 4
  %166 = call i32 @CLR(i8* %164, i32 %165)
  br label %167

167:                                              ; preds = %158, %155, %152
  br label %168

168:                                              ; preds = %167, %148
  br label %169

169:                                              ; preds = %168, %126
  br label %170

170:                                              ; preds = %169, %91
  br label %171

171:                                              ; preds = %170, %69
  %172 = load i64, i64* @HC, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  %175 = load i8*, i8** %5, align 8
  %176 = load i32, i32* @HUPCL, align 4
  %177 = call i32 @SET(i8* %175, i32 %176)
  br label %182

178:                                              ; preds = %171
  %179 = load i8*, i8** %5, align 8
  %180 = load i32, i32* @HUPCL, align 4
  %181 = call i32 @CLR(i8* %179, i32 %180)
  br label %182

182:                                              ; preds = %178, %174
  %183 = load i64, i64* @MB, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %182
  %186 = load i8*, i8** %5, align 8
  %187 = load i32, i32* @MDMBUF, align 4
  %188 = call i32 @SET(i8* %186, i32 %187)
  br label %193

189:                                              ; preds = %182
  %190 = load i8*, i8** %5, align 8
  %191 = load i32, i32* @MDMBUF, align 4
  %192 = call i32 @CLR(i8* %190, i32 %191)
  br label %193

193:                                              ; preds = %189, %185
  %194 = load i64, i64* @HW, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %193
  %197 = load i8*, i8** %5, align 8
  %198 = load i32, i32* @CRTSCTS, align 4
  %199 = call i32 @SET(i8* %197, i32 %198)
  br label %204

200:                                              ; preds = %193
  %201 = load i8*, i8** %5, align 8
  %202 = load i32, i32* @CRTSCTS, align 4
  %203 = call i32 @CLR(i8* %201, i32 %202)
  br label %204

204:                                              ; preds = %200, %196
  %205 = load i64, i64* @NL, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %204
  %208 = load i8*, i8** %3, align 8
  %209 = load i32, i32* @ICRNL, align 4
  %210 = call i32 @SET(i8* %208, i32 %209)
  %211 = load i8*, i8** %4, align 8
  %212 = load i32, i32* @ONLCR, align 4
  %213 = load i32, i32* @OPOST, align 4
  %214 = or i32 %212, %213
  %215 = call i32 @SET(i8* %211, i32 %214)
  br label %223

216:                                              ; preds = %204
  %217 = load i8*, i8** %3, align 8
  %218 = load i32, i32* @ICRNL, align 4
  %219 = call i32 @CLR(i8* %217, i32 %218)
  %220 = load i8*, i8** %4, align 8
  %221 = load i32, i32* @ONLCR, align 4
  %222 = call i32 @CLR(i8* %220, i32 %221)
  br label %223

223:                                              ; preds = %216, %207
  %224 = load i32, i32* @HT, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %232, label %226

226:                                              ; preds = %223
  %227 = load i8*, i8** %4, align 8
  %228 = load i32, i32* @OXTABS, align 4
  %229 = load i32, i32* @OPOST, align 4
  %230 = or i32 %228, %229
  %231 = call i32 @SET(i8* %227, i32 %230)
  br label %236

232:                                              ; preds = %223
  %233 = load i8*, i8** %4, align 8
  %234 = load i32, i32* @OXTABS, align 4
  %235 = call i32 @CLR(i8* %233, i32 %234)
  br label %236

236:                                              ; preds = %232, %226
  %237 = load i32, i32* %2, align 4
  %238 = icmp eq i32 %237, 1
  br i1 %238, label %239, label %259

239:                                              ; preds = %236
  %240 = load i64, i64* @RW, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %254

242:                                              ; preds = %239
  store i8* null, i8** %3, align 8
  %243 = load i8*, i8** %4, align 8
  %244 = load i32, i32* @OPOST, align 4
  %245 = call i32 @CLR(i8* %243, i32 %244)
  %246 = load i8*, i8** %5, align 8
  %247 = load i32, i32* @CSIZE, align 4
  %248 = load i32, i32* @PARENB, align 4
  %249 = or i32 %247, %248
  %250 = call i32 @CLR(i8* %246, i32 %249)
  %251 = load i8*, i8** %5, align 8
  %252 = load i32, i32* @CS8, align 4
  %253 = call i32 @SET(i8* %251, i32 %252)
  store i8* null, i8** %6, align 8
  br label %258

254:                                              ; preds = %239
  %255 = load i8*, i8** %6, align 8
  %256 = load i32, i32* @ICANON, align 4
  %257 = call i32 @CLR(i8* %255, i32 %256)
  br label %258

258:                                              ; preds = %254, %242
  br label %330

259:                                              ; preds = %236
  %260 = load i32, i32* %2, align 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %259
  br label %330

263:                                              ; preds = %259
  %264 = load i64, i64* @CE, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %263
  %267 = load i8*, i8** %6, align 8
  %268 = load i32, i32* @ECHOE, align 4
  %269 = call i32 @SET(i8* %267, i32 %268)
  br label %274

270:                                              ; preds = %263
  %271 = load i8*, i8** %6, align 8
  %272 = load i32, i32* @ECHOE, align 4
  %273 = call i32 @CLR(i8* %271, i32 %272)
  br label %274

274:                                              ; preds = %270, %266
  %275 = load i64, i64* @CK, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %274
  %278 = load i8*, i8** %6, align 8
  %279 = load i32, i32* @ECHOKE, align 4
  %280 = call i32 @SET(i8* %278, i32 %279)
  br label %285

281:                                              ; preds = %274
  %282 = load i8*, i8** %6, align 8
  %283 = load i32, i32* @ECHOKE, align 4
  %284 = call i32 @CLR(i8* %282, i32 %283)
  br label %285

285:                                              ; preds = %281, %277
  %286 = load i64, i64* @PE, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %285
  %289 = load i8*, i8** %6, align 8
  %290 = load i32, i32* @ECHOPRT, align 4
  %291 = call i32 @SET(i8* %289, i32 %290)
  br label %296

292:                                              ; preds = %285
  %293 = load i8*, i8** %6, align 8
  %294 = load i32, i32* @ECHOPRT, align 4
  %295 = call i32 @CLR(i8* %293, i32 %294)
  br label %296

296:                                              ; preds = %292, %288
  %297 = load i64, i64* @EC, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %296
  %300 = load i8*, i8** %6, align 8
  %301 = load i32, i32* @ECHO, align 4
  %302 = call i32 @SET(i8* %300, i32 %301)
  br label %307

303:                                              ; preds = %296
  %304 = load i8*, i8** %6, align 8
  %305 = load i32, i32* @ECHO, align 4
  %306 = call i32 @CLR(i8* %304, i32 %305)
  br label %307

307:                                              ; preds = %303, %299
  %308 = load i64, i64* @XC, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %307
  %311 = load i8*, i8** %6, align 8
  %312 = load i32, i32* @ECHOCTL, align 4
  %313 = call i32 @SET(i8* %311, i32 %312)
  br label %318

314:                                              ; preds = %307
  %315 = load i8*, i8** %6, align 8
  %316 = load i32, i32* @ECHOCTL, align 4
  %317 = call i32 @CLR(i8* %315, i32 %316)
  br label %318

318:                                              ; preds = %314, %310
  %319 = load i64, i64* @DX, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %325

321:                                              ; preds = %318
  %322 = load i8*, i8** %6, align 8
  %323 = load i32, i32* @IXANY, align 4
  %324 = call i32 @SET(i8* %322, i32 %323)
  br label %329

325:                                              ; preds = %318
  %326 = load i8*, i8** %6, align 8
  %327 = load i32, i32* @IXANY, align 4
  %328 = call i32 @CLR(i8* %326, i32 %327)
  br label %329

329:                                              ; preds = %325, %321
  br label %330

330:                                              ; preds = %329, %262, %258
  %331 = load i8*, i8** %3, align 8
  store i8* %331, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tmode, i32 0, i32 3), align 8
  %332 = load i8*, i8** %4, align 8
  store i8* %332, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tmode, i32 0, i32 2), align 8
  %333 = load i8*, i8** %5, align 8
  store i8* %333, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tmode, i32 0, i32 1), align 8
  %334 = load i8*, i8** %6, align 8
  store i8* %334, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tmode, i32 0, i32 0), align 8
  br label %335

335:                                              ; preds = %330, %56, %38, %20
  ret void
}

declare dso_local i32 @CLR(i8*, i32) #1

declare dso_local i32 @SET(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

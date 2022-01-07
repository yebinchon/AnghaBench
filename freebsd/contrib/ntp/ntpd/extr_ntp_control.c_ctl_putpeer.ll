; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_ctl_putpeer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_ctl_putpeer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_var = type { i8*, i32 }
%struct.peer = type { i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.autokey* }
%struct.autokey = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@CTL_MAX_DATA_LEN = common dso_local global i32 0, align 4
@peer_var = common dso_local global %struct.ctl_var* null, align 8
@FLAG_PREEMPT = common dso_local global i32 0, align 4
@FLAG_AUTHENTIC = common dso_local global i32 0, align 4
@sys_ttl = common dso_local global i32* null, align 8
@current_time = common dso_local global i32 0, align 4
@NTP_MAXKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s=\22\00", align 1
@EOV = common dso_local global i32 0, align 4
@PADDING = common dso_local global i32 0, align 4
@CP_INITKEY = common dso_local global i64 0, align 8
@CP_INITTSP = common dso_local global i64 0, align 8
@FLAG_REFCLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.peer*)* @ctl_putpeer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_putpeer(i32 %0, %struct.peer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.peer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ctl_var*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.peer* %1, %struct.peer** %4, align 8
  %12 = load i32, i32* @CTL_MAX_DATA_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load i32, i32* %3, align 4
  switch i32 %16, label %816 [
    i32 177, label %17
    i32 183, label %33
    i32 182, label %47
    i32 139, label %64
    i32 137, label %74
    i32 138, label %85
    i32 174, label %106
    i32 173, label %126
    i32 163, label %147
    i32 155, label %168
    i32 151, label %189
    i32 159, label %200
    i32 167, label %211
    i32 136, label %222
    i32 153, label %233
    i32 165, label %244
    i32 152, label %255
    i32 145, label %266
    i32 144, label %280
    i32 147, label %294
    i32 146, label %323
    i32 156, label %333
    i32 149, label %343
    i32 128, label %353
    i32 180, label %373
    i32 150, label %394
    i32 168, label %405
    i32 132, label %416
    i32 131, label %444
    i32 135, label %455
    i32 176, label %468
    i32 158, label %482
    i32 161, label %496
    i32 175, label %510
    i32 160, label %524
    i32 172, label %553
    i32 170, label %567
    i32 171, label %581
    i32 154, label %595
    i32 148, label %606
    i32 141, label %617
    i32 129, label %628
    i32 133, label %724
    i32 134, label %737
    i32 181, label %750
    i32 179, label %761
    i32 157, label %772
    i32 142, label %783
    i32 143, label %794
    i32 178, label %805
  ]

17:                                               ; preds = %2
  %18 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %18, i64 %20
  %22 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* @FLAG_PREEMPT, align 4
  %25 = load %struct.peer*, %struct.peer** %4, align 8
  %26 = getelementptr inbounds %struct.peer, %struct.peer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @ctl_putuint(i8* %23, i32 %31)
  br label %816

33:                                               ; preds = %2
  %34 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %34, i64 %36
  %38 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.peer*, %struct.peer** %4, align 8
  %41 = getelementptr inbounds %struct.peer, %struct.peer* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @ctl_putuint(i8* %39, i32 %45)
  br label %816

47:                                               ; preds = %2
  %48 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %48, i64 %50
  %52 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* @FLAG_AUTHENTIC, align 4
  %55 = load %struct.peer*, %struct.peer** %4, align 8
  %56 = getelementptr inbounds %struct.peer, %struct.peer* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @ctl_putuint(i8* %53, i32 %62)
  br label %816

64:                                               ; preds = %2
  %65 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %65, i64 %67
  %69 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.peer*, %struct.peer** %4, align 8
  %72 = getelementptr inbounds %struct.peer, %struct.peer* %71, i32 0, i32 49
  %73 = call i32 @ctl_putadr(i8* %70, i32 0, i32* %72)
  br label %816

74:                                               ; preds = %2
  %75 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %75, i64 %77
  %79 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.peer*, %struct.peer** %4, align 8
  %82 = getelementptr inbounds %struct.peer, %struct.peer* %81, i32 0, i32 49
  %83 = call i32 @SRCPORT(i32* %82)
  %84 = call i32 @ctl_putuint(i8* %80, i32 %83)
  br label %816

85:                                               ; preds = %2
  %86 = load %struct.peer*, %struct.peer** %4, align 8
  %87 = getelementptr inbounds %struct.peer, %struct.peer* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %105

90:                                               ; preds = %85
  %91 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %91, i64 %93
  %95 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.peer*, %struct.peer** %4, align 8
  %98 = getelementptr inbounds %struct.peer, %struct.peer* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.peer*, %struct.peer** %4, align 8
  %101 = getelementptr inbounds %struct.peer, %struct.peer* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @strlen(i8* %102)
  %104 = call i32 @ctl_putstr(i8* %96, i8* %99, i32 %103)
  br label %105

105:                                              ; preds = %90, %85
  br label %816

106:                                              ; preds = %2
  %107 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %108 = load i32, i32* %3, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %107, i64 %109
  %111 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.peer*, %struct.peer** %4, align 8
  %114 = getelementptr inbounds %struct.peer, %struct.peer* %113, i32 0, i32 48
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = icmp ne %struct.TYPE_3__* %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %106
  %118 = load %struct.peer*, %struct.peer** %4, align 8
  %119 = getelementptr inbounds %struct.peer, %struct.peer* %118, i32 0, i32 48
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  br label %123

122:                                              ; preds = %106
  br label %123

123:                                              ; preds = %122, %117
  %124 = phi i32* [ %121, %117 ], [ null, %122 ]
  %125 = call i32 @ctl_putadr(i8* %112, i32 0, i32* %124)
  br label %816

126:                                              ; preds = %2
  %127 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %128 = load i32, i32* %3, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %127, i64 %129
  %131 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.peer*, %struct.peer** %4, align 8
  %134 = getelementptr inbounds %struct.peer, %struct.peer* %133, i32 0, i32 48
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = icmp ne %struct.TYPE_3__* %135, null
  br i1 %136, label %137, label %143

137:                                              ; preds = %126
  %138 = load %struct.peer*, %struct.peer** %4, align 8
  %139 = getelementptr inbounds %struct.peer, %struct.peer* %138, i32 0, i32 48
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = call i32 @SRCPORT(i32* %141)
  br label %144

143:                                              ; preds = %126
  br label %144

144:                                              ; preds = %143, %137
  %145 = phi i32 [ %142, %137 ], [ 0, %143 ]
  %146 = call i32 @ctl_putuint(i8* %132, i32 %145)
  br label %816

147:                                              ; preds = %2
  %148 = load %struct.peer*, %struct.peer** %4, align 8
  %149 = getelementptr inbounds %struct.peer, %struct.peer* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = sitofp i32 %150 to double
  %152 = fcmp ogt double %151, 0.000000e+00
  br i1 %152, label %153, label %167

153:                                              ; preds = %147
  %154 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %155 = load i32, i32* %3, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %154, i64 %156
  %158 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.peer*, %struct.peer** %4, align 8
  %161 = getelementptr inbounds %struct.peer, %struct.peer* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = sitofp i32 %162 to double
  %164 = fdiv double %163, 1.000000e+03
  %165 = fptosi double %164 to i32
  %166 = call i32 @ctl_putdbl(i8* %159, i32 %165)
  br label %167

167:                                              ; preds = %153, %147
  br label %816

168:                                              ; preds = %2
  %169 = load %struct.peer*, %struct.peer** %4, align 8
  %170 = getelementptr inbounds %struct.peer, %struct.peer* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = sitofp i32 %171 to double
  %173 = fcmp ogt double %172, 0.000000e+00
  br i1 %173, label %174, label %188

174:                                              ; preds = %168
  %175 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %176 = load i32, i32* %3, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %175, i64 %177
  %179 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = load %struct.peer*, %struct.peer** %4, align 8
  %182 = getelementptr inbounds %struct.peer, %struct.peer* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = sitofp i32 %183 to double
  %185 = fdiv double %184, 1.000000e+03
  %186 = fptosi double %185 to i32
  %187 = call i32 @ctl_putdbl(i8* %180, i32 %186)
  br label %188

188:                                              ; preds = %174, %168
  br label %816

189:                                              ; preds = %2
  %190 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %191 = load i32, i32* %3, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %190, i64 %192
  %194 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.peer*, %struct.peer** %4, align 8
  %197 = getelementptr inbounds %struct.peer, %struct.peer* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @ctl_putuint(i8* %195, i32 %198)
  br label %816

200:                                              ; preds = %2
  %201 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %202 = load i32, i32* %3, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %201, i64 %203
  %205 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = load %struct.peer*, %struct.peer** %4, align 8
  %208 = getelementptr inbounds %struct.peer, %struct.peer* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @ctl_putuint(i8* %206, i32 %209)
  br label %816

211:                                              ; preds = %2
  %212 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %213 = load i32, i32* %3, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %212, i64 %214
  %216 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = load %struct.peer*, %struct.peer** %4, align 8
  %219 = getelementptr inbounds %struct.peer, %struct.peer* %218, i32 0, i32 7
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @ctl_putuint(i8* %217, i32 %220)
  br label %816

222:                                              ; preds = %2
  %223 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %224 = load i32, i32* %3, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %223, i64 %225
  %227 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = load %struct.peer*, %struct.peer** %4, align 8
  %230 = getelementptr inbounds %struct.peer, %struct.peer* %229, i32 0, i32 8
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @ctl_putuint(i8* %228, i32 %231)
  br label %816

233:                                              ; preds = %2
  %234 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %235 = load i32, i32* %3, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %234, i64 %236
  %238 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = load %struct.peer*, %struct.peer** %4, align 8
  %241 = getelementptr inbounds %struct.peer, %struct.peer* %240, i32 0, i32 9
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @ctl_putuint(i8* %239, i32 %242)
  br label %816

244:                                              ; preds = %2
  %245 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %246 = load i32, i32* %3, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %245, i64 %247
  %249 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %248, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  %251 = load %struct.peer*, %struct.peer** %4, align 8
  %252 = getelementptr inbounds %struct.peer, %struct.peer* %251, i32 0, i32 10
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @ctl_putuint(i8* %250, i32 %253)
  br label %816

255:                                              ; preds = %2
  %256 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %257 = load i32, i32* %3, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %256, i64 %258
  %260 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %259, i32 0, i32 0
  %261 = load i8*, i8** %260, align 8
  %262 = load %struct.peer*, %struct.peer** %4, align 8
  %263 = getelementptr inbounds %struct.peer, %struct.peer* %262, i32 0, i32 47
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @ctl_putint(i8* %261, i32 %264)
  br label %816

266:                                              ; preds = %2
  %267 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %268 = load i32, i32* %3, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %267, i64 %269
  %271 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %270, i32 0, i32 0
  %272 = load i8*, i8** %271, align 8
  %273 = load %struct.peer*, %struct.peer** %4, align 8
  %274 = getelementptr inbounds %struct.peer, %struct.peer* %273, i32 0, i32 11
  %275 = load i32, i32* %274, align 8
  %276 = sitofp i32 %275 to double
  %277 = fmul double %276, 1.000000e+03
  %278 = fptosi double %277 to i32
  %279 = call i32 @ctl_putdbl(i8* %272, i32 %278)
  br label %816

280:                                              ; preds = %2
  %281 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %282 = load i32, i32* %3, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %281, i64 %283
  %285 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %284, i32 0, i32 0
  %286 = load i8*, i8** %285, align 8
  %287 = load %struct.peer*, %struct.peer** %4, align 8
  %288 = getelementptr inbounds %struct.peer, %struct.peer* %287, i32 0, i32 12
  %289 = load i32, i32* %288, align 4
  %290 = sitofp i32 %289 to double
  %291 = fmul double %290, 1.000000e+03
  %292 = fptosi double %291 to i32
  %293 = call i32 @ctl_putdbl(i8* %286, i32 %292)
  br label %816

294:                                              ; preds = %2
  %295 = load %struct.peer*, %struct.peer** %4, align 8
  %296 = getelementptr inbounds %struct.peer, %struct.peer* %295, i32 0, i32 8
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @REFID_ISTEXT(i32 %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %311

300:                                              ; preds = %294
  %301 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %302 = load i32, i32* %3, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %301, i64 %303
  %305 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %304, i32 0, i32 0
  %306 = load i8*, i8** %305, align 8
  %307 = load %struct.peer*, %struct.peer** %4, align 8
  %308 = getelementptr inbounds %struct.peer, %struct.peer* %307, i32 0, i32 46
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @ctl_putrefid(i8* %306, i32 %309)
  br label %322

311:                                              ; preds = %294
  %312 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %313 = load i32, i32* %3, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %312, i64 %314
  %316 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %315, i32 0, i32 0
  %317 = load i8*, i8** %316, align 8
  %318 = load %struct.peer*, %struct.peer** %4, align 8
  %319 = getelementptr inbounds %struct.peer, %struct.peer* %318, i32 0, i32 46
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @ctl_putadr(i8* %317, i32 %320, i32* null)
  br label %322

322:                                              ; preds = %311, %300
  br label %816

323:                                              ; preds = %2
  %324 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %325 = load i32, i32* %3, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %324, i64 %326
  %328 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %327, i32 0, i32 0
  %329 = load i8*, i8** %328, align 8
  %330 = load %struct.peer*, %struct.peer** %4, align 8
  %331 = getelementptr inbounds %struct.peer, %struct.peer* %330, i32 0, i32 45
  %332 = call i32 @ctl_putts(i8* %329, i32* %331)
  br label %816

333:                                              ; preds = %2
  %334 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %335 = load i32, i32* %3, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %334, i64 %336
  %338 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %337, i32 0, i32 0
  %339 = load i8*, i8** %338, align 8
  %340 = load %struct.peer*, %struct.peer** %4, align 8
  %341 = getelementptr inbounds %struct.peer, %struct.peer* %340, i32 0, i32 44
  %342 = call i32 @ctl_putts(i8* %339, i32* %341)
  br label %816

343:                                              ; preds = %2
  %344 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %345 = load i32, i32* %3, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %344, i64 %346
  %348 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %347, i32 0, i32 0
  %349 = load i8*, i8** %348, align 8
  %350 = load %struct.peer*, %struct.peer** %4, align 8
  %351 = getelementptr inbounds %struct.peer, %struct.peer* %350, i32 0, i32 43
  %352 = call i32 @ctl_putts(i8* %349, i32* %351)
  br label %816

353:                                              ; preds = %2
  %354 = load %struct.peer*, %struct.peer** %4, align 8
  %355 = getelementptr inbounds %struct.peer, %struct.peer* %354, i32 0, i32 13
  %356 = load i32, i32* %355, align 8
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %372

358:                                              ; preds = %353
  %359 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %360 = load i32, i32* %3, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %359, i64 %361
  %363 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %362, i32 0, i32 0
  %364 = load i8*, i8** %363, align 8
  %365 = load %struct.peer*, %struct.peer** %4, align 8
  %366 = getelementptr inbounds %struct.peer, %struct.peer* %365, i32 0, i32 13
  %367 = load i32, i32* %366, align 8
  %368 = sitofp i32 %367 to double
  %369 = fmul double %368, 1.000000e+03
  %370 = fptosi double %369 to i32
  %371 = call i32 @ctl_putdbl(i8* %364, i32 %370)
  br label %372

372:                                              ; preds = %358, %353
  br label %816

373:                                              ; preds = %2
  %374 = load %struct.peer*, %struct.peer** %4, align 8
  %375 = getelementptr inbounds %struct.peer, %struct.peer* %374, i32 0, i32 14
  %376 = load i32, i32* %375, align 4
  %377 = sitofp i32 %376 to double
  %378 = fcmp une double %377, 0.000000e+00
  br i1 %378, label %379, label %393

379:                                              ; preds = %373
  %380 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %381 = load i32, i32* %3, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %380, i64 %382
  %384 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %383, i32 0, i32 0
  %385 = load i8*, i8** %384, align 8
  %386 = load %struct.peer*, %struct.peer** %4, align 8
  %387 = getelementptr inbounds %struct.peer, %struct.peer* %386, i32 0, i32 14
  %388 = load i32, i32* %387, align 4
  %389 = sitofp i32 %388 to double
  %390 = fmul double %389, 1.000000e+03
  %391 = fptosi double %390 to i32
  %392 = call i32 @ctl_putdbl(i8* %385, i32 %391)
  br label %393

393:                                              ; preds = %379, %373
  br label %816

394:                                              ; preds = %2
  %395 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %396 = load i32, i32* %3, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %395, i64 %397
  %399 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %398, i32 0, i32 0
  %400 = load i8*, i8** %399, align 8
  %401 = load %struct.peer*, %struct.peer** %4, align 8
  %402 = getelementptr inbounds %struct.peer, %struct.peer* %401, i32 0, i32 15
  %403 = load i32, i32* %402, align 8
  %404 = call i32 @ctl_puthex(i8* %400, i32 %403)
  br label %816

405:                                              ; preds = %2
  %406 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %407 = load i32, i32* %3, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %406, i64 %408
  %410 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %409, i32 0, i32 0
  %411 = load i8*, i8** %410, align 8
  %412 = load %struct.peer*, %struct.peer** %4, align 8
  %413 = getelementptr inbounds %struct.peer, %struct.peer* %412, i32 0, i32 16
  %414 = load i32, i32* %413, align 4
  %415 = call i32 @ctl_puthex(i8* %411, i32 %414)
  br label %816

416:                                              ; preds = %2
  %417 = load %struct.peer*, %struct.peer** %4, align 8
  %418 = getelementptr inbounds %struct.peer, %struct.peer* %417, i32 0, i32 17
  %419 = load i32, i32* %418, align 8
  %420 = icmp sgt i32 %419, 0
  br i1 %420, label %421, label %443

421:                                              ; preds = %416
  %422 = load %struct.peer*, %struct.peer** %4, align 8
  %423 = getelementptr inbounds %struct.peer, %struct.peer* %422, i32 0, i32 17
  %424 = load i32, i32* %423, align 8
  %425 = load i32*, i32** @sys_ttl, align 8
  %426 = call i32 @COUNTOF(i32* %425)
  %427 = icmp slt i32 %424, %426
  br i1 %427, label %428, label %443

428:                                              ; preds = %421
  %429 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %430 = load i32, i32* %3, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %429, i64 %431
  %433 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %432, i32 0, i32 0
  %434 = load i8*, i8** %433, align 8
  %435 = load i32*, i32** @sys_ttl, align 8
  %436 = load %struct.peer*, %struct.peer** %4, align 8
  %437 = getelementptr inbounds %struct.peer, %struct.peer* %436, i32 0, i32 17
  %438 = load i32, i32* %437, align 8
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i32, i32* %435, i64 %439
  %441 = load i32, i32* %440, align 4
  %442 = call i32 @ctl_putint(i8* %434, i32 %441)
  br label %443

443:                                              ; preds = %428, %421, %416
  br label %816

444:                                              ; preds = %2
  %445 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %446 = load i32, i32* %3, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %445, i64 %447
  %449 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %448, i32 0, i32 0
  %450 = load i8*, i8** %449, align 8
  %451 = load %struct.peer*, %struct.peer** %4, align 8
  %452 = getelementptr inbounds %struct.peer, %struct.peer* %451, i32 0, i32 18
  %453 = load i32, i32* %452, align 4
  %454 = call i32 @ctl_putuint(i8* %450, i32 %453)
  br label %816

455:                                              ; preds = %2
  %456 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %457 = load i32, i32* %3, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %456, i64 %458
  %460 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %459, i32 0, i32 0
  %461 = load i8*, i8** %460, align 8
  %462 = load %struct.peer*, %struct.peer** %4, align 8
  %463 = getelementptr inbounds %struct.peer, %struct.peer* %462, i32 0, i32 19
  %464 = load i32, i32* %463, align 8
  %465 = load i32, i32* @current_time, align 4
  %466 = sub nsw i32 %464, %465
  %467 = call i32 @ctl_putuint(i8* %461, i32 %466)
  br label %816

468:                                              ; preds = %2
  %469 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %470 = load i32, i32* %3, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %469, i64 %471
  %473 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %472, i32 0, i32 0
  %474 = load i8*, i8** %473, align 8
  %475 = load %struct.peer*, %struct.peer** %4, align 8
  %476 = getelementptr inbounds %struct.peer, %struct.peer* %475, i32 0, i32 20
  %477 = load i32, i32* %476, align 4
  %478 = sitofp i32 %477 to double
  %479 = fmul double %478, 1.000000e+03
  %480 = fptosi double %479 to i32
  %481 = call i32 @ctl_putdbl(i8* %474, i32 %480)
  br label %816

482:                                              ; preds = %2
  %483 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %484 = load i32, i32* %3, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %483, i64 %485
  %487 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %486, i32 0, i32 0
  %488 = load i8*, i8** %487, align 8
  %489 = load %struct.peer*, %struct.peer** %4, align 8
  %490 = getelementptr inbounds %struct.peer, %struct.peer* %489, i32 0, i32 21
  %491 = load i32, i32* %490, align 8
  %492 = sitofp i32 %491 to double
  %493 = fmul double %492, 1.000000e+03
  %494 = fptosi double %493 to i32
  %495 = call i32 @ctl_putdbl(i8* %488, i32 %494)
  br label %816

496:                                              ; preds = %2
  %497 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %498 = load i32, i32* %3, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %497, i64 %499
  %501 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %500, i32 0, i32 0
  %502 = load i8*, i8** %501, align 8
  %503 = load %struct.peer*, %struct.peer** %4, align 8
  %504 = getelementptr inbounds %struct.peer, %struct.peer* %503, i32 0, i32 22
  %505 = load i32, i32* %504, align 4
  %506 = sitofp i32 %505 to double
  %507 = fmul double %506, 1.000000e+03
  %508 = fptosi double %507 to i32
  %509 = call i32 @ctl_putdbl(i8* %502, i32 %508)
  br label %816

510:                                              ; preds = %2
  %511 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %512 = load i32, i32* %3, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %511, i64 %513
  %515 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %514, i32 0, i32 0
  %516 = load i8*, i8** %515, align 8
  %517 = load %struct.peer*, %struct.peer** %4, align 8
  %518 = getelementptr inbounds %struct.peer, %struct.peer* %517, i32 0, i32 23
  %519 = load i32, i32* %518, align 8
  %520 = sitofp i32 %519 to double
  %521 = fmul double %520, 1.000000e+03
  %522 = fptosi double %521 to i32
  %523 = call i32 @ctl_putdbl(i8* %516, i32 %522)
  br label %816

524:                                              ; preds = %2
  %525 = load %struct.peer*, %struct.peer** %4, align 8
  %526 = getelementptr inbounds %struct.peer, %struct.peer* %525, i32 0, i32 1
  %527 = load i32, i32* %526, align 4
  %528 = load i32, i32* @NTP_MAXKEY, align 4
  %529 = icmp sgt i32 %527, %528
  br i1 %529, label %530, label %541

530:                                              ; preds = %524
  %531 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %532 = load i32, i32* %3, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %531, i64 %533
  %535 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %534, i32 0, i32 0
  %536 = load i8*, i8** %535, align 8
  %537 = load %struct.peer*, %struct.peer** %4, align 8
  %538 = getelementptr inbounds %struct.peer, %struct.peer* %537, i32 0, i32 1
  %539 = load i32, i32* %538, align 4
  %540 = call i32 @ctl_puthex(i8* %536, i32 %539)
  br label %552

541:                                              ; preds = %524
  %542 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %543 = load i32, i32* %3, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %542, i64 %544
  %546 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %545, i32 0, i32 0
  %547 = load i8*, i8** %546, align 8
  %548 = load %struct.peer*, %struct.peer** %4, align 8
  %549 = getelementptr inbounds %struct.peer, %struct.peer* %548, i32 0, i32 1
  %550 = load i32, i32* %549, align 4
  %551 = call i32 @ctl_putuint(i8* %547, i32 %550)
  br label %552

552:                                              ; preds = %541, %530
  br label %816

553:                                              ; preds = %2
  %554 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %555 = load i32, i32* %3, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %554, i64 %556
  %558 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %557, i32 0, i32 0
  %559 = load i8*, i8** %558, align 8
  %560 = load %struct.peer*, %struct.peer** %4, align 8
  %561 = getelementptr inbounds %struct.peer, %struct.peer* %560, i32 0, i32 42
  %562 = load i32, i32* %561, align 4
  %563 = load %struct.peer*, %struct.peer** %4, align 8
  %564 = getelementptr inbounds %struct.peer, %struct.peer* %563, i32 0, i32 39
  %565 = load i32, i32* %564, align 8
  %566 = call i32 @ctl_putarray(i8* %559, i32 %562, i32 %565)
  br label %816

567:                                              ; preds = %2
  %568 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %569 = load i32, i32* %3, align 4
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %568, i64 %570
  %572 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %571, i32 0, i32 0
  %573 = load i8*, i8** %572, align 8
  %574 = load %struct.peer*, %struct.peer** %4, align 8
  %575 = getelementptr inbounds %struct.peer, %struct.peer* %574, i32 0, i32 41
  %576 = load i32, i32* %575, align 8
  %577 = load %struct.peer*, %struct.peer** %4, align 8
  %578 = getelementptr inbounds %struct.peer, %struct.peer* %577, i32 0, i32 39
  %579 = load i32, i32* %578, align 8
  %580 = call i32 @ctl_putarray(i8* %573, i32 %576, i32 %579)
  br label %816

581:                                              ; preds = %2
  %582 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %583 = load i32, i32* %3, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %582, i64 %584
  %586 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %585, i32 0, i32 0
  %587 = load i8*, i8** %586, align 8
  %588 = load %struct.peer*, %struct.peer** %4, align 8
  %589 = getelementptr inbounds %struct.peer, %struct.peer* %588, i32 0, i32 40
  %590 = load i32, i32* %589, align 4
  %591 = load %struct.peer*, %struct.peer** %4, align 8
  %592 = getelementptr inbounds %struct.peer, %struct.peer* %591, i32 0, i32 39
  %593 = load i32, i32* %592, align 8
  %594 = call i32 @ctl_putarray(i8* %587, i32 %590, i32 %593)
  br label %816

595:                                              ; preds = %2
  %596 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %597 = load i32, i32* %3, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %596, i64 %598
  %600 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %599, i32 0, i32 0
  %601 = load i8*, i8** %600, align 8
  %602 = load %struct.peer*, %struct.peer** %4, align 8
  %603 = getelementptr inbounds %struct.peer, %struct.peer* %602, i32 0, i32 24
  %604 = load i32, i32* %603, align 4
  %605 = call i32 @ctl_putuint(i8* %601, i32 %604)
  br label %816

606:                                              ; preds = %2
  %607 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %608 = load i32, i32* %3, align 4
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %607, i64 %609
  %611 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %610, i32 0, i32 0
  %612 = load i8*, i8** %611, align 8
  %613 = load %struct.peer*, %struct.peer** %4, align 8
  %614 = getelementptr inbounds %struct.peer, %struct.peer* %613, i32 0, i32 25
  %615 = load i32, i32* %614, align 8
  %616 = call i32 @ctl_putuint(i8* %612, i32 %615)
  br label %816

617:                                              ; preds = %2
  %618 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %619 = load i32, i32* %3, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %618, i64 %620
  %622 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %621, i32 0, i32 0
  %623 = load i8*, i8** %622, align 8
  %624 = load %struct.peer*, %struct.peer** %4, align 8
  %625 = getelementptr inbounds %struct.peer, %struct.peer* %624, i32 0, i32 26
  %626 = load i32, i32* %625, align 4
  %627 = call i32 @ctl_putuint(i8* %623, i32 %626)
  br label %816

628:                                              ; preds = %2
  store i8* %15, i8** %7, align 8
  %629 = getelementptr inbounds i8, i8* %15, i64 %13
  store i8* %629, i8** %9, align 8
  %630 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %631 = load i32, i32* %3, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %630, i64 %632
  %634 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %633, i32 0, i32 0
  %635 = load i8*, i8** %634, align 8
  %636 = call i32 @strlen(i8* %635)
  %637 = add nsw i32 %636, 4
  %638 = sext i32 %637 to i64
  %639 = icmp ugt i64 %638, %13
  br i1 %639, label %640, label %641

640:                                              ; preds = %628
  br label %816

641:                                              ; preds = %628
  %642 = load i8*, i8** %7, align 8
  %643 = trunc i64 %13 to i32
  %644 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %645 = load i32, i32* %3, align 4
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %644, i64 %646
  %648 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %647, i32 0, i32 0
  %649 = load i8*, i8** %648, align 8
  %650 = call i32 @snprintf(i8* %642, i32 %643, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %649)
  %651 = load i8*, i8** %7, align 8
  %652 = call i32 @strlen(i8* %651)
  %653 = load i8*, i8** %7, align 8
  %654 = sext i32 %652 to i64
  %655 = getelementptr inbounds i8, i8* %653, i64 %654
  store i8* %655, i8** %7, align 8
  %656 = load i8*, i8** %7, align 8
  store i8* %656, i8** %8, align 8
  %657 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  store %struct.ctl_var* %657, %struct.ctl_var** %11, align 8
  br label %658

658:                                              ; preds = %705, %641
  %659 = load i32, i32* @EOV, align 4
  %660 = load %struct.ctl_var*, %struct.ctl_var** %11, align 8
  %661 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %660, i32 0, i32 1
  %662 = load i32, i32* %661, align 8
  %663 = and i32 %659, %662
  %664 = icmp ne i32 %663, 0
  %665 = xor i1 %664, true
  br i1 %665, label %666, label %708

666:                                              ; preds = %658
  %667 = load i32, i32* @PADDING, align 4
  %668 = load %struct.ctl_var*, %struct.ctl_var** %11, align 8
  %669 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %668, i32 0, i32 1
  %670 = load i32, i32* %669, align 8
  %671 = and i32 %667, %670
  %672 = icmp ne i32 %671, 0
  br i1 %672, label %673, label %674

673:                                              ; preds = %666
  br label %705

674:                                              ; preds = %666
  %675 = load %struct.ctl_var*, %struct.ctl_var** %11, align 8
  %676 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %675, i32 0, i32 0
  %677 = load i8*, i8** %676, align 8
  %678 = call i32 @strlen(i8* %677)
  store i32 %678, i32* %10, align 4
  %679 = load i8*, i8** %7, align 8
  %680 = load i32, i32* %10, align 4
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds i8, i8* %679, i64 %681
  %683 = getelementptr inbounds i8, i8* %682, i64 1
  %684 = load i8*, i8** %9, align 8
  %685 = icmp uge i8* %683, %684
  br i1 %685, label %686, label %687

686:                                              ; preds = %674
  br label %708

687:                                              ; preds = %674
  %688 = load i8*, i8** %7, align 8
  %689 = load i8*, i8** %8, align 8
  %690 = icmp ne i8* %688, %689
  br i1 %690, label %691, label %694

691:                                              ; preds = %687
  %692 = load i8*, i8** %7, align 8
  %693 = getelementptr inbounds i8, i8* %692, i32 1
  store i8* %693, i8** %7, align 8
  store i8 44, i8* %692, align 1
  br label %694

694:                                              ; preds = %691, %687
  %695 = load i8*, i8** %7, align 8
  %696 = load %struct.ctl_var*, %struct.ctl_var** %11, align 8
  %697 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %696, i32 0, i32 0
  %698 = load i8*, i8** %697, align 8
  %699 = load i32, i32* %10, align 4
  %700 = call i32 @memcpy(i8* %695, i8* %698, i32 %699)
  %701 = load i32, i32* %10, align 4
  %702 = load i8*, i8** %7, align 8
  %703 = sext i32 %701 to i64
  %704 = getelementptr inbounds i8, i8* %702, i64 %703
  store i8* %704, i8** %7, align 8
  br label %705

705:                                              ; preds = %694, %673
  %706 = load %struct.ctl_var*, %struct.ctl_var** %11, align 8
  %707 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %706, i32 1
  store %struct.ctl_var* %707, %struct.ctl_var** %11, align 8
  br label %658

708:                                              ; preds = %686, %658
  %709 = load i8*, i8** %7, align 8
  %710 = getelementptr inbounds i8, i8* %709, i64 2
  %711 = load i8*, i8** %9, align 8
  %712 = icmp ult i8* %710, %711
  br i1 %712, label %713, label %723

713:                                              ; preds = %708
  %714 = load i8*, i8** %7, align 8
  %715 = getelementptr inbounds i8, i8* %714, i32 1
  store i8* %715, i8** %7, align 8
  store i8 34, i8* %714, align 1
  %716 = load i8*, i8** %7, align 8
  store i8 0, i8* %716, align 1
  %717 = load i8*, i8** %7, align 8
  %718 = ptrtoint i8* %717 to i64
  %719 = ptrtoint i8* %15 to i64
  %720 = sub i64 %718, %719
  %721 = trunc i64 %720 to i32
  %722 = call i32 @ctl_putdata(i8* %15, i32 %721, i32 0)
  br label %723

723:                                              ; preds = %713, %708
  br label %816

724:                                              ; preds = %2
  %725 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %726 = load i32, i32* %3, align 4
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %725, i64 %727
  %729 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %728, i32 0, i32 0
  %730 = load i8*, i8** %729, align 8
  %731 = load i32, i32* @current_time, align 4
  %732 = load %struct.peer*, %struct.peer** %4, align 8
  %733 = getelementptr inbounds %struct.peer, %struct.peer* %732, i32 0, i32 27
  %734 = load i32, i32* %733, align 8
  %735 = sub nsw i32 %731, %734
  %736 = call i32 @ctl_putuint(i8* %730, i32 %735)
  br label %816

737:                                              ; preds = %2
  %738 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %739 = load i32, i32* %3, align 4
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %738, i64 %740
  %742 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %741, i32 0, i32 0
  %743 = load i8*, i8** %742, align 8
  %744 = load i32, i32* @current_time, align 4
  %745 = load %struct.peer*, %struct.peer** %4, align 8
  %746 = getelementptr inbounds %struct.peer, %struct.peer* %745, i32 0, i32 28
  %747 = load i32, i32* %746, align 4
  %748 = sub nsw i32 %744, %747
  %749 = call i32 @ctl_putuint(i8* %743, i32 %748)
  br label %816

750:                                              ; preds = %2
  %751 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %752 = load i32, i32* %3, align 4
  %753 = sext i32 %752 to i64
  %754 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %751, i64 %753
  %755 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %754, i32 0, i32 0
  %756 = load i8*, i8** %755, align 8
  %757 = load %struct.peer*, %struct.peer** %4, align 8
  %758 = getelementptr inbounds %struct.peer, %struct.peer* %757, i32 0, i32 29
  %759 = load i32, i32* %758, align 8
  %760 = call i32 @ctl_putuint(i8* %756, i32 %759)
  br label %816

761:                                              ; preds = %2
  %762 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %763 = load i32, i32* %3, align 4
  %764 = sext i32 %763 to i64
  %765 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %762, i64 %764
  %766 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %765, i32 0, i32 0
  %767 = load i8*, i8** %766, align 8
  %768 = load %struct.peer*, %struct.peer** %4, align 8
  %769 = getelementptr inbounds %struct.peer, %struct.peer* %768, i32 0, i32 30
  %770 = load i32, i32* %769, align 4
  %771 = call i32 @ctl_putuint(i8* %767, i32 %770)
  br label %816

772:                                              ; preds = %2
  %773 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %774 = load i32, i32* %3, align 4
  %775 = sext i32 %774 to i64
  %776 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %773, i64 %775
  %777 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %776, i32 0, i32 0
  %778 = load i8*, i8** %777, align 8
  %779 = load %struct.peer*, %struct.peer** %4, align 8
  %780 = getelementptr inbounds %struct.peer, %struct.peer* %779, i32 0, i32 31
  %781 = load i32, i32* %780, align 8
  %782 = call i32 @ctl_putuint(i8* %778, i32 %781)
  br label %816

783:                                              ; preds = %2
  %784 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %785 = load i32, i32* %3, align 4
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %784, i64 %786
  %788 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %787, i32 0, i32 0
  %789 = load i8*, i8** %788, align 8
  %790 = load %struct.peer*, %struct.peer** %4, align 8
  %791 = getelementptr inbounds %struct.peer, %struct.peer* %790, i32 0, i32 32
  %792 = load i32, i32* %791, align 4
  %793 = call i32 @ctl_putuint(i8* %789, i32 %792)
  br label %816

794:                                              ; preds = %2
  %795 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %796 = load i32, i32* %3, align 4
  %797 = sext i32 %796 to i64
  %798 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %795, i64 %797
  %799 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %798, i32 0, i32 0
  %800 = load i8*, i8** %799, align 8
  %801 = load %struct.peer*, %struct.peer** %4, align 8
  %802 = getelementptr inbounds %struct.peer, %struct.peer* %801, i32 0, i32 33
  %803 = load i32, i32* %802, align 8
  %804 = call i32 @ctl_putuint(i8* %800, i32 %803)
  br label %816

805:                                              ; preds = %2
  %806 = load %struct.ctl_var*, %struct.ctl_var** @peer_var, align 8
  %807 = load i32, i32* %3, align 4
  %808 = sext i32 %807 to i64
  %809 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %806, i64 %808
  %810 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %809, i32 0, i32 0
  %811 = load i8*, i8** %810, align 8
  %812 = load %struct.peer*, %struct.peer** %4, align 8
  %813 = getelementptr inbounds %struct.peer, %struct.peer* %812, i32 0, i32 34
  %814 = load i32, i32* %813, align 4
  %815 = call i32 @ctl_putuint(i8* %811, i32 %814)
  br label %816

816:                                              ; preds = %2, %805, %794, %783, %772, %761, %750, %737, %724, %723, %640, %617, %606, %595, %581, %567, %553, %552, %510, %496, %482, %468, %455, %444, %443, %405, %394, %393, %372, %343, %333, %323, %322, %280, %266, %255, %244, %233, %222, %211, %200, %189, %188, %167, %144, %123, %105, %74, %64, %47, %33, %17
  %817 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %817)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ctl_putuint(i8*, i32) #2

declare dso_local i32 @ctl_putadr(i8*, i32, i32*) #2

declare dso_local i32 @SRCPORT(i32*) #2

declare dso_local i32 @ctl_putstr(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @ctl_putdbl(i8*, i32) #2

declare dso_local i32 @ctl_putint(i8*, i32) #2

declare dso_local i32 @REFID_ISTEXT(i32) #2

declare dso_local i32 @ctl_putrefid(i8*, i32) #2

declare dso_local i32 @ctl_putts(i8*, i32*) #2

declare dso_local i32 @ctl_puthex(i8*, i32) #2

declare dso_local i32 @COUNTOF(i32*) #2

declare dso_local i32 @ctl_putarray(i8*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @ctl_putdata(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

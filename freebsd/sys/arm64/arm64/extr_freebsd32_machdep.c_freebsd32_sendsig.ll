; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_freebsd32_machdep.c_freebsd32_sendsig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_freebsd32_machdep.c_freebsd32_sendsig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.proc*, %struct.TYPE_8__, %struct.trapframe* }
%struct.proc = type { %struct.sysentvec*, i32, %struct.sigacts* }
%struct.sysentvec = type { i64, i64*, i64 }
%struct.sigacts = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.trapframe = type { i32*, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.sigframe32 = type { %struct.TYPE_9__, %struct.siginfo32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__, i32, %struct.TYPE_11__ }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.TYPE_11__ = type { i32, i8* }
%struct.siginfo32 = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@MA_OWNED = common dso_local global i32 0, align 4
@KTR_SIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"sendsig: td=%p (%s) catcher=%p sig=%d\00", align 1
@TDP_ALTSTACK = common dso_local global i32 0, align 4
@SS_ONSTACK = common dso_local global i32 0, align 4
@SS_DISABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"sendsig: sigexit td=%p fp=%p\00", align 1
@SIGILL = common dso_local global i32 0, align 4
@PSR_T = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"sendsig: return td=%p pc=%#x sp=%#x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freebsd32_sendsig(i64 %0, %struct.TYPE_10__* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca %struct.trapframe*, align 8
  %10 = alloca %struct.sigframe32*, align 8
  %11 = alloca %struct.sigframe32, align 8
  %12 = alloca %struct.sigacts*, align 8
  %13 = alloca %struct.siginfo32, align 4
  %14 = alloca %struct.sysentvec*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32* %2, i32** %6, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = call i32 @siginfo_to_siginfo32(i32* %19, %struct.siginfo32* %13)
  %21 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %21, %struct.thread** %7, align 8
  %22 = load %struct.thread*, %struct.thread** %7, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 1
  %24 = load %struct.proc*, %struct.proc** %23, align 8
  store %struct.proc* %24, %struct.proc** %8, align 8
  %25 = load %struct.proc*, %struct.proc** %8, align 8
  %26 = load i32, i32* @MA_OWNED, align 4
  %27 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %25, i32 %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %16, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %17, align 4
  %34 = load %struct.proc*, %struct.proc** %8, align 8
  %35 = getelementptr inbounds %struct.proc, %struct.proc* %34, i32 0, i32 2
  %36 = load %struct.sigacts*, %struct.sigacts** %35, align 8
  store %struct.sigacts* %36, %struct.sigacts** %12, align 8
  %37 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %38 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %37, i32 0, i32 0
  %39 = load i32, i32* @MA_OWNED, align 4
  %40 = call i32 @mtx_assert(i32* %38, i32 %39)
  %41 = load %struct.thread*, %struct.thread** %7, align 8
  %42 = getelementptr inbounds %struct.thread, %struct.thread* %41, i32 0, i32 3
  %43 = load %struct.trapframe*, %struct.trapframe** %42, align 8
  store %struct.trapframe* %43, %struct.trapframe** %9, align 8
  %44 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %45 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 13
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @sigonstack(i32 %48)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* @KTR_SIG, align 4
  %51 = load %struct.thread*, %struct.thread** %7, align 8
  %52 = load %struct.proc*, %struct.proc** %8, align 8
  %53 = getelementptr inbounds %struct.proc, %struct.proc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %4, align 8
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @CTR4(i32 %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.thread* %51, i32 %54, i64 %55, i32 %56)
  %58 = load %struct.thread*, %struct.thread** %7, align 8
  %59 = getelementptr inbounds %struct.thread, %struct.thread* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @TDP_ALTSTACK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %3
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %85, label %67

67:                                               ; preds = %64
  %68 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %69 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %16, align 4
  %72 = call i64 @SIGISMEMBER(i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %67
  %75 = load %struct.thread*, %struct.thread** %7, align 8
  %76 = getelementptr inbounds %struct.thread, %struct.thread* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.thread*, %struct.thread** %7, align 8
  %80 = getelementptr inbounds %struct.thread, %struct.thread* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %78, %82
  %84 = inttoptr i64 %83 to %struct.sigframe32*
  store %struct.sigframe32* %84, %struct.sigframe32** %10, align 8
  br label %95

85:                                               ; preds = %67, %64, %3
  %86 = load %struct.thread*, %struct.thread** %7, align 8
  %87 = getelementptr inbounds %struct.thread, %struct.thread* %86, i32 0, i32 3
  %88 = load %struct.trapframe*, %struct.trapframe** %87, align 8
  %89 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 13
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to %struct.sigframe32*
  store %struct.sigframe32* %94, %struct.sigframe32** %10, align 8
  br label %95

95:                                               ; preds = %85, %74
  %96 = load %struct.sigframe32*, %struct.sigframe32** %10, align 8
  %97 = getelementptr inbounds %struct.sigframe32, %struct.sigframe32* %96, i32 -1
  store %struct.sigframe32* %97, %struct.sigframe32** %10, align 8
  %98 = load %struct.sigframe32*, %struct.sigframe32** %10, align 8
  %99 = ptrtoint %struct.sigframe32* %98 to i64
  %100 = and i64 %99, -8
  %101 = inttoptr i64 %100 to %struct.sigframe32*
  store %struct.sigframe32* %101, %struct.sigframe32** %10, align 8
  %102 = load %struct.thread*, %struct.thread** %7, align 8
  %103 = getelementptr inbounds %struct.sigframe32, %struct.sigframe32* %11, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 2
  %105 = call i32 @get_mcontext32(%struct.thread* %102, %struct.TYPE_11__* %104, i32 0)
  %106 = getelementptr inbounds %struct.sigframe32, %struct.sigframe32* %11, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  store i32 0, i32* %108, align 8
  %109 = getelementptr inbounds %struct.sigframe32, %struct.sigframe32* %11, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  store i8* null, i8** %111, align 8
  %112 = getelementptr inbounds %struct.sigframe32, %struct.sigframe32* %11, i32 0, i32 1
  %113 = bitcast %struct.siginfo32* %112 to i8*
  %114 = bitcast %struct.siginfo32* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %113, i8* align 4 %114, i64 4, i1 false)
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.sigframe32, %struct.sigframe32* %11, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 8
  %119 = load %struct.thread*, %struct.thread** %7, align 8
  %120 = getelementptr inbounds %struct.thread, %struct.thread* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @TDP_ALTSTACK, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %95
  %126 = load i32, i32* %15, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i32, i32* @SS_ONSTACK, align 4
  br label %131

130:                                              ; preds = %125
  br label %131

131:                                              ; preds = %130, %128
  %132 = phi i32 [ %129, %128 ], [ 0, %130 ]
  br label %135

133:                                              ; preds = %95
  %134 = load i32, i32* @SS_DISABLE, align 4
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi i32 [ %132, %131 ], [ %134, %133 ]
  %137 = getelementptr inbounds %struct.sigframe32, %struct.sigframe32* %11, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 2
  store i32 %136, i32* %139, align 8
  %140 = load %struct.thread*, %struct.thread** %7, align 8
  %141 = getelementptr inbounds %struct.thread, %struct.thread* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds %struct.sigframe32, %struct.sigframe32* %11, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  store i64 %143, i64* %146, align 8
  %147 = load %struct.thread*, %struct.thread** %7, align 8
  %148 = getelementptr inbounds %struct.thread, %struct.thread* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.sigframe32, %struct.sigframe32* %11, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  store i64 %150, i64* %153, align 8
  %154 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %155 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %154, i32 0, i32 0
  %156 = call i32 @mtx_unlock(i32* %155)
  %157 = load %struct.thread*, %struct.thread** %7, align 8
  %158 = getelementptr inbounds %struct.thread, %struct.thread* %157, i32 0, i32 1
  %159 = load %struct.proc*, %struct.proc** %158, align 8
  %160 = call i32 @PROC_UNLOCK(%struct.proc* %159)
  %161 = load %struct.sigframe32*, %struct.sigframe32** %10, align 8
  %162 = call i64 @copyout(%struct.sigframe32* %11, %struct.sigframe32* %161, i32 56)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %174

164:                                              ; preds = %135
  %165 = load i32, i32* @KTR_SIG, align 4
  %166 = load %struct.thread*, %struct.thread** %7, align 8
  %167 = load %struct.sigframe32*, %struct.sigframe32** %10, align 8
  %168 = call i32 @CTR2(i32 %165, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.thread* %166, %struct.sigframe32* %167)
  %169 = load %struct.proc*, %struct.proc** %8, align 8
  %170 = call i32 @PROC_LOCK(%struct.proc* %169)
  %171 = load %struct.thread*, %struct.thread** %7, align 8
  %172 = load i32, i32* @SIGILL, align 4
  %173 = call i32 @sigexit(%struct.thread* %171, i32 %172)
  br label %174

174:                                              ; preds = %164, %135
  %175 = load i32, i32* %16, align 4
  %176 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %177 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  store i32 %175, i32* %179, align 4
  %180 = load %struct.sigframe32*, %struct.sigframe32** %10, align 8
  %181 = getelementptr inbounds %struct.sigframe32, %struct.sigframe32* %180, i32 0, i32 1
  %182 = ptrtoint %struct.siginfo32* %181 to i32
  %183 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %184 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  store i32 %182, i32* %186, align 4
  %187 = load %struct.sigframe32*, %struct.sigframe32** %10, align 8
  %188 = getelementptr inbounds %struct.sigframe32, %struct.sigframe32* %187, i32 0, i32 0
  %189 = ptrtoint %struct.TYPE_9__* %188 to i32
  %190 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %191 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 2
  store i32 %189, i32* %193, align 4
  %194 = load %struct.sigframe32*, %struct.sigframe32** %10, align 8
  %195 = getelementptr inbounds %struct.sigframe32, %struct.sigframe32* %194, i32 0, i32 0
  %196 = ptrtoint %struct.TYPE_9__* %195 to i32
  %197 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %198 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 5
  store i32 %196, i32* %200, align 4
  %201 = load i64, i64* %4, align 8
  %202 = trunc i64 %201 to i32
  %203 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %204 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 8
  %205 = load %struct.sigframe32*, %struct.sigframe32** %10, align 8
  %206 = ptrtoint %struct.sigframe32* %205 to i32
  %207 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %208 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 13
  store i32 %206, i32* %210, align 4
  %211 = load %struct.proc*, %struct.proc** %8, align 8
  %212 = getelementptr inbounds %struct.proc, %struct.proc* %211, i32 0, i32 0
  %213 = load %struct.sysentvec*, %struct.sysentvec** %212, align 8
  store %struct.sysentvec* %213, %struct.sysentvec** %14, align 8
  %214 = load %struct.sysentvec*, %struct.sysentvec** %14, align 8
  %215 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %174
  %219 = load %struct.sysentvec*, %struct.sysentvec** %14, align 8
  %220 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = trunc i64 %221 to i32
  %223 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %224 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 14
  store i32 %222, i32* %226, align 4
  br label %241

227:                                              ; preds = %174
  %228 = load %struct.sysentvec*, %struct.sysentvec** %14, align 8
  %229 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.sysentvec*, %struct.sysentvec** %14, align 8
  %232 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %231, i32 0, i32 1
  %233 = load i64*, i64** %232, align 8
  %234 = load i64, i64* %233, align 8
  %235 = sub nsw i64 %230, %234
  %236 = trunc i64 %235 to i32
  %237 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %238 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 14
  store i32 %236, i32* %240, align 4
  br label %241

241:                                              ; preds = %227, %218
  %242 = load i64, i64* %4, align 8
  %243 = trunc i64 %242 to i32
  %244 = and i32 %243, 1
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %241
  %247 = load i32, i32* @PSR_T, align 4
  %248 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %249 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = or i32 %250, %247
  store i32 %251, i32* %249, align 4
  br label %259

252:                                              ; preds = %241
  %253 = load i32, i32* @PSR_T, align 4
  %254 = xor i32 %253, -1
  %255 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %256 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = and i32 %257, %254
  store i32 %258, i32* %256, align 4
  br label %259

259:                                              ; preds = %252, %246
  %260 = load i32, i32* @KTR_SIG, align 4
  %261 = load %struct.thread*, %struct.thread** %7, align 8
  %262 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %263 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %262, i32 0, i32 0
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 14
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %268 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %267, i32 0, i32 0
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 13
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @CTR3(i32 %260, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), %struct.thread* %261, i32 %266, i32 %271)
  %273 = load %struct.proc*, %struct.proc** %8, align 8
  %274 = call i32 @PROC_LOCK(%struct.proc* %273)
  %275 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %276 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %275, i32 0, i32 0
  %277 = call i32 @mtx_lock(i32* %276)
  ret void
}

declare dso_local i32 @siginfo_to_siginfo32(i32*, %struct.siginfo32*) #1

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @sigonstack(i32) #1

declare dso_local i32 @CTR4(i32, i8*, %struct.thread*, i32, i64, i32) #1

declare dso_local i64 @SIGISMEMBER(i32, i32) #1

declare dso_local i32 @get_mcontext32(%struct.thread*, %struct.TYPE_11__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i64 @copyout(%struct.sigframe32*, %struct.sigframe32*, i32) #1

declare dso_local i32 @CTR2(i32, i8*, %struct.thread*, %struct.sigframe32*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @sigexit(%struct.thread*, i32) #1

declare dso_local i32 @CTR3(i32, i8*, %struct.thread*, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

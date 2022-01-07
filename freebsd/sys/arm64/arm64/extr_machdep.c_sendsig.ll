; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_machdep.c_sendsig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_machdep.c_sendsig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.proc*, %struct.TYPE_5__, %struct.trapframe* }
%struct.proc = type { %struct.sysentvec*, i32, %struct.sigacts* }
%struct.sysentvec = type { i64, i64*, i64 }
%struct.sigacts = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.trapframe = type { i32*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.sigframe = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@MA_OWNED = common dso_local global i32 0, align 4
@KTR_SIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"sendsig: td=%p (%s) catcher=%p sig=%d\00", align 1
@TDP_ALTSTACK = common dso_local global i32 0, align 4
@SS_ONSTACK = common dso_local global i32 0, align 4
@SS_DISABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"sendsig: sigexit td=%p fp=%p\00", align 1
@SIGILL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"sendsig: return td=%p pc=%#x sp=%#x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sendsig(i64 %0, %struct.TYPE_7__* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca %struct.trapframe*, align 8
  %10 = alloca %struct.sigframe*, align 8
  %11 = alloca %struct.sigframe, align 8
  %12 = alloca %struct.sigacts*, align 8
  %13 = alloca %struct.sysentvec*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %16, %struct.thread** %7, align 8
  %17 = load %struct.thread*, %struct.thread** %7, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 1
  %19 = load %struct.proc*, %struct.proc** %18, align 8
  store %struct.proc* %19, %struct.proc** %8, align 8
  %20 = load %struct.proc*, %struct.proc** %8, align 8
  %21 = load i32, i32* @MA_OWNED, align 4
  %22 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %20, i32 %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %15, align 4
  %26 = load %struct.proc*, %struct.proc** %8, align 8
  %27 = getelementptr inbounds %struct.proc, %struct.proc* %26, i32 0, i32 2
  %28 = load %struct.sigacts*, %struct.sigacts** %27, align 8
  store %struct.sigacts* %28, %struct.sigacts** %12, align 8
  %29 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %30 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %29, i32 0, i32 0
  %31 = load i32, i32* @MA_OWNED, align 4
  %32 = call i32 @mtx_assert(i32* %30, i32 %31)
  %33 = load %struct.thread*, %struct.thread** %7, align 8
  %34 = getelementptr inbounds %struct.thread, %struct.thread* %33, i32 0, i32 3
  %35 = load %struct.trapframe*, %struct.trapframe** %34, align 8
  store %struct.trapframe* %35, %struct.trapframe** %9, align 8
  %36 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %37 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @sigonstack(i8* %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* @KTR_SIG, align 4
  %41 = load %struct.thread*, %struct.thread** %7, align 8
  %42 = load %struct.proc*, %struct.proc** %8, align 8
  %43 = getelementptr inbounds %struct.proc, %struct.proc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* %4, align 8
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @CTR4(i32 %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.thread* %41, i32 %44, i64 %45, i32 %46)
  %48 = load %struct.thread*, %struct.thread** %7, align 8
  %49 = getelementptr inbounds %struct.thread, %struct.thread* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @TDP_ALTSTACK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %3
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %75, label %57

57:                                               ; preds = %54
  %58 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %59 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %15, align 4
  %62 = call i64 @SIGISMEMBER(i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %57
  %65 = load %struct.thread*, %struct.thread** %7, align 8
  %66 = getelementptr inbounds %struct.thread, %struct.thread* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.thread*, %struct.thread** %7, align 8
  %70 = getelementptr inbounds %struct.thread, %struct.thread* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %68, %72
  %74 = inttoptr i64 %73 to %struct.sigframe*
  store %struct.sigframe* %74, %struct.sigframe** %10, align 8
  br label %82

75:                                               ; preds = %57, %54, %3
  %76 = load %struct.thread*, %struct.thread** %7, align 8
  %77 = getelementptr inbounds %struct.thread, %struct.thread* %76, i32 0, i32 3
  %78 = load %struct.trapframe*, %struct.trapframe** %77, align 8
  %79 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = bitcast i8* %80 to %struct.sigframe*
  store %struct.sigframe* %81, %struct.sigframe** %10, align 8
  br label %82

82:                                               ; preds = %75, %64
  %83 = load %struct.sigframe*, %struct.sigframe** %10, align 8
  %84 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %83, i32 -1
  store %struct.sigframe* %84, %struct.sigframe** %10, align 8
  %85 = load %struct.sigframe*, %struct.sigframe** %10, align 8
  %86 = call i64 @STACKALIGN(%struct.sigframe* %85)
  %87 = inttoptr i64 %86 to %struct.sigframe*
  store %struct.sigframe* %87, %struct.sigframe** %10, align 8
  %88 = call i32 @bzero(%struct.sigframe* %11, i32 40)
  %89 = load %struct.thread*, %struct.thread** %7, align 8
  %90 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %11, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = call i32 @get_mcontext(%struct.thread* %89, i32* %91, i32 0)
  %93 = load %struct.thread*, %struct.thread** %7, align 8
  %94 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %11, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = call i32 @get_fpcontext(%struct.thread* %93, i32* %95)
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %11, i32 0, i32 1
  store i32 %99, i32* %100, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %11, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  %105 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %11, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load %struct.thread*, %struct.thread** %7, align 8
  %108 = getelementptr inbounds %struct.thread, %struct.thread* %107, i32 0, i32 2
  %109 = bitcast %struct.TYPE_5__* %106 to i8*
  %110 = bitcast %struct.TYPE_5__* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %109, i8* align 8 %110, i64 24, i1 false)
  %111 = load %struct.thread*, %struct.thread** %7, align 8
  %112 = getelementptr inbounds %struct.thread, %struct.thread* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @TDP_ALTSTACK, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %82
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load i32, i32* @SS_ONSTACK, align 4
  br label %123

122:                                              ; preds = %117
  br label %123

123:                                              ; preds = %122, %120
  %124 = phi i32 [ %121, %120 ], [ 0, %122 ]
  br label %127

125:                                              ; preds = %82
  %126 = load i32, i32* @SS_DISABLE, align 4
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i32 [ %124, %123 ], [ %126, %125 ]
  %129 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %11, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  store i32 %128, i32* %131, align 8
  %132 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %133 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %132, i32 0, i32 0
  %134 = call i32 @mtx_unlock(i32* %133)
  %135 = load %struct.thread*, %struct.thread** %7, align 8
  %136 = getelementptr inbounds %struct.thread, %struct.thread* %135, i32 0, i32 1
  %137 = load %struct.proc*, %struct.proc** %136, align 8
  %138 = call i32 @PROC_UNLOCK(%struct.proc* %137)
  %139 = load %struct.sigframe*, %struct.sigframe** %10, align 8
  %140 = call i64 @copyout(%struct.sigframe* %11, %struct.sigframe* %139, i32 40)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %127
  %143 = load i32, i32* @KTR_SIG, align 4
  %144 = load %struct.thread*, %struct.thread** %7, align 8
  %145 = load %struct.sigframe*, %struct.sigframe** %10, align 8
  %146 = call i32 @CTR2(i32 %143, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.thread* %144, %struct.sigframe* %145)
  %147 = load %struct.proc*, %struct.proc** %8, align 8
  %148 = call i32 @PROC_LOCK(%struct.proc* %147)
  %149 = load %struct.thread*, %struct.thread** %7, align 8
  %150 = load i32, i32* @SIGILL, align 4
  %151 = call i32 @sigexit(%struct.thread* %149, i32 %150)
  br label %152

152:                                              ; preds = %142, %127
  %153 = load i32, i32* %15, align 4
  %154 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %155 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  store i32 %153, i32* %157, align 4
  %158 = load %struct.sigframe*, %struct.sigframe** %10, align 8
  %159 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %158, i32 0, i32 1
  %160 = bitcast i32* %159 to i8*
  %161 = ptrtoint i8* %160 to i32
  %162 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %163 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  store i32 %161, i32* %165, align 4
  %166 = load %struct.sigframe*, %struct.sigframe** %10, align 8
  %167 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %166, i32 0, i32 0
  %168 = bitcast %struct.TYPE_6__* %167 to i8*
  %169 = ptrtoint i8* %168 to i32
  %170 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %171 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 2
  store i32 %169, i32* %173, align 4
  %174 = load i64, i64* %4, align 8
  %175 = inttoptr i64 %174 to i8*
  %176 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %177 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %176, i32 0, i32 2
  store i8* %175, i8** %177, align 8
  %178 = load %struct.sigframe*, %struct.sigframe** %10, align 8
  %179 = bitcast %struct.sigframe* %178 to i8*
  %180 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %181 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %180, i32 0, i32 1
  store i8* %179, i8** %181, align 8
  %182 = load %struct.proc*, %struct.proc** %8, align 8
  %183 = getelementptr inbounds %struct.proc, %struct.proc* %182, i32 0, i32 0
  %184 = load %struct.sysentvec*, %struct.sysentvec** %183, align 8
  store %struct.sysentvec* %184, %struct.sysentvec** %13, align 8
  %185 = load %struct.sysentvec*, %struct.sysentvec** %13, align 8
  %186 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %152
  %190 = load %struct.sysentvec*, %struct.sysentvec** %13, align 8
  %191 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = inttoptr i64 %192 to i8*
  %194 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %195 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %194, i32 0, i32 3
  store i8* %193, i8** %195, align 8
  br label %208

196:                                              ; preds = %152
  %197 = load %struct.sysentvec*, %struct.sysentvec** %13, align 8
  %198 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.sysentvec*, %struct.sysentvec** %13, align 8
  %201 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %200, i32 0, i32 1
  %202 = load i64*, i64** %201, align 8
  %203 = load i64, i64* %202, align 8
  %204 = sub nsw i64 %199, %203
  %205 = inttoptr i64 %204 to i8*
  %206 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %207 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %206, i32 0, i32 3
  store i8* %205, i8** %207, align 8
  br label %208

208:                                              ; preds = %196, %189
  %209 = load i32, i32* @KTR_SIG, align 4
  %210 = load %struct.thread*, %struct.thread** %7, align 8
  %211 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %212 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %211, i32 0, i32 2
  %213 = load i8*, i8** %212, align 8
  %214 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %215 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %214, i32 0, i32 1
  %216 = load i8*, i8** %215, align 8
  %217 = call i32 @CTR3(i32 %209, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), %struct.thread* %210, i8* %213, i8* %216)
  %218 = load %struct.proc*, %struct.proc** %8, align 8
  %219 = call i32 @PROC_LOCK(%struct.proc* %218)
  %220 = load %struct.sigacts*, %struct.sigacts** %12, align 8
  %221 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %220, i32 0, i32 0
  %222 = call i32 @mtx_lock(i32* %221)
  ret void
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @sigonstack(i8*) #1

declare dso_local i32 @CTR4(i32, i8*, %struct.thread*, i32, i64, i32) #1

declare dso_local i64 @SIGISMEMBER(i32, i32) #1

declare dso_local i64 @STACKALIGN(%struct.sigframe*) #1

declare dso_local i32 @bzero(%struct.sigframe*, i32) #1

declare dso_local i32 @get_mcontext(%struct.thread*, i32*, i32) #1

declare dso_local i32 @get_fpcontext(%struct.thread*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i64 @copyout(%struct.sigframe*, %struct.sigframe*, i32) #1

declare dso_local i32 @CTR2(i32, i8*, %struct.thread*, %struct.sigframe*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @sigexit(%struct.thread*, i32) #1

declare dso_local i32 @CTR3(i32, i8*, %struct.thread*, i8*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

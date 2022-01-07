; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_sysvec.c_linux_sendsig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_sysvec.c_linux_sendsig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, %struct.TYPE_8__, %struct.trapframe*, %struct.proc* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.trapframe = type { i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.proc = type { %struct.sigacts* }
%struct.sigacts = type { i32, i32, i32 }
%struct.l_sigframe = type { i32, i32*, %struct.TYPE_9__, i8* }
%struct.TYPE_9__ = type { i32, i32, i64, i32, i8*, i8*, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i64 }
%struct.TYPE_10__ = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@MA_OWNED = common dso_local global i32 0, align 4
@TDP_ALTSTACK = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@linux32_sigcode = common dso_local global i32 0, align 4
@PSL_T = common dso_local global i32 0, align 4
@PSL_D = common dso_local global i32 0, align 4
@_ucode32sel = common dso_local global i32 0, align 4
@_udatasel = common dso_local global i8* null, align 8
@_ufssel = common dso_local global i32 0, align 4
@_ugssel = common dso_local global i32 0, align 4
@TF_HASSEGS = common dso_local global i32 0, align 4
@PCB_FULL_IRET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l_sigframe*, %struct.TYPE_11__*, i32*)* @linux_sendsig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linux_sendsig(%struct.l_sigframe* %0, %struct.TYPE_11__* %1, i32* %2) #0 {
  %4 = alloca %struct.l_sigframe*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca %struct.sigacts*, align 8
  %10 = alloca %struct.trapframe*, align 8
  %11 = alloca %struct.l_sigframe*, align 8
  %12 = alloca %struct.l_sigframe, align 8
  %13 = alloca %struct.TYPE_10__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.l_sigframe* %0, %struct.l_sigframe** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32* %2, i32** %6, align 8
  %17 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %17, %struct.thread** %7, align 8
  %18 = load %struct.thread*, %struct.thread** %7, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 4
  %20 = load %struct.proc*, %struct.proc** %19, align 8
  store %struct.proc* %20, %struct.proc** %8, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %15, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %16, align 4
  %27 = load %struct.proc*, %struct.proc** %8, align 8
  %28 = load i32, i32* @MA_OWNED, align 4
  %29 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %27, i32 %28)
  %30 = load %struct.proc*, %struct.proc** %8, align 8
  %31 = getelementptr inbounds %struct.proc, %struct.proc* %30, i32 0, i32 0
  %32 = load %struct.sigacts*, %struct.sigacts** %31, align 8
  store %struct.sigacts* %32, %struct.sigacts** %9, align 8
  %33 = load %struct.sigacts*, %struct.sigacts** %9, align 8
  %34 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %33, i32 0, i32 0
  %35 = load i32, i32* @MA_OWNED, align 4
  %36 = call i32 @mtx_assert(i32* %34, i32 %35)
  %37 = load %struct.sigacts*, %struct.sigacts** %9, align 8
  %38 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %15, align 4
  %41 = call i64 @SIGISMEMBER(i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %3
  %44 = load %struct.l_sigframe*, %struct.l_sigframe** %4, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @linux_rt_sendsig(%struct.l_sigframe* %44, %struct.TYPE_11__* %45, i32* %46)
  br label %270

48:                                               ; preds = %3
  %49 = load %struct.thread*, %struct.thread** %7, align 8
  %50 = getelementptr inbounds %struct.thread, %struct.thread* %49, i32 0, i32 3
  %51 = load %struct.trapframe*, %struct.trapframe** %50, align 8
  store %struct.trapframe* %51, %struct.trapframe** %10, align 8
  %52 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %53 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %52, i32 0, i32 9
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @sigonstack(i8* %54)
  store i32 %55, i32* %14, align 4
  %56 = load %struct.thread*, %struct.thread** %7, align 8
  %57 = getelementptr inbounds %struct.thread, %struct.thread* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @TDP_ALTSTACK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %84

62:                                               ; preds = %48
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %84, label %65

65:                                               ; preds = %62
  %66 = load %struct.sigacts*, %struct.sigacts** %9, align 8
  %67 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %15, align 4
  %70 = call i64 @SIGISMEMBER(i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %65
  %73 = load %struct.thread*, %struct.thread** %7, align 8
  %74 = getelementptr inbounds %struct.thread, %struct.thread* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.thread*, %struct.thread** %7, align 8
  %78 = getelementptr inbounds %struct.thread, %struct.thread* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %76, %80
  %82 = sub i64 %81, 144
  %83 = inttoptr i64 %82 to %struct.l_sigframe*
  store %struct.l_sigframe* %83, %struct.l_sigframe** %11, align 8
  br label %90

84:                                               ; preds = %65, %62, %48
  %85 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %86 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %85, i32 0, i32 9
  %87 = load i8*, i8** %86, align 8
  %88 = bitcast i8* %87 to %struct.l_sigframe*
  %89 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %88, i64 -1
  store %struct.l_sigframe* %89, %struct.l_sigframe** %11, align 8
  br label %90

90:                                               ; preds = %84, %72
  %91 = load %struct.sigacts*, %struct.sigacts** %9, align 8
  %92 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %91, i32 0, i32 0
  %93 = call i32 @mtx_unlock(i32* %92)
  %94 = load %struct.proc*, %struct.proc** %8, align 8
  %95 = call i32 @PROC_UNLOCK(%struct.proc* %94)
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @bsd_to_linux_signal(i32 %96)
  store i32 %97, i32* %15, align 4
  %98 = call i32 @bzero(%struct.l_sigframe* %12, i32 144)
  %99 = load %struct.l_sigframe*, %struct.l_sigframe** %4, align 8
  %100 = call i8* @PTROUT(%struct.l_sigframe* %99)
  %101 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 3
  store i8* %100, i8** %101, align 8
  %102 = load i32, i32* %15, align 4
  %103 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 0
  store i32 %102, i32* %103, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @bsd_to_linux_sigset(i32* %104, %struct.TYPE_10__* %13)
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 20
  store i32 %107, i32* %109, align 8
  %110 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %111 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 19
  store i32 %112, i32* %114, align 4
  %115 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %116 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 18
  store i32 %117, i32* %119, align 8
  %120 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %121 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %120, i32 0, i32 4
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 17
  store i8* %122, i8** %124, align 8
  %125 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %126 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %125, i32 0, i32 5
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 16
  store i8* %127, i8** %129, align 8
  %130 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %131 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %130, i32 0, i32 17
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 15
  store i32 %132, i32* %134, align 4
  %135 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %136 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %135, i32 0, i32 16
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 14
  store i32 %137, i32* %139, align 8
  %140 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %141 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %140, i32 0, i32 15
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 13
  store i32 %142, i32* %144, align 4
  %145 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %146 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %145, i32 0, i32 14
  %147 = load i32, i32* %146, align 8
  %148 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 12
  store i32 %147, i32* %149, align 8
  %150 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %151 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %150, i32 0, i32 9
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 11
  store i8* %152, i8** %154, align 8
  %155 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %156 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %155, i32 0, i32 13
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 10
  store i32 %157, i32* %159, align 8
  %160 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %161 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %160, i32 0, i32 12
  %162 = load i32, i32* %161, align 8
  %163 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 9
  store i32 %162, i32* %164, align 4
  %165 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %166 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %165, i32 0, i32 11
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 8
  store i32 %167, i32* %169, align 8
  %170 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %171 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %170, i32 0, i32 8
  %172 = load i32, i32* %171, align 4
  %173 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 7
  store i32 %172, i32* %174, align 4
  %175 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %176 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %175, i32 0, i32 7
  %177 = load i32, i32* %176, align 8
  %178 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 6
  store i32 %177, i32* %179, align 8
  %180 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %181 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 8
  %185 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %186 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %185, i32 0, i32 9
  %187 = load i8*, i8** %186, align 8
  %188 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 5
  store i8* %187, i8** %189, align 8
  %190 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %191 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %190, i32 0, i32 6
  %192 = load i8*, i8** %191, align 8
  %193 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 4
  store i8* %192, i8** %194, align 8
  %195 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %196 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %195, i32 0, i32 10
  %197 = load i32, i32* %196, align 8
  %198 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 3
  store i32 %197, i32* %199, align 8
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 2
  store i64 %202, i64* %204, align 8
  %205 = load i32, i32* %16, align 4
  %206 = call i32 @bsd_to_linux_trapcode(i32 %205)
  %207 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 4
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = getelementptr inbounds %struct.l_sigframe, %struct.l_sigframe* %12, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  store i32 %210, i32* %213, align 4
  %214 = load %struct.l_sigframe*, %struct.l_sigframe** %11, align 8
  %215 = call i64 @copyout(%struct.l_sigframe* %12, %struct.l_sigframe* %214, i32 144)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %90
  %218 = load %struct.proc*, %struct.proc** %8, align 8
  %219 = call i32 @PROC_LOCK(%struct.proc* %218)
  %220 = load %struct.thread*, %struct.thread** %7, align 8
  %221 = load i32, i32* @SIGILL, align 4
  %222 = call i32 @sigexit(%struct.thread* %220, i32 %221)
  br label %223

223:                                              ; preds = %217, %90
  %224 = load %struct.l_sigframe*, %struct.l_sigframe** %11, align 8
  %225 = call i8* @PTROUT(%struct.l_sigframe* %224)
  %226 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %227 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %226, i32 0, i32 9
  store i8* %225, i8** %227, align 8
  %228 = load i32, i32* @linux32_sigcode, align 4
  %229 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %230 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %229, i32 0, i32 8
  store i32 %228, i32* %230, align 4
  %231 = load i32, i32* @PSL_T, align 4
  %232 = load i32, i32* @PSL_D, align 4
  %233 = or i32 %231, %232
  %234 = xor i32 %233, -1
  %235 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %236 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = and i32 %237, %234
  store i32 %238, i32* %236, align 8
  %239 = load i32, i32* @_ucode32sel, align 4
  %240 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %241 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %240, i32 0, i32 7
  store i32 %239, i32* %241, align 8
  %242 = load i8*, i8** @_udatasel, align 8
  %243 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %244 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %243, i32 0, i32 6
  store i8* %242, i8** %244, align 8
  %245 = load i8*, i8** @_udatasel, align 8
  %246 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %247 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %246, i32 0, i32 5
  store i8* %245, i8** %247, align 8
  %248 = load i8*, i8** @_udatasel, align 8
  %249 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %250 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %249, i32 0, i32 4
  store i8* %248, i8** %250, align 8
  %251 = load i32, i32* @_ufssel, align 4
  %252 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %253 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %252, i32 0, i32 3
  store i32 %251, i32* %253, align 4
  %254 = load i32, i32* @_ugssel, align 4
  %255 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %256 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %255, i32 0, i32 2
  store i32 %254, i32* %256, align 8
  %257 = load i32, i32* @TF_HASSEGS, align 4
  %258 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %259 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %258, i32 0, i32 1
  store i32 %257, i32* %259, align 4
  %260 = load %struct.thread*, %struct.thread** %7, align 8
  %261 = getelementptr inbounds %struct.thread, %struct.thread* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @PCB_FULL_IRET, align 4
  %264 = call i32 @set_pcb_flags(i32 %262, i32 %263)
  %265 = load %struct.proc*, %struct.proc** %8, align 8
  %266 = call i32 @PROC_LOCK(%struct.proc* %265)
  %267 = load %struct.sigacts*, %struct.sigacts** %9, align 8
  %268 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %267, i32 0, i32 0
  %269 = call i32 @mtx_lock(i32* %268)
  br label %270

270:                                              ; preds = %223, %43
  ret void
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @SIGISMEMBER(i32, i32) #1

declare dso_local i32 @linux_rt_sendsig(%struct.l_sigframe*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @sigonstack(i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @bsd_to_linux_signal(i32) #1

declare dso_local i32 @bzero(%struct.l_sigframe*, i32) #1

declare dso_local i8* @PTROUT(%struct.l_sigframe*) #1

declare dso_local i32 @bsd_to_linux_sigset(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @bsd_to_linux_trapcode(i32) #1

declare dso_local i64 @copyout(%struct.l_sigframe*, %struct.l_sigframe*, i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @sigexit(%struct.thread*, i32) #1

declare dso_local i32 @set_pcb_flags(i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

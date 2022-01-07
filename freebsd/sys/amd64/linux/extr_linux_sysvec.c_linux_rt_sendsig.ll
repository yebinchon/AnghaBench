; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_sysvec.c_linux_rt_sendsig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_sysvec.c_linux_rt_sendsig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, %struct.TYPE_8__, %struct.trapframe*, %struct.proc* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.trapframe = type { i64, i32, i32, i32, i32, i8*, i8*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.proc = type { %struct.sigacts* }
%struct.sigacts = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i64 }
%struct.l_rt_sigframe = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.TYPE_10__ = type { i32, i64, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i8*, i8*, i32 }
%struct.TYPE_9__ = type { i32, i64, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@MA_OWNED = common dso_local global i32 0, align 4
@rt_sendsig = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%p, %d, %p, %u\00", align 1
@TDP_ALTSTACK = common dso_local global i32 0, align 4
@LINUX_SS_ONSTACK = common dso_local global i32 0, align 4
@LINUX_SS_DISABLE = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@linux_rt_sigcode = common dso_local global i32 0, align 4
@PSL_T = common dso_local global i32 0, align 4
@PSL_D = common dso_local global i32 0, align 4
@_ucodesel = common dso_local global i32 0, align 4
@PCB_FULL_IRET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_12__*, i32*)* @linux_rt_sendsig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linux_rt_sendsig(i32 %0, %struct.TYPE_12__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.l_rt_sigframe, align 8
  %8 = alloca %struct.l_rt_sigframe*, align 8
  %9 = alloca %struct.proc*, align 8
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.sigacts*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.trapframe*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32* %2, i32** %6, align 8
  %17 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %17, %struct.thread** %10, align 8
  %18 = load %struct.thread*, %struct.thread** %10, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 4
  %20 = load %struct.proc*, %struct.proc** %19, align 8
  store %struct.proc* %20, %struct.proc** %9, align 8
  %21 = load %struct.proc*, %struct.proc** %9, align 8
  %22 = load i32, i32* @MA_OWNED, align 4
  %23 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %21, i32 %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %14, align 4
  %27 = load %struct.proc*, %struct.proc** %9, align 8
  %28 = getelementptr inbounds %struct.proc, %struct.proc* %27, i32 0, i32 0
  %29 = load %struct.sigacts*, %struct.sigacts** %28, align 8
  store %struct.sigacts* %29, %struct.sigacts** %11, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %15, align 4
  %33 = load %struct.sigacts*, %struct.sigacts** %11, align 8
  %34 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %33, i32 0, i32 0
  %35 = load i32, i32* @MA_OWNED, align 4
  %36 = call i32 @mtx_assert(i32* %34, i32 %35)
  %37 = load %struct.thread*, %struct.thread** %10, align 8
  %38 = getelementptr inbounds %struct.thread, %struct.thread* %37, i32 0, i32 3
  %39 = load %struct.trapframe*, %struct.trapframe** %38, align 8
  store %struct.trapframe* %39, %struct.trapframe** %13, align 8
  %40 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %41 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @sigonstack(i64 %42)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* @rt_sendsig, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @LINUX_CTR4(i32 %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46, i32* %47, i32 %48)
  %50 = load %struct.thread*, %struct.thread** %10, align 8
  %51 = getelementptr inbounds %struct.thread, %struct.thread* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @TDP_ALTSTACK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %3
  %57 = load i32, i32* %16, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %77, label %59

59:                                               ; preds = %56
  %60 = load %struct.sigacts*, %struct.sigacts** %11, align 8
  %61 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %14, align 4
  %64 = call i64 @SIGISMEMBER(i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %59
  %67 = load %struct.thread*, %struct.thread** %10, align 8
  %68 = getelementptr inbounds %struct.thread, %struct.thread* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.thread*, %struct.thread** %10, align 8
  %72 = getelementptr inbounds %struct.thread, %struct.thread* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %70, %74
  %76 = sub i64 %75, 168
  store i64 %76, i64* %12, align 8
  br label %83

77:                                               ; preds = %59, %56, %3
  %78 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %79 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = sub i64 %80, 168
  %82 = sub i64 %81, 128
  store i64 %82, i64* %12, align 8
  br label %83

83:                                               ; preds = %77, %66
  %84 = load i64, i64* %12, align 8
  %85 = and i64 %84, -16
  %86 = inttoptr i64 %85 to %struct.l_rt_sigframe*
  store %struct.l_rt_sigframe* %86, %struct.l_rt_sigframe** %8, align 8
  %87 = load %struct.sigacts*, %struct.sigacts** %11, align 8
  %88 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %87, i32 0, i32 0
  %89 = call i32 @mtx_unlock(i32* %88)
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @bsd_to_linux_signal(i32 %90)
  store i32 %91, i32* %14, align 4
  %92 = call i32 @bzero(%struct.l_rt_sigframe* %7, i32 168)
  %93 = load i32*, i32** %6, align 8
  %94 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %7, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 2
  %96 = call i32 @bsd_to_linux_sigset(i32* %93, i32* %95)
  %97 = load i32*, i32** %6, align 8
  %98 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %7, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 22
  %101 = call i32 @bsd_to_linux_sigset(i32* %97, i32* %100)
  %102 = load %struct.thread*, %struct.thread** %10, align 8
  %103 = getelementptr inbounds %struct.thread, %struct.thread* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @PTROUT(i64 %105)
  %107 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %7, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  store i32 %106, i32* %109, align 8
  %110 = load %struct.thread*, %struct.thread** %10, align 8
  %111 = getelementptr inbounds %struct.thread, %struct.thread* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %7, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  store i64 %113, i64* %116, align 8
  %117 = load %struct.thread*, %struct.thread** %10, align 8
  %118 = getelementptr inbounds %struct.thread, %struct.thread* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @TDP_ALTSTACK, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %83
  %124 = load i32, i32* %16, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load i32, i32* @LINUX_SS_ONSTACK, align 4
  br label %129

128:                                              ; preds = %123
  br label %129

129:                                              ; preds = %128, %126
  %130 = phi i32 [ %127, %126 ], [ 0, %128 ]
  br label %133

131:                                              ; preds = %83
  %132 = load i32, i32* @LINUX_SS_DISABLE, align 4
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %130, %129 ], [ %132, %131 ]
  %135 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %7, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 8
  %138 = load %struct.proc*, %struct.proc** %9, align 8
  %139 = call i32 @PROC_UNLOCK(%struct.proc* %138)
  %140 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %141 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %7, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  store i32 %142, i32* %145, align 8
  %146 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %147 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %146, i32 0, i32 6
  %148 = load i8*, i8** %147, align 8
  %149 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %7, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 21
  store i8* %148, i8** %151, align 8
  %152 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %153 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %152, i32 0, i32 5
  %154 = load i8*, i8** %153, align 8
  %155 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %7, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 20
  store i8* %154, i8** %157, align 8
  %158 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %159 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %158, i32 0, i32 19
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %7, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 19
  store i32 %160, i32* %163, align 8
  %164 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %165 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %164, i32 0, i32 18
  %166 = load i32, i32* %165, align 8
  %167 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %7, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 18
  store i32 %166, i32* %169, align 4
  %170 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %171 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %170, i32 0, i32 17
  %172 = load i32, i32* %171, align 4
  %173 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %7, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 17
  store i32 %172, i32* %175, align 8
  %176 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %177 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %176, i32 0, i32 7
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %7, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 16
  store i64 %178, i64* %181, align 8
  %182 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %183 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %7, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 15
  store i32 %184, i32* %187, align 4
  %188 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %189 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %7, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 1
  store i64 %190, i64* %193, align 8
  %194 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %195 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %194, i32 0, i32 16
  %196 = load i32, i32* %195, align 8
  %197 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %7, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 14
  store i32 %196, i32* %199, align 8
  %200 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %201 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %200, i32 0, i32 15
  %202 = load i32, i32* %201, align 4
  %203 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %7, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 13
  store i32 %202, i32* %205, align 4
  %206 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %207 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %206, i32 0, i32 14
  %208 = load i32, i32* %207, align 8
  %209 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %7, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 12
  store i32 %208, i32* %211, align 8
  %212 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %213 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %212, i32 0, i32 13
  %214 = load i32, i32* %213, align 4
  %215 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %7, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 11
  store i32 %214, i32* %217, align 4
  %218 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %219 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %218, i32 0, i32 12
  %220 = load i32, i32* %219, align 8
  %221 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %7, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 10
  store i32 %220, i32* %223, align 8
  %224 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %225 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %224, i32 0, i32 11
  %226 = load i32, i32* %225, align 4
  %227 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %7, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 9
  store i32 %226, i32* %229, align 4
  %230 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %231 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %230, i32 0, i32 10
  %232 = load i32, i32* %231, align 8
  %233 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %7, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 8
  store i32 %232, i32* %235, align 8
  %236 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %237 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %236, i32 0, i32 9
  %238 = load i32, i32* %237, align 4
  %239 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %7, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 7
  store i32 %238, i32* %241, align 4
  %242 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %243 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 8
  %245 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %7, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 6
  store i32 %244, i32* %247, align 8
  %248 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %249 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %7, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 2
  store i32 %250, i32* %253, align 8
  %254 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %255 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %254, i32 0, i32 8
  %256 = load i32, i32* %255, align 8
  %257 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %7, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 5
  store i32 %256, i32* %259, align 4
  %260 = load i32, i32* %15, align 4
  %261 = call i32 @bsd_to_linux_trapcode(i32 %260)
  %262 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %7, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 4
  store i32 %261, i32* %264, align 8
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = inttoptr i64 %267 to i8*
  %269 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %7, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 3
  store i8* %268, i8** %271, align 8
  %272 = load i32, i32* %14, align 4
  %273 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %274 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %273, i32 0, i32 1
  store i32 %272, i32* %274, align 8
  %275 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %276 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %275, i32 0, i32 7
  store i64 0, i64* %276, align 8
  %277 = load %struct.l_rt_sigframe*, %struct.l_rt_sigframe** %8, align 8
  %278 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %277, i32 0, i32 0
  %279 = bitcast i32* %278 to i8*
  %280 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %281 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %280, i32 0, i32 6
  store i8* %279, i8** %281, align 8
  %282 = load %struct.l_rt_sigframe*, %struct.l_rt_sigframe** %8, align 8
  %283 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %282, i32 0, i32 2
  %284 = bitcast %struct.TYPE_11__* %283 to i8*
  %285 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %286 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %285, i32 0, i32 5
  store i8* %284, i8** %286, align 8
  %287 = load i32, i32* %4, align 4
  %288 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %7, i32 0, i32 1
  store i32 %287, i32* %288, align 4
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %290 = getelementptr inbounds %struct.l_rt_sigframe, %struct.l_rt_sigframe* %7, i32 0, i32 0
  %291 = load i32, i32* %14, align 4
  %292 = call i32 @ksiginfo_to_lsiginfo(%struct.TYPE_12__* %289, i32* %290, i32 %291)
  %293 = load %struct.l_rt_sigframe*, %struct.l_rt_sigframe** %8, align 8
  %294 = call i64 @copyout(%struct.l_rt_sigframe* %7, %struct.l_rt_sigframe* %293, i32 168)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %133
  %297 = load %struct.proc*, %struct.proc** %9, align 8
  %298 = call i32 @PROC_LOCK(%struct.proc* %297)
  %299 = load %struct.thread*, %struct.thread** %10, align 8
  %300 = load i32, i32* @SIGILL, align 4
  %301 = call i32 @sigexit(%struct.thread* %299, i32 %300)
  br label %302

302:                                              ; preds = %296, %133
  %303 = load %struct.l_rt_sigframe*, %struct.l_rt_sigframe** %8, align 8
  %304 = ptrtoint %struct.l_rt_sigframe* %303 to i64
  %305 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %306 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %305, i32 0, i32 0
  store i64 %304, i64* %306, align 8
  %307 = load i32, i32* @linux_rt_sigcode, align 4
  %308 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %309 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %308, i32 0, i32 4
  store i32 %307, i32* %309, align 4
  %310 = load i32, i32* @PSL_T, align 4
  %311 = load i32, i32* @PSL_D, align 4
  %312 = or i32 %310, %311
  %313 = xor i32 %312, -1
  %314 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %315 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 4
  %317 = and i32 %316, %313
  store i32 %317, i32* %315, align 4
  %318 = load i32, i32* @_ucodesel, align 4
  %319 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %320 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %319, i32 0, i32 3
  store i32 %318, i32* %320, align 8
  %321 = load %struct.thread*, %struct.thread** %10, align 8
  %322 = getelementptr inbounds %struct.thread, %struct.thread* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* @PCB_FULL_IRET, align 4
  %325 = call i32 @set_pcb_flags(i32 %323, i32 %324)
  %326 = load %struct.proc*, %struct.proc** %9, align 8
  %327 = call i32 @PROC_LOCK(%struct.proc* %326)
  %328 = load %struct.sigacts*, %struct.sigacts** %11, align 8
  %329 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %328, i32 0, i32 0
  %330 = call i32 @mtx_lock(i32* %329)
  ret void
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @sigonstack(i64) #1

declare dso_local i32 @LINUX_CTR4(i32, i8*, i32, i32, i32*, i32) #1

declare dso_local i64 @SIGISMEMBER(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @bsd_to_linux_signal(i32) #1

declare dso_local i32 @bzero(%struct.l_rt_sigframe*, i32) #1

declare dso_local i32 @bsd_to_linux_sigset(i32*, i32*) #1

declare dso_local i32 @PTROUT(i64) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @bsd_to_linux_trapcode(i32) #1

declare dso_local i32 @ksiginfo_to_lsiginfo(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i64 @copyout(%struct.l_rt_sigframe*, %struct.l_rt_sigframe*, i32) #1

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

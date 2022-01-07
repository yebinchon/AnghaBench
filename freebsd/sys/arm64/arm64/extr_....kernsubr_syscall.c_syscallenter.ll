; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_....kernsubr_syscall.c_syscallenter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_....kernsubr_syscall.c_syscallenter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64, i32, i32, i32, i32*, %struct.proc*, i64, %struct.syscall_args }
%struct.proc = type { i64, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.thread*)*, i32 (%struct.thread*, i32)* }
%struct.syscall_args = type { i32, %struct.TYPE_5__*, i32*, i32 }
%struct.TYPE_5__ = type { i32, i64, i32 (%struct.thread*, i32*)*, i64 }

@v_syscall = common dso_local global i32 0, align 4
@P_TRACED = common dso_local global i32 0, align 4
@TDB_USERWR = common dso_local global i32 0, align 4
@TDB_SCE = common dso_local global i32 0, align 4
@KTR_SYSC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"syscall\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"pid:%d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"arg0:%p\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"arg1:%p\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"arg2:%p\00", align 1
@S_SCE = common dso_local global i32 0, align 4
@PTRACE_SCE = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i32 0, align 4
@TDP_NERRNO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"error:%d\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"retval0:%#lx\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"retval1:%#lx\00", align 1
@ECAPMODE = common dso_local global i32 0, align 4
@KTR_SYSCALL = common dso_local global i32 0, align 4
@SYF_CAPENABLED = common dso_local global i32 0, align 4
@SYSTRACE_ENTRY = common dso_local global i32 0, align 4
@SYSTRACE_RETURN = common dso_local global i32 0, align 4
@systrace_enabled = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*)* @syscallenter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @syscallenter(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.syscall_args*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  %7 = load i32, i32* @v_syscall, align 4
  %8 = call i32 @VM_CNT_INC(i32 %7)
  %9 = load %struct.thread*, %struct.thread** %2, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 5
  %11 = load %struct.proc*, %struct.proc** %10, align 8
  store %struct.proc* %11, %struct.proc** %3, align 8
  %12 = load %struct.thread*, %struct.thread** %2, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 7
  store %struct.syscall_args* %13, %struct.syscall_args** %4, align 8
  %14 = load %struct.thread*, %struct.thread** %2, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 6
  store i64 0, i64* %15, align 8
  %16 = load %struct.thread*, %struct.thread** %2, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.proc*, %struct.proc** %3, align 8
  %20 = getelementptr inbounds %struct.proc, %struct.proc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @__predict_false(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.thread*, %struct.thread** %2, align 8
  %28 = call i32 @thread_cow_update(%struct.thread* %27)
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.proc*, %struct.proc** %3, align 8
  %31 = getelementptr inbounds %struct.proc, %struct.proc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @P_TRACED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %29
  %40 = load %struct.thread*, %struct.thread** %2, align 8
  %41 = getelementptr inbounds %struct.thread, %struct.thread* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @TDB_USERWR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %39, %29
  %47 = load %struct.proc*, %struct.proc** %3, align 8
  %48 = call i32 @PROC_LOCK(%struct.proc* %47)
  %49 = load i32, i32* @TDB_USERWR, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.thread*, %struct.thread** %2, align 8
  %52 = getelementptr inbounds %struct.thread, %struct.thread* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %46
  %58 = load i32, i32* @TDB_SCE, align 4
  %59 = load %struct.thread*, %struct.thread** %2, align 8
  %60 = getelementptr inbounds %struct.thread, %struct.thread* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %57, %46
  %64 = load %struct.proc*, %struct.proc** %3, align 8
  %65 = call i32 @PROC_UNLOCK(%struct.proc* %64)
  br label %66

66:                                               ; preds = %63, %39
  %67 = load %struct.proc*, %struct.proc** %3, align 8
  %68 = getelementptr inbounds %struct.proc, %struct.proc* %67, i32 0, i32 3
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32 (%struct.thread*)*, i32 (%struct.thread*)** %70, align 8
  %72 = load %struct.thread*, %struct.thread** %2, align 8
  %73 = call i32 %71(%struct.thread* %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* @KTR_SYSC, align 4
  %75 = load %struct.proc*, %struct.proc** %3, align 8
  %76 = load %struct.syscall_args*, %struct.syscall_args** %4, align 8
  %77 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @syscallname(%struct.proc* %75, i32 %78)
  %80 = load %struct.thread*, %struct.thread** %2, align 8
  %81 = ptrtoint %struct.thread* %80 to i64
  %82 = load %struct.thread*, %struct.thread** %2, align 8
  %83 = getelementptr inbounds %struct.thread, %struct.thread* %82, i32 0, i32 5
  %84 = load %struct.proc*, %struct.proc** %83, align 8
  %85 = getelementptr inbounds %struct.proc, %struct.proc* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.syscall_args*, %struct.syscall_args** %4, align 8
  %88 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.syscall_args*, %struct.syscall_args** %4, align 8
  %93 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.syscall_args*, %struct.syscall_args** %4, align 8
  %98 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @KTR_START4(i32 %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %79, i64 %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %66
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.thread*, %struct.thread** %2, align 8
  %108 = getelementptr inbounds %struct.thread, %struct.thread* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  br label %213

109:                                              ; preds = %66
  %110 = load %struct.proc*, %struct.proc** %3, align 8
  %111 = load i32, i32* @S_SCE, align 4
  %112 = load %struct.syscall_args*, %struct.syscall_args** %4, align 8
  %113 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @STOPEVENT(%struct.proc* %110, i32 %111, i32 %114)
  %116 = load %struct.proc*, %struct.proc** %3, align 8
  %117 = getelementptr inbounds %struct.proc, %struct.proc* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @P_TRACED, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %138

122:                                              ; preds = %109
  %123 = load %struct.proc*, %struct.proc** %3, align 8
  %124 = call i32 @PROC_LOCK(%struct.proc* %123)
  %125 = load %struct.proc*, %struct.proc** %3, align 8
  %126 = getelementptr inbounds %struct.proc, %struct.proc* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @PTRACE_SCE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %122
  %132 = load %struct.thread*, %struct.thread** %2, align 8
  %133 = load i32, i32* @SIGTRAP, align 4
  %134 = call i32 @ptracestop(%struct.thread* %132, i32 %133, i32* null)
  br label %135

135:                                              ; preds = %131, %122
  %136 = load %struct.proc*, %struct.proc** %3, align 8
  %137 = call i32 @PROC_UNLOCK(%struct.proc* %136)
  br label %138

138:                                              ; preds = %135, %109
  %139 = load %struct.thread*, %struct.thread** %2, align 8
  %140 = getelementptr inbounds %struct.thread, %struct.thread* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @TDB_USERWR, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %160

145:                                              ; preds = %138
  %146 = load %struct.proc*, %struct.proc** %3, align 8
  %147 = getelementptr inbounds %struct.proc, %struct.proc* %146, i32 0, i32 3
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32 (%struct.thread*)*, i32 (%struct.thread*)** %149, align 8
  %151 = load %struct.thread*, %struct.thread** %2, align 8
  %152 = call i32 %150(%struct.thread* %151)
  store i32 %152, i32* %5, align 4
  %153 = load i32, i32* %5, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %145
  %156 = load i32, i32* %5, align 4
  %157 = load %struct.thread*, %struct.thread** %2, align 8
  %158 = getelementptr inbounds %struct.thread, %struct.thread* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 4
  br label %213

159:                                              ; preds = %145
  br label %160

160:                                              ; preds = %159, %138
  %161 = load %struct.thread*, %struct.thread** %2, align 8
  %162 = load %struct.syscall_args*, %struct.syscall_args** %4, align 8
  %163 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %162, i32 0, i32 1
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = call i32 @syscall_thread_enter(%struct.thread* %161, %struct.TYPE_5__* %164)
  store i32 %165, i32* %5, align 4
  %166 = load i32, i32* %5, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %160
  %169 = load i32, i32* %5, align 4
  %170 = load %struct.thread*, %struct.thread** %2, align 8
  %171 = getelementptr inbounds %struct.thread, %struct.thread* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 4
  br label %213

172:                                              ; preds = %160
  %173 = load i32, i32* @TDP_NERRNO, align 4
  %174 = xor i32 %173, -1
  %175 = load %struct.thread*, %struct.thread** %2, align 8
  %176 = getelementptr inbounds %struct.thread, %struct.thread* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = and i32 %177, %174
  store i32 %178, i32* %176, align 8
  %179 = load %struct.syscall_args*, %struct.syscall_args** %4, align 8
  %180 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.thread*, %struct.thread** %2, align 8
  %183 = call i32 @AUDIT_SYSCALL_ENTER(i32 %181, %struct.thread* %182)
  %184 = load %struct.syscall_args*, %struct.syscall_args** %4, align 8
  %185 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %184, i32 0, i32 1
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 2
  %188 = load i32 (%struct.thread*, i32*)*, i32 (%struct.thread*, i32*)** %187, align 8
  %189 = load %struct.thread*, %struct.thread** %2, align 8
  %190 = load %struct.syscall_args*, %struct.syscall_args** %4, align 8
  %191 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = call i32 %188(%struct.thread* %189, i32* %192)
  store i32 %193, i32* %5, align 4
  %194 = load i32, i32* %5, align 4
  %195 = load %struct.thread*, %struct.thread** %2, align 8
  %196 = call i32 @AUDIT_SYSCALL_EXIT(i32 %194, %struct.thread* %195)
  %197 = load %struct.thread*, %struct.thread** %2, align 8
  %198 = getelementptr inbounds %struct.thread, %struct.thread* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @TDP_NERRNO, align 4
  %201 = and i32 %199, %200
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %172
  %204 = load i32, i32* %5, align 4
  %205 = load %struct.thread*, %struct.thread** %2, align 8
  %206 = getelementptr inbounds %struct.thread, %struct.thread* %205, i32 0, i32 2
  store i32 %204, i32* %206, align 4
  br label %207

207:                                              ; preds = %203, %172
  %208 = load %struct.thread*, %struct.thread** %2, align 8
  %209 = load %struct.syscall_args*, %struct.syscall_args** %4, align 8
  %210 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %209, i32 0, i32 1
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %210, align 8
  %212 = call i32 @syscall_thread_exit(%struct.thread* %208, %struct.TYPE_5__* %211)
  br label %213

213:                                              ; preds = %207, %168, %155, %105
  %214 = load i32, i32* @KTR_SYSC, align 4
  %215 = load %struct.proc*, %struct.proc** %3, align 8
  %216 = load %struct.syscall_args*, %struct.syscall_args** %4, align 8
  %217 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @syscallname(%struct.proc* %215, i32 %218)
  %220 = load %struct.thread*, %struct.thread** %2, align 8
  %221 = ptrtoint %struct.thread* %220 to i64
  %222 = load %struct.thread*, %struct.thread** %2, align 8
  %223 = getelementptr inbounds %struct.thread, %struct.thread* %222, i32 0, i32 5
  %224 = load %struct.proc*, %struct.proc** %223, align 8
  %225 = getelementptr inbounds %struct.proc, %struct.proc* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* %5, align 4
  %228 = load %struct.thread*, %struct.thread** %2, align 8
  %229 = getelementptr inbounds %struct.thread, %struct.thread* %228, i32 0, i32 4
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 0
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.thread*, %struct.thread** %2, align 8
  %234 = getelementptr inbounds %struct.thread, %struct.thread* %233, i32 0, i32 4
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 1
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @KTR_STOP4(i32 %214, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %219, i64 %221, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %226, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %227, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %232, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %237)
  %239 = load i32, i32* %6, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %252

241:                                              ; preds = %213
  %242 = load %struct.proc*, %struct.proc** %3, align 8
  %243 = call i32 @PROC_LOCK(%struct.proc* %242)
  %244 = load i32, i32* @TDB_SCE, align 4
  %245 = xor i32 %244, -1
  %246 = load %struct.thread*, %struct.thread** %2, align 8
  %247 = getelementptr inbounds %struct.thread, %struct.thread* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = and i32 %248, %245
  store i32 %249, i32* %247, align 8
  %250 = load %struct.proc*, %struct.proc** %3, align 8
  %251 = call i32 @PROC_UNLOCK(%struct.proc* %250)
  br label %252

252:                                              ; preds = %241, %213
  %253 = load %struct.proc*, %struct.proc** %3, align 8
  %254 = getelementptr inbounds %struct.proc, %struct.proc* %253, i32 0, i32 3
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 1
  %257 = load i32 (%struct.thread*, i32)*, i32 (%struct.thread*, i32)** %256, align 8
  %258 = load %struct.thread*, %struct.thread** %2, align 8
  %259 = load i32, i32* %5, align 4
  %260 = call i32 %257(%struct.thread* %258, i32 %259)
  ret void
}

declare dso_local i32 @VM_CNT_INC(i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @thread_cow_update(%struct.thread*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @KTR_START4(i32, i8*, i32, i64, i8*, i32, i8*, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @syscallname(%struct.proc*, i32) #1

declare dso_local i32 @STOPEVENT(%struct.proc*, i32, i32) #1

declare dso_local i32 @ptracestop(%struct.thread*, i32, i32*) #1

declare dso_local i32 @syscall_thread_enter(%struct.thread*, %struct.TYPE_5__*) #1

declare dso_local i32 @AUDIT_SYSCALL_ENTER(i32, %struct.thread*) #1

declare dso_local i32 @AUDIT_SYSCALL_EXIT(i32, %struct.thread*) #1

declare dso_local i32 @syscall_thread_exit(%struct.thread*, %struct.TYPE_5__*) #1

declare dso_local i32 @KTR_STOP4(i32, i8*, i32, i64, i8*, i32, i8*, i32, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/gdbserver/extr_fbsd-low.c_fbsd_wait_for_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/gdbserver/extr_fbsd-low.c_fbsd_wait_for_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64 (i8*)*, i32 (...)*, i32* }
%struct.process_info = type { i32, i32, i32, i32, i64, i32, i8*, %struct.TYPE_7__, i64, i64 }
%struct.TYPE_7__ = type { i32 }

@all_processes = common dso_local global i32 0, align 4
@status_pending_p = common dso_local global i32 0, align 4
@debug_threads = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Got a pending child %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Got an event from pending child %d (%04x)\0A\00", align 1
@current_inferior = common dso_local global %struct.thread_info* null, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"event from unknown child\00", align 1
@all_threads = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@using_threads = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"Thread %d (LWP %d) exiting\0A\00", align 1
@SIGSTOP = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"Expected stop.\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Ignored signal %d for %d (LWP %d).\0A\00", align 1
@SIGTRAP = common dso_local global i64 0, align 8
@the_low_target = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"Reinserted breakpoint.\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Hit a (non-reinsert) breakpoint.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread_info*)* @fbsd_wait_for_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbsd_wait_for_event(%struct.thread_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thread_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.process_info*, align 8
  %6 = alloca i32, align 4
  store %struct.thread_info* %0, %struct.thread_info** %3, align 8
  %7 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %8 = icmp eq %struct.thread_info* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load i32, i32* @status_pending_p, align 4
  %11 = call i64 @find_inferior(i32* @all_processes, i32 %10, i32* null)
  %12 = inttoptr i64 %11 to %struct.process_info*
  store %struct.process_info* %12, %struct.process_info** %5, align 8
  %13 = load i64, i64* @debug_threads, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = load %struct.process_info*, %struct.process_info** %5, align 8
  %17 = icmp ne %struct.process_info* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32, i32* @stderr, align 4
  %20 = load %struct.process_info*, %struct.process_info** %5, align 8
  %21 = getelementptr inbounds %struct.process_info, %struct.process_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %18, %15, %9
  br label %38

25:                                               ; preds = %1
  %26 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %27 = call %struct.process_info* @get_thread_process(%struct.thread_info* %26)
  store %struct.process_info* %27, %struct.process_info** %5, align 8
  %28 = load %struct.process_info*, %struct.process_info** %5, align 8
  %29 = getelementptr inbounds %struct.process_info, %struct.process_info* %28, i32 0, i32 9
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.process_info*, %struct.process_info** %5, align 8
  %34 = call i64 @check_removed_breakpoint(%struct.process_info* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store %struct.process_info* null, %struct.process_info** %5, align 8
  br label %37

37:                                               ; preds = %36, %32, %25
  br label %38

38:                                               ; preds = %37, %24
  %39 = load %struct.process_info*, %struct.process_info** %5, align 8
  %40 = icmp ne %struct.process_info* %39, null
  br i1 %40, label %41, label %70

41:                                               ; preds = %38
  %42 = load %struct.process_info*, %struct.process_info** %5, align 8
  %43 = getelementptr inbounds %struct.process_info, %struct.process_info* %42, i32 0, i32 9
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %41
  %47 = load i64, i64* @debug_threads, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load i32, i32* @stderr, align 4
  %51 = load %struct.process_info*, %struct.process_info** %5, align 8
  %52 = getelementptr inbounds %struct.process_info, %struct.process_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.process_info*, %struct.process_info** %5, align 8
  %55 = getelementptr inbounds %struct.process_info, %struct.process_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %49, %46
  %59 = load %struct.process_info*, %struct.process_info** %5, align 8
  %60 = getelementptr inbounds %struct.process_info, %struct.process_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %6, align 4
  %62 = load %struct.process_info*, %struct.process_info** %5, align 8
  %63 = getelementptr inbounds %struct.process_info, %struct.process_info* %62, i32 0, i32 9
  store i64 0, i64* %63, align 8
  %64 = load %struct.process_info*, %struct.process_info** %5, align 8
  %65 = getelementptr inbounds %struct.process_info, %struct.process_info* %64, i32 0, i32 1
  store i32 0, i32* %65, align 4
  %66 = load %struct.process_info*, %struct.process_info** %5, align 8
  %67 = call %struct.thread_info* @get_process_thread(%struct.process_info* %66)
  store %struct.thread_info* %67, %struct.thread_info** @current_inferior, align 8
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %289

69:                                               ; preds = %41
  br label %70

70:                                               ; preds = %69, %38
  br label %71

71:                                               ; preds = %70, %133, %154, %182, %220, %266
  %72 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %73 = icmp eq %struct.thread_info* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store %struct.process_info* null, %struct.process_info** %5, align 8
  br label %78

75:                                               ; preds = %71
  %76 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %77 = call %struct.process_info* @get_thread_process(%struct.thread_info* %76)
  store %struct.process_info* %77, %struct.process_info** %5, align 8
  br label %78

78:                                               ; preds = %75, %74
  %79 = call i32 @fbsd_wait_for_process(%struct.process_info** %5, i32* %6)
  %80 = load %struct.process_info*, %struct.process_info** %5, align 8
  %81 = icmp eq %struct.process_info* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = call i32 @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %78
  %85 = load %struct.process_info*, %struct.process_info** %5, align 8
  %86 = getelementptr inbounds %struct.process_info, %struct.process_info* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @find_inferior_id(%struct.TYPE_8__* @all_threads, i32 %87)
  %89 = inttoptr i64 %88 to %struct.thread_info*
  store %struct.thread_info* %89, %struct.thread_info** @current_inferior, align 8
  %90 = load i64, i64* @using_threads, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %192

92:                                               ; preds = %84
  %93 = load i32, i32* %6, align 4
  %94 = call i64 @WIFSTOPPED(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %134, label %96

96:                                               ; preds = %92
  %97 = load i64, i64* @debug_threads, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %96
  %100 = load i32, i32* @stderr, align 4
  %101 = load %struct.process_info*, %struct.process_info** %5, align 8
  %102 = getelementptr inbounds %struct.process_info, %struct.process_info* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.process_info*, %struct.process_info** %5, align 8
  %105 = getelementptr inbounds %struct.process_info, %struct.process_info* %104, i32 0, i32 7
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %103, i32 %107)
  br label %109

109:                                              ; preds = %99, %96
  %110 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @all_threads, i32 0, i32 0), align 8
  %111 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @all_threads, i32 0, i32 1), align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %2, align 4
  br label %289

115:                                              ; preds = %109
  %116 = load %struct.process_info*, %struct.process_info** %5, align 8
  %117 = getelementptr inbounds %struct.process_info, %struct.process_info* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @dead_thread_notify(i32 %118)
  %120 = load %struct.process_info*, %struct.process_info** %5, align 8
  %121 = getelementptr inbounds %struct.process_info, %struct.process_info* %120, i32 0, i32 7
  %122 = call i32 @remove_inferior(i32* @all_processes, %struct.TYPE_7__* %121)
  %123 = load %struct.process_info*, %struct.process_info** %5, align 8
  %124 = call i32 @free(%struct.process_info* %123)
  %125 = load %struct.thread_info*, %struct.thread_info** @current_inferior, align 8
  %126 = call i32 @remove_thread(%struct.thread_info* %125)
  %127 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @all_threads, i32 0, i32 0), align 8
  %128 = inttoptr i64 %127 to %struct.thread_info*
  store %struct.thread_info* %128, %struct.thread_info** @current_inferior, align 8
  %129 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %130 = icmp ne %struct.thread_info* %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %115
  %132 = load i32, i32* %6, align 4
  store i32 %132, i32* %2, align 4
  br label %289

133:                                              ; preds = %115
  br label %71

134:                                              ; preds = %92
  %135 = load i32, i32* %6, align 4
  %136 = call i64 @WIFSTOPPED(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %163

138:                                              ; preds = %134
  %139 = load i32, i32* %6, align 4
  %140 = call i64 @WSTOPSIG(i32 %139)
  %141 = load i64, i64* @SIGSTOP, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %163

143:                                              ; preds = %138
  %144 = load %struct.process_info*, %struct.process_info** %5, align 8
  %145 = getelementptr inbounds %struct.process_info, %struct.process_info* %144, i32 0, i32 8
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %163

148:                                              ; preds = %143
  %149 = load i64, i64* @debug_threads, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i32, i32* @stderr, align 4
  %153 = call i32 (i32, i8*, ...) @fprintf(i32 %152, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %154

154:                                              ; preds = %151, %148
  %155 = load %struct.process_info*, %struct.process_info** %5, align 8
  %156 = getelementptr inbounds %struct.process_info, %struct.process_info* %155, i32 0, i32 8
  store i64 0, i64* %156, align 8
  %157 = load %struct.process_info*, %struct.process_info** %5, align 8
  %158 = getelementptr inbounds %struct.process_info, %struct.process_info* %157, i32 0, i32 7
  %159 = load %struct.process_info*, %struct.process_info** %5, align 8
  %160 = getelementptr inbounds %struct.process_info, %struct.process_info* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @fbsd_resume_one_process(%struct.TYPE_7__* %158, i32 %161, i64 0)
  br label %71

163:                                              ; preds = %143, %138, %134
  %164 = load i32, i32* %6, align 4
  %165 = call i64 @WIFSTOPPED(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %191

167:                                              ; preds = %163
  %168 = load i64, i64* @debug_threads, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %182

170:                                              ; preds = %167
  %171 = load i32, i32* @stderr, align 4
  %172 = load i32, i32* %6, align 4
  %173 = call i64 @WSTOPSIG(i32 %172)
  %174 = load %struct.process_info*, %struct.process_info** %5, align 8
  %175 = getelementptr inbounds %struct.process_info, %struct.process_info* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.process_info*, %struct.process_info** %5, align 8
  %178 = getelementptr inbounds %struct.process_info, %struct.process_info* %177, i32 0, i32 7
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 (i32, i8*, ...) @fprintf(i32 %171, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i64 %173, i32 %176, i32 %180)
  br label %182

182:                                              ; preds = %170, %167
  %183 = load %struct.process_info*, %struct.process_info** %5, align 8
  %184 = getelementptr inbounds %struct.process_info, %struct.process_info* %183, i32 0, i32 7
  %185 = load %struct.process_info*, %struct.process_info** %5, align 8
  %186 = getelementptr inbounds %struct.process_info, %struct.process_info* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %6, align 4
  %189 = call i64 @WSTOPSIG(i32 %188)
  %190 = call i32 @fbsd_resume_one_process(%struct.TYPE_7__* %184, i32 %187, i64 %189)
  br label %71

191:                                              ; preds = %163
  br label %192

192:                                              ; preds = %191, %84
  %193 = load i32, i32* %6, align 4
  %194 = call i64 @WIFSTOPPED(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %192
  %197 = load i32, i32* %6, align 4
  %198 = call i64 @WSTOPSIG(i32 %197)
  %199 = load i64, i64* @SIGTRAP, align 8
  %200 = icmp ne i64 %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %196, %192
  %202 = load i32, i32* %6, align 4
  store i32 %202, i32* %2, align 4
  br label %289

203:                                              ; preds = %196
  %204 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @the_low_target, i32 0, i32 2), align 8
  %205 = icmp eq i32* %204, null
  br i1 %205, label %206, label %208

206:                                              ; preds = %203
  %207 = load i32, i32* %6, align 4
  store i32 %207, i32* %2, align 4
  br label %289

208:                                              ; preds = %203
  %209 = call i8* (...) @get_stop_pc()
  store i8* %209, i8** %4, align 8
  %210 = load %struct.process_info*, %struct.process_info** %5, align 8
  %211 = getelementptr inbounds %struct.process_info, %struct.process_info* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %230

214:                                              ; preds = %208
  %215 = load i64, i64* @debug_threads, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load i32, i32* @stderr, align 4
  %219 = call i32 (i32, i8*, ...) @fprintf(i32 %218, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %220

220:                                              ; preds = %217, %214
  %221 = load %struct.process_info*, %struct.process_info** %5, align 8
  %222 = getelementptr inbounds %struct.process_info, %struct.process_info* %221, i32 0, i32 4
  %223 = load i64, i64* %222, align 8
  %224 = call i32 @reinsert_breakpoint(i64 %223)
  %225 = load %struct.process_info*, %struct.process_info** %5, align 8
  %226 = getelementptr inbounds %struct.process_info, %struct.process_info* %225, i32 0, i32 4
  store i64 0, i64* %226, align 8
  %227 = load %struct.process_info*, %struct.process_info** %5, align 8
  %228 = getelementptr inbounds %struct.process_info, %struct.process_info* %227, i32 0, i32 7
  %229 = call i32 @fbsd_resume_one_process(%struct.TYPE_7__* %228, i32 0, i64 0)
  br label %71

230:                                              ; preds = %208
  %231 = load i64, i64* @debug_threads, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = load i32, i32* @stderr, align 4
  %235 = call i32 (i32, i8*, ...) @fprintf(i32 %234, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %236

236:                                              ; preds = %233, %230
  %237 = load i8*, i8** %4, align 8
  %238 = call i64 @check_breakpoints(i8* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %267

240:                                              ; preds = %236
  %241 = load %struct.process_info*, %struct.process_info** %5, align 8
  %242 = getelementptr inbounds %struct.process_info, %struct.process_info* %241, i32 0, i32 5
  store i32 1, i32* %242, align 8
  %243 = load i8*, i8** %4, align 8
  %244 = load %struct.process_info*, %struct.process_info** %5, align 8
  %245 = getelementptr inbounds %struct.process_info, %struct.process_info* %244, i32 0, i32 6
  store i8* %243, i8** %245, align 8
  %246 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @the_low_target, i32 0, i32 1), align 8
  %247 = icmp eq i32 (...)* %246, null
  br i1 %247, label %248, label %258

248:                                              ; preds = %240
  %249 = load i8*, i8** %4, align 8
  %250 = ptrtoint i8* %249 to i64
  %251 = load %struct.process_info*, %struct.process_info** %5, align 8
  %252 = getelementptr inbounds %struct.process_info, %struct.process_info* %251, i32 0, i32 4
  store i64 %250, i64* %252, align 8
  %253 = load i8*, i8** %4, align 8
  %254 = call i32 @uninsert_breakpoint(i8* %253)
  %255 = load %struct.process_info*, %struct.process_info** %5, align 8
  %256 = getelementptr inbounds %struct.process_info, %struct.process_info* %255, i32 0, i32 7
  %257 = call i32 @fbsd_resume_one_process(%struct.TYPE_7__* %256, i32 1, i64 0)
  br label %266

258:                                              ; preds = %240
  %259 = load i8*, i8** %4, align 8
  %260 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @the_low_target, i32 0, i32 1), align 8
  %261 = call i32 (...) %260()
  %262 = call i32 @reinsert_breakpoint_by_bp(i8* %259, i32 %261)
  %263 = load %struct.process_info*, %struct.process_info** %5, align 8
  %264 = getelementptr inbounds %struct.process_info, %struct.process_info* %263, i32 0, i32 7
  %265 = call i32 @fbsd_resume_one_process(%struct.TYPE_7__* %264, i32 0, i64 0)
  br label %266

266:                                              ; preds = %258, %248
  br label %71

267:                                              ; preds = %236
  %268 = load %struct.process_info*, %struct.process_info** %5, align 8
  %269 = getelementptr inbounds %struct.process_info, %struct.process_info* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %267
  %273 = load %struct.process_info*, %struct.process_info** %5, align 8
  %274 = getelementptr inbounds %struct.process_info, %struct.process_info* %273, i32 0, i32 3
  store i32 0, i32* %274, align 4
  %275 = load i32, i32* %6, align 4
  store i32 %275, i32* %2, align 4
  br label %289

276:                                              ; preds = %267
  %277 = load i64 (i8*)*, i64 (i8*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @the_low_target, i32 0, i32 0), align 8
  %278 = load i8*, i8** %4, align 8
  %279 = call i64 %277(i8* %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %276
  %282 = load %struct.process_info*, %struct.process_info** %5, align 8
  %283 = getelementptr inbounds %struct.process_info, %struct.process_info* %282, i32 0, i32 5
  store i32 1, i32* %283, align 8
  %284 = load i8*, i8** %4, align 8
  %285 = load %struct.process_info*, %struct.process_info** %5, align 8
  %286 = getelementptr inbounds %struct.process_info, %struct.process_info* %285, i32 0, i32 6
  store i8* %284, i8** %286, align 8
  br label %287

287:                                              ; preds = %281, %276
  %288 = load i32, i32* %6, align 4
  store i32 %288, i32* %2, align 4
  br label %289

289:                                              ; preds = %287, %272, %206, %201, %131, %113, %58
  %290 = load i32, i32* %2, align 4
  ret i32 %290
}

declare dso_local i64 @find_inferior(i32*, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.process_info* @get_thread_process(%struct.thread_info*) #1

declare dso_local i64 @check_removed_breakpoint(%struct.process_info*) #1

declare dso_local %struct.thread_info* @get_process_thread(%struct.process_info*) #1

declare dso_local i32 @fbsd_wait_for_process(%struct.process_info**, i32*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @find_inferior_id(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @WIFSTOPPED(i32) #1

declare dso_local i32 @dead_thread_notify(i32) #1

declare dso_local i32 @remove_inferior(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @free(%struct.process_info*) #1

declare dso_local i32 @remove_thread(%struct.thread_info*) #1

declare dso_local i64 @WSTOPSIG(i32) #1

declare dso_local i32 @fbsd_resume_one_process(%struct.TYPE_7__*, i32, i64) #1

declare dso_local i8* @get_stop_pc(...) #1

declare dso_local i32 @reinsert_breakpoint(i64) #1

declare dso_local i64 @check_breakpoints(i8*) #1

declare dso_local i32 @uninsert_breakpoint(i8*) #1

declare dso_local i32 @reinsert_breakpoint_by_bp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

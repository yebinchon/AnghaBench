; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_get_child_debug_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_get_child_debug_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.target_waitstatus = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32, i32 }

@get_child_debug_event.dummy_thread_info = internal global i32 0, align 4
@TARGET_SIGNAL_0 = common dso_local global i32 0, align 4
@last_sig = common dso_local global i32 0, align 4
@current_event = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@event_count = common dso_local global i32 0, align 4
@DBG_CONTINUE = common dso_local global i32 0, align 4
@TARGET_WAITKIND_SPURIOUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"gdb: kernel event for pid=%d tid=%x code=%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"CREATE_THREAD_DEBUG_EVENT\00", align 1
@saw_create = common dso_local global i32 0, align 4
@attach_flag = common dso_local global i32 0, align 4
@info_verbose = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"[New %s]\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"gdb: kernel event for pid=%d tid=%d code=%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"EXIT_THREAD_DEBUG_EVENT\00", align 1
@main_thread_id = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"CREATE_PROCESS_DEBUG_EVENT\00", align 1
@current_process_handle = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"EXIT_PROCESS_DEBUG_EVENT\00", align 1
@TARGET_WAITKIND_EXITED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"LOAD_DLL_DEBUG_EVENT\00", align 1
@handle_load_dll = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RETURN_MASK_ALL = common dso_local global i32 0, align 4
@TARGET_WAITKIND_LOADED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"UNLOAD_DLL_DEBUG_EVENT\00", align 1
@handle_unload_dll = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"EXCEPTION_DEBUG_EVENT\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"OUTPUT_DEBUG_STRING_EVENT\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"gdb: kernel event for pid=%ld tid=%ld\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"                 unknown event code %ld\0A\00", align 1
@inferior_ptid = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@current_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.target_waitstatus*)* @get_child_debug_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_child_debug_event(i32 %0, %struct.target_waitstatus* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.target_waitstatus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.target_waitstatus* %1, %struct.target_waitstatus** %4, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @TARGET_SIGNAL_0, align 4
  store i32 %10, i32* @last_sig, align 4
  %11 = call i32 @WaitForDebugEvent(%struct.TYPE_15__* @current_event, i32 1000)
  store i32 %11, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %211

14:                                               ; preds = %2
  %15 = load i32, i32* @event_count, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @event_count, align 4
  %17 = load i32, i32* @DBG_CONTINUE, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 0), align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @TARGET_WAITKIND_SPURIOUS, align 4
  %20 = load %struct.target_waitstatus*, %struct.target_waitstatus** %4, align 8
  %21 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  store i32* null, i32** %8, align 8
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %175 [
    i32 134, label %23
    i32 131, label %56
    i32 135, label %67
    i32 132, label %95
    i32 130, label %113
    i32 128, label %135
    i32 133, label %147
    i32 129, label %161
  ]

23:                                               ; preds = %14
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 2), align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 1), align 4
  %26 = call i32 @DEBUG_EVENTS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @saw_create, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %43

29:                                               ; preds = %23
  %30 = load i32, i32* @saw_create, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @attach_flag, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = call i32 (...) @fake_create_process()
  %37 = load %struct.target_waitstatus*, %struct.target_waitstatus** %4, align 8
  %38 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  store i32 %36, i32* %9, align 4
  %40 = load i32, i32* @saw_create, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @saw_create, align 4
  br label %42

42:                                               ; preds = %35, %32, %29
  br label %185

43:                                               ; preds = %23
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 1), align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 3, i32 3, i32 0), align 4
  %46 = call i32* @child_add_thread(i32 %44, i32 %45)
  store i32* %46, i32** %8, align 8
  %47 = load i32, i32* @info_verbose, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 1), align 4
  %51 = call i32 @pid_to_ptid(i32 %50)
  %52 = call i32 @target_pid_to_str(i32 %51)
  %53 = call i32 (i8*, i32, ...) @printf_unfiltered(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %49, %43
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 1), align 4
  store i32 %55, i32* %9, align 4
  br label %185

56:                                               ; preds = %14
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 2), align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 1), align 4
  %59 = call i32 @DEBUG_EVENTS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 1), align 4
  %61 = load i32, i32* @main_thread_id, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 1), align 4
  %65 = call i32 @child_delete_thread(i32 %64)
  store i32* @get_child_debug_event.dummy_thread_info, i32** %8, align 8
  br label %66

66:                                               ; preds = %63, %56
  br label %185

67:                                               ; preds = %14
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 2), align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 1), align 4
  %70 = call i32 @DEBUG_EVENTS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 3, i32 2, i32 2), align 4
  %72 = call i32 @CloseHandle(i32 %71)
  %73 = load i32, i32* @saw_create, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* @saw_create, align 4
  %75 = icmp ne i32 %74, 1
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 3, i32 2, i32 1), align 4
  %78 = call i32 @CloseHandle(i32 %77)
  br label %185

79:                                               ; preds = %67
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 3, i32 2, i32 1), align 4
  store i32 %80, i32* @current_process_handle, align 4
  %81 = load i32, i32* @main_thread_id, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* @main_thread_id, align 4
  %85 = call i32 @child_delete_thread(i32 %84)
  br label %86

86:                                               ; preds = %83, %79
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 1), align 4
  store i32 %87, i32* @main_thread_id, align 4
  %88 = load i32, i32* @main_thread_id, align 4
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 3, i32 2, i32 0), align 4
  %90 = call i32* @child_add_thread(i32 %88, i32 %89)
  store i32* %90, i32** %8, align 8
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 1), align 4
  %92 = load %struct.target_waitstatus*, %struct.target_waitstatus** %4, align 8
  %93 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 4
  store i32 %91, i32* %9, align 4
  br label %185

95:                                               ; preds = %14
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 2), align 4
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 1), align 4
  %98 = call i32 @DEBUG_EVENTS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %99 = load i32, i32* @saw_create, align 4
  %100 = icmp ne i32 %99, 1
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %185

102:                                              ; preds = %95
  %103 = load i32, i32* @TARGET_WAITKIND_EXITED, align 4
  %104 = load %struct.target_waitstatus*, %struct.target_waitstatus** %4, align 8
  %105 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 3, i32 1, i32 0), align 4
  %107 = load %struct.target_waitstatus*, %struct.target_waitstatus** %4, align 8
  %108 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 4
  %110 = load i32, i32* @current_process_handle, align 4
  %111 = call i32 @CloseHandle(i32 %110)
  %112 = load i32, i32* @main_thread_id, align 4
  store i32 %112, i32* %9, align 4
  br label %185

113:                                              ; preds = %14
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 2), align 4
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 1), align 4
  %116 = call i32 @DEBUG_EVENTS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 3, i32 0, i32 0), align 4
  %118 = call i32 @CloseHandle(i32 %117)
  %119 = load i32, i32* @saw_create, align 4
  %120 = icmp ne i32 %119, 1
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  br label %185

122:                                              ; preds = %113
  %123 = load i32, i32* @handle_load_dll, align 4
  %124 = load i32, i32* @RETURN_MASK_ALL, align 4
  %125 = call i32 @catch_errors(i32 %123, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i32 %124)
  %126 = call i32 (...) @registers_changed()
  %127 = load i32, i32* @TARGET_WAITKIND_LOADED, align 4
  %128 = load %struct.target_waitstatus*, %struct.target_waitstatus** %4, align 8
  %129 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.target_waitstatus*, %struct.target_waitstatus** %4, align 8
  %131 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  store i32 0, i32* %132, align 4
  %133 = load i32, i32* @main_thread_id, align 4
  store i32 %133, i32* %9, align 4
  %134 = call i32 (...) @re_enable_breakpoints_in_shlibs()
  br label %185

135:                                              ; preds = %14
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 2), align 4
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 1), align 4
  %138 = call i32 @DEBUG_EVENTS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %139 = load i32, i32* @saw_create, align 4
  %140 = icmp ne i32 %139, 1
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  br label %185

142:                                              ; preds = %135
  %143 = load i32, i32* @handle_unload_dll, align 4
  %144 = load i32, i32* @RETURN_MASK_ALL, align 4
  %145 = call i32 @catch_errors(i32 %143, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i32 %144)
  %146 = call i32 (...) @registers_changed()
  br label %185

147:                                              ; preds = %14
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 2), align 4
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 1), align 4
  %150 = call i32 @DEBUG_EVENTS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %151 = load i32, i32* @saw_create, align 4
  %152 = icmp ne i32 %151, 1
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  br label %185

154:                                              ; preds = %147
  %155 = load %struct.target_waitstatus*, %struct.target_waitstatus** %4, align 8
  %156 = call i32 @handle_exception(%struct.target_waitstatus* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 1), align 4
  store i32 %159, i32* %9, align 4
  br label %160

160:                                              ; preds = %158, %154
  br label %185

161:                                              ; preds = %14
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 2), align 4
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 1), align 4
  %164 = call i32 @DEBUG_EVENTS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  %165 = load i32, i32* @saw_create, align 4
  %166 = icmp ne i32 %165, 1
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  br label %185

168:                                              ; preds = %161
  %169 = load %struct.target_waitstatus*, %struct.target_waitstatus** %4, align 8
  %170 = call i32 @handle_output_debug_string(%struct.target_waitstatus* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = load i32, i32* @main_thread_id, align 4
  store i32 %173, i32* %9, align 4
  br label %174

174:                                              ; preds = %172, %168
  br label %185

175:                                              ; preds = %14
  %176 = load i32, i32* @saw_create, align 4
  %177 = icmp ne i32 %176, 1
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  br label %185

179:                                              ; preds = %175
  %180 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 2), align 4
  %181 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 1), align 4
  %182 = call i32 (i8*, i32, ...) @printf_unfiltered(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i32 %180, i32 %181)
  %183 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 0), align 4
  %184 = call i32 (i8*, i32, ...) @printf_unfiltered(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i32 %183)
  br label %185

185:                                              ; preds = %179, %178, %174, %167, %160, %153, %142, %141, %122, %121, %102, %101, %86, %76, %66, %54, %42
  %186 = load i32, i32* %9, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load i32, i32* @saw_create, align 4
  %190 = icmp ne i32 %189, 1
  br i1 %190, label %191, label %195

191:                                              ; preds = %188, %185
  %192 = load i32, i32* %6, align 4
  %193 = call i32 @child_continue(i32 %192, i32 -1)
  %194 = call i32 @CHECK(i32 %193)
  br label %210

195:                                              ; preds = %188
  %196 = load i32, i32* %9, align 4
  %197 = call i32 @pid_to_ptid(i32 %196)
  store i32 %197, i32* @inferior_ptid, align 4
  %198 = load i32*, i32** %8, align 8
  %199 = icmp ne i32* %198, null
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  br label %207

201:                                              ; preds = %195
  %202 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @current_event, i32 0, i32 1), align 4
  %203 = load i32, i32* @TRUE, align 4
  %204 = call i32 @thread_rec(i32 %202, i32 %203)
  %205 = sext i32 %204 to i64
  %206 = inttoptr i64 %205 to i32*
  br label %207

207:                                              ; preds = %201, %200
  %208 = phi i32* [ %198, %200 ], [ %206, %201 ]
  %209 = ptrtoint i32* %208 to i32
  store i32 %209, i32* @current_thread, align 4
  br label %210

210:                                              ; preds = %207, %191
  br label %211

211:                                              ; preds = %210, %13
  %212 = load i32, i32* %9, align 4
  ret i32 %212
}

declare dso_local i32 @WaitForDebugEvent(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @DEBUG_EVENTS(i8*) #1

declare dso_local i32 @fake_create_process(...) #1

declare dso_local i32* @child_add_thread(i32, i32) #1

declare dso_local i32 @printf_unfiltered(i8*, i32, ...) #1

declare dso_local i32 @target_pid_to_str(i32) #1

declare dso_local i32 @pid_to_ptid(i32) #1

declare dso_local i32 @child_delete_thread(i32) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @catch_errors(i32, i32*, i8*, i32) #1

declare dso_local i32 @registers_changed(...) #1

declare dso_local i32 @re_enable_breakpoints_in_shlibs(...) #1

declare dso_local i32 @handle_exception(%struct.target_waitstatus*) #1

declare dso_local i32 @handle_output_debug_string(%struct.target_waitstatus*) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @child_continue(i32, i32) #1

declare dso_local i32 @thread_rec(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

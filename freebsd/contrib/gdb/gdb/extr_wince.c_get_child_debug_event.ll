; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c_get_child_debug_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c_get_child_debug_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.target_waitstatus = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }

@get_child_debug_event.dummy_thread_info = internal global i32 0, align 4
@current_event = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@event_count = common dso_local global i32 0, align 4
@DBG_CONTINUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"gdb: kernel event for pid=%d tid=%x code=%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"CREATE_THREAD_DEBUG_EVENT\00", align 1
@info_verbose = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"[New %s]\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"gdb: kernel event for pid=%d tid=%d code=%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"EXIT_THREAD_DEBUG_EVENT\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"CREATE_PROCESS_DEBUG_EVENT\00", align 1
@current_process_handle = common dso_local global i32 0, align 4
@main_thread_id = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"EXIT_PROCESS_DEBUG_EVENT\00", align 1
@TARGET_WAITKIND_EXITED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"LOAD_DLL_DEBUG_EVENT\00", align 1
@handle_load_dll = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RETURN_MASK_ALL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"UNLOAD_DLL_DEBUG_EVENT\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"EXCEPTION_DEBUG_EVENT\00", align 1
@DBG_EXCEPTION_NOT_HANDLED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [26 x i8] c"OUTPUT_DEBUG_STRING_EVENT\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"gdb: kernel event for pid=%d tid=%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"                 unknown event code %d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@current_thread = common dso_local global i32 0, align 4
@this_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.target_waitstatus*, i32, i32*)* @get_child_debug_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_child_debug_event(i32 %0, %struct.target_waitstatus* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.target_waitstatus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.target_waitstatus* %1, %struct.target_waitstatus** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32* null, i32** %13, align 8
  %14 = call i32 @wait_for_debug_event(%struct.TYPE_13__* @current_event, i32 1000)
  store i32 %14, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = load i32*, i32** %8, align 8
  store i32 0, i32* %17, align 4
  br label %134

18:                                               ; preds = %4
  %19 = load i32, i32* @event_count, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @event_count, align 4
  %21 = load i32, i32* @DBG_CONTINUE, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i32*, i32** %8, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @current_event, i32 0, i32 0), align 4
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %12, align 4
  switch i32 %28, label %107 [
    i32 134, label %29
    i32 131, label %43
    i32 135, label %49
    i32 132, label %61
    i32 130, label %76
    i32 128, label %84
    i32 133, label %88
    i32 129, label %101
  ]

29:                                               ; preds = %18
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @current_event, i32 0, i32 1), align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @current_event, i32 0, i32 2), align 4
  %32 = call i32 @DEBUG_EVENTS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @current_event, i32 0, i32 2), align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @current_event, i32 0, i32 3, i32 2, i32 0), align 4
  %35 = call i32* @child_add_thread(i32 %33, i32 %34)
  store i32* %35, i32** %13, align 8
  %36 = load i32, i32* @info_verbose, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @current_event, i32 0, i32 2), align 4
  %40 = call i32 @target_pid_to_str(i32 %39)
  %41 = call i32 (i8*, i32, ...) @printf_unfiltered(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %38, %29
  br label %113

43:                                               ; preds = %18
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @current_event, i32 0, i32 1), align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @current_event, i32 0, i32 2), align 4
  %46 = call i32 @DEBUG_EVENTS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @current_event, i32 0, i32 2), align 4
  %48 = call i32 @child_delete_thread(i32 %47)
  store i32* @get_child_debug_event.dummy_thread_info, i32** %13, align 8
  br label %113

49:                                               ; preds = %18
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @current_event, i32 0, i32 1), align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @current_event, i32 0, i32 2), align 4
  %52 = call i32 @DEBUG_EVENTS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @current_event, i32 0, i32 3, i32 1, i32 1), align 4
  store i32 %53, i32* @current_process_handle, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @current_event, i32 0, i32 2), align 4
  store i32 %54, i32* @main_thread_id, align 4
  %55 = load i32, i32* @main_thread_id, align 4
  %56 = call i32 @pid_to_ptid(i32 %55)
  store i32 %56, i32* @inferior_ptid, align 4
  %57 = load i32, i32* @inferior_ptid, align 4
  %58 = call i32 @PIDGET(i32 %57)
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @current_event, i32 0, i32 3, i32 1, i32 0), align 4
  %60 = call i32* @child_add_thread(i32 %58, i32 %59)
  store i32* %60, i32** %13, align 8
  br label %113

61:                                               ; preds = %18
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @current_event, i32 0, i32 1), align 4
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @current_event, i32 0, i32 2), align 4
  %64 = call i32 @DEBUG_EVENTS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %65 = load i32, i32* @TARGET_WAITKIND_EXITED, align 4
  %66 = load %struct.target_waitstatus*, %struct.target_waitstatus** %6, align 8
  %67 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @current_event, i32 0, i32 3, i32 0, i32 0), align 4
  %69 = load %struct.target_waitstatus*, %struct.target_waitstatus** %6, align 8
  %70 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* @current_process_handle, align 4
  %73 = call i32 @close_handle(i32 %72)
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @current_event, i32 0, i32 1), align 4
  %75 = load i32*, i32** %8, align 8
  store i32 %74, i32* %75, align 4
  store i32 1, i32* %9, align 4
  br label %113

76:                                               ; preds = %18
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @current_event, i32 0, i32 1), align 4
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @current_event, i32 0, i32 2), align 4
  %79 = call i32 @DEBUG_EVENTS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %80 = load i32, i32* @handle_load_dll, align 4
  %81 = load i32, i32* @RETURN_MASK_ALL, align 4
  %82 = call i32 @catch_errors(i32 %80, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i32 %81)
  %83 = call i32 (...) @registers_changed()
  br label %113

84:                                               ; preds = %18
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @current_event, i32 0, i32 1), align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @current_event, i32 0, i32 2), align 4
  %87 = call i32 @DEBUG_EVENTS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  br label %113

88:                                               ; preds = %18
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @current_event, i32 0, i32 1), align 4
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @current_event, i32 0, i32 2), align 4
  %91 = call i32 @DEBUG_EVENTS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %92 = load %struct.target_waitstatus*, %struct.target_waitstatus** %6, align 8
  %93 = call i32 @handle_exception(%struct.target_waitstatus* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @current_event, i32 0, i32 2), align 4
  %97 = load i32*, i32** %8, align 8
  store i32 %96, i32* %97, align 4
  br label %100

98:                                               ; preds = %88
  %99 = load i32, i32* @DBG_EXCEPTION_NOT_HANDLED, align 4
  store i32 %99, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %98, %95
  br label %113

101:                                              ; preds = %18
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @current_event, i32 0, i32 1), align 4
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @current_event, i32 0, i32 2), align 4
  %104 = call i32 @DEBUG_EVENTS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  %105 = load %struct.target_waitstatus*, %struct.target_waitstatus** %6, align 8
  %106 = call i32 @handle_output_debug_string(%struct.target_waitstatus* %105)
  br label %113

107:                                              ; preds = %18
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @current_event, i32 0, i32 1), align 4
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @current_event, i32 0, i32 2), align 4
  %110 = call i32 (i8*, i32, ...) @printf_unfiltered(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i32 %108, i32 %109)
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @current_event, i32 0, i32 0), align 4
  %112 = call i32 (i8*, i32, ...) @printf_unfiltered(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %107, %101, %100, %84, %76, %61, %49, %43, %42
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %113
  %117 = load i32*, i32** %13, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %126

120:                                              ; preds = %116
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @current_event, i32 0, i32 2), align 4
  %122 = load i32, i32* @TRUE, align 4
  %123 = call i32 @thread_rec(i32 %121, i32 %122)
  %124 = sext i32 %123 to i64
  %125 = inttoptr i64 %124 to i32*
  br label %126

126:                                              ; preds = %120, %119
  %127 = phi i32* [ %117, %119 ], [ %125, %120 ]
  %128 = ptrtoint i32* %127 to i32
  store i32 %128, i32* @current_thread, align 4
  store i32 %128, i32* @this_thread, align 4
  br label %133

129:                                              ; preds = %113
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @child_continue(i32 %130, i32 -1)
  %132 = call i32 @CHECK(i32 %131)
  br label %133

133:                                              ; preds = %129, %126
  br label %134

134:                                              ; preds = %133, %16
  %135 = load i32, i32* %9, align 4
  ret i32 %135
}

declare dso_local i32 @wait_for_debug_event(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @DEBUG_EVENTS(i8*) #1

declare dso_local i32* @child_add_thread(i32, i32) #1

declare dso_local i32 @printf_unfiltered(i8*, i32, ...) #1

declare dso_local i32 @target_pid_to_str(i32) #1

declare dso_local i32 @child_delete_thread(i32) #1

declare dso_local i32 @pid_to_ptid(i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @close_handle(i32) #1

declare dso_local i32 @catch_errors(i32, i32*, i8*, i32) #1

declare dso_local i32 @registers_changed(...) #1

declare dso_local i32 @handle_exception(%struct.target_waitstatus*) #1

declare dso_local i32 @handle_output_debug_string(%struct.target_waitstatus*) #1

declare dso_local i32 @thread_rec(i32, i32) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @child_continue(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

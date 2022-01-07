; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_fbsd_thread_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_fbsd_thread_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (i32, i32, i32)* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@fbsd_thread_active = common dso_local global i32 0, align 4
@child_ops = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@inferior_ptid = common dso_local global i32 0, align 4
@thread_agent = common dso_local global i32 0, align 4
@PT_SETSTEP = common dso_local global i32 0, align 4
@PT_CLEARSTEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"PT_SETSTEP/PT_CLEARSTEP\00", align 1
@last_single_step_thread = common dso_local global i32 0, align 4
@null_ptid = common dso_local global i32 0, align 4
@resume_thread_callback = common dso_local global i32 0, align 4
@TD_THR_ANY_STATE = common dso_local global i32 0, align 4
@TD_THR_LOWEST_PRIORITY = common dso_local global i32 0, align 4
@TD_SIGNO_MASK = common dso_local global i32 0, align 4
@TD_THR_ANY_USER_FLAGS = common dso_local global i32 0, align 4
@TD_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"resume error: %s\00", align 1
@suspend_thread_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"suspend error: %s\00", align 1
@PT_RESUME = common dso_local global i32 0, align 4
@PT_CONTINUE = common dso_local global i32 0, align 4
@proc_handle = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"PT_CONTINUE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @fbsd_thread_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbsd_thread_resume(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %13, align 8
  %15 = load i32, i32* @fbsd_thread_active, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @child_ops, i32 0, i32 0), align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 %18(i32 %19, i32 %20, i32 %21)
  br label %166

23:                                               ; preds = %3
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @GET_PID(i32 %24)
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %9, align 4
  br label %34

32:                                               ; preds = %27, %23
  store i32 1, i32* %10, align 4
  %33 = load i32, i32* @inferior_ptid, align 4
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @GET_LWP(i32 %35)
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %76

39:                                               ; preds = %34
  %40 = load i32, i32* @thread_agent, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @GET_THREAD(i32 %41)
  %43 = call i32 @td_ta_map_id2thr_p(i32 %40, i32 %42, i32* %7)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @thread_db_err_str(i32 %47)
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 (i8*, ...) @error(i8* %50)
  br label %52

52:                                               ; preds = %46, %39
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @td_thr_sstep_p(i32* %7, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @thread_db_err_str(i32 %58)
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 (i8*, ...) @error(i8* %61)
  br label %63

63:                                               ; preds = %57, %52
  %64 = call i32 @td_thr_get_info_p(i32* %7, %struct.TYPE_5__* %8)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @thread_db_err_str(i32 %68)
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 (i8*, ...) @error(i8* %71)
  br label %73

73:                                               ; preds = %67, %63
  store i64 1, i64* %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %12, align 8
  br label %76

76:                                               ; preds = %73, %34
  %77 = load i64, i64* %12, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %76
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @PT_SETSTEP, align 4
  br label %86

84:                                               ; preds = %79
  %85 = load i32, i32* @PT_CLEARSTEP, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i64, i64* %12, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @target_signal_to_host(i32 %90)
  %92 = call i32 @ptrace(i32 %88, i64 %89, i32 1, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = call i32 @perror_with_name(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %86
  br label %97

97:                                               ; preds = %96, %76
  %98 = load i32, i32* @last_single_step_thread, align 4
  %99 = load i32, i32* @null_ptid, align 4
  %100 = call i32 @ptid_equal(i32 %98, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %118, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* @thread_agent, align 4
  %104 = load i32, i32* @resume_thread_callback, align 4
  %105 = load i32, i32* @TD_THR_ANY_STATE, align 4
  %106 = load i32, i32* @TD_THR_LOWEST_PRIORITY, align 4
  %107 = load i32, i32* @TD_SIGNO_MASK, align 4
  %108 = load i32, i32* @TD_THR_ANY_USER_FLAGS, align 4
  %109 = call i32 @td_ta_thr_iter_p(i32 %103, i32 %104, i32* null, i32 %105, i32 %106, i32 %107, i32 %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @TD_OK, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %102
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @thread_db_err_str(i32 %114)
  %116 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %113, %102
  br label %118

118:                                              ; preds = %117, %97
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %138, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* @thread_agent, align 4
  %123 = load i32, i32* @suspend_thread_callback, align 4
  %124 = load i32, i32* @TD_THR_ANY_STATE, align 4
  %125 = load i32, i32* @TD_THR_LOWEST_PRIORITY, align 4
  %126 = load i32, i32* @TD_SIGNO_MASK, align 4
  %127 = load i32, i32* @TD_THR_ANY_USER_FLAGS, align 4
  %128 = call i32 @td_ta_thr_iter_p(i32 %122, i32 %123, i32* null, i32 %124, i32 %125, i32 %126, i32 %127)
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* @TD_OK, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %121
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @thread_db_err_str(i32 %133)
  %135 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %132, %121
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* @last_single_step_thread, align 4
  br label %140

138:                                              ; preds = %118
  %139 = load i32, i32* @null_ptid, align 4
  store i32 %139, i32* @last_single_step_thread, align 4
  br label %140

140:                                              ; preds = %138, %136
  %141 = load i64, i64* %13, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %140
  %144 = call i32 @td_thr_dbresume_p(i32* %7)
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* @TD_OK, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load i32, i32* %11, align 4
  %150 = call i32 @thread_db_err_str(i32 %149)
  %151 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %148, %143
  br label %157

153:                                              ; preds = %140
  %154 = load i32, i32* @PT_RESUME, align 4
  %155 = load i64, i64* %12, align 8
  %156 = call i32 @ptrace(i32 %154, i64 %155, i32 0, i32 0)
  store i32 %156, i32* %11, align 4
  br label %157

157:                                              ; preds = %153, %152
  %158 = load i32, i32* @PT_CONTINUE, align 4
  %159 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @proc_handle, i32 0, i32 0), align 8
  %160 = load i32, i32* %6, align 4
  %161 = call i32 @target_signal_to_host(i32 %160)
  %162 = call i32 @ptrace(i32 %158, i64 %159, i32 1, i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %157
  %165 = call i32 @perror_with_name(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %166

166:                                              ; preds = %17, %164, %157
  ret void
}

declare dso_local i32 @GET_PID(i32) #1

declare dso_local i64 @GET_LWP(i32) #1

declare dso_local i32 @td_ta_map_id2thr_p(i32, i32, i32*) #1

declare dso_local i32 @GET_THREAD(i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @thread_db_err_str(i32) #1

declare dso_local i32 @td_thr_sstep_p(i32*, i32) #1

declare dso_local i32 @td_thr_get_info_p(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @ptrace(i32, i64, i32, i32) #1

declare dso_local i32 @target_signal_to_host(i32) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i32 @ptid_equal(i32, i32) #1

declare dso_local i32 @td_ta_thr_iter_p(i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @td_thr_dbresume_p(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/gdbserver/extr_fbsd-low.c_fbsd_resume_one_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/gdbserver/extr_fbsd-low.c_fbsd_resume_one_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { i32 }
%struct.TYPE_2__ = type { i64 (...)* }
%struct.inferior_list_entry = type { i32 }
%struct.process_info = type { i64, i64, i32, i32, %struct.pending_signals*, i64, i64 }
%struct.pending_signals = type { i32, %struct.pending_signals* }

@current_inferior = common dso_local global %struct.thread_info* null, align 8
@debug_threads = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Resuming process %d (%s, signal %d, stop %s)\0A\00", align 1
@inferior_pid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"expected\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"not expected\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"  pending reinsert at %08lx\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"BAD - reinserting but not stepping.\0A\00", align 1
@the_low_target = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@errno = common dso_local global i64 0, align 8
@PT_STEP = common dso_local global i32 0, align 4
@PT_CONTINUE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"ptrace\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inferior_list_entry*, i32, i32)* @fbsd_resume_one_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbsd_resume_one_process(%struct.inferior_list_entry* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inferior_list_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.process_info*, align 8
  %8 = alloca %struct.thread_info*, align 8
  %9 = alloca %struct.pending_signals*, align 8
  %10 = alloca %struct.pending_signals**, align 8
  store %struct.inferior_list_entry* %0, %struct.inferior_list_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %4, align 8
  %12 = bitcast %struct.inferior_list_entry* %11 to %struct.process_info*
  store %struct.process_info* %12, %struct.process_info** %7, align 8
  %13 = load %struct.process_info*, %struct.process_info** %7, align 8
  %14 = getelementptr inbounds %struct.process_info, %struct.process_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %174

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %18
  %22 = load %struct.process_info*, %struct.process_info** %7, align 8
  %23 = getelementptr inbounds %struct.process_info, %struct.process_info* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = load %struct.process_info*, %struct.process_info** %7, align 8
  %28 = getelementptr inbounds %struct.process_info, %struct.process_info* %27, i32 0, i32 4
  %29 = load %struct.pending_signals*, %struct.pending_signals** %28, align 8
  %30 = icmp ne %struct.pending_signals* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.process_info*, %struct.process_info** %7, align 8
  %33 = getelementptr inbounds %struct.process_info, %struct.process_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %31, %26, %21
  %37 = call %struct.pending_signals* @malloc(i32 16)
  store %struct.pending_signals* %37, %struct.pending_signals** %9, align 8
  %38 = load %struct.process_info*, %struct.process_info** %7, align 8
  %39 = getelementptr inbounds %struct.process_info, %struct.process_info* %38, i32 0, i32 4
  %40 = load %struct.pending_signals*, %struct.pending_signals** %39, align 8
  %41 = load %struct.pending_signals*, %struct.pending_signals** %9, align 8
  %42 = getelementptr inbounds %struct.pending_signals, %struct.pending_signals* %41, i32 0, i32 1
  store %struct.pending_signals* %40, %struct.pending_signals** %42, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.pending_signals*, %struct.pending_signals** %9, align 8
  %45 = getelementptr inbounds %struct.pending_signals, %struct.pending_signals* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.pending_signals*, %struct.pending_signals** %9, align 8
  %47 = load %struct.process_info*, %struct.process_info** %7, align 8
  %48 = getelementptr inbounds %struct.process_info, %struct.process_info* %47, i32 0, i32 4
  store %struct.pending_signals* %46, %struct.pending_signals** %48, align 8
  br label %49

49:                                               ; preds = %36, %31, %18
  %50 = load %struct.process_info*, %struct.process_info** %7, align 8
  %51 = getelementptr inbounds %struct.process_info, %struct.process_info* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.process_info*, %struct.process_info** %7, align 8
  %56 = call i32 @check_removed_breakpoint(%struct.process_info* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  br label %174

59:                                               ; preds = %54, %49
  %60 = load %struct.thread_info*, %struct.thread_info** @current_inferior, align 8
  store %struct.thread_info* %60, %struct.thread_info** %8, align 8
  %61 = load %struct.process_info*, %struct.process_info** %7, align 8
  %62 = call %struct.thread_info* @get_process_thread(%struct.process_info* %61)
  store %struct.thread_info* %62, %struct.thread_info** @current_inferior, align 8
  %63 = load i64, i64* @debug_threads, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %59
  %66 = load i32, i32* @stderr, align 4
  %67 = load i32, i32* @inferior_pid, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.process_info*, %struct.process_info** %7, align 8
  %74 = getelementptr inbounds %struct.process_info, %struct.process_info* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %67, i8* %71, i32 %72, i8* %78)
  br label %80

80:                                               ; preds = %65, %59
  %81 = load %struct.process_info*, %struct.process_info** %7, align 8
  %82 = getelementptr inbounds %struct.process_info, %struct.process_info* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %80
  %86 = load i64, i64* @debug_threads, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i32, i32* @stderr, align 4
  %90 = load %struct.process_info*, %struct.process_info** %7, align 8
  %91 = getelementptr inbounds %struct.process_info, %struct.process_info* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 (i32, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 %92)
  br label %94

94:                                               ; preds = %88, %85
  %95 = load i32, i32* %5, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* @stderr, align 4
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %98, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %94
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %100, %80
  %102 = load %struct.process_info*, %struct.process_info** %7, align 8
  %103 = call i32 @check_removed_breakpoint(%struct.process_info* %102)
  %104 = load i64, i64* @debug_threads, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load i64 (...)*, i64 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @the_low_target, i32 0, i32 0), align 8
  %108 = icmp ne i64 (...)* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load i32, i32* @stderr, align 4
  %111 = call i32 (i32, i8*, ...) @fprintf(i32 %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %112 = load i64 (...)*, i64 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @the_low_target, i32 0, i32 0), align 8
  %113 = call i64 (...) %112()
  br label %114

114:                                              ; preds = %109, %106, %101
  %115 = load %struct.process_info*, %struct.process_info** %7, align 8
  %116 = getelementptr inbounds %struct.process_info, %struct.process_info* %115, i32 0, i32 4
  %117 = load %struct.pending_signals*, %struct.pending_signals** %116, align 8
  %118 = icmp ne %struct.pending_signals* %117, null
  br i1 %118, label %119, label %146

119:                                              ; preds = %114
  %120 = load %struct.process_info*, %struct.process_info** %7, align 8
  %121 = getelementptr inbounds %struct.process_info, %struct.process_info* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %146

124:                                              ; preds = %119
  %125 = load %struct.process_info*, %struct.process_info** %7, align 8
  %126 = getelementptr inbounds %struct.process_info, %struct.process_info* %125, i32 0, i32 4
  store %struct.pending_signals** %126, %struct.pending_signals*** %10, align 8
  br label %127

127:                                              ; preds = %133, %124
  %128 = load %struct.pending_signals**, %struct.pending_signals*** %10, align 8
  %129 = load %struct.pending_signals*, %struct.pending_signals** %128, align 8
  %130 = getelementptr inbounds %struct.pending_signals, %struct.pending_signals* %129, i32 0, i32 1
  %131 = load %struct.pending_signals*, %struct.pending_signals** %130, align 8
  %132 = icmp ne %struct.pending_signals* %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = load %struct.pending_signals**, %struct.pending_signals*** %10, align 8
  %135 = load %struct.pending_signals*, %struct.pending_signals** %134, align 8
  %136 = getelementptr inbounds %struct.pending_signals, %struct.pending_signals* %135, i32 0, i32 1
  store %struct.pending_signals** %136, %struct.pending_signals*** %10, align 8
  br label %127

137:                                              ; preds = %127
  %138 = load %struct.pending_signals**, %struct.pending_signals*** %10, align 8
  %139 = load %struct.pending_signals*, %struct.pending_signals** %138, align 8
  %140 = getelementptr inbounds %struct.pending_signals, %struct.pending_signals* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  store i32 %141, i32* %6, align 4
  %142 = load %struct.pending_signals**, %struct.pending_signals*** %10, align 8
  %143 = load %struct.pending_signals*, %struct.pending_signals** %142, align 8
  %144 = call i32 @free(%struct.pending_signals* %143)
  %145 = load %struct.pending_signals**, %struct.pending_signals*** %10, align 8
  store %struct.pending_signals* null, %struct.pending_signals** %145, align 8
  br label %146

146:                                              ; preds = %137, %119, %114
  %147 = load %struct.process_info*, %struct.process_info** %7, align 8
  %148 = call %struct.thread_info* @get_process_thread(%struct.process_info* %147)
  %149 = bitcast %struct.thread_info* %148 to %struct.inferior_list_entry*
  %150 = call i32 @regcache_invalidate_one(%struct.inferior_list_entry* %149)
  store i64 0, i64* @errno, align 8
  %151 = load %struct.process_info*, %struct.process_info** %7, align 8
  %152 = getelementptr inbounds %struct.process_info, %struct.process_info* %151, i32 0, i32 0
  store i64 0, i64* %152, align 8
  %153 = load i32, i32* %5, align 4
  %154 = load %struct.process_info*, %struct.process_info** %7, align 8
  %155 = getelementptr inbounds %struct.process_info, %struct.process_info* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 8
  %156 = load i32, i32* %5, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %146
  %159 = load i32, i32* @PT_STEP, align 4
  br label %162

160:                                              ; preds = %146
  %161 = load i32, i32* @PT_CONTINUE, align 4
  br label %162

162:                                              ; preds = %160, %158
  %163 = phi i32 [ %159, %158 ], [ %161, %160 ]
  %164 = load %struct.process_info*, %struct.process_info** %7, align 8
  %165 = getelementptr inbounds %struct.process_info, %struct.process_info* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %6, align 4
  %168 = call i32 @ptrace(i32 %163, i32 %166, i32 1, i32 %167)
  %169 = load %struct.thread_info*, %struct.thread_info** %8, align 8
  store %struct.thread_info* %169, %struct.thread_info** @current_inferior, align 8
  %170 = load i64, i64* @errno, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %162
  %173 = call i32 @perror_with_name(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %174

174:                                              ; preds = %17, %58, %172, %162
  ret void
}

declare dso_local %struct.pending_signals* @malloc(i32) #1

declare dso_local i32 @check_removed_breakpoint(%struct.process_info*) #1

declare dso_local %struct.thread_info* @get_process_thread(%struct.process_info*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @free(%struct.pending_signals*) #1

declare dso_local i32 @regcache_invalidate_one(%struct.inferior_list_entry*) #1

declare dso_local i32 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @perror_with_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

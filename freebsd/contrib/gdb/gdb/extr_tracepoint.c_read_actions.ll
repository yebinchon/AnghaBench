; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_tracepoint.c_read_actions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_tracepoint.c_read_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracepoint = type { %struct.action_line* }
%struct.action_line = type { i8*, %struct.action_line* }
%struct.cleanup = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"  > \00", align 1
@immediate_quit = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@gdb_stdout = common dso_local global i32 0, align 4
@gdb_stderr = common dso_local global i32 0, align 4
@instream = external dso_local global i32*, align 8
@stdin = common dso_local global i32* null, align 8
@BADLINE = common dso_local global i32 0, align 4
@STEPPING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Already processing 'while-stepping'\00", align 1
@END = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@STOP_SIGNAL = common dso_local global i32 0, align 4
@event_loop_p = common dso_local global i64 0, align 8
@handle_stop_sig = common dso_local global i32 0, align 4
@job_control = common dso_local global i64 0, align 8
@stop_sig = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tracepoint*)* @read_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_actions(%struct.tracepoint* %0) #0 {
  %2 = alloca %struct.tracepoint*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.action_line*, align 8
  %9 = alloca %struct.action_line*, align 8
  %10 = alloca %struct.cleanup*, align 8
  store %struct.tracepoint* %0, %struct.tracepoint** %2, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %6, align 8
  store %struct.action_line* null, %struct.action_line** %8, align 8
  %12 = load i32, i32* @immediate_quit, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @immediate_quit, align 4
  %14 = load %struct.tracepoint*, %struct.tracepoint** %2, align 8
  %15 = call %struct.cleanup* @make_cleanup_free_actions(%struct.tracepoint* %14)
  store %struct.cleanup* %15, %struct.cleanup** %10, align 8
  br label %16

16:                                               ; preds = %1, %59, %86, %114
  %17 = call i32 @wrap_here(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i32, i32* @gdb_stdout, align 4
  %19 = call i32 @gdb_flush(i32 %18)
  %20 = load i32, i32* @gdb_stderr, align 4
  %21 = call i32 @gdb_flush(i32 %20)
  br i1 true, label %22, label %28

22:                                               ; preds = %16
  %23 = load i32*, i32** @instream, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i8*, i8** %6, align 8
  %27 = call i8* @readline_hook(i8* %26)
  store i8* %27, i8** %3, align 8
  br label %53

28:                                               ; preds = %22, %16
  %29 = load i32*, i32** @instream, align 8
  %30 = load i32*, i32** @stdin, align 8
  %31 = icmp eq i32* %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %28
  %33 = load i32*, i32** @instream, align 8
  %34 = call i64 @ISATTY(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load i8*, i8** %6, align 8
  %38 = call i8* @gdb_readline_wrapper(i8* %37)
  store i8* %38, i8** %3, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load i8*, i8** %3, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @add_history(i8* %47)
  br label %49

49:                                               ; preds = %46, %41, %36
  br label %52

50:                                               ; preds = %32, %28
  %51 = call i8* @gdb_readline(i32 0)
  store i8* %51, i8** %3, align 8
  br label %52

52:                                               ; preds = %50, %49
  br label %53

53:                                               ; preds = %52, %25
  %54 = load %struct.tracepoint*, %struct.tracepoint** %2, align 8
  %55 = call i32 @validate_actionline(i8** %3, %struct.tracepoint* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @BADLINE, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %16

60:                                               ; preds = %53
  %61 = call %struct.action_line* @xmalloc(i32 16)
  store %struct.action_line* %61, %struct.action_line** %9, align 8
  %62 = load %struct.action_line*, %struct.action_line** %9, align 8
  %63 = getelementptr inbounds %struct.action_line, %struct.action_line* %62, i32 0, i32 1
  store %struct.action_line* null, %struct.action_line** %63, align 8
  %64 = load i8*, i8** %3, align 8
  %65 = load %struct.action_line*, %struct.action_line** %9, align 8
  %66 = getelementptr inbounds %struct.action_line, %struct.action_line* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.action_line*, %struct.action_line** %8, align 8
  %68 = icmp eq %struct.action_line* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %60
  %70 = load %struct.action_line*, %struct.action_line** %9, align 8
  store %struct.action_line* %70, %struct.action_line** %8, align 8
  %71 = load %struct.tracepoint*, %struct.tracepoint** %2, align 8
  %72 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %71, i32 0, i32 0
  store %struct.action_line* %70, %struct.action_line** %72, align 8
  br label %78

73:                                               ; preds = %60
  %74 = load %struct.action_line*, %struct.action_line** %9, align 8
  %75 = load %struct.action_line*, %struct.action_line** %8, align 8
  %76 = getelementptr inbounds %struct.action_line, %struct.action_line* %75, i32 0, i32 1
  store %struct.action_line* %74, %struct.action_line** %76, align 8
  %77 = load %struct.action_line*, %struct.action_line** %9, align 8
  store %struct.action_line* %77, %struct.action_line** %8, align 8
  br label %78

78:                                               ; preds = %73, %69
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @STEPPING, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load i8*, i8** %6, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = icmp eq i8* %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = call i32 @warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %16

88:                                               ; preds = %82
  %89 = load i8*, i8** %5, align 8
  store i8* %89, i8** %6, align 8
  br label %90

90:                                               ; preds = %88
  br label %114

91:                                               ; preds = %78
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @END, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %113

95:                                               ; preds = %91
  %96 = load i8*, i8** %6, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = icmp eq i8* %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i8*, i8** %4, align 8
  store i8* %100, i8** %6, align 8
  br label %112

101:                                              ; preds = %95
  %102 = load %struct.tracepoint*, %struct.tracepoint** %2, align 8
  %103 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %102, i32 0, i32 0
  %104 = load %struct.action_line*, %struct.action_line** %103, align 8
  %105 = getelementptr inbounds %struct.action_line, %struct.action_line* %104, i32 0, i32 1
  %106 = load %struct.action_line*, %struct.action_line** %105, align 8
  %107 = icmp eq %struct.action_line* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load %struct.tracepoint*, %struct.tracepoint** %2, align 8
  %110 = call i32 @free_actions(%struct.tracepoint* %109)
  br label %111

111:                                              ; preds = %108, %101
  br label %115

112:                                              ; preds = %99
  br label %113

113:                                              ; preds = %112, %91
  br label %114

114:                                              ; preds = %113, %90
  br label %16

115:                                              ; preds = %111
  %116 = load i32, i32* @immediate_quit, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* @immediate_quit, align 4
  %118 = load %struct.cleanup*, %struct.cleanup** %10, align 8
  %119 = call i32 @discard_cleanups(%struct.cleanup* %118)
  ret void
}

declare dso_local %struct.cleanup* @make_cleanup_free_actions(%struct.tracepoint*) #1

declare dso_local i32 @wrap_here(i8*) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i8* @readline_hook(i8*) #1

declare dso_local i64 @ISATTY(i32*) #1

declare dso_local i8* @gdb_readline_wrapper(i8*) #1

declare dso_local i32 @add_history(i8*) #1

declare dso_local i8* @gdb_readline(i32) #1

declare dso_local i32 @validate_actionline(i8**, %struct.tracepoint*) #1

declare dso_local %struct.action_line* @xmalloc(i32) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @free_actions(%struct.tracepoint*) #1

declare dso_local i32 @discard_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

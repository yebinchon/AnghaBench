; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_auditd.c_auditd_handle_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_auditd.c_auditd_handle_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64 }
%struct.timezone = type { i32 }

@auditd_handle_trigger.last_trigger = internal global i32 0, align 4
@auditd_handle_trigger.last_warning = internal global i32 0, align 4
@auditd_handle_trigger.last_time = internal global i32 0, align 4
@DUPLICATE_INTERVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Suppressing duplicate trigger %d\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Got low space trigger\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Error swapping audit file\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Got no space trigger\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Got open new trigger from %s\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@AUD_STATE_ENABLED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"Got read file trigger\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Error setting audit controls\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Got close and die trigger\00", align 1
@launchd_flag = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"auditd exiting.\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Got audit initialize trigger\00", align 1
@AUD_STATE_DISABLED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [32 x i8] c"Got audit expire trails trigger\00", align 1
@audit_warn_expired = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [27 x i8] c"auditd_expire_trails(): %s\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"Got unknown trigger %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @auditd_handle_trigger(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timeval, align 8
  %4 = alloca %struct.timezone, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %7, align 4
  %8 = call i64 @gettimeofday(%struct.timeval* %3, %struct.timezone* %4)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %41

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %2, align 4
  switch i32 %14, label %38 [
    i32 132, label %15
    i32 131, label %15
    i32 129, label %37
    i32 128, label %37
    i32 130, label %37
    i32 135, label %37
    i32 133, label %37
  ]

15:                                               ; preds = %10, %10
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @auditd_handle_trigger.last_trigger, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @auditd_handle_trigger.last_time, align 4
  %22 = load i32, i32* @DUPLICATE_INTERVAL, align 4
  %23 = add nsw i32 %21, %22
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @auditd_handle_trigger.last_warning, align 4
  %28 = load i32, i32* @DUPLICATE_INTERVAL, align 4
  %29 = add nsw i32 %27, %28
  %30 = icmp sge i32 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* %2, align 4
  %33 = call i32 (i8*, ...) @auditd_log_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %31, %25
  br label %128

35:                                               ; preds = %19, %15
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* @auditd_handle_trigger.last_warning, align 4
  br label %38

37:                                               ; preds = %10, %10, %10, %10, %10
  br label %38

38:                                               ; preds = %10, %37, %35
  %39 = load i32, i32* %2, align 4
  store i32 %39, i32* @auditd_handle_trigger.last_trigger, align 4
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* @auditd_handle_trigger.last_time, align 4
  br label %41

41:                                               ; preds = %38, %1
  %42 = call i32 (...) @auditd_get_state()
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %2, align 4
  switch i32 %43, label %125 [
    i32 132, label %44
    i32 131, label %51
    i32 129, label %58
    i32 128, label %58
    i32 130, label %73
    i32 135, label %91
    i32 133, label %106
    i32 134, label %114
  ]

44:                                               ; preds = %41
  %45 = call i32 @auditd_log_notice(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %46 = call i32 (...) @do_trail_file()
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 (i8*, ...) @auditd_log_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %44
  br label %128

51:                                               ; preds = %41
  %52 = call i32 @auditd_log_notice(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %53 = call i32 (...) @do_trail_file()
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 (i8*, ...) @auditd_log_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %51
  br label %128

58:                                               ; preds = %41, %41
  %59 = load i32, i32* %2, align 4
  %60 = icmp eq i32 %59, 129
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %63 = call i32 (i8*, ...) @auditd_log_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @AUD_STATE_ENABLED, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %58
  %68 = call i32 (...) @do_trail_file()
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 (i8*, ...) @auditd_log_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %67, %58
  br label %128

73:                                               ; preds = %41
  %74 = call i32 (i8*, ...) @auditd_log_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @AUD_STATE_ENABLED, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %73
  %79 = call i32 (...) @auditd_config_controls()
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = call i32 (i8*, ...) @auditd_log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %89

83:                                               ; preds = %78
  %84 = call i32 (...) @do_trail_file()
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 (i8*, ...) @auditd_log_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %83
  br label %89

89:                                               ; preds = %88, %81
  br label %90

90:                                               ; preds = %89, %73
  br label %128

91:                                               ; preds = %41
  %92 = call i32 (i8*, ...) @auditd_log_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @AUD_STATE_ENABLED, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = call i32 (...) @close_all()
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %96, %91
  %99 = load i32, i32* @launchd_flag, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = call i32 (i8*, ...) @auditd_log_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @exit(i32 %103) #3
  unreachable

105:                                              ; preds = %98
  br label %128

106:                                              ; preds = %41
  %107 = call i32 (i8*, ...) @auditd_log_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @AUD_STATE_DISABLED, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = call i32 (...) @audit_setup()
  br label %113

113:                                              ; preds = %111, %106
  br label %128

114:                                              ; preds = %41
  %115 = call i32 (i8*, ...) @auditd_log_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  %116 = load i32, i32* @audit_warn_expired, align 4
  %117 = call i32 @auditd_expire_trails(i32 %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @auditd_strerror(i32 %121)
  %123 = call i32 (i8*, ...) @auditd_log_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %120, %114
  br label %128

125:                                              ; preds = %41
  %126 = load i32, i32* %2, align 4
  %127 = call i32 (i8*, ...) @auditd_log_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %34, %125, %124, %113, %105, %90, %72, %57, %50
  ret void
}

declare dso_local i64 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

declare dso_local i32 @auditd_log_info(i8*, ...) #1

declare dso_local i32 @auditd_get_state(...) #1

declare dso_local i32 @auditd_log_notice(i8*) #1

declare dso_local i32 @do_trail_file(...) #1

declare dso_local i32 @auditd_log_err(i8*, ...) #1

declare dso_local i32 @auditd_config_controls(...) #1

declare dso_local i32 @close_all(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @audit_setup(...) #1

declare dso_local i32 @auditd_expire_trails(i32) #1

declare dso_local i32 @auditd_strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

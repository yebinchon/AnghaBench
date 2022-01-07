; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_auditd.c_auditd_config_controls.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_auditd.c_auditd_config_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"auditd_set_evcmap() failed: %m\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"No events to class mappings registered.\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Registered %d event to class mappings.\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"auditd_set_namask() %s: %m\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Registered non-attributable event mask.\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"auditd_set_policy() %s: %m\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Set audit policy in kernel.\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"audit_set_fsize() %s: %m\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Set audit trail size in kernel.\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"audit_set_qsize() %s: %m\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Set audit trail queue in kernel.\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"auditd_set_minfree() %s: %m\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"Set audit trail min free percent in kernel.\00", align 1
@ADE_PARSE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [46 x i8] c"audit_control(5) may be missing 'host:' field\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"auditd_set_host() %s: %m\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"Set audit host address information in kernel.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auditd_config_controls() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = call i32 (...) @auditd_set_evcmap()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 (i8*, ...) @auditd_log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %18

9:                                                ; preds = %0
  %10 = load i32, i32* %1, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = call i32 (i8*, ...) @auditd_log_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %17

14:                                               ; preds = %9
  %15 = load i32, i32* %1, align 4
  %16 = call i32 (i8*, ...) @auditd_log_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %14, %12
  br label %18

18:                                               ; preds = %17, %7
  %19 = call i32 (...) @auditd_set_namask()
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @auditd_strerror(i32 %23)
  %25 = call i32 (i8*, ...) @auditd_log_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %24)
  store i32 -1, i32* %3, align 4
  br label %28

26:                                               ; preds = %18
  %27 = call i32 (i8*, ...) @auditd_log_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %22
  %29 = call i32 (...) @auditd_set_policy()
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @auditd_strerror(i32 %33)
  %35 = call i32 (i8*, ...) @auditd_log_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %34)
  store i32 -1, i32* %3, align 4
  br label %38

36:                                               ; preds = %28
  %37 = call i32 (i8*, ...) @auditd_log_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %32
  %39 = call i32 (...) @auditd_set_fsize()
  store i32 %39, i32* %2, align 4
  %40 = load i32, i32* %2, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @auditd_strerror(i32 %43)
  %45 = call i32 (i8*, ...) @auditd_log_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %44)
  store i32 -1, i32* %3, align 4
  br label %48

46:                                               ; preds = %38
  %47 = call i32 (i8*, ...) @auditd_log_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %42
  %49 = call i32 (...) @auditd_set_qsize()
  store i32 %49, i32* %2, align 4
  %50 = load i32, i32* %2, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @auditd_strerror(i32 %53)
  %55 = call i32 (i8*, ...) @auditd_log_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %54)
  store i32 -1, i32* %3, align 4
  br label %58

56:                                               ; preds = %48
  %57 = call i32 (i8*, ...) @auditd_log_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %52
  %59 = call i32 (...) @auditd_set_minfree()
  store i32 %59, i32* %2, align 4
  %60 = load i32, i32* %2, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @auditd_strerror(i32 %63)
  %65 = call i32 (i8*, ...) @auditd_log_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %64)
  store i32 -1, i32* %3, align 4
  br label %68

66:                                               ; preds = %58
  %67 = call i32 (i8*, ...) @auditd_log_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %62
  %69 = call i32 (...) @auditd_set_host()
  store i32 %69, i32* %2, align 4
  %70 = load i32, i32* %2, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = load i32, i32* %2, align 4
  %74 = load i32, i32* @ADE_PARSE, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 @auditd_log_notice(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0))
  br label %82

78:                                               ; preds = %72
  %79 = load i32, i32* %2, align 4
  %80 = call i32 @auditd_strerror(i32 %79)
  %81 = call i32 (i8*, ...) @auditd_log_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 %80)
  store i32 -1, i32* %3, align 4
  br label %82

82:                                               ; preds = %78, %76
  br label %85

83:                                               ; preds = %68
  %84 = call i32 (i8*, ...) @auditd_log_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %82
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @auditd_set_evcmap(...) #1

declare dso_local i32 @auditd_log_err(i8*, ...) #1

declare dso_local i32 @auditd_log_debug(i8*, ...) #1

declare dso_local i32 @auditd_set_namask(...) #1

declare dso_local i32 @auditd_strerror(i32) #1

declare dso_local i32 @auditd_set_policy(...) #1

declare dso_local i32 @auditd_set_fsize(...) #1

declare dso_local i32 @auditd_set_qsize(...) #1

declare dso_local i32 @auditd_set_minfree(...) #1

declare dso_local i32 @auditd_set_host(...) #1

declare dso_local i32 @auditd_log_notice(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

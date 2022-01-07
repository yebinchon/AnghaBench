; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_auditd.c_audit_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_auditd.c_audit_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"auditd_set_dist() %s: %m\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Configured trail files distribution.\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Error creating audit trail file\00", align 1
@AUE_audit_startup = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"auditd_gen_record(AUE_audit_startup) %s: %m\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Audit controls init successful\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Audit controls init failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @audit_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_setup() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @auditd_set_dist()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @auditd_strerror(i32 %6)
  %8 = call i32 (i8*, ...) @auditd_log_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %7)
  br label %11

9:                                                ; preds = %0
  %10 = call i32 @auditd_log_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %5
  %12 = call i32 (...) @do_trail_file()
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = call i32 (i8*, ...) @auditd_log_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %16 = call i32 (...) @fail_exit()
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i32, i32* @AUE_audit_startup, align 4
  %19 = call i32 @auditd_gen_record(i32 %18, i32* null)
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @auditd_strerror(i32 %23)
  %25 = call i32 (i8*, ...) @auditd_log_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22, %17
  %27 = call i64 (...) @auditd_config_controls()
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 @auditd_log_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %33

31:                                               ; preds = %26
  %32 = call i32 (i8*, ...) @auditd_log_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %29
  ret void
}

declare dso_local i32 @auditd_set_dist(...) #1

declare dso_local i32 @auditd_log_err(i8*, ...) #1

declare dso_local i32 @auditd_strerror(i32) #1

declare dso_local i32 @auditd_log_debug(i8*) #1

declare dso_local i32 @do_trail_file(...) #1

declare dso_local i32 @fail_exit(...) #1

declare dso_local i32 @auditd_gen_record(i32, i32*) #1

declare dso_local i64 @auditd_config_controls(...) #1

declare dso_local i32 @auditd_log_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

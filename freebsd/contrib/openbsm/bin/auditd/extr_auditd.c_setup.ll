; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_auditd.c_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_auditd.c_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@launchd_flag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Error opening trigger messaging mechanism\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"auditd_prevent_audit() %s: %m\00", align 1
@AUD_STATE_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @launchd_flag, align 4
  %3 = call i64 @auditd_open_trigger(i32 %2)
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = call i32 (i8*, ...) @auditd_log_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 (...) @fail_exit()
  br label %8

8:                                                ; preds = %5, %0
  %9 = call i32 (...) @auditd_prevent_audit()
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @auditd_strerror(i32 %13)
  %15 = call i32 (i8*, ...) @auditd_log_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = call i32 (...) @fail_exit()
  br label %17

17:                                               ; preds = %12, %8
  %18 = load i32, i32* @AUD_STATE_INIT, align 4
  %19 = call i32 @auditd_set_state(i32 %18)
  %20 = load i32, i32* @launchd_flag, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = call i32 (...) @audit_setup()
  br label %24

24:                                               ; preds = %22, %17
  ret void
}

declare dso_local i64 @auditd_open_trigger(i32) #1

declare dso_local i32 @auditd_log_err(i8*, ...) #1

declare dso_local i32 @fail_exit(...) #1

declare dso_local i32 @auditd_prevent_audit(...) #1

declare dso_local i32 @auditd_strerror(i32) #1

declare dso_local i32 @auditd_set_state(i32) #1

declare dso_local i32 @audit_setup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

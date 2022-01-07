; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_auditd_fbsd.c_init_audit_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_auditd_fbsd.c_init_audit_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Audit status check failed (%s)\00", align 1
@AUD_STATE_DISABLED = common dso_local global i32 0, align 4
@auditing_state = common dso_local global i32 0, align 4
@AUC_NOAUDIT = common dso_local global i32 0, align 4
@AUC_DISABLED = common dso_local global i32 0, align 4
@AUD_STATE_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_audit_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_audit_state() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @audit_get_cond(i32* %1)
  %3 = icmp slt i64 %2, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %0
  %5 = load i64, i64* @errno, align 8
  %6 = load i64, i64* @ENOSYS, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = load i64, i64* @errno, align 8
  %10 = call i32 @strerror(i64 %9)
  %11 = call i32 @auditd_log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %8, %4
  %13 = load i32, i32* @AUD_STATE_DISABLED, align 4
  store i32 %13, i32* @auditing_state, align 4
  br label %27

14:                                               ; preds = %0
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @AUC_NOAUDIT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @AUC_DISABLED, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %14
  %23 = load i32, i32* @AUD_STATE_DISABLED, align 4
  store i32 %23, i32* @auditing_state, align 4
  br label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @AUD_STATE_ENABLED, align 4
  store i32 %25, i32* @auditing_state, align 4
  br label %26

26:                                               ; preds = %24, %22
  br label %27

27:                                               ; preds = %26, %12
  ret void
}

declare dso_local i64 @audit_get_cond(i32*) #1

declare dso_local i32 @auditd_log_err(i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

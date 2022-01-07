; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_auditd.c_do_trail_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_auditd.c_do_trail_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@audit_warn_soft = common dso_local global i32 0, align 4
@audit_warn_hard = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"auditd_read_dirs(): %s\00", align 1
@ADE_HARDLIM = common dso_local global i32 0, align 4
@ADE_SOFTLIM = common dso_local global i32 0, align 4
@audit_warn_expired = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"auditd_expire_trails(): %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @do_trail_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_trail_file() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @audit_warn_soft, align 4
  %4 = load i32, i32* @audit_warn_hard, align 4
  %5 = call i32 @auditd_read_dirs(i32 %3, i32 %4)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @auditd_strerror(i32 %9)
  %11 = call i32 @auditd_log_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @ADE_HARDLIM, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = call i32 (...) @audit_warn_allhard()
  br label %17

17:                                               ; preds = %15, %8
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @ADE_SOFTLIM, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 -1, i32* %1, align 4
  br label %39

22:                                               ; preds = %17
  %23 = call i32 (...) @audit_warn_allsoft()
  br label %24

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24, %0
  %26 = call i32 (...) @swap_audit_file()
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 -1, i32* %1, align 4
  br label %39

29:                                               ; preds = %25
  %30 = load i32, i32* @audit_warn_expired, align 4
  %31 = call i32 @auditd_expire_trails(i32 %30)
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @auditd_strerror(i32 %35)
  %37 = call i32 @auditd_log_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %29
  store i32 0, i32* %1, align 4
  br label %39

39:                                               ; preds = %38, %28, %21
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i32 @auditd_read_dirs(i32, i32) #1

declare dso_local i32 @auditd_log_err(i8*, i32) #1

declare dso_local i32 @auditd_strerror(i32) #1

declare dso_local i32 @audit_warn_allhard(...) #1

declare dso_local i32 @audit_warn_allsoft(...) #1

declare dso_local i32 @swap_audit_file(...) #1

declare dso_local i32 @auditd_expire_trails(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

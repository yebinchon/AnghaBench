; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_auditd.c_close_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_auditd.c_close_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIMESTAMP_LEN = common dso_local global i32 0, align 4
@AUE_audit_shutdown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"auditd_gen_record(AUE_audit_shutdown) %s: %m\00", align 1
@AUC_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Disabling audit failed! : %s\00", align 1
@errno = common dso_local global i32 0, align 4
@AUD_STATE_DISABLED = common dso_local global i32 0, align 4
@lastfile = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Could not unregister\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Finished\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @close_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @close_all() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = load i32, i32* @TIMESTAMP_LEN, align 4
  %8 = add nsw i32 %7, 1
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %2, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %3, align 8
  %12 = load i32, i32* @AUE_audit_shutdown, align 4
  %13 = call i32 @auditd_gen_record(i32 %12, i32* null)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %0
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @auditd_strerror(i32 %17)
  %19 = call i32 (i8*, ...) @auditd_log_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %16, %0
  %21 = load i32, i32* @AUC_DISABLED, align 4
  store i32 %21, i32* %5, align 4
  %22 = call i32 @audit_set_cond(i32* %5)
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* %1, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @errno, align 4
  %27 = call i32 @strerror(i32 %26)
  %28 = call i32 (i8*, ...) @auditd_log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store i32 1, i32* %1, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32, i32* @AUD_STATE_DISABLED, align 4
  %31 = call i32 @auditd_set_state(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = trunc i64 %9 to i32
  %34 = call i64 @getTSstr(i32 %32, i8* %11, i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = call i32 @close_lastfile(i8* %11)
  br label %38

38:                                               ; preds = %36, %29
  %39 = load i32*, i32** @lastfile, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32*, i32** @lastfile, align 8
  %43 = call i32 @free(i32* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = call i64 (...) @close_misc()
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* %1, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = call i32 (i8*, ...) @auditd_log_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %54 = call i32 (...) @audit_warn_postsigterm()
  br label %55

55:                                               ; preds = %52, %44
  %56 = call i32 @auditd_log_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* %1, align 4
  %58 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %58)
  ret i32 %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @auditd_gen_record(i32, i32*) #2

declare dso_local i32 @auditd_log_err(i8*, ...) #2

declare dso_local i32 @auditd_strerror(i32) #2

declare dso_local i32 @audit_set_cond(i32*) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @auditd_set_state(i32) #2

declare dso_local i64 @getTSstr(i32, i8*, i32) #2

declare dso_local i32 @close_lastfile(i8*) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i64 @close_misc(...) #2

declare dso_local i32 @audit_warn_postsigterm(...) #2

declare dso_local i32 @auditd_log_info(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

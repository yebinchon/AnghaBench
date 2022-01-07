; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_auditd.c_swap_audit_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_auditd.c_swap_audit_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIMESTAMP_LEN = common dso_local global i32 0, align 4
@lastfile = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"Not ready to terminate trail file yet.\00", align 1
@audit_review_gid = common dso_local global i32 0, align 4
@audit_warn_getacdir = common dso_local global i32 0, align 4
@ADE_NOERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %m\00", align 1
@ADE_ACTL = common dso_local global i32 0, align 4
@AUD_STATE_ENABLED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"auditd_new_curlink(\22%s\22) failed: %s: %m\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"New audit file is %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @swap_audit_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swap_audit_file() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @TIMESTAMP_LEN, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = trunc i64 %11 to i32
  %16 = call i64 @getTSstr(i32 %14, i8* %13, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %81

19:                                               ; preds = %0
  %20 = load i8*, i8** @lastfile, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i8* null, i8** %4, align 8
  br label %32

23:                                               ; preds = %19
  %24 = load i8*, i8** @lastfile, align 8
  %25 = call i8* @strrchr(i8* %24, i8 signext 47)
  store i8* %25, i8** %4, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %4, align 8
  br label %31

31:                                               ; preds = %28, %23
  br label %32

32:                                               ; preds = %31, %22
  %33 = load i8*, i8** %4, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* @TIMESTAMP_LEN, align 4
  %38 = call i64 @strncmp(i8* %36, i8* %13, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @auditd_log_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %81

42:                                               ; preds = %35, %32
  %43 = load i32, i32* @audit_review_gid, align 4
  %44 = load i32, i32* @audit_warn_getacdir, align 4
  %45 = call i32 @auditd_swap_trail(i8* %13, i8** %3, i32 %43, i32 %44)
  store i32 %45, i32* %2, align 4
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @ADE_NOERR, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @auditd_strerror(i32 %50)
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 (i8*, i8*, ...) @auditd_log_err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @ADE_ACTL, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %81

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %42
  %61 = call i64 (...) @auditd_get_state()
  %62 = load i64, i64* @AUD_STATE_ENABLED, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call i32 @close_lastfile(i8* %13)
  br label %66

66:                                               ; preds = %64, %60
  %67 = load i64, i64* @AUD_STATE_ENABLED, align 8
  %68 = call i32 @auditd_set_state(i64 %67)
  %69 = load i8*, i8** %3, align 8
  %70 = call i64 @auditd_new_curlink(i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load i8*, i8** %3, align 8
  %74 = load i32, i32* %2, align 4
  %75 = call i32 @auditd_strerror(i32 %74)
  %76 = call i32 (i8*, i8*, ...) @auditd_log_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %73, i32 %75)
  br label %77

77:                                               ; preds = %72, %66
  %78 = load i8*, i8** %3, align 8
  store i8* %78, i8** @lastfile, align 8
  %79 = load i8*, i8** %3, align 8
  %80 = call i32 @auditd_log_notice(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %79)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %81

81:                                               ; preds = %77, %58, %40, %18
  %82 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %1, align 4
  ret i32 %83
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @getTSstr(i32, i8*, i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @auditd_log_debug(i8*) #2

declare dso_local i32 @auditd_swap_trail(i8*, i8**, i32, i32) #2

declare dso_local i32 @auditd_log_err(i8*, i8*, ...) #2

declare dso_local i32 @auditd_strerror(i32) #2

declare dso_local i64 @auditd_get_state(...) #2

declare dso_local i32 @close_lastfile(i8*) #2

declare dso_local i32 @auditd_set_state(i64) #2

declare dso_local i64 @auditd_new_curlink(i8*) #2

declare dso_local i32 @auditd_log_notice(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

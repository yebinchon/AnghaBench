; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libauditd/extr_auditd_lib.c_audit_quick_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libauditd/extr_auditd_lib.c_audit_quick_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@TIMESTAMP_LEN = common dso_local global i32 0, align 4
@AUC_NOAUDIT = common dso_local global i32 0, align 4
@AUE_audit_shutdown = common dso_local global i32 0, align 4
@AUC_DISABLED = common dso_local global i32 0, align 4
@AUDIT_CURRENT_LINK = common dso_local global i32 0, align 4
@NOT_TERMINATED = common dso_local global i32 0, align 4
@POSTFIX_LEN = common dso_local global i32 0, align 4
@__BSM_INTERNAL_NOTIFY_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audit_quick_stop() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = load i32, i32* @MAXPATHLEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @MAXPATHLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %18 = load i32, i32* @TIMESTAMP_LEN, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %22 = call i64 @audit_get_cond(i32* %3)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %73

25:                                               ; preds = %0
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @AUC_NOAUDIT, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %73

30:                                               ; preds = %25
  %31 = load i32, i32* @AUE_audit_shutdown, align 4
  %32 = call i32 @auditd_gen_record(i32 %31, i32* null)
  %33 = load i32, i32* @AUC_DISABLED, align 4
  store i32 %33, i32* %3, align 4
  %34 = call i64 @audit_set_cond(i32* %3)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %73

37:                                               ; preds = %30
  %38 = load i32, i32* @AUDIT_CURRENT_LINK, align 4
  %39 = sub i64 %12, 1
  %40 = trunc i64 %39 to i32
  %41 = call i32 @readlink(i32 %38, i8* %14, i32 %40)
  store i32 %41, i32* %2, align 4
  %42 = load i32, i32* %2, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %73

45:                                               ; preds = %37
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %2, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %14, i64 %48
  store i8 0, i8* %49, align 1
  %50 = load i32, i32* %5, align 4
  %51 = trunc i64 %20 to i32
  %52 = call i64 @getTSstr(i32 %50, i8* %21, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %73

55:                                               ; preds = %45
  %56 = trunc i64 %16 to i32
  %57 = call i32 @strlcpy(i8* %17, i8* %14, i32 %56)
  %58 = load i32, i32* @NOT_TERMINATED, align 4
  %59 = call i8* @strstr(i8* %17, i32 %58)
  store i8* %59, i8** %4, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = load i8*, i8** %4, align 8
  %63 = load i32, i32* @POSTFIX_LEN, align 4
  %64 = call i32 @memcpy(i8* %62, i8* %21, i32 %63)
  %65 = call i64 @auditd_rename(i8* %14, i8* %17)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %73

68:                                               ; preds = %61
  br label %70

69:                                               ; preds = %55
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %73

70:                                               ; preds = %68
  %71 = load i32, i32* @AUDIT_CURRENT_LINK, align 4
  %72 = call i32 @unlink(i32 %71)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %73

73:                                               ; preds = %70, %69, %67, %54, %44, %36, %29, %24
  %74 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %1, align 4
  ret i32 %75
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @audit_get_cond(i32*) #2

declare dso_local i32 @auditd_gen_record(i32, i32*) #2

declare dso_local i64 @audit_set_cond(i32*) #2

declare dso_local i32 @readlink(i32, i8*, i32) #2

declare dso_local i64 @getTSstr(i32, i8*, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @strstr(i8*, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i64 @auditd_rename(i8*, i8*) #2

declare dso_local i32 @unlink(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

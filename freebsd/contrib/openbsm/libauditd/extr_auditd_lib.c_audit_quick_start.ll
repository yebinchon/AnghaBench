; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libauditd/extr_auditd_lib.c_audit_quick_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libauditd/extr_auditd_lib.c_audit_quick_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIMESTAMP_LEN = common dso_local global i32 0, align 4
@ADE_NOERR = common dso_local global i32 0, align 4
@ADE_SOFTLIM = common dso_local global i32 0, align 4
@ADE_ACTL = common dso_local global i32 0, align 4
@AUE_audit_startup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audit_quick_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* null, i8** %3, align 8
  %9 = load i32, i32* @TIMESTAMP_LEN, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %14 = call i64 (...) @auditd_prevent_audit()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %70

17:                                               ; preds = %0
  %18 = call i32 @auditd_read_dirs(i32* null, i32* null)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @ADE_NOERR, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @ADE_SOFTLIM, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %70

27:                                               ; preds = %22, %17
  %28 = call i32 (...) @auditd_set_dist()
  %29 = load i32, i32* %4, align 4
  %30 = trunc i64 %11 to i32
  %31 = call i64 @getTSstr(i32 %29, i8* %13, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %70

34:                                               ; preds = %27
  %35 = call i32 (...) @getgid()
  %36 = call i32 @auditd_swap_trail(i8* %13, i8** %3, i32 %35, i32* null)
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @ADE_NOERR, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @ADE_ACTL, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 -1, i32* %7, align 4
  br label %62

45:                                               ; preds = %40, %34
  %46 = load i8*, i8** %3, align 8
  %47 = call i64 @auditd_new_curlink(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 -1, i32* %7, align 4
  br label %62

50:                                               ; preds = %45
  %51 = load i32, i32* @AUE_audit_startup, align 4
  %52 = call i64 @auditd_gen_record(i32 %51, i32* null)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 -1, i32* %7, align 4
  br label %62

55:                                               ; preds = %50
  %56 = call i32 (...) @auditd_set_evcmap()
  %57 = call i32 (...) @auditd_set_namask()
  %58 = call i32 (...) @auditd_set_policy()
  %59 = call i32 (...) @auditd_set_fsize()
  %60 = call i32 (...) @auditd_set_minfree()
  %61 = call i32 (...) @auditd_set_host()
  br label %62

62:                                               ; preds = %55, %54, %49, %44
  %63 = load i8*, i8** %3, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 @free(i8* %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %70

70:                                               ; preds = %68, %33, %26, %16
  %71 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %1, align 4
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @auditd_prevent_audit(...) #2

declare dso_local i32 @auditd_read_dirs(i32*, i32*) #2

declare dso_local i32 @auditd_set_dist(...) #2

declare dso_local i64 @getTSstr(i32, i8*, i32) #2

declare dso_local i32 @auditd_swap_trail(i8*, i8**, i32, i32*) #2

declare dso_local i32 @getgid(...) #2

declare dso_local i64 @auditd_new_curlink(i8*) #2

declare dso_local i64 @auditd_gen_record(i32, i32*) #2

declare dso_local i32 @auditd_set_evcmap(...) #2

declare dso_local i32 @auditd_set_namask(...) #2

declare dso_local i32 @auditd_set_policy(...) #2

declare dso_local i32 @auditd_set_fsize(...) #2

declare dso_local i32 @auditd_set_minfree(...) #2

declare dso_local i32 @auditd_set_host(...) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

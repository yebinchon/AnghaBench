; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libauditd/extr_auditd_lib.c_auditd_set_policy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libauditd/extr_auditd_lib.c_auditd_set_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POL_STR_SIZE = common dso_local global i32 0, align 4
@AUDIT_CNT = common dso_local global i32 0, align 4
@ADE_AUDITON = common dso_local global i32 0, align 4
@ADE_PARSE = common dso_local global i32 0, align 4
@ADE_NOERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auditd_set_policy() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @POL_STR_SIZE, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load i32, i32* @POL_STR_SIZE, align 4
  %11 = call i64 @getacpol(i8* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %0
  %14 = call i64 @au_strtopol(i8* %9, i32* %2)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %13, %0
  %17 = load i32, i32* @AUDIT_CNT, align 4
  store i32 %17, i32* %2, align 4
  %18 = call i64 @audit_set_policy(i32* %2)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @ADE_AUDITON, align 4
  store i32 %21, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %31

22:                                               ; preds = %16
  %23 = load i32, i32* @ADE_PARSE, align 4
  store i32 %23, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %31

24:                                               ; preds = %13
  %25 = call i64 @audit_set_policy(i32* %2)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @ADE_AUDITON, align 4
  store i32 %28, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @ADE_NOERR, align 4
  store i32 %30, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %27, %22, %20
  %32 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %32)
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @getacpol(i8*, i32) #2

declare dso_local i64 @au_strtopol(i8*, i32*) #2

declare dso_local i64 @audit_set_policy(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

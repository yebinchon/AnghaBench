; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libauditd/extr_auditd_lib.c_auditd_set_namask.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libauditd/extr_auditd_lib.c_auditd_set_namask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NA_EVENT_STR_SIZE = common dso_local global i32 0, align 4
@ADE_PARSE = common dso_local global i32 0, align 4
@ADE_AUDITON = common dso_local global i32 0, align 4
@ADE_NOERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auditd_set_namask() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @NA_EVENT_STR_SIZE, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load i32, i32* @NA_EVENT_STR_SIZE, align 4
  %11 = call i64 @getacna(i8* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %0
  %14 = call i64 @getauditflagsbin(i8* %9, i32* %2)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %0
  %17 = load i32, i32* @ADE_PARSE, align 4
  store i32 %17, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %25

18:                                               ; preds = %13
  %19 = call i64 @audit_set_kmask(i32* %2, i32 4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @ADE_AUDITON, align 4
  store i32 %22, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @ADE_NOERR, align 4
  store i32 %24, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %25

25:                                               ; preds = %23, %21, %16
  %26 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %26)
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @getacna(i8*, i32) #2

declare dso_local i64 @getauditflagsbin(i8*, i32*) #2

declare dso_local i64 @audit_set_kmask(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

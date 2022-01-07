; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_acl.c_check_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_acl.c_check_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KADM5_PRIV_GET = common dso_local global i32 0, align 4
@KADM5_AUTH_GET = common dso_local global i32 0, align 4
@KADM5_PRIV_ADD = common dso_local global i32 0, align 4
@KADM5_AUTH_ADD = common dso_local global i32 0, align 4
@KADM5_PRIV_MODIFY = common dso_local global i32 0, align 4
@KADM5_AUTH_MODIFY = common dso_local global i32 0, align 4
@KADM5_PRIV_DELETE = common dso_local global i32 0, align 4
@KADM5_AUTH_DELETE = common dso_local global i32 0, align 4
@KADM5_PRIV_CPW = common dso_local global i32 0, align 4
@KADM5_AUTH_CHANGEPW = common dso_local global i32 0, align 4
@KADM5_PRIV_LIST = common dso_local global i32 0, align 4
@KADM5_AUTH_LIST = common dso_local global i32 0, align 4
@KADM5_AUTH_INSUFFICIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @check_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_flags(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @KADM5_PRIV_GET, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @KADM5_AUTH_GET, align 4
  store i32 %16, i32* %3, align 4
  br label %58

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @KADM5_PRIV_ADD, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @KADM5_AUTH_ADD, align 4
  store i32 %23, i32* %3, align 4
  br label %58

24:                                               ; preds = %17
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @KADM5_PRIV_MODIFY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @KADM5_AUTH_MODIFY, align 4
  store i32 %30, i32* %3, align 4
  br label %58

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @KADM5_PRIV_DELETE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @KADM5_AUTH_DELETE, align 4
  store i32 %37, i32* %3, align 4
  br label %58

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @KADM5_PRIV_CPW, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @KADM5_AUTH_CHANGEPW, align 4
  store i32 %44, i32* %3, align 4
  br label %58

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @KADM5_PRIV_LIST, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @KADM5_AUTH_LIST, align 4
  store i32 %51, i32* %3, align 4
  br label %58

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @KADM5_AUTH_INSUFFICIENT, align 4
  store i32 %56, i32* %3, align 4
  br label %58

57:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %55, %50, %43, %36, %29, %22, %15
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

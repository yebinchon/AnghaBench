; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/acl/extr_acl_common.c_ace_mask_to_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/acl/extr_acl_common.c_ace_mask_to_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACE_READ_DATA = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@ACE_WRITE_DATA = common dso_local global i32 0, align 4
@ACE_APPEND_DATA = common dso_local global i32 0, align 4
@ACE_DELETE_CHILD = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@ACE_EXECUTE = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64)* @ace_mask_to_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ace_mask_to_mode(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @ACE_READ_DATA, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @S_IROTH, align 4
  %17 = load i32, i32* %8, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %15, %3
  %20 = load i32, i32* @ACE_WRITE_DATA, align 4
  %21 = load i32, i32* @ACE_APPEND_DATA, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* @ACE_DELETE_CHILD, align 4
  %27 = load i32, i32* %10, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %25, %19
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %10, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @ENOTSUP, align 4
  store i32 %40, i32* %7, align 4
  br label %57

41:                                               ; preds = %35
  %42 = load i32, i32* @S_IWOTH, align 4
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %41, %29
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @ACE_EXECUTE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @S_IXOTH, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %50, %45
  %55 = load i32, i32* %8, align 4
  %56 = load i32*, i32** %5, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %39
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

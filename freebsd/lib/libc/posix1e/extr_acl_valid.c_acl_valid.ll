; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_valid.c_acl_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_valid.c_acl_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ACL_BRAND_POSIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acl_valid(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  store i32 %8, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %26

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @ACL_BRAND_POSIX, align 4
  %12 = call i32 @_acl_brand_may_be(i32* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %26

16:                                               ; preds = %9
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @_posix1e_acl_sort(i32* %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @_posix1e_acl_check(i32* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %26

25:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %23, %14, %7
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @_acl_brand_may_be(i32*, i32) #1

declare dso_local i32 @_posix1e_acl_sort(i32*) #1

declare dso_local i32 @_posix1e_acl_check(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

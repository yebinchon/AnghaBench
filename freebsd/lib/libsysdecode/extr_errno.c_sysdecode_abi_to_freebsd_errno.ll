; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsysdecode/extr_errno.c_sysdecode_abi_to_freebsd_errno.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsysdecode/extr_errno.c_sysdecode_abi_to_freebsd_errno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@linux_errtbl = common dso_local global i32* null, align 8
@cloudabi_errno_table = common dso_local global i32* null, align 8
@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysdecode_abi_to_freebsd_errno(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %46 [
    i32 131, label %8
    i32 130, label %8
    i32 129, label %10
    i32 128, label %10
    i32 133, label %31
    i32 132, label %31
  ]

8:                                                ; preds = %2, %2
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %3, align 4
  br label %49

10:                                               ; preds = %2, %2
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %27, %10
  %12 = load i32, i32* %6, align 4
  %13 = load i32*, i32** @linux_errtbl, align 8
  %14 = call i32 @nitems(i32* %13)
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = load i32*, i32** @linux_errtbl, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %17, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %49

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %6, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %11

30:                                               ; preds = %11
  br label %47

31:                                               ; preds = %2, %2
  %32 = load i32, i32* %5, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = load i32*, i32** @cloudabi_errno_table, align 8
  %37 = call i32 @nitems(i32* %36)
  %38 = icmp ult i32 %35, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32*, i32** @cloudabi_errno_table, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %3, align 4
  br label %49

45:                                               ; preds = %34, %31
  br label %47

46:                                               ; preds = %2
  br label %47

47:                                               ; preds = %46, %45, %30
  %48 = load i32, i32* @INT_MAX, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %39, %24, %8
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @nitems(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

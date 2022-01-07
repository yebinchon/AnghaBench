; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsysdecode/extr_errno.c_sysdecode_freebsd_to_abi_errno.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsysdecode/extr_errno.c_sysdecode_freebsd_to_abi_errno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ELAST = common dso_local global i32 0, align 4
@linux_errtbl = common dso_local global i32* null, align 8
@cloudabi_errno_table = common dso_local global i32* null, align 8
@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysdecode_freebsd_to_abi_errno(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %45 [
    i32 131, label %8
    i32 130, label %8
    i32 129, label %10
    i32 128, label %10
    i32 133, label %24
    i32 132, label %24
  ]

8:                                                ; preds = %2, %2
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %3, align 4
  br label %48

10:                                               ; preds = %2, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @ELAST, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i32*, i32** @linux_errtbl, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %3, align 4
  br label %48

23:                                               ; preds = %13, %10
  br label %46

24:                                               ; preds = %2, %2
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %41, %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** @cloudabi_errno_table, align 8
  %28 = call i32 @nitems(i32* %27)
  %29 = icmp ult i32 %26, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = load i32*, i32** @cloudabi_errno_table, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %31, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %48

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %25

44:                                               ; preds = %25
  br label %46

45:                                               ; preds = %2
  br label %46

46:                                               ; preds = %45, %44, %23
  %47 = load i32, i32* @INT_MAX, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %38, %17, %8
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @nitems(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

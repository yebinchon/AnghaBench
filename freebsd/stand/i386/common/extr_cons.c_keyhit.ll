; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/common/extr_cons.c_keyhit.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/common/extr_cons.c_keyhit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RBX_NOINTR = common dso_local global i32 0, align 4
@SECOND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @keyhit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @RBX_NOINTR, align 4
  %8 = call i64 @OPT_CHECK(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

11:                                               ; preds = %1
  %12 = load i32, i32* @SECOND, align 4
  %13 = load i32, i32* %3, align 4
  %14 = mul i32 %13, %12
  store i32 %14, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %46, %11
  %16 = call i32 @xgetc(i32 1)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 256
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %47

23:                                               ; preds = %19, %15
  %24 = load i32, i32* %3, align 4
  %25 = icmp ugt i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %23
  %27 = call i64 @PTOV(i32 1132)
  %28 = inttoptr i64 %27 to i32*
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %26
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %3, align 4
  %42 = add i32 %40, %41
  %43 = icmp uge i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %34
  store i32 0, i32* %2, align 4
  br label %47

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %23
  br label %15

47:                                               ; preds = %44, %22, %10
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @OPT_CHECK(i32) #1

declare dso_local i32 @xgetc(i32) #1

declare dso_local i64 @PTOV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

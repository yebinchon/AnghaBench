; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lparser.c_getbinopr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lparser.c_getbinopr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPR_ADD = common dso_local global i32 0, align 4
@OPR_SUB = common dso_local global i32 0, align 4
@OPR_MUL = common dso_local global i32 0, align 4
@OPR_MOD = common dso_local global i32 0, align 4
@OPR_POW = common dso_local global i32 0, align 4
@OPR_DIV = common dso_local global i32 0, align 4
@OPR_IDIV = common dso_local global i32 0, align 4
@OPR_BAND = common dso_local global i32 0, align 4
@OPR_BOR = common dso_local global i32 0, align 4
@OPR_BXOR = common dso_local global i32 0, align 4
@OPR_SHL = common dso_local global i32 0, align 4
@OPR_SHR = common dso_local global i32 0, align 4
@OPR_CONCAT = common dso_local global i32 0, align 4
@OPR_NE = common dso_local global i32 0, align 4
@OPR_EQ = common dso_local global i32 0, align 4
@OPR_LT = common dso_local global i32 0, align 4
@OPR_LE = common dso_local global i32 0, align 4
@OPR_GT = common dso_local global i32 0, align 4
@OPR_GE = common dso_local global i32 0, align 4
@OPR_AND = common dso_local global i32 0, align 4
@OPR_OR = common dso_local global i32 0, align 4
@OPR_NOBINOPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @getbinopr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getbinopr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %47 [
    i32 43, label %5
    i32 45, label %7
    i32 42, label %9
    i32 37, label %11
    i32 94, label %13
    i32 47, label %15
    i32 133, label %17
    i32 38, label %19
    i32 124, label %21
    i32 126, label %23
    i32 129, label %25
    i32 128, label %27
    i32 136, label %29
    i32 131, label %31
    i32 135, label %33
    i32 60, label %35
    i32 132, label %37
    i32 62, label %39
    i32 134, label %41
    i32 137, label %43
    i32 130, label %45
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @OPR_ADD, align 4
  store i32 %6, i32* %2, align 4
  br label %49

7:                                                ; preds = %1
  %8 = load i32, i32* @OPR_SUB, align 4
  store i32 %8, i32* %2, align 4
  br label %49

9:                                                ; preds = %1
  %10 = load i32, i32* @OPR_MUL, align 4
  store i32 %10, i32* %2, align 4
  br label %49

11:                                               ; preds = %1
  %12 = load i32, i32* @OPR_MOD, align 4
  store i32 %12, i32* %2, align 4
  br label %49

13:                                               ; preds = %1
  %14 = load i32, i32* @OPR_POW, align 4
  store i32 %14, i32* %2, align 4
  br label %49

15:                                               ; preds = %1
  %16 = load i32, i32* @OPR_DIV, align 4
  store i32 %16, i32* %2, align 4
  br label %49

17:                                               ; preds = %1
  %18 = load i32, i32* @OPR_IDIV, align 4
  store i32 %18, i32* %2, align 4
  br label %49

19:                                               ; preds = %1
  %20 = load i32, i32* @OPR_BAND, align 4
  store i32 %20, i32* %2, align 4
  br label %49

21:                                               ; preds = %1
  %22 = load i32, i32* @OPR_BOR, align 4
  store i32 %22, i32* %2, align 4
  br label %49

23:                                               ; preds = %1
  %24 = load i32, i32* @OPR_BXOR, align 4
  store i32 %24, i32* %2, align 4
  br label %49

25:                                               ; preds = %1
  %26 = load i32, i32* @OPR_SHL, align 4
  store i32 %26, i32* %2, align 4
  br label %49

27:                                               ; preds = %1
  %28 = load i32, i32* @OPR_SHR, align 4
  store i32 %28, i32* %2, align 4
  br label %49

29:                                               ; preds = %1
  %30 = load i32, i32* @OPR_CONCAT, align 4
  store i32 %30, i32* %2, align 4
  br label %49

31:                                               ; preds = %1
  %32 = load i32, i32* @OPR_NE, align 4
  store i32 %32, i32* %2, align 4
  br label %49

33:                                               ; preds = %1
  %34 = load i32, i32* @OPR_EQ, align 4
  store i32 %34, i32* %2, align 4
  br label %49

35:                                               ; preds = %1
  %36 = load i32, i32* @OPR_LT, align 4
  store i32 %36, i32* %2, align 4
  br label %49

37:                                               ; preds = %1
  %38 = load i32, i32* @OPR_LE, align 4
  store i32 %38, i32* %2, align 4
  br label %49

39:                                               ; preds = %1
  %40 = load i32, i32* @OPR_GT, align 4
  store i32 %40, i32* %2, align 4
  br label %49

41:                                               ; preds = %1
  %42 = load i32, i32* @OPR_GE, align 4
  store i32 %42, i32* %2, align 4
  br label %49

43:                                               ; preds = %1
  %44 = load i32, i32* @OPR_AND, align 4
  store i32 %44, i32* %2, align 4
  br label %49

45:                                               ; preds = %1
  %46 = load i32, i32* @OPR_OR, align 4
  store i32 %46, i32* %2, align 4
  br label %49

47:                                               ; preds = %1
  %48 = load i32, i32* @OPR_NOBINOPR, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

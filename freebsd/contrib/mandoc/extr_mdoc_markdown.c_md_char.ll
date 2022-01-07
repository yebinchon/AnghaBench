; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESC_FON = common dso_local global i32 0, align 4
@escflags = common dso_local global i32 0, align 4
@outcount = common dso_local global i32 0, align 4
@ESC_HYP = common dso_local global i32 0, align 4
@ESC_NUM = common dso_local global i32 0, align 4
@ESC_BOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @md_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @md_char(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = zext i8 %3 to i32
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = load i8, i8* %2, align 1
  %8 = call i32 @putchar(i8 zeroext %7)
  %9 = load i8, i8* %2, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %10, 42
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = load i32, i32* @ESC_FON, align 4
  %14 = load i32, i32* @escflags, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* @escflags, align 4
  br label %21

16:                                               ; preds = %6
  %17 = load i32, i32* @ESC_FON, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* @escflags, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* @escflags, align 4
  br label %21

21:                                               ; preds = %16, %12
  %22 = load i32, i32* @outcount, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @outcount, align 4
  br label %24

24:                                               ; preds = %21, %1
  %25 = load i8, i8* %2, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp ne i32 %26, 93
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32, i32* @ESC_HYP, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* @escflags, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* @escflags, align 4
  br label %33

33:                                               ; preds = %28, %24
  %34 = load i8, i8* %2, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 32
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = load i8, i8* %2, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, 9
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i8, i8* %2, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %43, 62
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %37, %33
  br label %70

46:                                               ; preds = %41
  %47 = load i8, i8* %2, align 1
  %48 = call i64 @isdigit(i8 zeroext %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i32, i32* @ESC_NUM, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* @escflags, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* @escflags, align 4
  br label %65

55:                                               ; preds = %46
  %56 = load i32, i32* @escflags, align 4
  %57 = load i32, i32* @ESC_BOL, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* @ESC_NUM, align 4
  %62 = load i32, i32* @escflags, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* @escflags, align 4
  br label %64

64:                                               ; preds = %60, %55
  br label %65

65:                                               ; preds = %64, %50
  %66 = load i32, i32* @ESC_BOL, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* @escflags, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* @escflags, align 4
  br label %70

70:                                               ; preds = %65, %45
  ret void
}

declare dso_local i32 @putchar(i8 zeroext) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

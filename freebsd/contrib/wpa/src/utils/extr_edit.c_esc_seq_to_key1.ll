; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_edit.c_esc_seq_to_key1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_edit.c_esc_seq_to_key1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EDIT_KEY_NONE = common dso_local global i32 0, align 4
@EDIT_KEY_INSERT = common dso_local global i32 0, align 4
@EDIT_KEY_DELETE = common dso_local global i32 0, align 4
@EDIT_KEY_PAGE_UP = common dso_local global i32 0, align 4
@EDIT_KEY_PAGE_DOWN = common dso_local global i32 0, align 4
@EDIT_KEY_F5 = common dso_local global i32 0, align 4
@EDIT_KEY_F6 = common dso_local global i32 0, align 4
@EDIT_KEY_F7 = common dso_local global i32 0, align 4
@EDIT_KEY_F8 = common dso_local global i32 0, align 4
@EDIT_KEY_F9 = common dso_local global i32 0, align 4
@EDIT_KEY_F10 = common dso_local global i32 0, align 4
@EDIT_KEY_F11 = common dso_local global i32 0, align 4
@EDIT_KEY_F12 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8)* @esc_seq_to_key1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esc_seq_to_key1(i32 %0, i32 %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i8, i8* %7, align 1
  %15 = call i32 @esc_seq_to_key1_no(i8 signext %14)
  store i32 %15, i32* %4, align 4
  br label %90

16:                                               ; preds = %10, %3
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i8, i8* %7, align 1
  %24 = call i32 @esc_seq_to_key1_shift(i8 signext %23)
  store i32 %24, i32* %4, align 4
  br label %90

25:                                               ; preds = %19, %16
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i8, i8* %7, align 1
  %33 = call i32 @esc_seq_to_key1_alt(i8 signext %32)
  store i32 %33, i32* %4, align 4
  br label %90

34:                                               ; preds = %28, %25
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i8, i8* %7, align 1
  %42 = call i32 @esc_seq_to_key1_alt_shift(i8 signext %41)
  store i32 %42, i32* %4, align 4
  br label %90

43:                                               ; preds = %37, %34
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 5
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i8, i8* %7, align 1
  %51 = call i32 @esc_seq_to_key1_ctrl(i8 signext %50)
  store i32 %51, i32* %4, align 4
  br label %90

52:                                               ; preds = %46, %43
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %88

55:                                               ; preds = %52
  %56 = load i8, i8* %7, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 126
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @EDIT_KEY_NONE, align 4
  store i32 %60, i32* %4, align 4
  br label %90

61:                                               ; preds = %55
  %62 = load i32, i32* %5, align 4
  switch i32 %62, label %87 [
    i32 2, label %63
    i32 3, label %65
    i32 5, label %67
    i32 6, label %69
    i32 15, label %71
    i32 17, label %73
    i32 18, label %75
    i32 19, label %77
    i32 20, label %79
    i32 21, label %81
    i32 23, label %83
    i32 24, label %85
  ]

63:                                               ; preds = %61
  %64 = load i32, i32* @EDIT_KEY_INSERT, align 4
  store i32 %64, i32* %4, align 4
  br label %90

65:                                               ; preds = %61
  %66 = load i32, i32* @EDIT_KEY_DELETE, align 4
  store i32 %66, i32* %4, align 4
  br label %90

67:                                               ; preds = %61
  %68 = load i32, i32* @EDIT_KEY_PAGE_UP, align 4
  store i32 %68, i32* %4, align 4
  br label %90

69:                                               ; preds = %61
  %70 = load i32, i32* @EDIT_KEY_PAGE_DOWN, align 4
  store i32 %70, i32* %4, align 4
  br label %90

71:                                               ; preds = %61
  %72 = load i32, i32* @EDIT_KEY_F5, align 4
  store i32 %72, i32* %4, align 4
  br label %90

73:                                               ; preds = %61
  %74 = load i32, i32* @EDIT_KEY_F6, align 4
  store i32 %74, i32* %4, align 4
  br label %90

75:                                               ; preds = %61
  %76 = load i32, i32* @EDIT_KEY_F7, align 4
  store i32 %76, i32* %4, align 4
  br label %90

77:                                               ; preds = %61
  %78 = load i32, i32* @EDIT_KEY_F8, align 4
  store i32 %78, i32* %4, align 4
  br label %90

79:                                               ; preds = %61
  %80 = load i32, i32* @EDIT_KEY_F9, align 4
  store i32 %80, i32* %4, align 4
  br label %90

81:                                               ; preds = %61
  %82 = load i32, i32* @EDIT_KEY_F10, align 4
  store i32 %82, i32* %4, align 4
  br label %90

83:                                               ; preds = %61
  %84 = load i32, i32* @EDIT_KEY_F11, align 4
  store i32 %84, i32* %4, align 4
  br label %90

85:                                               ; preds = %61
  %86 = load i32, i32* @EDIT_KEY_F12, align 4
  store i32 %86, i32* %4, align 4
  br label %90

87:                                               ; preds = %61
  br label %88

88:                                               ; preds = %87, %52
  %89 = load i32, i32* @EDIT_KEY_NONE, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %88, %85, %83, %81, %79, %77, %75, %73, %71, %69, %67, %65, %63, %59, %49, %40, %31, %22, %13
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @esc_seq_to_key1_no(i8 signext) #1

declare dso_local i32 @esc_seq_to_key1_shift(i8 signext) #1

declare dso_local i32 @esc_seq_to_key1_alt(i8 signext) #1

declare dso_local i32 @esc_seq_to_key1_alt_shift(i8 signext) #1

declare dso_local i32 @esc_seq_to_key1_ctrl(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

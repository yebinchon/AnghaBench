; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_GetCcExtractKeySize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_GetCcExtractKeySize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @GetCcExtractKeySize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GetCcExtractKeySize(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = load i32*, i32** %4, align 8
  store i32 1, i32* %11, align 4
  br label %92

12:                                               ; preds = %7, %2
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32*, i32** %4, align 8
  store i32 2, i32* %16, align 4
  br label %91

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = icmp sgt i32 %18, 2
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = icmp sle i32 %21, 4
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32*, i32** %4, align 8
  store i32 4, i32* %24, align 4
  br label %90

25:                                               ; preds = %20, %17
  %26 = load i32, i32* %3, align 4
  %27 = icmp sgt i32 %26, 4
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = icmp sle i32 %29, 8
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32*, i32** %4, align 8
  store i32 8, i32* %32, align 4
  br label %89

33:                                               ; preds = %28, %25
  %34 = load i32, i32* %3, align 4
  %35 = icmp sgt i32 %34, 8
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4
  %38 = icmp sle i32 %37, 16
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32*, i32** %4, align 8
  store i32 16, i32* %40, align 4
  br label %88

41:                                               ; preds = %36, %33
  %42 = load i32, i32* %3, align 4
  %43 = icmp sgt i32 %42, 16
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32, i32* %3, align 4
  %46 = icmp sle i32 %45, 24
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32*, i32** %4, align 8
  store i32 24, i32* %48, align 4
  br label %87

49:                                               ; preds = %44, %41
  %50 = load i32, i32* %3, align 4
  %51 = icmp sgt i32 %50, 24
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i32, i32* %3, align 4
  %54 = icmp sle i32 %53, 32
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32*, i32** %4, align 8
  store i32 32, i32* %56, align 4
  br label %86

57:                                               ; preds = %52, %49
  %58 = load i32, i32* %3, align 4
  %59 = icmp sgt i32 %58, 32
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i32, i32* %3, align 4
  %62 = icmp sle i32 %61, 40
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32*, i32** %4, align 8
  store i32 40, i32* %64, align 4
  br label %85

65:                                               ; preds = %60, %57
  %66 = load i32, i32* %3, align 4
  %67 = icmp sgt i32 %66, 40
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i32, i32* %3, align 4
  %70 = icmp sle i32 %69, 48
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32*, i32** %4, align 8
  store i32 48, i32* %72, align 4
  br label %84

73:                                               ; preds = %68, %65
  %74 = load i32, i32* %3, align 4
  %75 = icmp sgt i32 %74, 48
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i32, i32* %3, align 4
  %78 = icmp sle i32 %77, 56
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32*, i32** %4, align 8
  store i32 56, i32* %80, align 4
  br label %83

81:                                               ; preds = %76, %73
  %82 = load i32*, i32** %4, align 8
  store i32 0, i32* %82, align 4
  br label %83

83:                                               ; preds = %81, %79
  br label %84

84:                                               ; preds = %83, %71
  br label %85

85:                                               ; preds = %84, %63
  br label %86

86:                                               ; preds = %85, %55
  br label %87

87:                                               ; preds = %86, %47
  br label %88

88:                                               ; preds = %87, %39
  br label %89

89:                                               ; preds = %88, %31
  br label %90

90:                                               ; preds = %89, %23
  br label %91

91:                                               ; preds = %90, %15
  br label %92

92:                                               ; preds = %91, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

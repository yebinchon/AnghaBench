; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-helper-util.c_cvmx_helper_get_interface_num.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-helper-util.c_cvmx_helper_get_interface_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCTEON_FEATURE_PKND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"cvmx_helper_get_interface_num: Illegal IPD port number %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_helper_get_interface_num(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @OCTEON_FEATURE_PKND, align 4
  %5 = call i64 @octeon_has_feature(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %76

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp sge i32 %8, 2048
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 2304
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %114

14:                                               ; preds = %10, %7
  %15 = load i32, i32* %3, align 4
  %16 = icmp sge i32 %15, 2304
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 2560
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %114

21:                                               ; preds = %17, %14
  %22 = load i32, i32* %3, align 4
  %23 = icmp sge i32 %22, 2560
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 2816
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 2, i32* %2, align 4
  br label %114

28:                                               ; preds = %24, %21
  %29 = load i32, i32* %3, align 4
  %30 = icmp sge i32 %29, 2816
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, 3072
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 3, i32* %2, align 4
  br label %114

35:                                               ; preds = %31, %28
  %36 = load i32, i32* %3, align 4
  %37 = icmp sge i32 %36, 3072
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = icmp slt i32 %39, 3328
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 4, i32* %2, align 4
  br label %114

42:                                               ; preds = %38, %35
  %43 = load i32, i32* %3, align 4
  %44 = icmp sge i32 %43, 1024
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* %3, align 4
  %47 = icmp slt i32 %46, 1280
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 5, i32* %2, align 4
  br label %114

49:                                               ; preds = %45, %42
  %50 = load i32, i32* %3, align 4
  %51 = icmp sge i32 %50, 1280
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, i32* %3, align 4
  %54 = icmp slt i32 %53, 1536
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 6, i32* %2, align 4
  br label %114

56:                                               ; preds = %52, %49
  %57 = load i32, i32* %3, align 4
  %58 = icmp sge i32 %57, 256
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* %3, align 4
  %61 = icmp slt i32 %60, 288
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 7, i32* %2, align 4
  br label %114

63:                                               ; preds = %59, %56
  %64 = load i32, i32* %3, align 4
  %65 = icmp slt i32 %64, 8
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 8, i32* %2, align 4
  br label %114

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %72
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74
  br label %111

76:                                               ; preds = %1
  %77 = load i32, i32* %3, align 4
  %78 = icmp slt i32 %77, 16
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %114

80:                                               ; preds = %76
  %81 = load i32, i32* %3, align 4
  %82 = icmp slt i32 %81, 32
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 1, i32* %2, align 4
  br label %114

84:                                               ; preds = %80
  %85 = load i32, i32* %3, align 4
  %86 = icmp slt i32 %85, 36
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 2, i32* %2, align 4
  br label %114

88:                                               ; preds = %84
  %89 = load i32, i32* %3, align 4
  %90 = icmp slt i32 %89, 40
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 3, i32* %2, align 4
  br label %114

92:                                               ; preds = %88
  %93 = load i32, i32* %3, align 4
  %94 = icmp slt i32 %93, 42
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 4, i32* %2, align 4
  br label %114

96:                                               ; preds = %92
  %97 = load i32, i32* %3, align 4
  %98 = icmp slt i32 %97, 44
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 5, i32* %2, align 4
  br label %114

100:                                              ; preds = %96
  %101 = load i32, i32* %3, align 4
  %102 = icmp slt i32 %101, 46
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 6, i32* %2, align 4
  br label %114

104:                                              ; preds = %100
  br label %105

105:                                              ; preds = %104
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106
  br label %108

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108
  br label %110

110:                                              ; preds = %109
  br label %111

111:                                              ; preds = %110, %75
  %112 = load i32, i32* %3, align 4
  %113 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %112)
  store i32 -1, i32* %2, align 4
  br label %114

114:                                              ; preds = %111, %103, %99, %95, %91, %87, %83, %79, %66, %62, %55, %48, %41, %34, %27, %20, %13
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i64 @octeon_has_feature(i32) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

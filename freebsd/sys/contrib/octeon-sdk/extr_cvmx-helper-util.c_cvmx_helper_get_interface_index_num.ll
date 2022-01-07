; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-helper-util.c_cvmx_helper_get_interface_index_num.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-helper-util.c_cvmx_helper_get_interface_index_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCTEON_FEATURE_PKND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"cvmx_helper_get_interface_index_num: Illegal IPD port number %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"cvmx_helper_get_interface_index_num: Illegal IPD port number\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_helper_get_interface_index_num(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @OCTEON_FEATURE_PKND, align 4
  %6 = call i64 @octeon_has_feature(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %59

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp sge i32 %9, 2048
  br i1 %10, label %11, label %29

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 3328
  br i1 %13, label %14, label %29

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 255
  %17 = ashr i32 %16, 6
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = sub nsw i32 %21, 1
  br label %27

23:                                               ; preds = %14
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 255
  %26 = ashr i32 %25, 4
  br label %27

27:                                               ; preds = %23, %20
  %28 = phi i32 [ %22, %20 ], [ %26, %23 ]
  store i32 %28, i32* %2, align 4
  br label %89

29:                                               ; preds = %11, %8
  %30 = load i32, i32* %3, align 4
  %31 = icmp sge i32 %30, 1024
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 1536
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, 255
  store i32 %37, i32* %2, align 4
  br label %89

38:                                               ; preds = %32, %29
  %39 = load i32, i32* %3, align 4
  %40 = icmp sge i32 %39, 256
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = icmp slt i32 %42, 288
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %3, align 4
  %46 = and i32 %45, 255
  store i32 %46, i32* %2, align 4
  br label %89

47:                                               ; preds = %41, %38
  %48 = load i32, i32* %3, align 4
  %49 = icmp slt i32 %48, 8
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* %3, align 4
  store i32 %51, i32* %2, align 4
  br label %89

52:                                               ; preds = %47
  %53 = load i32, i32* %3, align 4
  %54 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %52
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %57
  store i32 -1, i32* %2, align 4
  br label %89

59:                                               ; preds = %1
  %60 = load i32, i32* %3, align 4
  %61 = icmp slt i32 %60, 32
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %3, align 4
  %64 = and i32 %63, 15
  store i32 %64, i32* %2, align 4
  br label %89

65:                                               ; preds = %59
  %66 = load i32, i32* %3, align 4
  %67 = icmp slt i32 %66, 40
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %3, align 4
  %70 = and i32 %69, 3
  store i32 %70, i32* %2, align 4
  br label %89

71:                                               ; preds = %65
  %72 = load i32, i32* %3, align 4
  %73 = icmp slt i32 %72, 44
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %3, align 4
  %76 = and i32 %75, 1
  store i32 %76, i32* %2, align 4
  br label %89

77:                                               ; preds = %71
  %78 = load i32, i32* %3, align 4
  %79 = icmp slt i32 %78, 46
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* %3, align 4
  %82 = and i32 %81, 1
  store i32 %82, i32* %2, align 4
  br label %89

83:                                               ; preds = %77
  %84 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86
  br label %88

88:                                               ; preds = %87
  store i32 -1, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %80, %74, %68, %62, %58, %50, %44, %35, %27
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i64 @octeon_has_feature(i32) #1

declare dso_local i32 @cvmx_dprintf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

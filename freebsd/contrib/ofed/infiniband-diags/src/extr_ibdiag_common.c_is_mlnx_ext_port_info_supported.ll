; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibdiag_common.c_is_mlnx_ext_port_info_supported.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibdiag_common.c_is_mlnx_ext_port_info_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ibd_ibnetdisc_flags = common dso_local global i32 0, align 4
@IBND_CONFIG_MLX_EPI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_mlnx_ext_port_info_supported(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @ibd_ibnetdisc_flags, align 4
  %7 = load i32, i32* @IBND_CONFIG_MLX_EPI, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %88

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp sge i32 %11, 51000
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = icmp sle i32 %14, 51003
  br i1 %15, label %40, label %16

16:                                               ; preds = %13, %10
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 52000
  br i1 %18, label %40, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 53000
  br i1 %21, label %40, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 4511
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 6914
  br i1 %27, label %40, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 6992
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 7072
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = icmp sge i32 %35, 7120
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = icmp sle i32 %38, 7125
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %31, %28, %25, %19, %16, %13
  store i32 1, i32* %3, align 4
  br label %89

41:                                               ; preds = %37, %34, %22
  %42 = load i32, i32* %5, align 4
  %43 = icmp sge i32 %42, 4099
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = icmp sle i32 %45, 4119
  br i1 %46, label %86, label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, 4511
  br i1 %49, label %50, label %87

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, 6963
  br i1 %52, label %86, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %5, align 4
  %55 = icmp eq i32 %54, 7027
  br i1 %55, label %86, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %5, align 4
  %58 = icmp eq i32 %57, 6976
  br i1 %58, label %86, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, 6977
  br i1 %61, label %86, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 %63, 7008
  br i1 %64, label %86, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %5, align 4
  %67 = icmp eq i32 %66, 7009
  br i1 %67, label %86, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 %69, 7043
  br i1 %70, label %86, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %5, align 4
  %73 = icmp eq i32 %72, 7059
  br i1 %73, label %86, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %5, align 4
  %76 = icmp eq i32 %75, 7060
  br i1 %76, label %86, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %5, align 4
  %79 = icmp eq i32 %78, 7092
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %5, align 4
  %82 = icmp eq i32 %81, 7093
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %5, align 4
  %85 = icmp eq i32 %84, 7108
  br i1 %85, label %86, label %87

86:                                               ; preds = %83, %80, %77, %74, %71, %68, %65, %62, %59, %56, %53, %50, %44
  store i32 1, i32* %3, align 4
  br label %89

87:                                               ; preds = %83, %47
  br label %88

88:                                               ; preds = %87, %2
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %86, %40
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

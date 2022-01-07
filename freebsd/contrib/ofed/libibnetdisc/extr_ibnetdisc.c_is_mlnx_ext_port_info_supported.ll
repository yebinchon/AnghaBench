; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_ibnetdisc.c_is_mlnx_ext_port_info_supported.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_ibnetdisc.c_is_mlnx_ext_port_info_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@IB_NODE_DEVID_F = common dso_local global i32 0, align 4
@IB_NODE_VENDORID_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @is_mlnx_ext_port_info_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_mlnx_ext_port_info_supported(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IB_NODE_DEVID_F, align 4
  %12 = call i32 @mad_get_field(i32 %10, i32 0, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IB_NODE_VENDORID_F, align 4
  %19 = call i32 @mad_get_field(i32 %17, i32 0, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp sge i32 %20, 51000
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = icmp sle i32 %23, 51003
  br i1 %24, label %49, label %25

25:                                               ; preds = %22, %1
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 52000
  br i1 %27, label %49, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 53000
  br i1 %30, label %49, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 4511
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 6914
  br i1 %36, label %49, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, 6992
  br i1 %39, label %49, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 7072
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = icmp sge i32 %44, 7120
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = icmp sle i32 %47, 7125
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %40, %37, %34, %28, %25, %22
  store i32 1, i32* %2, align 4
  br label %97

50:                                               ; preds = %46, %43, %31
  %51 = load i32, i32* %4, align 4
  %52 = icmp sge i32 %51, 4099
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %4, align 4
  %55 = icmp sle i32 %54, 4119
  br i1 %55, label %95, label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %5, align 4
  %58 = icmp eq i32 %57, 4511
  br i1 %58, label %59, label %96

59:                                               ; preds = %56
  %60 = load i32, i32* %4, align 4
  %61 = icmp eq i32 %60, 6963
  br i1 %61, label %95, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %4, align 4
  %64 = icmp eq i32 %63, 7027
  br i1 %64, label %95, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %4, align 4
  %67 = icmp eq i32 %66, 6976
  br i1 %67, label %95, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %4, align 4
  %70 = icmp eq i32 %69, 6977
  br i1 %70, label %95, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %4, align 4
  %73 = icmp eq i32 %72, 7008
  br i1 %73, label %95, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %4, align 4
  %76 = icmp eq i32 %75, 7009
  br i1 %76, label %95, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %4, align 4
  %79 = icmp eq i32 %78, 7043
  br i1 %79, label %95, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %4, align 4
  %82 = icmp eq i32 %81, 7059
  br i1 %82, label %95, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %4, align 4
  %85 = icmp eq i32 %84, 7060
  br i1 %85, label %95, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %4, align 4
  %88 = icmp eq i32 %87, 7092
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %4, align 4
  %91 = icmp eq i32 %90, 7093
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %4, align 4
  %94 = icmp eq i32 %93, 7108
  br i1 %94, label %95, label %96

95:                                               ; preds = %92, %89, %86, %83, %80, %77, %74, %71, %68, %65, %62, %59, %53
  store i32 1, i32* %2, align 4
  br label %97

96:                                               ; preds = %92, %56
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %95, %49
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @mad_get_field(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

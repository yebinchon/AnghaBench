; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_subnet.c_is_mlnx_ext_port_info_supported.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_subnet.c_is_mlnx_ext_port_info_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_mlnx_ext_port_info_supported(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @cl_ntoh16(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sge i32 %10, 51000
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  %14 = icmp sle i32 %13, 51003
  br i1 %14, label %24, label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 52000
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 53000
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 6914
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18, %15, %12
  store i32 1, i32* %3, align 4
  br label %95

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = icmp sge i32 %26, 4099
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = icmp sle i32 %29, 4119
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %95

32:                                               ; preds = %28, %25
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @cl_ntoh32(i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 4511
  br i1 %36, label %37, label %94

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 6914
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 6992
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %37
  store i32 1, i32* %3, align 4
  br label %95

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 7072
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = icmp sge i32 %48, 7120
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = icmp sle i32 %51, 7125
  br i1 %52, label %53, label %54

53:                                               ; preds = %50, %44
  store i32 1, i32* %3, align 4
  br label %95

54:                                               ; preds = %50, %47
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 6963
  br i1 %56, label %72, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %58, 7027
  br i1 %59, label %72, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 6976
  br i1 %62, label %72, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %64, 6977
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %67, 7008
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %70, 7009
  br i1 %71, label %72, label %73

72:                                               ; preds = %69, %66, %63, %60, %57, %54
  store i32 1, i32* %3, align 4
  br label %95

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = icmp eq i32 %74, 7043
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %7, align 4
  %78 = icmp eq i32 %77, 7059
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %80, 7060
  br i1 %81, label %82, label %83

82:                                               ; preds = %79, %76, %73
  store i32 1, i32* %3, align 4
  br label %95

83:                                               ; preds = %79
  %84 = load i32, i32* %7, align 4
  %85 = icmp eq i32 %84, 7092
  br i1 %85, label %92, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %87, 7093
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %7, align 4
  %91 = icmp eq i32 %90, 7108
  br i1 %91, label %92, label %93

92:                                               ; preds = %89, %86, %83
  store i32 1, i32* %3, align 4
  br label %95

93:                                               ; preds = %89
  br label %94

94:                                               ; preds = %93, %32
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %92, %82, %72, %53, %43, %31, %24
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @cl_ntoh16(i32) #1

declare dso_local i32 @cl_ntoh32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

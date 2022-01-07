; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-spi4000.c_cvmx_spi4000_check_speed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-spi4000.c_cvmx_spi4000_check_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@cvmx_spi4000_check_speed.phy_status = internal global [10 x i32] zeroinitializer, align 16
@interface_is_spi4000 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_spi4000_check_speed(%struct.TYPE_5__* noalias sret %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %1, i32* %4, align 4
  store i32 %2, i32* %5, align 4
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 1
  store i64 0, i64* %7, align 8
  %8 = load i32*, i32** @interface_is_spi4000, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %98

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %16, 10
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %98

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @__cvmx_spi4000_mdio_read(i32 %20, i32 %21, i32 17)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 1024
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %30

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 58368
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %27, %26
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [10 x i32], [10 x i32]* @cvmx_spi4000_check_speed.phy_status, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %31, %35
  br i1 %36, label %37, label %69

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [10 x i32], [10 x i32]* @cvmx_spi4000_check_speed.phy_status, i64 0, i64 %40
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, 1024
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, 32768
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = shl i32 %51, 7
  %53 = or i32 %52, 16
  %54 = call i32 @__cvmx_spi4000_write(i32 %50, i32 %53, i32 3)
  br label %61

55:                                               ; preds = %45
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %5, align 4
  %58 = shl i32 %57, 7
  %59 = or i32 %58, 16
  %60 = call i32 @__cvmx_spi4000_write(i32 %56, i32 %59, i32 1)
  br label %61

61:                                               ; preds = %55, %49
  br label %68

62:                                               ; preds = %37
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %5, align 4
  %65 = shl i32 %64, 7
  %66 = or i32 %65, 16
  %67 = call i32 @__cvmx_spi4000_write(i32 %63, i32 %66, i32 3)
  br label %68

68:                                               ; preds = %62, %61
  br label %69

69:                                               ; preds = %68, %30
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %70, 1024
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load i32, i32* %6, align 4
  %77 = and i32 %76, 32768
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i32 2, i32* %81, align 4
  br label %85

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  store i32 1, i32* %84, align 4
  br label %85

85:                                               ; preds = %82, %79
  br label %91

86:                                               ; preds = %69
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i32 2, i32* %88, align 4
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  br label %91

91:                                               ; preds = %86, %85
  %92 = load i32, i32* %6, align 4
  %93 = and i32 %92, 8192
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i32
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %91, %18, %14
  ret void
}

declare dso_local i32 @__cvmx_spi4000_mdio_read(i32, i32, i32) #1

declare dso_local i32 @__cvmx_spi4000_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

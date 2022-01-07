; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_regulators.c_as3722_regnode_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_regulators.c_as3722_regnode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { i32 }
%struct.as3722_reg_sc = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@AS3722_REG_ID_SD0 = common dso_local global i64 0, align 8
@as3722_sd0_lv_ranges = common dso_local global i32 0, align 4
@AS3722_REG_ID_LDO3 = common dso_local global i64 0, align 8
@AS3722_LDO3_MODE_MASK = common dso_local global i32 0, align 4
@AS3722_LDO3_MODE_PMOS_TRACKING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"LDO3 tracking failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to enable %s regulator: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"%s ext control failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regnode*)* @as3722_regnode_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3722_regnode_init(%struct.regnode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regnode*, align 8
  %4 = alloca %struct.as3722_reg_sc*, align 8
  %5 = alloca i32, align 4
  store %struct.regnode* %0, %struct.regnode** %3, align 8
  %6 = load %struct.regnode*, %struct.regnode** %3, align 8
  %7 = call %struct.as3722_reg_sc* @regnode_get_softc(%struct.regnode* %6)
  store %struct.as3722_reg_sc* %7, %struct.as3722_reg_sc** %4, align 8
  %8 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %4, align 8
  %9 = getelementptr inbounds %struct.as3722_reg_sc, %struct.as3722_reg_sc* %8, i32 0, i32 0
  store i32 500, i32* %9, align 8
  %10 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %4, align 8
  %11 = getelementptr inbounds %struct.as3722_reg_sc, %struct.as3722_reg_sc* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AS3722_REG_ID_SD0, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %1
  %18 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %4, align 8
  %19 = call i64 @as3722_sd0_is_low_voltage(%struct.as3722_reg_sc* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load i32, i32* @as3722_sd0_lv_ranges, align 4
  %23 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %4, align 8
  %24 = getelementptr inbounds %struct.as3722_reg_sc, %struct.as3722_reg_sc* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 4
  store i32 %22, i32* %26, align 4
  %27 = load i32, i32* @as3722_sd0_lv_ranges, align 4
  %28 = call i32 @nitems(i32 %27)
  %29 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %4, align 8
  %30 = getelementptr inbounds %struct.as3722_reg_sc, %struct.as3722_reg_sc* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  store i32 %28, i32* %32, align 8
  br label %33

33:                                               ; preds = %21, %17
  %34 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %4, align 8
  %35 = getelementptr inbounds %struct.as3722_reg_sc, %struct.as3722_reg_sc* %34, i32 0, i32 0
  store i32 600, i32* %35, align 8
  br label %75

36:                                               ; preds = %1
  %37 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %4, align 8
  %38 = getelementptr inbounds %struct.as3722_reg_sc, %struct.as3722_reg_sc* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AS3722_REG_ID_LDO3, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %74

44:                                               ; preds = %36
  %45 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %4, align 8
  %46 = getelementptr inbounds %struct.as3722_reg_sc, %struct.as3722_reg_sc* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %44
  %50 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %4, align 8
  %51 = getelementptr inbounds %struct.as3722_reg_sc, %struct.as3722_reg_sc* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %4, align 8
  %54 = getelementptr inbounds %struct.as3722_reg_sc, %struct.as3722_reg_sc* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @AS3722_LDO3_MODE_MASK, align 4
  %59 = load i32, i32* @AS3722_LDO3_MODE_PMOS_TRACKING, align 4
  %60 = call i32 @RM1(%struct.TYPE_4__* %52, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %49
  %64 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %4, align 8
  %65 = getelementptr inbounds %struct.as3722_reg_sc, %struct.as3722_reg_sc* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %123

72:                                               ; preds = %49
  br label %73

73:                                               ; preds = %72, %44
  br label %74

74:                                               ; preds = %73, %36
  br label %75

75:                                               ; preds = %74, %33
  %76 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %4, align 8
  %77 = getelementptr inbounds %struct.as3722_reg_sc, %struct.as3722_reg_sc* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %122

80:                                               ; preds = %75
  %81 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %4, align 8
  %82 = call i32 @as3722_reg_enable(%struct.as3722_reg_sc* %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %80
  %86 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %4, align 8
  %87 = getelementptr inbounds %struct.as3722_reg_sc, %struct.as3722_reg_sc* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %4, align 8
  %92 = getelementptr inbounds %struct.as3722_reg_sc, %struct.as3722_reg_sc* %91, i32 0, i32 1
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %90, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load i32, i32* %5, align 4
  store i32 %98, i32* %2, align 4
  br label %123

99:                                               ; preds = %80
  %100 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %4, align 8
  %101 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %4, align 8
  %102 = getelementptr inbounds %struct.as3722_reg_sc, %struct.as3722_reg_sc* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @as3722_reg_extreg_setup(%struct.as3722_reg_sc* %100, i64 %103)
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %99
  %108 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %4, align 8
  %109 = getelementptr inbounds %struct.as3722_reg_sc, %struct.as3722_reg_sc* %108, i32 0, i32 2
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %4, align 8
  %114 = getelementptr inbounds %struct.as3722_reg_sc, %struct.as3722_reg_sc* %113, i32 0, i32 1
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %112, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %117, i32 %118)
  %120 = load i32, i32* %5, align 4
  store i32 %120, i32* %2, align 4
  br label %123

121:                                              ; preds = %99
  br label %122

122:                                              ; preds = %121, %75
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %122, %107, %85, %63
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.as3722_reg_sc* @regnode_get_softc(%struct.regnode*) #1

declare dso_local i64 @as3722_sd0_is_low_voltage(%struct.as3722_reg_sc*) #1

declare dso_local i32 @nitems(i32) #1

declare dso_local i32 @RM1(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @as3722_reg_enable(%struct.as3722_reg_sc*) #1

declare dso_local i32 @as3722_reg_extreg_setup(%struct.as3722_reg_sc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

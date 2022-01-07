; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.h_ena_com_calculate_interrupt_delay.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.h_ena_com_calculate_interrupt_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.ena_intr_moder_entry* }
%struct.ena_intr_moder_entry = type { i32, i32, i32 }

@ENA_INTR_MAX_NUM_OF_LEVELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Wrong moderation index %u\0A\00", align 1
@ENA_INTR_MODER_LOWEST = common dso_local global i32 0, align 4
@ENA_INTR_MODER_LEVEL_STRIDE = common dso_local global i32 0, align 4
@ENA_INTR_MODER_HIGHEST = common dso_local global i32 0, align 4
@ENA_INTR_DELAY_NEW_VALUE_WEIGHT = common dso_local global i32 0, align 4
@ENA_INTR_DELAY_OLD_VALUE_WEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_com_dev*, i32, i32, i32*, i32*)* @ena_com_calculate_interrupt_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_com_calculate_interrupt_delay(%struct.ena_com_dev* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.ena_com_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ena_intr_moder_entry*, align 8
  %14 = alloca %struct.ena_intr_moder_entry*, align 8
  %15 = alloca %struct.ena_intr_moder_entry*, align 8
  %16 = alloca %struct.ena_intr_moder_entry*, align 8
  %17 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %18 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %19 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %18, i32 0, i32 0
  %20 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %19, align 8
  store %struct.ena_intr_moder_entry* %20, %struct.ena_intr_moder_entry** %16, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %5
  br label %131

27:                                               ; preds = %23
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @ENA_INTR_MAX_NUM_OF_LEVELS, align 4
  %32 = icmp uge i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @ena_trc_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %131

39:                                               ; preds = %27
  %40 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %16, align 8
  %41 = load i32, i32* %11, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %40, i64 %42
  store %struct.ena_intr_moder_entry* %43, %struct.ena_intr_moder_entry** %13, align 8
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @ENA_INTR_MODER_LOWEST, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %39
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %13, align 8
  %51 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ugt i32 %49, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %13, align 8
  %57 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ugt i32 %55, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54, %48
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @ENA_INTR_MODER_LEVEL_STRIDE, align 4
  %63 = add i32 %61, %62
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %60, %54
  br label %110

65:                                               ; preds = %39
  %66 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %16, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @ENA_INTR_MODER_LEVEL_STRIDE, align 4
  %69 = sub i32 %67, %68
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %66, i64 %70
  store %struct.ena_intr_moder_entry* %71, %struct.ena_intr_moder_entry** %14, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %14, align 8
  %74 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ule i32 %72, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %65
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %14, align 8
  %80 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ule i32 %78, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77, %65
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @ENA_INTR_MODER_LEVEL_STRIDE, align 4
  %86 = sub i32 %84, %85
  store i32 %86, i32* %12, align 4
  br label %109

87:                                               ; preds = %77
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %13, align 8
  %90 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ugt i32 %88, %91
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %13, align 8
  %96 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ugt i32 %94, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %93, %87
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @ENA_INTR_MODER_HIGHEST, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @ENA_INTR_MODER_LEVEL_STRIDE, align 4
  %106 = add i32 %104, %105
  store i32 %106, i32* %12, align 4
  br label %107

107:                                              ; preds = %103, %99
  br label %108

108:                                              ; preds = %107, %93
  br label %109

109:                                              ; preds = %108, %83
  br label %110

110:                                              ; preds = %109, %64
  %111 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %16, align 8
  %112 = load i32, i32* %12, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %111, i64 %113
  store %struct.ena_intr_moder_entry* %114, %struct.ena_intr_moder_entry** %15, align 8
  %115 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %15, align 8
  %116 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %17, align 4
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* @ENA_INTR_DELAY_NEW_VALUE_WEIGHT, align 4
  %120 = mul i32 %118, %119
  %121 = load i32, i32* @ENA_INTR_DELAY_OLD_VALUE_WEIGHT, align 4
  %122 = load i32*, i32** %9, align 8
  %123 = load i32, i32* %122, align 4
  %124 = mul i32 %121, %123
  %125 = add i32 %120, %124
  %126 = add i32 %125, 5
  %127 = udiv i32 %126, 10
  %128 = load i32*, i32** %9, align 8
  store i32 %127, i32* %128, align 4
  %129 = load i32, i32* %12, align 4
  %130 = load i32*, i32** %10, align 8
  store i32 %129, i32* %130, align 4
  br label %131

131:                                              ; preds = %110, %36, %26
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_trc_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

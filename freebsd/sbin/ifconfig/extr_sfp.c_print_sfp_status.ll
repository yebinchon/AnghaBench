; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_sfp.c_print_sfp_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_sfp.c_print_sfp_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_info = type { i64, i32 }

@SFF_8472_BASE = common dso_local global i32 0, align 4
@SFF_8472_DIAG_TYPE = common dso_local global i32 0, align 4
@SFF_8472_DDM_DONE = common dso_local global i32 0, align 4
@SFF_8472_DDM_INTERNAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"\09plugged: %s %s (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"\09module temperature: %s Voltage: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"\09RX: %s TX: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"\0A\09SFF8472 DUMP (0xA0 0..127 range):\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_info*, i32)* @print_sfp_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_sfp_status(%struct.i2c_info* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [80 x i8], align 16
  %6 = alloca [40 x i8], align 16
  %7 = alloca [40 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_info* %0, %struct.i2c_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %11 = load i32, i32* @SFF_8472_BASE, align 4
  %12 = load i32, i32* @SFF_8472_DIAG_TYPE, align 4
  %13 = ptrtoint i32* %8 to i32
  %14 = call i32 @read_i2c(%struct.i2c_info* %10, i32 %11, i32 %12, i32 1, i32 %13)
  %15 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %16 = getelementptr inbounds %struct.i2c_info, %struct.i2c_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %101

20:                                               ; preds = %2
  %21 = load i32, i32* @SFF_8472_DDM_DONE, align 4
  %22 = load i32, i32* @SFF_8472_DDM_INTERNAL, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %31 = getelementptr inbounds %struct.i2c_info, %struct.i2c_info* %30, i32 0, i32 1
  store i32 1, i32* %31, align 8
  br label %32

32:                                               ; preds = %29, %20
  %33 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %34 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %35 = call i32 @get_sfp_identifier(%struct.i2c_info* %33, i8* %34, i32 80)
  %36 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %37 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  %38 = call i32 @get_sfp_transceiver_class(%struct.i2c_info* %36, i8* %37, i32 40)
  %39 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %40 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %41 = call i32 @get_sfp_connector(%struct.i2c_info* %39, i8* %40, i32 40)
  %42 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %43 = getelementptr inbounds %struct.i2c_info, %struct.i2c_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %32
  %47 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %48 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  %49 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %47, i8* %48, i8* %49)
  br label %51

51:                                               ; preds = %46, %32
  %52 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %53 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %54 = call i32 @print_sfp_vendor(%struct.i2c_info* %52, i8* %53, i32 80)
  %55 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %56 = getelementptr inbounds %struct.i2c_info, %struct.i2c_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %59, %51
  %63 = load i32, i32* %4, align 4
  %64 = icmp sgt i32 %63, 5
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %67 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %68 = call i32 @printf_sfp_transceiver_descr(%struct.i2c_info* %66, i8* %67, i32 80)
  br label %69

69:                                               ; preds = %65, %62
  %70 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %71 = getelementptr inbounds %struct.i2c_info, %struct.i2c_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %69
  %75 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %76 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %77 = call i32 @get_sfp_temp(%struct.i2c_info* %75, i8* %76, i32 80)
  %78 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %79 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  %80 = call i32 @get_sfp_voltage(%struct.i2c_info* %78, i8* %79, i32 40)
  %81 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %82 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %81, i8* %82)
  %84 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %85 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %86 = call i32 @get_sfp_rx_power(%struct.i2c_info* %84, i8* %85, i32 80)
  %87 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %88 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  %89 = call i32 @get_sfp_tx_power(%struct.i2c_info* %87, i8* %88, i32 40)
  %90 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %91 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %90, i8* %91)
  br label %93

93:                                               ; preds = %74, %69
  %94 = load i32, i32* %4, align 4
  %95 = icmp sgt i32 %94, 2
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %98 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %99 = load i32, i32* @SFF_8472_BASE, align 4
  %100 = call i32 @dump_i2c_data(%struct.i2c_info* %98, i32 %99, i32 0, i32 128)
  br label %101

101:                                              ; preds = %19, %96, %93
  ret void
}

declare dso_local i32 @read_i2c(%struct.i2c_info*, i32, i32, i32, i32) #1

declare dso_local i32 @get_sfp_identifier(%struct.i2c_info*, i8*, i32) #1

declare dso_local i32 @get_sfp_transceiver_class(%struct.i2c_info*, i8*, i32) #1

declare dso_local i32 @get_sfp_connector(%struct.i2c_info*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_sfp_vendor(%struct.i2c_info*, i8*, i32) #1

declare dso_local i32 @printf_sfp_transceiver_descr(%struct.i2c_info*, i8*, i32) #1

declare dso_local i32 @get_sfp_temp(%struct.i2c_info*, i8*, i32) #1

declare dso_local i32 @get_sfp_voltage(%struct.i2c_info*, i8*, i32) #1

declare dso_local i32 @get_sfp_rx_power(%struct.i2c_info*, i8*, i32) #1

declare dso_local i32 @get_sfp_tx_power(%struct.i2c_info*, i8*, i32) #1

declare dso_local i32 @dump_i2c_data(%struct.i2c_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

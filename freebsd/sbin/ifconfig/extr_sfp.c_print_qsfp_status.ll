; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_sfp.c_print_qsfp_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_sfp.c_print_qsfp_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_info = type { i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"\09plugged: %s %s (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"\09compliance level: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"\09nominal bitrate: %u Mbps\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"\09module temperature: %s voltage: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"\09lane %d: RX: %s TX: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"\0A\09SFF8436 DUMP (0xA0 128..255 range):\0A\00", align 1
@SFF_8436_BASE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"\0A\09SFF8436 DUMP (0xA0 0..81 range):\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_info*, i32)* @print_qsfp_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_qsfp_status(%struct.i2c_info* %0, i32 %1) #0 {
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
  %11 = getelementptr inbounds %struct.i2c_info, %struct.i2c_info* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %13 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %14 = call i32 @get_qsfp_identifier(%struct.i2c_info* %12, i8* %13, i32 80)
  %15 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %16 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  %17 = call i32 @get_qsfp_transceiver_class(%struct.i2c_info* %15, i8* %16, i32 40)
  %18 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %19 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %20 = call i32 @get_qsfp_connector(%struct.i2c_info* %18, i8* %19, i32 40)
  %21 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %22 = getelementptr inbounds %struct.i2c_info, %struct.i2c_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %27 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  %28 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %27, i8* %28)
  br label %30

30:                                               ; preds = %25, %2
  %31 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %32 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %33 = call i32 @print_sfp_vendor(%struct.i2c_info* %31, i8* %32, i32 80)
  %34 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %35 = getelementptr inbounds %struct.i2c_info, %struct.i2c_info* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %38, %30
  %42 = load i32, i32* %4, align 4
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %69

44:                                               ; preds = %41
  %45 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %46 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %47 = call i32 @get_qsfp_rev_compliance(%struct.i2c_info* %45, i8* %46, i32 80)
  %48 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %49 = getelementptr inbounds %struct.i2c_info, %struct.i2c_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %52, %44
  %56 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %57 = call i32 @get_qsfp_br(%struct.i2c_info* %56)
  store i32 %57, i32* %8, align 4
  %58 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %59 = getelementptr inbounds %struct.i2c_info, %struct.i2c_info* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load i32, i32* %8, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %65, %62, %55
  br label %69

69:                                               ; preds = %68, %41
  %70 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %71 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %72 = call i64 @get_qsfp_temp(%struct.i2c_info* %70, i8* %71, i32 80)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %101

74:                                               ; preds = %69
  %75 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %76 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  %77 = call i32 @get_qsfp_voltage(%struct.i2c_info* %75, i8* %76, i32 40)
  %78 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %79 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %78, i8* %79)
  store i32 1, i32* %9, align 4
  br label %81

81:                                               ; preds = %97, %74
  %82 = load i32, i32* %9, align 4
  %83 = icmp sle i32 %82, 4
  br i1 %83, label %84, label %100

84:                                               ; preds = %81
  %85 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %86 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @get_qsfp_rx_power(%struct.i2c_info* %85, i8* %86, i32 80, i32 %87)
  %89 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %90 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @get_qsfp_tx_power(%struct.i2c_info* %89, i8* %90, i32 40, i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %95 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %93, i8* %94, i8* %95)
  br label %97

97:                                               ; preds = %84
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %81

100:                                              ; preds = %81
  br label %101

101:                                              ; preds = %100, %69
  %102 = load i32, i32* %4, align 4
  %103 = icmp sgt i32 %102, 2
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %106 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %107 = load i32, i32* @SFF_8436_BASE, align 4
  %108 = call i32 @dump_i2c_data(%struct.i2c_info* %106, i32 %107, i32 128, i32 128)
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %110 = load %struct.i2c_info*, %struct.i2c_info** %3, align 8
  %111 = load i32, i32* @SFF_8436_BASE, align 4
  %112 = call i32 @dump_i2c_data(%struct.i2c_info* %110, i32 %111, i32 0, i32 82)
  br label %113

113:                                              ; preds = %104, %101
  ret void
}

declare dso_local i32 @get_qsfp_identifier(%struct.i2c_info*, i8*, i32) #1

declare dso_local i32 @get_qsfp_transceiver_class(%struct.i2c_info*, i8*, i32) #1

declare dso_local i32 @get_qsfp_connector(%struct.i2c_info*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_sfp_vendor(%struct.i2c_info*, i8*, i32) #1

declare dso_local i32 @get_qsfp_rev_compliance(%struct.i2c_info*, i8*, i32) #1

declare dso_local i32 @get_qsfp_br(%struct.i2c_info*) #1

declare dso_local i64 @get_qsfp_temp(%struct.i2c_info*, i8*, i32) #1

declare dso_local i32 @get_qsfp_voltage(%struct.i2c_info*, i8*, i32) #1

declare dso_local i32 @get_qsfp_rx_power(%struct.i2c_info*, i8*, i32, i32) #1

declare dso_local i32 @get_qsfp_tx_power(%struct.i2c_info*, i8*, i32, i32) #1

declare dso_local i32 @dump_i2c_data(%struct.i2c_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

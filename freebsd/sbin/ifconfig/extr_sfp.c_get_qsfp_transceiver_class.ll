; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_sfp.c_get_qsfp_transceiver_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_sfp.c_get_qsfp_transceiver_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_info = type { i32 }

@SFF_8436_BASE = common dso_local global i32 0, align 4
@SFF_8436_CODE_E1040100G = common dso_local global i32 0, align 4
@SFF_8636_EXT_COMPLIANCE = common dso_local global i32 0, align 4
@SFF_8436_OPTIONS_START = common dso_local global i32 0, align 4
@eth_extended_comp = common dso_local global i32 0, align 4
@eth_1040g = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_info*, i8*, i64)* @get_qsfp_transceiver_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_qsfp_transceiver_class(%struct.i2c_info* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.i2c_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_info* %0, %struct.i2c_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.i2c_info*, %struct.i2c_info** %4, align 8
  %10 = load i32, i32* @SFF_8436_BASE, align 4
  %11 = load i32, i32* @SFF_8436_CODE_E1040100G, align 4
  %12 = call i32 @read_i2c(%struct.i2c_info* %9, i32 %10, i32 %11, i32 1, i32* %8)
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @SFF_8636_EXT_COMPLIANCE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.i2c_info*, %struct.i2c_info** %4, align 8
  %19 = load i32, i32* @SFF_8436_BASE, align 4
  %20 = load i32, i32* @SFF_8436_OPTIONS_START, align 4
  %21 = call i32 @read_i2c(%struct.i2c_info* %18, i32 %19, i32 %20, i32 1, i32* %8)
  %22 = load i32, i32* @eth_extended_comp, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i8* @find_value(i32 %22, i32 %23)
  store i8* %24, i8** %7, align 8
  br label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @eth_1040g, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i8* @find_zero_bit(i32 %26, i32 %27, i32 1)
  store i8* %28, i8** %7, align 8
  br label %29

29:                                               ; preds = %25, %17
  %30 = load i8*, i8** %7, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @snprintf(i8* %34, i64 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  ret void
}

declare dso_local i32 @read_i2c(%struct.i2c_info*, i32, i32, i32, i32*) #1

declare dso_local i8* @find_value(i32, i32) #1

declare dso_local i8* @find_zero_bit(i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

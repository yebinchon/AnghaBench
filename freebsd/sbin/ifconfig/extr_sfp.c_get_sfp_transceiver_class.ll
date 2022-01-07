; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_sfp.c_get_sfp_transceiver_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_sfp.c_get_sfp_transceiver_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_info = type { i32 }

@SFF_8472_BASE = common dso_local global i32 0, align 4
@SFF_8472_TRANS = common dso_local global i64 0, align 8
@eth_extended_comp = common dso_local global i32 0, align 4
@SFF_8472_TRANS_START = common dso_local global i64 0, align 8
@eth_10g = common dso_local global i32 0, align 4
@eth_compat = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_info*, i8*, i64)* @get_sfp_transceiver_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_sfp_transceiver_class(%struct.i2c_info* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.i2c_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.i2c_info* %0, %struct.i2c_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.i2c_info*, %struct.i2c_info** %4, align 8
  %10 = load i32, i32* @SFF_8472_BASE, align 4
  %11 = load i64, i64* @SFF_8472_TRANS, align 8
  %12 = call i32 @read_i2c(%struct.i2c_info* %9, i32 %10, i64 %11, i32 1, i64* %8)
  %13 = load i64, i64* %8, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @eth_extended_comp, align 4
  %17 = load i64, i64* %8, align 8
  %18 = call i8* @find_value(i32 %16, i64 %17)
  store i8* %18, i8** %7, align 8
  br label %39

19:                                               ; preds = %3
  %20 = load %struct.i2c_info*, %struct.i2c_info** %4, align 8
  %21 = load i32, i32* @SFF_8472_BASE, align 4
  %22 = load i64, i64* @SFF_8472_TRANS_START, align 8
  %23 = call i32 @read_i2c(%struct.i2c_info* %20, i32 %21, i64 %22, i32 1, i64* %8)
  %24 = load i32, i32* @eth_10g, align 4
  %25 = load i64, i64* %8, align 8
  %26 = call i8* @find_zero_bit(i32 %24, i64 %25, i32 1)
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %19
  %30 = load %struct.i2c_info*, %struct.i2c_info** %4, align 8
  %31 = load i32, i32* @SFF_8472_BASE, align 4
  %32 = load i64, i64* @SFF_8472_TRANS_START, align 8
  %33 = add nsw i64 %32, 3
  %34 = call i32 @read_i2c(%struct.i2c_info* %30, i32 %31, i64 %33, i32 1, i64* %8)
  %35 = load i32, i32* @eth_compat, align 4
  %36 = load i64, i64* %8, align 8
  %37 = call i8* @find_zero_bit(i32 %35, i64 %36, i32 1)
  store i8* %37, i8** %7, align 8
  br label %38

38:                                               ; preds = %29, %19
  br label %39

39:                                               ; preds = %38, %15
  %40 = load i8*, i8** %7, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i8*, i8** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @snprintf(i8* %44, i64 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  ret void
}

declare dso_local i32 @read_i2c(%struct.i2c_info*, i32, i64, i32, i64*) #1

declare dso_local i8* @find_value(i32, i64) #1

declare dso_local i8* @find_zero_bit(i32, i64, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

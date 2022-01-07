; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_sfp.c_printf_sfp_transceiver_descr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_sfp.c_printf_sfp_transceiver_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_info = type { i32 }

@SFF_8472_BASE = common dso_local global i32 0, align 4
@SFF_8472_TRANS_START = common dso_local global i32 0, align 4
@eth_10g = common dso_local global i32 0, align 4
@eth_compat = common dso_local global i32 0, align 4
@fc_len = common dso_local global i32 0, align 4
@cab_tech = common dso_local global i32 0, align 4
@fc_media = common dso_local global i32 0, align 4
@fc_speed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Class: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Length: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Tech: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Media: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Speed: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_info*, i8*, i64)* @printf_sfp_transceiver_descr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printf_sfp_transceiver_descr(%struct.i2c_info* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.i2c_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [12 x i8], align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.i2c_info* %0, %struct.i2c_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %13 = load %struct.i2c_info*, %struct.i2c_info** %4, align 8
  %14 = load i32, i32* @SFF_8472_BASE, align 4
  %15 = load i32, i32* @SFF_8472_TRANS_START, align 4
  %16 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 3
  %17 = call i32 @read_i2c(%struct.i2c_info* %13, i32 %14, i32 %15, i32 8, i8* %16)
  %18 = load i32, i32* @eth_10g, align 4
  %19 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 3
  %20 = load i8, i8* %19, align 1
  %21 = call i8* @find_zero_bit(i32 %18, i8 signext %20, i32 1)
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i32, i32* @eth_compat, align 4
  %26 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 6
  %27 = load i8, i8* %26, align 1
  %28 = call i8* @find_zero_bit(i32 %25, i8 signext %27, i32 1)
  store i8* %28, i8** %8, align 8
  br label %29

29:                                               ; preds = %24, %3
  %30 = load i32, i32* @fc_len, align 4
  %31 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 7
  %32 = load i8, i8* %31, align 1
  %33 = call i8* @find_zero_bit(i32 %30, i8 signext %32, i32 1)
  store i8* %33, i8** %9, align 8
  %34 = load i32, i32* @cab_tech, align 4
  %35 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 7
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = shl i32 %37, 8
  %39 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = or i32 %38, %41
  %43 = trunc i32 %42 to i8
  %44 = call i8* @find_zero_bit(i32 %34, i8 signext %43, i32 2)
  store i8* %44, i8** %10, align 8
  %45 = load i32, i32* @fc_media, align 4
  %46 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 9
  %47 = load i8, i8* %46, align 1
  %48 = call i8* @find_zero_bit(i32 %45, i8 signext %47, i32 1)
  store i8* %48, i8** %11, align 8
  %49 = load i32, i32* @fc_speed, align 4
  %50 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 10
  %51 = load i8, i8* %50, align 1
  %52 = call i8* @find_zero_bit(i32 %49, i8 signext %51, i32 1)
  store i8* %52, i8** %12, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %53)
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  %61 = load i8*, i8** %12, align 8
  %62 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %61)
  ret void
}

declare dso_local i32 @read_i2c(%struct.i2c_info*, i32, i32, i32, i8*) #1

declare dso_local i8* @find_zero_bit(i32, i8 signext, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

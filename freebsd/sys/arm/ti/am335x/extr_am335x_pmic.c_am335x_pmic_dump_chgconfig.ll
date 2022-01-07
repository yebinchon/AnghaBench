; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_pmic.c_am335x_pmic_dump_chgconfig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_pmic.c_am335x_pmic_dump_chgconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps65217_chgconfig0_reg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.tps65217_chgconfig1_reg = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.tps65217_chgconfig2_reg = type { i64, i64, i64 }
%struct.tps65217_chgconfig3_reg = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@__const.am335x_pmic_dump_chgconfig.e_d = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)], align 16
@__const.am335x_pmic_dump_chgconfig.d_e = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"inactive\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@__const.am335x_pmic_dump_chgconfig.i_a = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@__const.am335x_pmic_dump_chgconfig.f_t = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str.6 = private unnamed_addr constant [3 x i8] c"4h\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"5h\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"6h\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"8h\00", align 1
@__const.am335x_pmic_dump_chgconfig.timer_c = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)], align 16
@.str.10 = private unnamed_addr constant [5 x i8] c"100k\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"10k\00", align 1
@__const.am335x_pmic_dump_chgconfig.ntc_type_c = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)], align 16
@.str.12 = private unnamed_addr constant [5 x i8] c"2.9V\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"2.5V\00", align 1
@__const.am335x_pmic_dump_chgconfig.vprechg_c = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0)], align 16
@.str.14 = private unnamed_addr constant [7 x i8] c"0-45 C\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"0-60 C\00", align 1
@__const.am335x_pmic_dump_chgconfig.trange_c = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0)], align 16
@.str.16 = private unnamed_addr constant [5 x i8] c"2.5%\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"7.5%\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"15%\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"18%\00", align 1
@__const.am335x_pmic_dump_chgconfig.termif_c = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0)], align 16
@.str.20 = private unnamed_addr constant [7 x i8] c"30 min\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"60 min\00", align 1
@__const.am335x_pmic_dump_chgconfig.pchrgt_c = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0)], align 16
@.str.22 = private unnamed_addr constant [6 x i8] c"3.50V\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"3.75V\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"4.00V\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"4.25V\00", align 1
@__const.am335x_pmic_dump_chgconfig.dppmth_c = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0)], align 16
@.str.26 = private unnamed_addr constant [6 x i8] c"300mA\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"400mA\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"500mA\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"700mA\00", align 1
@__const.am335x_pmic_dump_chgconfig.ichrg_c = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0)], align 16
@TPS65217_CHGCONFIG0_REG = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [25 x i8] c" BAT TEMP/NTC ERROR: %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c" Pre-charge timer time-out: %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c" Charge timer time-out: %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c" Charger active: %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c" Termination current detected: %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c" Thermal suspend: %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c" DPPM active: %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c" Thermal regulation: %s\0A\00", align 1
@TPS65217_CHGCONFIG1_REG = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [14 x i8] c" Charger: %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c" Suspend charge: %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c" Charge termination: %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c" Charger reset: %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c" NTC TYPE: %s\0A\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c" Safety timer: %s\0A\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c" Charge safety timer: %s\0A\00", align 1
@TPS65217_CHGCONFIG2_REG = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [21 x i8] c" Charge voltage: %s\0A\00", align 1
@tps65217_voreg_c = common dso_local global i8** null, align 8
@.str.46 = private unnamed_addr constant [51 x i8] c" Pre-charge to fast charge transition voltage: %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c" Dynamic timer function: %s\0A\00", align 1
@TPS65217_CHGCONFIG3_REG = common dso_local global i32 0, align 4
@.str.48 = private unnamed_addr constant [37 x i8] c" Temperature range for charging: %s\0A\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c" Termination current factor: %s\0A\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c" Pre-charge time: %s\0A\00", align 1
@.str.51 = private unnamed_addr constant [32 x i8] c" Power path DPPM threshold: %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c" Charge current: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @am335x_pmic_dump_chgconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @am335x_pmic_dump_chgconfig(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tps65217_chgconfig0_reg, align 8
  %4 = alloca %struct.tps65217_chgconfig1_reg, align 8
  %5 = alloca %struct.tps65217_chgconfig2_reg, align 8
  %6 = alloca %struct.tps65217_chgconfig3_reg, align 8
  %7 = alloca [2 x i8*], align 16
  %8 = alloca [2 x i8*], align 16
  %9 = alloca [2 x i8*], align 16
  %10 = alloca [2 x i8*], align 16
  %11 = alloca [4 x i8*], align 16
  %12 = alloca [2 x i8*], align 16
  %13 = alloca [2 x i8*], align 16
  %14 = alloca [2 x i8*], align 16
  %15 = alloca [4 x i8*], align 16
  %16 = alloca [2 x i8*], align 16
  %17 = alloca [4 x i8*], align 16
  %18 = alloca [4 x i8*], align 16
  store i32 %0, i32* %2, align 4
  %19 = bitcast [2 x i8*]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 bitcast ([2 x i8*]* @__const.am335x_pmic_dump_chgconfig.e_d to i8*), i64 16, i1 false)
  %20 = bitcast [2 x i8*]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 bitcast ([2 x i8*]* @__const.am335x_pmic_dump_chgconfig.d_e to i8*), i64 16, i1 false)
  %21 = bitcast [2 x i8*]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([2 x i8*]* @__const.am335x_pmic_dump_chgconfig.i_a to i8*), i64 16, i1 false)
  %22 = bitcast [2 x i8*]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 bitcast ([2 x i8*]* @__const.am335x_pmic_dump_chgconfig.f_t to i8*), i64 16, i1 false)
  %23 = bitcast [4 x i8*]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 16 bitcast ([4 x i8*]* @__const.am335x_pmic_dump_chgconfig.timer_c to i8*), i64 32, i1 false)
  %24 = bitcast [2 x i8*]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 bitcast ([2 x i8*]* @__const.am335x_pmic_dump_chgconfig.ntc_type_c to i8*), i64 16, i1 false)
  %25 = bitcast [2 x i8*]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %25, i8* align 16 bitcast ([2 x i8*]* @__const.am335x_pmic_dump_chgconfig.vprechg_c to i8*), i64 16, i1 false)
  %26 = bitcast [2 x i8*]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %26, i8* align 16 bitcast ([2 x i8*]* @__const.am335x_pmic_dump_chgconfig.trange_c to i8*), i64 16, i1 false)
  %27 = bitcast [4 x i8*]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %27, i8* align 16 bitcast ([4 x i8*]* @__const.am335x_pmic_dump_chgconfig.termif_c to i8*), i64 32, i1 false)
  %28 = bitcast [2 x i8*]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %28, i8* align 16 bitcast ([2 x i8*]* @__const.am335x_pmic_dump_chgconfig.pchrgt_c to i8*), i64 16, i1 false)
  %29 = bitcast [4 x i8*]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %29, i8* align 16 bitcast ([4 x i8*]* @__const.am335x_pmic_dump_chgconfig.dppmth_c to i8*), i64 32, i1 false)
  %30 = bitcast [4 x i8*]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %30, i8* align 16 bitcast ([4 x i8*]* @__const.am335x_pmic_dump_chgconfig.ichrg_c to i8*), i64 32, i1 false)
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @TPS65217_CHGCONFIG0_REG, align 4
  %33 = bitcast %struct.tps65217_chgconfig0_reg* %3 to i32*
  %34 = call i32 @am335x_pmic_read(i32 %31, i32 %32, i32* %33, i32 1)
  %35 = load i32, i32* %2, align 4
  %36 = getelementptr inbounds %struct.tps65217_chgconfig0_reg, %struct.tps65217_chgconfig0_reg* %3, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* %2, align 4
  %42 = getelementptr inbounds %struct.tps65217_chgconfig0_reg, %struct.tps65217_chgconfig0_reg* %3, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.31, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* %2, align 4
  %48 = getelementptr inbounds %struct.tps65217_chgconfig0_reg, %struct.tps65217_chgconfig0_reg* %3, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* %2, align 4
  %54 = getelementptr inbounds %struct.tps65217_chgconfig0_reg, %struct.tps65217_chgconfig0_reg* %3, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @device_printf(i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i64 0, i64 0), i8* %57)
  %59 = load i32, i32* %2, align 4
  %60 = getelementptr inbounds %struct.tps65217_chgconfig0_reg, %struct.tps65217_chgconfig0_reg* %3, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @device_printf(i32 %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.34, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* %2, align 4
  %66 = getelementptr inbounds %struct.tps65217_chgconfig0_reg, %struct.tps65217_chgconfig0_reg* %3, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @device_printf(i32 %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i64 0, i64 0), i8* %69)
  %71 = load i32, i32* %2, align 4
  %72 = getelementptr inbounds %struct.tps65217_chgconfig0_reg, %struct.tps65217_chgconfig0_reg* %3, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @device_printf(i32 %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i64 0, i64 0), i8* %75)
  %77 = load i32, i32* %2, align 4
  %78 = getelementptr inbounds %struct.tps65217_chgconfig0_reg, %struct.tps65217_chgconfig0_reg* %3, i32 0, i32 7
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @device_printf(i32 %77, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i64 0, i64 0), i8* %81)
  %83 = load i32, i32* %2, align 4
  %84 = load i32, i32* @TPS65217_CHGCONFIG1_REG, align 4
  %85 = bitcast %struct.tps65217_chgconfig1_reg* %4 to i32*
  %86 = call i32 @am335x_pmic_read(i32 %83, i32 %84, i32* %85, i32 1)
  %87 = load i32, i32* %2, align 4
  %88 = getelementptr inbounds %struct.tps65217_chgconfig1_reg, %struct.tps65217_chgconfig1_reg* %4, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @device_printf(i32 %87, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0), i8* %91)
  %93 = load i32, i32* %2, align 4
  %94 = getelementptr inbounds %struct.tps65217_chgconfig1_reg, %struct.tps65217_chgconfig1_reg* %4, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @device_printf(i32 %93, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i64 0, i64 0), i8* %97)
  %99 = load i32, i32* %2, align 4
  %100 = getelementptr inbounds %struct.tps65217_chgconfig1_reg, %struct.tps65217_chgconfig1_reg* %4, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @device_printf(i32 %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i64 0, i64 0), i8* %103)
  %105 = load i32, i32* %2, align 4
  %106 = getelementptr inbounds %struct.tps65217_chgconfig1_reg, %struct.tps65217_chgconfig1_reg* %4, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @device_printf(i32 %105, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i64 0, i64 0), i8* %109)
  %111 = load i32, i32* %2, align 4
  %112 = getelementptr inbounds %struct.tps65217_chgconfig1_reg, %struct.tps65217_chgconfig1_reg* %4, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @device_printf(i32 %111, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0), i8* %115)
  %117 = load i32, i32* %2, align 4
  %118 = getelementptr inbounds %struct.tps65217_chgconfig1_reg, %struct.tps65217_chgconfig1_reg* %4, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @device_printf(i32 %117, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i64 0, i64 0), i8* %121)
  %123 = load i32, i32* %2, align 4
  %124 = getelementptr inbounds %struct.tps65217_chgconfig1_reg, %struct.tps65217_chgconfig1_reg* %4, i32 0, i32 6
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @device_printf(i32 %123, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.44, i64 0, i64 0), i8* %127)
  %129 = load i32, i32* %2, align 4
  %130 = load i32, i32* @TPS65217_CHGCONFIG2_REG, align 4
  %131 = bitcast %struct.tps65217_chgconfig2_reg* %5 to i32*
  %132 = call i32 @am335x_pmic_read(i32 %129, i32 %130, i32* %131, i32 1)
  %133 = load i32, i32* %2, align 4
  %134 = load i8**, i8*** @tps65217_voreg_c, align 8
  %135 = getelementptr inbounds %struct.tps65217_chgconfig2_reg, %struct.tps65217_chgconfig2_reg* %5, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @device_printf(i32 %133, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i64 0, i64 0), i8* %138)
  %140 = load i32, i32* %2, align 4
  %141 = getelementptr inbounds %struct.tps65217_chgconfig2_reg, %struct.tps65217_chgconfig2_reg* %5, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @device_printf(i32 %140, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.46, i64 0, i64 0), i8* %144)
  %146 = load i32, i32* %2, align 4
  %147 = getelementptr inbounds %struct.tps65217_chgconfig2_reg, %struct.tps65217_chgconfig2_reg* %5, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 %148
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @device_printf(i32 %146, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.47, i64 0, i64 0), i8* %150)
  %152 = load i32, i32* %2, align 4
  %153 = load i32, i32* @TPS65217_CHGCONFIG3_REG, align 4
  %154 = bitcast %struct.tps65217_chgconfig3_reg* %6 to i32*
  %155 = call i32 @am335x_pmic_read(i32 %152, i32 %153, i32* %154, i32 1)
  %156 = load i32, i32* %2, align 4
  %157 = getelementptr inbounds %struct.tps65217_chgconfig3_reg, %struct.tps65217_chgconfig3_reg* %6, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @device_printf(i32 %156, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.48, i64 0, i64 0), i8* %160)
  %162 = load i32, i32* %2, align 4
  %163 = getelementptr inbounds %struct.tps65217_chgconfig3_reg, %struct.tps65217_chgconfig3_reg* %6, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds [4 x i8*], [4 x i8*]* %15, i64 0, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @device_printf(i32 %162, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.49, i64 0, i64 0), i8* %166)
  %168 = load i32, i32* %2, align 4
  %169 = getelementptr inbounds %struct.tps65217_chgconfig3_reg, %struct.tps65217_chgconfig3_reg* %6, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds [2 x i8*], [2 x i8*]* %16, i64 0, i64 %170
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @device_printf(i32 %168, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.50, i64 0, i64 0), i8* %172)
  %174 = load i32, i32* %2, align 4
  %175 = getelementptr inbounds %struct.tps65217_chgconfig3_reg, %struct.tps65217_chgconfig3_reg* %6, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds [4 x i8*], [4 x i8*]* %17, i64 0, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @device_printf(i32 %174, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.51, i64 0, i64 0), i8* %178)
  %180 = load i32, i32* %2, align 4
  %181 = getelementptr inbounds %struct.tps65217_chgconfig3_reg, %struct.tps65217_chgconfig3_reg* %6, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds [4 x i8*], [4 x i8*]* %18, i64 0, i64 %182
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @device_printf(i32 %180, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* %184)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @am335x_pmic_read(i32, i32, i32*, i32) #2

declare dso_local i32 @device_printf(i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

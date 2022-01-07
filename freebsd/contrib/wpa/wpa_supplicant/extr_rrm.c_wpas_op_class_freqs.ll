; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_op_class_freqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_op_class_freqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oper_class_map = type { i64 }
%struct.hostapd_hw_modes = type { i32 }

@__const.wpas_op_class_freqs.channels_80mhz = private unnamed_addr constant [6 x i32] [i32 42, i32 58, i32 106, i32 122, i32 138, i32 155], align 16
@__const.wpas_op_class_freqs.channels_160mhz = private unnamed_addr constant [2 x i32] [i32 50, i32 114], align 4
@BW80 = common dso_local global i64 0, align 8
@BW80P80 = common dso_local global i64 0, align 8
@BW160 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.oper_class_map*, %struct.hostapd_hw_modes*, i32)* @wpas_op_class_freqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wpas_op_class_freqs(%struct.oper_class_map* %0, %struct.hostapd_hw_modes* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.oper_class_map*, align 8
  %6 = alloca %struct.hostapd_hw_modes*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [6 x i32], align 16
  %9 = alloca [2 x i32], align 4
  store %struct.oper_class_map* %0, %struct.oper_class_map** %5, align 8
  store %struct.hostapd_hw_modes* %1, %struct.hostapd_hw_modes** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = bitcast [6 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([6 x i32]* @__const.wpas_op_class_freqs.channels_80mhz to i8*), i64 24, i1 false)
  %11 = bitcast [2 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast ([2 x i32]* @__const.wpas_op_class_freqs.channels_160mhz to i8*), i64 8, i1 false)
  %12 = load %struct.oper_class_map*, %struct.oper_class_map** %5, align 8
  %13 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @BW80, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load %struct.oper_class_map*, %struct.oper_class_map** %5, align 8
  %19 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BW80P80, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17, %3
  %24 = load %struct.oper_class_map*, %struct.oper_class_map** %5, align 8
  %25 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %29 = call i32 @ARRAY_SIZE(i32* %28)
  %30 = call i32* @wpas_add_channels(%struct.oper_class_map* %24, %struct.hostapd_hw_modes* %25, i32 %26, i32* %27, i32 %29)
  store i32* %30, i32** %4, align 8
  br label %50

31:                                               ; preds = %17
  %32 = load %struct.oper_class_map*, %struct.oper_class_map** %5, align 8
  %33 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BW160, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load %struct.oper_class_map*, %struct.oper_class_map** %5, align 8
  %39 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %43 = call i32 @ARRAY_SIZE(i32* %42)
  %44 = call i32* @wpas_add_channels(%struct.oper_class_map* %38, %struct.hostapd_hw_modes* %39, i32 %40, i32* %41, i32 %43)
  store i32* %44, i32** %4, align 8
  br label %50

45:                                               ; preds = %31
  %46 = load %struct.oper_class_map*, %struct.oper_class_map** %5, align 8
  %47 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32* @wpas_add_channels(%struct.oper_class_map* %46, %struct.hostapd_hw_modes* %47, i32 %48, i32* null, i32 0)
  store i32* %49, i32** %4, align 8
  br label %50

50:                                               ; preds = %45, %37, %23
  %51 = load i32*, i32** %4, align 8
  ret i32* %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @wpas_add_channels(%struct.oper_class_map*, %struct.hostapd_hw_modes*, i32, i32*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

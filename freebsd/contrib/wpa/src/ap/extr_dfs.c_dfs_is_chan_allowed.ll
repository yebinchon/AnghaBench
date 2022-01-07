; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dfs.c_dfs_is_chan_allowed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dfs.c_dfs_is_chan_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_channel_data = type { i32 }

@__const.dfs_is_chan_allowed.allowed_40 = private unnamed_addr constant [13 x i32] [i32 36, i32 44, i32 52, i32 60, i32 100, i32 108, i32 116, i32 124, i32 132, i32 149, i32 157, i32 184, i32 192], align 16
@__const.dfs_is_chan_allowed.allowed_80 = private unnamed_addr constant [6 x i32] [i32 36, i32 52, i32 100, i32 116, i32 132, i32 149], align 16
@__const.dfs_is_chan_allowed.allowed_160 = private unnamed_addr constant [2 x i32] [i32 36, i32 100], align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unknown width for %d channels\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_channel_data*, i32)* @dfs_is_chan_allowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfs_is_chan_allowed(%struct.hostapd_channel_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_channel_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [13 x i32], align 16
  %7 = alloca [6 x i32], align 16
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hostapd_channel_data* %0, %struct.hostapd_channel_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = bitcast [13 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([13 x i32]* @__const.dfs_is_chan_allowed.allowed_40 to i8*), i64 52, i1 false)
  %13 = bitcast [6 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([6 x i32]* @__const.dfs_is_chan_allowed.allowed_80 to i8*), i64 24, i1 false)
  %14 = bitcast [2 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast ([2 x i32]* @__const.dfs_is_chan_allowed.allowed_160 to i8*), i64 8, i1 false)
  %15 = getelementptr inbounds [13 x i32], [13 x i32]* %6, i64 0, i64 0
  store i32* %15, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %29 [
    i32 2, label %17
    i32 4, label %21
    i32 8, label %25
  ]

17:                                               ; preds = %2
  %18 = getelementptr inbounds [13 x i32], [13 x i32]* %6, i64 0, i64 0
  store i32* %18, i32** %9, align 8
  %19 = getelementptr inbounds [13 x i32], [13 x i32]* %6, i64 0, i64 0
  %20 = call i32 @ARRAY_SIZE(i32* %19)
  store i32 %20, i32* %11, align 4
  br label %33

21:                                               ; preds = %2
  %22 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  store i32* %22, i32** %9, align 8
  %23 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %24 = call i32 @ARRAY_SIZE(i32* %23)
  store i32 %24, i32* %11, align 4
  br label %33

25:                                               ; preds = %2
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32* %26, i32** %9, align 8
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %28 = call i32 @ARRAY_SIZE(i32* %27)
  store i32 %28, i32* %11, align 4
  br label %33

29:                                               ; preds = %2
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @wpa_printf(i32 %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %25, %21, %17
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %50, %33
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %40 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %41, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %54

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %10, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %34

53:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %48
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @wpa_printf(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

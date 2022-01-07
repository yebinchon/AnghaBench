; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_acs.c_acs_usable_vht80_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_acs.c_acs_usable_vht80_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_channel_data = type { i32 }

@__const.acs_usable_vht80_chan.allowed = private unnamed_addr constant [6 x i32] [i32 36, i32 52, i32 100, i32 116, i32 132, i32 149], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_channel_data*)* @acs_usable_vht80_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acs_usable_vht80_chan(%struct.hostapd_channel_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostapd_channel_data*, align 8
  %4 = alloca [6 x i32], align 16
  %5 = alloca i32, align 4
  store %struct.hostapd_channel_data* %0, %struct.hostapd_channel_data** %3, align 8
  %6 = bitcast [6 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([6 x i32]* @__const.acs_usable_vht80_chan.allowed to i8*), i64 24, i1 false)
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %23, %1
  %8 = load i32, i32* %5, align 4
  %9 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %10 = call i32 @ARRAY_SIZE(i32* %9)
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %7
  %13 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %3, align 8
  %14 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %15, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %27

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %5, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %7

26:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %21
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

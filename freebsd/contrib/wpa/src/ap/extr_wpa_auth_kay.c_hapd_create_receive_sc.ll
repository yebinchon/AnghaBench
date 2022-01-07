; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_kay.c_hapd_create_receive_sc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_kay.c_hapd_create_receive_sc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.receive_sc = type { i32 }
%struct.hostapd_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.receive_sc*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.receive_sc*, i32, i32)* @hapd_create_receive_sc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hapd_create_receive_sc(i8* %0, %struct.receive_sc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.receive_sc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hostapd_data*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.receive_sc* %1, %struct.receive_sc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.hostapd_data*
  store %struct.hostapd_data* %12, %struct.hostapd_data** %10, align 8
  %13 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %14 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (i32, %struct.receive_sc*, i32, i32)*, i32 (i32, %struct.receive_sc*, i32, i32)** %16, align 8
  %18 = icmp ne i32 (i32, %struct.receive_sc*, i32, i32)* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %34

20:                                               ; preds = %4
  %21 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %22 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (i32, %struct.receive_sc*, i32, i32)*, i32 (i32, %struct.receive_sc*, i32, i32)** %24, align 8
  %26 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %27 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.receive_sc*, %struct.receive_sc** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @conf_offset_val(i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = call i32 %25(i32 %28, %struct.receive_sc* %29, i32 %31, i32 %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %20, %19
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @conf_offset_val(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_kay.c_hapd_disable_receive_sa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_kay.c_hapd_disable_receive_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.receive_sa = type { i32 }
%struct.hostapd_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.receive_sa*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.receive_sa*)* @hapd_disable_receive_sa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hapd_disable_receive_sa(i8* %0, %struct.receive_sa* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.receive_sa*, align 8
  %6 = alloca %struct.hostapd_data*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.receive_sa* %1, %struct.receive_sa** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.hostapd_data*
  store %struct.hostapd_data* %8, %struct.hostapd_data** %6, align 8
  %9 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %10 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (i32, %struct.receive_sa*)*, i32 (i32, %struct.receive_sa*)** %12, align 8
  %14 = icmp ne i32 (i32, %struct.receive_sa*)* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %27

16:                                               ; preds = %2
  %17 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %18 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (i32, %struct.receive_sa*)*, i32 (i32, %struct.receive_sa*)** %20, align 8
  %22 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %23 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.receive_sa*, %struct.receive_sa** %5, align 8
  %26 = call i32 %21(i32 %24, %struct.receive_sa* %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %16, %15
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

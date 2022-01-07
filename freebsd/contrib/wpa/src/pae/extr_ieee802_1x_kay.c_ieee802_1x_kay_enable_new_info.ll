; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_kay_enable_new_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_kay_enable_new_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802_1x_kay = type { i32 }
%struct.ieee802_1x_mka_participant = type { i64, i64 }

@MAX_RETRY_CNT = common dso_local global i64 0, align 8
@PSK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee802_1x_kay_enable_new_info(%struct.ieee802_1x_kay* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee802_1x_kay*, align 8
  %4 = alloca %struct.ieee802_1x_mka_participant*, align 8
  store %struct.ieee802_1x_kay* %0, %struct.ieee802_1x_kay** %3, align 8
  %5 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %3, align 8
  %6 = call %struct.ieee802_1x_mka_participant* @ieee802_1x_kay_get_principal_participant(%struct.ieee802_1x_kay* %5)
  store %struct.ieee802_1x_mka_participant* %6, %struct.ieee802_1x_mka_participant** %4, align 8
  %7 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %8 = icmp ne %struct.ieee802_1x_mka_participant* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %30

10:                                               ; preds = %1
  %11 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %12 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MAX_RETRY_CNT, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %18 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PSK, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16, %10
  %23 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %24 = call i32 @ieee802_1x_participant_send_mkpdu(%struct.ieee802_1x_mka_participant* %23)
  %25 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %26 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  br label %29

29:                                               ; preds = %22, %16
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %9
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.ieee802_1x_mka_participant* @ieee802_1x_kay_get_principal_participant(%struct.ieee802_1x_kay*) #1

declare dso_local i32 @ieee802_1x_participant_send_mkpdu(%struct.ieee802_1x_mka_participant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

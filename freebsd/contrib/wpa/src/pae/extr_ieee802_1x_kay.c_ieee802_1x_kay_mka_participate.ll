; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_kay_mka_participate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_kay_mka_participate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802_1x_kay = type { i32 }
%struct.mka_key_name = type { i32, i32 }
%struct.ieee802_1x_mka_participant = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee802_1x_kay_mka_participate(%struct.ieee802_1x_kay* %0, %struct.mka_key_name* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee802_1x_kay*, align 8
  %5 = alloca %struct.mka_key_name*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee802_1x_mka_participant*, align 8
  store %struct.ieee802_1x_kay* %0, %struct.ieee802_1x_kay** %4, align 8
  store %struct.mka_key_name* %1, %struct.mka_key_name** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %4, align 8
  %9 = icmp ne %struct.ieee802_1x_kay* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load %struct.mka_key_name*, %struct.mka_key_name** %5, align 8
  %12 = icmp ne %struct.mka_key_name* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %3
  br label %30

14:                                               ; preds = %10
  %15 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %4, align 8
  %16 = load %struct.mka_key_name*, %struct.mka_key_name** %5, align 8
  %17 = getelementptr inbounds %struct.mka_key_name, %struct.mka_key_name* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mka_key_name*, %struct.mka_key_name** %5, align 8
  %20 = getelementptr inbounds %struct.mka_key_name, %struct.mka_key_name* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.ieee802_1x_mka_participant* @ieee802_1x_kay_get_participant(%struct.ieee802_1x_kay* %15, i32 %18, i32 %21)
  store %struct.ieee802_1x_mka_participant* %22, %struct.ieee802_1x_mka_participant** %7, align 8
  %23 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %7, align 8
  %24 = icmp ne %struct.ieee802_1x_mka_participant* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %14
  br label %30

26:                                               ; preds = %14
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %7, align 8
  %29 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %25, %13
  ret void
}

declare dso_local %struct.ieee802_1x_mka_participant* @ieee802_1x_kay_get_participant(%struct.ieee802_1x_kay*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

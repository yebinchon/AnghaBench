; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_kay_get_peer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_kay_get_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802_1x_kay_peer = type { i32 }
%struct.ieee802_1x_mka_participant = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee802_1x_kay_peer* (%struct.ieee802_1x_mka_participant*, i32*)* @ieee802_1x_kay_get_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee802_1x_kay_peer* @ieee802_1x_kay_get_peer(%struct.ieee802_1x_mka_participant* %0, i32* %1) #0 {
  %3 = alloca %struct.ieee802_1x_kay_peer*, align 8
  %4 = alloca %struct.ieee802_1x_mka_participant*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee802_1x_kay_peer*, align 8
  store %struct.ieee802_1x_mka_participant* %0, %struct.ieee802_1x_mka_participant** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call %struct.ieee802_1x_kay_peer* @ieee802_1x_kay_get_live_peer(%struct.ieee802_1x_mka_participant* %7, i32* %8)
  store %struct.ieee802_1x_kay_peer* %9, %struct.ieee802_1x_kay_peer** %6, align 8
  %10 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %6, align 8
  %11 = icmp ne %struct.ieee802_1x_kay_peer* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %6, align 8
  store %struct.ieee802_1x_kay_peer* %13, %struct.ieee802_1x_kay_peer** %3, align 8
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call %struct.ieee802_1x_kay_peer* @ieee802_1x_kay_get_potential_peer(%struct.ieee802_1x_mka_participant* %15, i32* %16)
  store %struct.ieee802_1x_kay_peer* %17, %struct.ieee802_1x_kay_peer** %3, align 8
  br label %18

18:                                               ; preds = %14, %12
  %19 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %3, align 8
  ret %struct.ieee802_1x_kay_peer* %19
}

declare dso_local %struct.ieee802_1x_kay_peer* @ieee802_1x_kay_get_live_peer(%struct.ieee802_1x_mka_participant*, i32*) #1

declare dso_local %struct.ieee802_1x_kay_peer* @ieee802_1x_kay_get_potential_peer(%struct.ieee802_1x_mka_participant*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

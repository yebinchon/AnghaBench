; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_kay_create_potential_peer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_kay_create_potential_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802_1x_kay_peer = type { i32 }
%struct.ieee802_1x_mka_participant = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"KaY: Potential peer created\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee802_1x_kay_peer* (%struct.ieee802_1x_mka_participant*, i32*, i32)* @ieee802_1x_kay_create_potential_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee802_1x_kay_peer* @ieee802_1x_kay_create_potential_peer(%struct.ieee802_1x_mka_participant* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee802_1x_kay_peer*, align 8
  %5 = alloca %struct.ieee802_1x_mka_participant*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee802_1x_kay_peer*, align 8
  store %struct.ieee802_1x_mka_participant* %0, %struct.ieee802_1x_mka_participant** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %6, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call %struct.ieee802_1x_kay_peer* @ieee802_1x_kay_create_peer(i32* %9, i32 %10)
  store %struct.ieee802_1x_kay_peer* %11, %struct.ieee802_1x_kay_peer** %8, align 8
  %12 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %8, align 8
  %13 = icmp ne %struct.ieee802_1x_kay_peer* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.ieee802_1x_kay_peer* null, %struct.ieee802_1x_kay_peer** %4, align 8
  br label %26

15:                                               ; preds = %3
  %16 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %5, align 8
  %17 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %16, i32 0, i32 0
  %18 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %8, align 8
  %19 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %18, i32 0, i32 0
  %20 = call i32 @dl_list_add(i32* %17, i32* %19)
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = call i32 @wpa_printf(i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %8, align 8
  %24 = call i32 @ieee802_1x_kay_dump_peer(%struct.ieee802_1x_kay_peer* %23)
  %25 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %8, align 8
  store %struct.ieee802_1x_kay_peer* %25, %struct.ieee802_1x_kay_peer** %4, align 8
  br label %26

26:                                               ; preds = %15, %14
  %27 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %4, align 8
  ret %struct.ieee802_1x_kay_peer* %27
}

declare dso_local %struct.ieee802_1x_kay_peer* @ieee802_1x_kay_create_peer(i32*, i32) #1

declare dso_local i32 @dl_list_add(i32*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @ieee802_1x_kay_dump_peer(%struct.ieee802_1x_kay_peer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

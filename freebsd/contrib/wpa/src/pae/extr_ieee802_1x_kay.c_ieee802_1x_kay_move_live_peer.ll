; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_kay_move_live_peer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_kay_move_live_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802_1x_kay_peer = type { i32, i64, i32, i32 }
%struct.ieee802_1x_mka_participant = type { i32, i32, i32, i32 }
%struct.receive_sc = type { i32, i64, i32, i32 }

@MKA_LIFE_TIME = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"KaY: Move potential peer to live peer\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"KaY: Can't create SC, discard peer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee802_1x_kay_peer* (%struct.ieee802_1x_mka_participant*, i32*, i32)* @ieee802_1x_kay_move_live_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee802_1x_kay_peer* @ieee802_1x_kay_move_live_peer(%struct.ieee802_1x_mka_participant* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee802_1x_kay_peer*, align 8
  %5 = alloca %struct.ieee802_1x_mka_participant*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee802_1x_kay_peer*, align 8
  %9 = alloca %struct.receive_sc*, align 8
  store %struct.ieee802_1x_mka_participant* %0, %struct.ieee802_1x_mka_participant** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call %struct.receive_sc* @ieee802_1x_kay_get_potential_peer(%struct.ieee802_1x_mka_participant* %10, i32* %11)
  %13 = bitcast %struct.receive_sc* %12 to %struct.ieee802_1x_kay_peer*
  store %struct.ieee802_1x_kay_peer* %13, %struct.ieee802_1x_kay_peer** %8, align 8
  %14 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %8, align 8
  %15 = icmp ne %struct.ieee802_1x_kay_peer* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.ieee802_1x_kay_peer* null, %struct.ieee802_1x_kay_peer** %4, align 8
  br label %74

17:                                               ; preds = %3
  %18 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %5, align 8
  %19 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %18, i32 0, i32 3
  %20 = call %struct.receive_sc* @ieee802_1x_kay_init_receive_sc(i32* %19)
  store %struct.receive_sc* %20, %struct.receive_sc** %9, align 8
  %21 = load %struct.receive_sc*, %struct.receive_sc** %9, align 8
  %22 = icmp ne %struct.receive_sc* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store %struct.ieee802_1x_kay_peer* null, %struct.ieee802_1x_kay_peer** %4, align 8
  br label %74

24:                                               ; preds = %17
  %25 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %8, align 8
  %26 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %25, i32 0, i32 3
  %27 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %5, align 8
  %28 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %27, i32 0, i32 3
  %29 = call i32 @os_memcpy(i32* %26, i32* %28, i32 4)
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %8, align 8
  %32 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = call i64 @time(i32* null)
  %34 = load i32, i32* @MKA_LIFE_TIME, align 4
  %35 = sdiv i32 %34, 1000
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %8, align 8
  %39 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = call i32 @wpa_printf(i32 %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %8, align 8
  %43 = bitcast %struct.ieee802_1x_kay_peer* %42 to %struct.receive_sc*
  %44 = call i32 @ieee802_1x_kay_dump_peer(%struct.receive_sc* %43)
  %45 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %8, align 8
  %46 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %45, i32 0, i32 0
  %47 = call i32 @dl_list_del(i32* %46)
  %48 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %5, align 8
  %49 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.receive_sc*, %struct.receive_sc** %9, align 8
  %52 = call i64 @secy_create_receive_sc(i32 %50, %struct.receive_sc* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %24
  %55 = load i32, i32* @MSG_ERROR, align 4
  %56 = call i32 @wpa_printf(i32 %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.receive_sc*, %struct.receive_sc** %9, align 8
  %58 = call i32 @os_free(%struct.receive_sc* %57)
  %59 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %8, align 8
  %60 = bitcast %struct.ieee802_1x_kay_peer* %59 to %struct.receive_sc*
  %61 = call i32 @os_free(%struct.receive_sc* %60)
  store %struct.ieee802_1x_kay_peer* null, %struct.ieee802_1x_kay_peer** %4, align 8
  br label %74

62:                                               ; preds = %24
  %63 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %5, align 8
  %64 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %63, i32 0, i32 1
  %65 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %8, align 8
  %66 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %65, i32 0, i32 0
  %67 = call i32 @dl_list_add_tail(i32* %64, i32* %66)
  %68 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %5, align 8
  %69 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %68, i32 0, i32 0
  %70 = load %struct.receive_sc*, %struct.receive_sc** %9, align 8
  %71 = getelementptr inbounds %struct.receive_sc, %struct.receive_sc* %70, i32 0, i32 0
  %72 = call i32 @dl_list_add(i32* %69, i32* %71)
  %73 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %8, align 8
  store %struct.ieee802_1x_kay_peer* %73, %struct.ieee802_1x_kay_peer** %4, align 8
  br label %74

74:                                               ; preds = %62, %54, %23, %16
  %75 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %4, align 8
  ret %struct.ieee802_1x_kay_peer* %75
}

declare dso_local %struct.receive_sc* @ieee802_1x_kay_get_potential_peer(%struct.ieee802_1x_mka_participant*, i32*) #1

declare dso_local %struct.receive_sc* @ieee802_1x_kay_init_receive_sc(i32*) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @ieee802_1x_kay_dump_peer(%struct.receive_sc*) #1

declare dso_local i32 @dl_list_del(i32*) #1

declare dso_local i64 @secy_create_receive_sc(i32, %struct.receive_sc*) #1

declare dso_local i32 @os_free(%struct.receive_sc*) #1

declare dso_local i32 @dl_list_add_tail(i32*, i32*) #1

declare dso_local i32 @dl_list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

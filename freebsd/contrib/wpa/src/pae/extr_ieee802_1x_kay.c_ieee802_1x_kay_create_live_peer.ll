; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_kay_create_live_peer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_kay_create_live_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802_1x_kay_peer = type { i32, i32 }
%struct.ieee802_1x_mka_participant = type { i32, i32, i32, i32 }
%struct.receive_sc = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"KaY: Live peer created\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee802_1x_kay_peer* (%struct.ieee802_1x_mka_participant*, i32*, i32)* @ieee802_1x_kay_create_live_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee802_1x_kay_peer* @ieee802_1x_kay_create_live_peer(%struct.ieee802_1x_mka_participant* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee802_1x_kay_peer*, align 8
  %5 = alloca %struct.ieee802_1x_mka_participant*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee802_1x_kay_peer*, align 8
  %9 = alloca %struct.receive_sc*, align 8
  store %struct.ieee802_1x_mka_participant* %0, %struct.ieee802_1x_mka_participant** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.receive_sc* @ieee802_1x_kay_create_peer(i32* %10, i32 %11)
  %13 = bitcast %struct.receive_sc* %12 to %struct.ieee802_1x_kay_peer*
  store %struct.ieee802_1x_kay_peer* %13, %struct.ieee802_1x_kay_peer** %8, align 8
  %14 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %8, align 8
  %15 = icmp ne %struct.ieee802_1x_kay_peer* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.ieee802_1x_kay_peer* null, %struct.ieee802_1x_kay_peer** %4, align 8
  br label %62

17:                                               ; preds = %3
  %18 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %8, align 8
  %19 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %18, i32 0, i32 1
  %20 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %5, align 8
  %21 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %20, i32 0, i32 3
  %22 = call i32 @os_memcpy(i32* %19, i32* %21, i32 4)
  %23 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %8, align 8
  %24 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %23, i32 0, i32 1
  %25 = call %struct.receive_sc* @ieee802_1x_kay_init_receive_sc(i32* %24)
  store %struct.receive_sc* %25, %struct.receive_sc** %9, align 8
  %26 = load %struct.receive_sc*, %struct.receive_sc** %9, align 8
  %27 = icmp ne %struct.receive_sc* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %17
  %29 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %8, align 8
  %30 = bitcast %struct.ieee802_1x_kay_peer* %29 to %struct.receive_sc*
  %31 = call i32 @os_free(%struct.receive_sc* %30)
  store %struct.ieee802_1x_kay_peer* null, %struct.ieee802_1x_kay_peer** %4, align 8
  br label %62

32:                                               ; preds = %17
  %33 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %5, align 8
  %34 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.receive_sc*, %struct.receive_sc** %9, align 8
  %37 = call i64 @secy_create_receive_sc(i32 %35, %struct.receive_sc* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load %struct.receive_sc*, %struct.receive_sc** %9, align 8
  %41 = call i32 @os_free(%struct.receive_sc* %40)
  %42 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %8, align 8
  %43 = bitcast %struct.ieee802_1x_kay_peer* %42 to %struct.receive_sc*
  %44 = call i32 @os_free(%struct.receive_sc* %43)
  store %struct.ieee802_1x_kay_peer* null, %struct.ieee802_1x_kay_peer** %4, align 8
  br label %62

45:                                               ; preds = %32
  %46 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %5, align 8
  %47 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %46, i32 0, i32 1
  %48 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %8, align 8
  %49 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %48, i32 0, i32 0
  %50 = call i32 @dl_list_add(i32* %47, i32* %49)
  %51 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %5, align 8
  %52 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %51, i32 0, i32 0
  %53 = load %struct.receive_sc*, %struct.receive_sc** %9, align 8
  %54 = getelementptr inbounds %struct.receive_sc, %struct.receive_sc* %53, i32 0, i32 0
  %55 = call i32 @dl_list_add(i32* %52, i32* %54)
  %56 = load i32, i32* @MSG_DEBUG, align 4
  %57 = call i32 @wpa_printf(i32 %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %8, align 8
  %59 = bitcast %struct.ieee802_1x_kay_peer* %58 to %struct.receive_sc*
  %60 = call i32 @ieee802_1x_kay_dump_peer(%struct.receive_sc* %59)
  %61 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %8, align 8
  store %struct.ieee802_1x_kay_peer* %61, %struct.ieee802_1x_kay_peer** %4, align 8
  br label %62

62:                                               ; preds = %45, %39, %28, %16
  %63 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %4, align 8
  ret %struct.ieee802_1x_kay_peer* %63
}

declare dso_local %struct.receive_sc* @ieee802_1x_kay_create_peer(i32*, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local %struct.receive_sc* @ieee802_1x_kay_init_receive_sc(i32*) #1

declare dso_local i32 @os_free(%struct.receive_sc*) #1

declare dso_local i64 @secy_create_receive_sc(i32, %struct.receive_sc*) #1

declare dso_local i32 @dl_list_add(i32*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @ieee802_1x_kay_dump_peer(%struct.receive_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

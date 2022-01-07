; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_match_group_where_peer_is_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_match_group_where_peer_is_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_group = type { i32 }
%struct.peer_group_data = type { i8**, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.p2p_group_config = type { i32, i32 }
%struct.wpa_supplicant = type { i8* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p2p_group*, i8*)* @match_group_where_peer_is_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_group_where_peer_is_client(%struct.p2p_group* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p2p_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.peer_group_data*, align 8
  %7 = alloca %struct.p2p_group_config*, align 8
  %8 = alloca %struct.wpa_supplicant*, align 8
  %9 = alloca i8**, align 8
  store %struct.p2p_group* %0, %struct.p2p_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.peer_group_data*
  store %struct.peer_group_data* %11, %struct.peer_group_data** %6, align 8
  %12 = load %struct.p2p_group*, %struct.p2p_group** %4, align 8
  %13 = load %struct.peer_group_data*, %struct.peer_group_data** %6, align 8
  %14 = getelementptr inbounds %struct.peer_group_data, %struct.peer_group_data* %13, i32 0, i32 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @p2p_group_is_client_connected(%struct.p2p_group* %12, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %72

21:                                               ; preds = %2
  %22 = load %struct.p2p_group*, %struct.p2p_group** %4, align 8
  %23 = call %struct.p2p_group_config* @p2p_group_get_config(%struct.p2p_group* %22)
  store %struct.p2p_group_config* %23, %struct.p2p_group_config** %7, align 8
  %24 = load %struct.peer_group_data*, %struct.peer_group_data** %6, align 8
  %25 = getelementptr inbounds %struct.peer_group_data, %struct.peer_group_data* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.p2p_group_config*, %struct.p2p_group_config** %7, align 8
  %28 = getelementptr inbounds %struct.p2p_group_config, %struct.p2p_group_config* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.p2p_group_config*, %struct.p2p_group_config** %7, align 8
  %31 = getelementptr inbounds %struct.p2p_group_config, %struct.p2p_group_config* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.wpa_supplicant* @wpas_get_p2p_go_iface(i32 %26, i32 %29, i32 %32)
  store %struct.wpa_supplicant* %33, %struct.wpa_supplicant** %8, align 8
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %35 = icmp eq %struct.wpa_supplicant* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %72

37:                                               ; preds = %21
  %38 = load %struct.peer_group_data*, %struct.peer_group_data** %6, align 8
  %39 = getelementptr inbounds %struct.peer_group_data, %struct.peer_group_data* %38, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = load %struct.peer_group_data*, %struct.peer_group_data** %6, align 8
  %42 = getelementptr inbounds %struct.peer_group_data, %struct.peer_group_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  %45 = call i8** @os_realloc_array(i8** %40, i32 %44, i32 8)
  store i8** %45, i8*** %9, align 8
  %46 = load i8**, i8*** %9, align 8
  %47 = icmp eq i8** %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %68

49:                                               ; preds = %37
  %50 = load i8**, i8*** %9, align 8
  %51 = load %struct.peer_group_data*, %struct.peer_group_data** %6, align 8
  %52 = getelementptr inbounds %struct.peer_group_data, %struct.peer_group_data* %51, i32 0, i32 0
  store i8** %50, i8*** %52, align 8
  %53 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %54 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.peer_group_data*, %struct.peer_group_data** %6, align 8
  %57 = getelementptr inbounds %struct.peer_group_data, %struct.peer_group_data* %56, i32 0, i32 0
  %58 = load i8**, i8*** %57, align 8
  %59 = load %struct.peer_group_data*, %struct.peer_group_data** %6, align 8
  %60 = getelementptr inbounds %struct.peer_group_data, %struct.peer_group_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %58, i64 %62
  store i8* %55, i8** %63, align 8
  %64 = load %struct.peer_group_data*, %struct.peer_group_data** %6, align 8
  %65 = getelementptr inbounds %struct.peer_group_data, %struct.peer_group_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  store i32 1, i32* %3, align 4
  br label %72

68:                                               ; preds = %48
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = load %struct.peer_group_data*, %struct.peer_group_data** %6, align 8
  %71 = getelementptr inbounds %struct.peer_group_data, %struct.peer_group_data* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %49, %36, %20
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @p2p_group_is_client_connected(%struct.p2p_group*, i32) #1

declare dso_local %struct.p2p_group_config* @p2p_group_get_config(%struct.p2p_group*) #1

declare dso_local %struct.wpa_supplicant* @wpas_get_p2p_go_iface(i32, i32, i32) #1

declare dso_local i8** @os_realloc_array(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

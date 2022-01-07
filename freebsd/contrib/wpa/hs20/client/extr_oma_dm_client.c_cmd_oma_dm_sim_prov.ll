; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_cmd_oma_dm_sim_prov.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_cmd_oma_dm_sim_prov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32, i64, i32, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Invalid prov command (missing URL)\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"OMA-DM SIM provisioning requested\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Wait for IP address before starting SIM provisioning\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"Could not get IP address for WLAN - try connection anyway\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"OMA-DM SIM provisioning\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Updating wpa_supplicant credentials\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"Requesting reconnection with updated configuration\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"INTERWORKING_SELECT auto\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"Failed to request wpa_supplicant to reconnect\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_oma_dm_sim_prov(%struct.hs20_osu_client* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hs20_osu_client*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @MSG_INFO, align 4
  %14 = call i32 @wpa_printf(i32 %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %113

15:                                               ; preds = %2
  %16 = load i32, i32* @MSG_INFO, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %19 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %18, i32 0, i32 0
  store i32 2, i32* %19, align 8
  %20 = load i32, i32* @MSG_INFO, align 4
  %21 = call i32 @wpa_printf(i32 %20, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %22 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %23 = call i32 @write_summary(%struct.hs20_osu_client* %22, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %24 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %25 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @wait_ip_addr(i32 %26, i32 15)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %15
  %30 = load i32, i32* @MSG_INFO, align 4
  %31 = call i32 @wpa_printf(i32 %30, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %15
  %33 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %34 = call i32 @write_summary(%struct.hs20_osu_client* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  %37 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32* @build_oma_dm_1_sub_prov(%struct.hs20_osu_client* %37, i8* %38, i32 %39)
  store i32* %40, i32** %6, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  store i32 -1, i32* %3, align 4
  br label %113

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %63, %44
  %46 = load i32*, i32** %6, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %76

48:                                               ; preds = %45
  %49 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i8*, i8** %8, align 8
  br label %56

54:                                               ; preds = %48
  %55 = load i8*, i8** %5, align 8
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i8* [ %53, %52 ], [ %55, %54 ]
  %58 = load i32*, i32** %6, align 8
  %59 = call i32* @oma_dm_send_recv(%struct.hs20_osu_client* %49, i8* %57, i32* %58, i32* null, i32* null, i32* null, i32* null, i32* null)
  store i32* %59, i32** %7, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 -1, i32* %3, align 4
  br label %113

63:                                               ; preds = %56
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  %66 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32* @oma_dm_process(%struct.hs20_osu_client* %66, i8* %67, i32* %68, i32 %69, i8** %8, i32* null, i32* null)
  store i32* %70, i32** %6, align 8
  %71 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %72 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @xml_node_free(i32 %73, i32* %74)
  br label %45

76:                                               ; preds = %45
  %77 = load i8*, i8** %8, align 8
  %78 = call i32 @os_free(i8* %77)
  %79 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %80 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %106

83:                                               ; preds = %76
  %84 = load i32, i32* @MSG_INFO, align 4
  %85 = call i32 @wpa_printf(i32 %84, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %86 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %87 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %88 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @cmd_set_pps(%struct.hs20_osu_client* %86, i32 %89)
  %91 = load i32, i32* @MSG_INFO, align 4
  %92 = call i32 @wpa_printf(i32 %91, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  %93 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %94 = call i32 @write_summary(%struct.hs20_osu_client* %93, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  %95 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %96 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @wpa_command(i32 %97, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %83
  %101 = load i32, i32* @MSG_INFO, align 4
  %102 = call i32 @wpa_printf(i32 %101, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  %103 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %104 = call i32 @write_summary(%struct.hs20_osu_client* %103, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %113

105:                                              ; preds = %83
  br label %106

106:                                              ; preds = %105, %76
  %107 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %108 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 0, i32 -1
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %106, %100, %62, %43, %12
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @write_summary(%struct.hs20_osu_client*, i8*) #1

declare dso_local i64 @wait_ip_addr(i32, i32) #1

declare dso_local i32* @build_oma_dm_1_sub_prov(%struct.hs20_osu_client*, i8*, i32) #1

declare dso_local i32* @oma_dm_send_recv(%struct.hs20_osu_client*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @oma_dm_process(%struct.hs20_osu_client*, i8*, i32*, i32, i8**, i32*, i32*) #1

declare dso_local i32 @xml_node_free(i32, i32*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @cmd_set_pps(%struct.hs20_osu_client*, i32) #1

declare dso_local i64 @wpa_command(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

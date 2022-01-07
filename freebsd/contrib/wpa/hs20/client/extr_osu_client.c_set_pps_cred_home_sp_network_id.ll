; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_set_pps_cred_home_sp_network_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_set_pps_cred_home_sp_network_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"SSID\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Ignore HomeSP/NetworkID without mandatory SSID node\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"HESSID\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"- HomeSP/NetworkID/<X+>/SSID = %s\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"- HomeSP/NetworkID/<X+>/HESSID = %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hs20_osu_client*, i32, i32*)* @set_pps_cred_home_sp_network_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_pps_cred_home_sp_network_id(%struct.hs20_osu_client* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.hs20_osu_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %12 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = call i32* @get_node(i32 %13, i32* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @MSG_INFO, align 4
  %20 = call i32 (i32, i8*, ...) @wpa_printf(i32 %19, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %67

21:                                               ; preds = %3
  %22 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %23 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = call i32* @get_node(i32 %24, i32* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32* %26, i32** %8, align 8
  %27 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %28 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = call i8* @xml_node_get_text(i32 %29, i32* %30)
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  br label %67

35:                                               ; preds = %21
  %36 = load i32*, i32** %8, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %40 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = call i8* @xml_node_get_text(i32 %41, i32* %42)
  br label %45

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %38
  %46 = phi i8* [ %43, %38 ], [ null, %44 ]
  store i8* %46, i8** %10, align 8
  %47 = load i32, i32* @MSG_INFO, align 4
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 (i32, i8*, ...) @wpa_printf(i32 %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %48)
  %50 = load i8*, i8** %10, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32, i32* @MSG_INFO, align 4
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 (i32, i8*, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %52, %45
  %57 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %58 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @xml_node_get_text_free(i32 %59, i8* %60)
  %62 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %63 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @xml_node_get_text_free(i32 %64, i8* %65)
  br label %67

67:                                               ; preds = %56, %34, %18
  ret void
}

declare dso_local i32* @get_node(i32, i32*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i8* @xml_node_get_text(i32, i32*) #1

declare dso_local i32 @xml_node_get_text_free(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

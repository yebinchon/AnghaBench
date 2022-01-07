; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_spp_client.c_hs20_add_mo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_spp_client.c_hs20_add_mo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Received addMO\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"moURN\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"[hs20] No moURN in addMO\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"addMO - moURN: '%s'\00", align 1
@URN_HS20_PPS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"[hs20] Unsupported MO in addMO\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"managementTreeURI\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"[hs20] No managementTreeURI in addMO\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"addMO - managementTreeURI: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hs20_osu_client*, i32*, i8*, i64)* @hs20_add_mo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hs20_add_mo(%struct.hs20_osu_client* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hs20_osu_client*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @debug_dump_node(%struct.hs20_osu_client* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %14)
  %16 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %17 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call i8* @get_spp_attr_value(i32 %18, i32* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @MSG_INFO, align 4
  %25 = call i32 (i32, i8*, ...) @wpa_printf(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %74

26:                                               ; preds = %4
  %27 = load i32, i32* @MSG_INFO, align 4
  %28 = load i8*, i8** %11, align 8
  %29 = call i32 (i32, i8*, ...) @wpa_printf(i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %28)
  %30 = load i8*, i8** %11, align 8
  %31 = load i32, i32* @URN_HS20_PPS, align 4
  %32 = call i64 @strcasecmp(i8* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load i32, i32* @MSG_INFO, align 4
  %36 = call i32 (i32, i8*, ...) @wpa_printf(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %37 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %38 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @xml_node_get_attr_value_free(i32 %39, i8* %40)
  store i32 -1, i32* %5, align 4
  br label %74

42:                                               ; preds = %26
  %43 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %44 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @xml_node_get_attr_value_free(i32 %45, i8* %46)
  %48 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %49 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = call i8* @get_spp_attr_value(i32 %50, i32* %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  store i8* %52, i8** %10, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %42
  %56 = load i32, i32* @MSG_INFO, align 4
  %57 = call i32 (i32, i8*, ...) @wpa_printf(i32 %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %74

58:                                               ; preds = %42
  %59 = load i32, i32* @MSG_INFO, align 4
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 (i32, i8*, ...) @wpa_printf(i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* %60)
  %62 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @hs20_add_pps_mo(%struct.hs20_osu_client* %62, i8* %63, i32* %64, i8* %65, i64 %66)
  store i32 %67, i32* %12, align 4
  %68 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %69 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 @xml_node_get_attr_value_free(i32 %70, i8* %71)
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %58, %55, %34, %23
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @debug_dump_node(%struct.hs20_osu_client*, i8*, i32*) #1

declare dso_local i8* @get_spp_attr_value(i32, i32*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @strcasecmp(i8*, i32) #1

declare dso_local i32 @xml_node_get_attr_value_free(i32, i8*) #1

declare dso_local i32 @hs20_add_pps_mo(%struct.hs20_osu_client*, i8*, i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

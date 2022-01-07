; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_spp_client.c_process_spp_exchange_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_spp_client.c_process_spp_exchange_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"sppExchangeComplete\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"sppStatus\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"No sppStatus attribute\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Received sppExchangeComplete sppStatus='%s'\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"sessionID\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"No sessionID attribute\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"[hs20] sppStatus: '%s'  sessionID: '%s'\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Exchange complete, release TLS connection\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Unexpected sppStatus '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hs20_osu_client*, i32*)* @process_spp_exchange_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_spp_exchange_complete(%struct.hs20_osu_client* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hs20_osu_client*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @debug_dump_node(%struct.hs20_osu_client* %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %9)
  %11 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %12 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i8* @get_spp_attr_value(i32 %13, i32* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @MSG_INFO, align 4
  %20 = call i32 (i32, i8*, ...) @wpa_printf(i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %71

21:                                               ; preds = %2
  %22 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @write_summary(%struct.hs20_osu_client* %22, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %23)
  %25 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %26 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = call i8* @get_spp_attr_value(i32 %27, i32* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %21
  %33 = load i32, i32* @MSG_INFO, align 4
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %35 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %36 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @xml_node_get_attr_value_free(i32 %37, i8* %38)
  store i32 -1, i32* %3, align 4
  br label %71

40:                                               ; preds = %21
  %41 = load i32, i32* @MSG_INFO, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 (i32, i8*, ...) @wpa_printf(i32 %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8* %42, i8* %43)
  %45 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %46 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @xml_node_get_attr_value_free(i32 %47, i8* %48)
  %50 = load i8*, i8** %6, align 8
  %51 = call i64 @strcasecmp(i8* %50, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %40
  %54 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %55 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @xml_node_get_attr_value_free(i32 %56, i8* %57)
  store i32 0, i32* %3, align 4
  br label %71

59:                                               ; preds = %40
  %60 = load i32, i32* @MSG_INFO, align 4
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 (i32, i8*, ...) @wpa_printf(i32 %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* %61)
  %63 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @write_summary(%struct.hs20_osu_client* %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* %64)
  %66 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %67 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @xml_node_get_attr_value_free(i32 %68, i8* %69)
  store i32 -1, i32* %3, align 4
  br label %71

71:                                               ; preds = %59, %53, %32, %18
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @debug_dump_node(%struct.hs20_osu_client*, i8*, i32*) #1

declare dso_local i8* @get_spp_attr_value(i32, i32*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @write_summary(%struct.hs20_osu_client*, i8*, i8*) #1

declare dso_local i32 @xml_node_get_attr_value_free(i32, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

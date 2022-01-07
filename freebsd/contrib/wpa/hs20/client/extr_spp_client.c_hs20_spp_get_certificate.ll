; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_spp_client.c_hs20_spp_get_certificate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_spp_client.c_hs20_spp_get_certificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Client certificate enrollment\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"EST simpleEnroll failed\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Certificate enrollment completed\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Certificate enrollment failed\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Received response to certificate enrollment completed\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"sppPostDevDataResponse\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"SPP validation failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.hs20_osu_client*, i32*, i8*, i8*)* @hs20_spp_get_certificate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @hs20_spp_get_certificate(%struct.hs20_osu_client* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hs20_osu_client*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* @MSG_INFO, align 4
  %15 = call i32 @wpa_printf(i32 %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @osu_get_certificate(%struct.hs20_osu_client* %16, i32* %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @MSG_INFO, align 4
  %23 = call i32 @wpa_printf(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %4
  %25 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %13, align 4
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0)
  %31 = call i32* @build_spp_post_dev_data(%struct.hs20_osu_client* %25, i32** %10, i8* %26, i8* %30)
  store i32* %31, i32** %11, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store i32* null, i32** %5, align 8
  br label %62

35:                                               ; preds = %24
  %36 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %37 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = call i32* @soap_send_receive(i32 %38, i32* %39)
  store i32* %40, i32** %12, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32* null, i32** %5, align 8
  br label %62

44:                                               ; preds = %35
  %45 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = call i32 @debug_dump_node(%struct.hs20_osu_client* %45, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32* %46)
  %48 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = call i64 @hs20_spp_validate(%struct.hs20_osu_client* %48, i32* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %44
  %53 = load i32, i32* @MSG_INFO, align 4
  %54 = call i32 @wpa_printf(i32 %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %55 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %56 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @xml_node_free(i32 %57, i32* %58)
  store i32* null, i32** %5, align 8
  br label %62

60:                                               ; preds = %44
  %61 = load i32*, i32** %12, align 8
  store i32* %61, i32** %5, align 8
  br label %62

62:                                               ; preds = %60, %52, %43, %34
  %63 = load i32*, i32** %5, align 8
  ret i32* %63
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @osu_get_certificate(%struct.hs20_osu_client*, i32*) #1

declare dso_local i32* @build_spp_post_dev_data(%struct.hs20_osu_client*, i32**, i8*, i8*) #1

declare dso_local i32* @soap_send_receive(i32, i32*) #1

declare dso_local i32 @debug_dump_node(%struct.hs20_osu_client*, i8*, i32*) #1

declare dso_local i64 @hs20_spp_validate(%struct.hs20_osu_client*, i32*, i8*) #1

declare dso_local i32 @xml_node_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

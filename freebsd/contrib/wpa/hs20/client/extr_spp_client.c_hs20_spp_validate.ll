; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_spp_client.c_hs20_spp_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_spp_client.c_hs20_spp_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { %struct.xml_node_ctx* }
%struct.xml_node_ctx = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Unexpected SOAP method name '%s' (expected '%s')\00", align 1
@spp_xsd_fname = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"XML schema validation error(s)\0A%s\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"SPP XML schema validation failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hs20_osu_client*, i32*, i8*)* @hs20_spp_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hs20_spp_validate(%struct.hs20_osu_client* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hs20_osu_client*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.xml_node_ctx*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %13 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %12, i32 0, i32 0
  %14 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %13, align 8
  store %struct.xml_node_ctx* %14, %struct.xml_node_ctx** %8, align 8
  %15 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %8, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @xml_node_is_element(%struct.xml_node_ctx* %15, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %58

20:                                               ; preds = %3
  %21 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %8, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i8* @xml_node_get_localname(%struct.xml_node_ctx* %21, i32* %22)
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %58

27:                                               ; preds = %20
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i64 @strcmp(i8* %28, i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load i32, i32* @MSG_INFO, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %34, i8* %35)
  %37 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 (%struct.hs20_osu_client*, i8*, ...) @write_summary(%struct.hs20_osu_client* %37, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %38, i8* %39)
  store i32 -1, i32* %4, align 4
  br label %58

41:                                               ; preds = %27
  %42 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %8, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @spp_xsd_fname, align 4
  %45 = call i32 @xml_validate(%struct.xml_node_ctx* %42, i32* %43, i32 %44, i8** %10)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load i32, i32* @MSG_INFO, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %52 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %53 = call i32 (%struct.hs20_osu_client*, i8*, ...) @write_summary(%struct.hs20_osu_client* %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @os_free(i8* %54)
  br label %56

56:                                               ; preds = %48, %41
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %32, %26, %19
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @xml_node_is_element(%struct.xml_node_ctx*, i32*) #1

declare dso_local i8* @xml_node_get_localname(%struct.xml_node_ctx*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*, ...) #1

declare dso_local i32 @write_summary(%struct.hs20_osu_client*, i8*, ...) #1

declare dso_local i32 @xml_validate(%struct.xml_node_ctx*, i32*, i32, i8**) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

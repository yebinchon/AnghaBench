; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_oma_dm_add_hs20_generic_alert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_oma_dm_add_hs20_generic_alert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32 }

@DM_GENERIC_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Item\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Source\00", align 1
@DM_URI_PPS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"Meta\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Reversed-Domain-Name: %s\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"syncml:metinf\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Format\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"xml\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hs20_osu_client*, i32*, i32, i8*, i8*)* @oma_dm_add_hs20_generic_alert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oma_dm_add_hs20_generic_alert(%struct.hs20_osu_client* %0, i32* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.hs20_osu_client*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [200 x i8], align 16
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @DM_GENERIC_ALERT, align 4
  %18 = call i32* @add_alert(%struct.hs20_osu_client* %14, i32* %15, i32 %16, i32 %17)
  store i32* %18, i32** %11, align 8
  %19 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %20 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %11, align 8
  %23 = call i32* @xml_node_create(i32 %21, i32* %22, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %23, i32** %12, align 8
  %24 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = load i32, i32* @DM_URI_PPS, align 4
  %27 = call i32 @oma_dm_add_locuri(%struct.hs20_osu_client* %24, i32* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %29 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %12, align 8
  %32 = call i32* @xml_node_create(i32 %30, i32* %31, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32* %32, i32** %11, align 8
  %33 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i64 0, i64 0
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @snprintf(i8* %33, i32 200, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %34)
  %36 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %37 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i64 0, i64 0
  %41 = call i32 @xml_node_create_text_ns(i32 %38, i32* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %40)
  %42 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %43 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @xml_node_create_text_ns(i32 %44, i32* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %47 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %48 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %12, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @xml_node_create_text(i32 %49, i32* %50, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %51)
  ret void
}

declare dso_local i32* @add_alert(%struct.hs20_osu_client*, i32*, i32, i32) #1

declare dso_local i32* @xml_node_create(i32, i32*, i32*, i8*) #1

declare dso_local i32 @oma_dm_add_locuri(%struct.hs20_osu_client*, i32*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @xml_node_create_text_ns(i32, i32*, i8*, i8*, i8*) #1

declare dso_local i32 @xml_node_create_text(i32, i32*, i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

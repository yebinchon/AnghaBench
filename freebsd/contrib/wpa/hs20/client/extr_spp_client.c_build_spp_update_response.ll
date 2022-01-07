; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_spp_client.c_build_spp_update_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_spp_client.c_build_spp_update_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32 }

@SPP_NS_URI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"spp\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"sppUpdateResponse\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"sppVersion\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"sessionID\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"sppStatus\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"sppError\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"errorCode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.hs20_osu_client*, i8*, i8*, i8*)* @build_spp_update_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @build_spp_update_response(%struct.hs20_osu_client* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hs20_osu_client*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %14 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SPP_NS_URI, align 4
  %17 = call i32* @xml_node_create_root(i32 %15, i32 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32** %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %63

21:                                               ; preds = %4
  %22 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %23 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %11, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 @xml_node_add_attr(i32 %24, i32* %25, i32* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %28 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %29 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %11, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @xml_node_add_attr(i32 %30, i32* %31, i32* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %33)
  %35 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %36 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @xml_node_add_attr(i32 %37, i32* %38, i32* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %40)
  %42 = load i8*, i8** %9, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %61

44:                                               ; preds = %21
  %45 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %46 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = call i32* @xml_node_create(i32 %47, i32* %48, i32* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32* %50, i32** %12, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %44
  %54 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %55 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %12, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @xml_node_add_attr(i32 %56, i32* %57, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %53, %44
  br label %61

61:                                               ; preds = %60, %21
  %62 = load i32*, i32** %11, align 8
  store i32* %62, i32** %5, align 8
  br label %63

63:                                               ; preds = %61, %20
  %64 = load i32*, i32** %5, align 8
  ret i32* %64
}

declare dso_local i32* @xml_node_create_root(i32, i32, i8*, i32**, i8*) #1

declare dso_local i32 @xml_node_add_attr(i32, i32*, i32*, i8*, i8*) #1

declare dso_local i32* @xml_node_create(i32, i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

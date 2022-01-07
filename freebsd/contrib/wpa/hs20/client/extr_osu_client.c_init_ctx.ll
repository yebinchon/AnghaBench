; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_init_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_init_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i8*, i32*, i32*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"wlan0\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"devinfo.xml\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"DevId\00", align 1
@osu_cert_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hs20_osu_client*)* @init_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_ctx(%struct.hs20_osu_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hs20_osu_client*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %3, align 8
  %7 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %3, align 8
  %8 = call i32 @os_memset(%struct.hs20_osu_client* %7, i32 0, i32 32)
  %9 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %3, align 8
  %10 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %11 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %3, align 8
  %12 = call i32* @xml_node_init_ctx(%struct.hs20_osu_client* %11, i32* null)
  %13 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %3, align 8
  %14 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %13, i32 0, i32 2
  store i32* %12, i32** %14, align 8
  %15 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %3, align 8
  %16 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %88

20:                                               ; preds = %1
  %21 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %3, align 8
  %22 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = call i32* @node_from_file(i32* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32* %24, i32** %4, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %60

27:                                               ; preds = %20
  %28 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %3, align 8
  %29 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32* @get_node(i32* %30, i32* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32* %32, i32** %5, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %54

35:                                               ; preds = %27
  %36 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %3, align 8
  %37 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i8* @xml_node_get_text(i32* %38, i32* %39)
  store i8* %40, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %35
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @os_strdup(i8* %44)
  %46 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %3, align 8
  %47 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %3, align 8
  %49 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @xml_node_get_text_free(i32* %50, i8* %51)
  br label %53

53:                                               ; preds = %43, %35
  br label %54

54:                                               ; preds = %53, %27
  %55 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %3, align 8
  %56 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @xml_node_free(i32* %57, i32* %58)
  br label %60

60:                                               ; preds = %54, %20
  %61 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %3, align 8
  %62 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %3, align 8
  %63 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = call i32* @http_init_ctx(%struct.hs20_osu_client* %61, i32* %64)
  %66 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %3, align 8
  %67 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %66, i32 0, i32 1
  store i32* %65, i32** %67, align 8
  %68 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %3, align 8
  %69 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %60
  %73 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %3, align 8
  %74 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @xml_node_deinit_ctx(i32* %75)
  store i32 -1, i32* %2, align 4
  br label %88

77:                                               ; preds = %60
  %78 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %3, align 8
  %79 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @http_ocsp_set(i32* %80, i32 2)
  %82 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %3, align 8
  %83 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* @osu_cert_cb, align 4
  %86 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %3, align 8
  %87 = call i32 @http_set_cert_cb(i32* %84, i32 %85, %struct.hs20_osu_client* %86)
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %77, %72, %19
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @os_memset(%struct.hs20_osu_client*, i32, i32) #1

declare dso_local i32* @xml_node_init_ctx(%struct.hs20_osu_client*, i32*) #1

declare dso_local i32* @node_from_file(i32*, i8*) #1

declare dso_local i32* @get_node(i32*, i32*, i8*) #1

declare dso_local i8* @xml_node_get_text(i32*, i32*) #1

declare dso_local i32 @os_strdup(i8*) #1

declare dso_local i32 @xml_node_get_text_free(i32*, i8*) #1

declare dso_local i32 @xml_node_free(i32*, i32*) #1

declare dso_local i32* @http_init_ctx(%struct.hs20_osu_client*, i32*) #1

declare dso_local i32 @xml_node_deinit_ctx(i32*) #1

declare dso_local i32 @http_ocsp_set(i32*, i32) #1

declare dso_local i32 @http_set_cert_cb(i32*, i32, %struct.hs20_osu_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

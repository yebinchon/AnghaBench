; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_build_oma_dm_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_build_oma_dm_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"SyncBody\00", align 1
@DM_CLIENT_INITIATED_MGMT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"devdetail.xml\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Final\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.hs20_osu_client*, i8*, i32, i8*)* @build_oma_dm_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @build_oma_dm_1(%struct.hs20_osu_client* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hs20_osu_client*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32* @oma_dm_build_hdr(%struct.hs20_osu_client* %14, i8* %15, i32 %16)
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %76

21:                                               ; preds = %4
  %22 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %23 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = call i32* @xml_node_create(i32 %24, i32* %25, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %26, i32** %11, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %31 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @xml_node_free(i32 %32, i32* %33)
  store i32* null, i32** %5, align 8
  br label %76

35:                                               ; preds = %21
  %36 = load i32, i32* %13, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %13, align 4
  %38 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @DM_CLIENT_INITIATED_MGMT, align 4
  %42 = call i32 @add_alert(%struct.hs20_osu_client* %38, i32* %39, i32 %40, i32 %41)
  %43 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %44 = call i8* @mo_str(%struct.hs20_osu_client* %43, i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i8* %44, i8** %12, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %35
  %48 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %49 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @xml_node_free(i32 %50, i32* %51)
  store i32* null, i32** %5, align 8
  br label %76

53:                                               ; preds = %35
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  %56 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = call i32 @oma_dm_add_hs20_generic_alert(%struct.hs20_osu_client* %56, i32* %57, i32 %58, i8* %59, i8* %60)
  %62 = load i8*, i8** %12, align 8
  %63 = call i32 @os_free(i8* %62)
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  %66 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @add_replace_devinfo(%struct.hs20_osu_client* %66, i32* %67, i32 %68)
  %70 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %71 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %11, align 8
  %74 = call i32* @xml_node_create(i32 %72, i32* %73, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32*, i32** %10, align 8
  store i32* %75, i32** %5, align 8
  br label %76

76:                                               ; preds = %53, %47, %29, %20
  %77 = load i32*, i32** %5, align 8
  ret i32* %77
}

declare dso_local i32* @oma_dm_build_hdr(%struct.hs20_osu_client*, i8*, i32) #1

declare dso_local i32* @xml_node_create(i32, i32*, i32*, i8*) #1

declare dso_local i32 @xml_node_free(i32, i32*) #1

declare dso_local i32 @add_alert(%struct.hs20_osu_client*, i32*, i32, i32) #1

declare dso_local i8* @mo_str(%struct.hs20_osu_client*, i32*, i8*) #1

declare dso_local i32 @oma_dm_add_hs20_generic_alert(%struct.hs20_osu_client*, i32*, i32, i8*, i8*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @add_replace_devinfo(%struct.hs20_osu_client*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

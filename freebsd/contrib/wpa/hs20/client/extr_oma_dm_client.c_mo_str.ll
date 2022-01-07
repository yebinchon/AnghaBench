; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_mo_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_mo_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"syncml:dmddf1.2\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"MgmtTree: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hs20_osu_client*, i8*, i8*)* @mo_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mo_str(%struct.hs20_osu_client* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hs20_osu_client*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %12 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = call i32* @node_from_file(i32 %13, i8* %14)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %53

19:                                               ; preds = %3
  %20 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %21 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32* @mo_to_tnds(i32 %22, i32* %23, i32 0, i8* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32* %25, i32** %9, align 8
  %26 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %27 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @xml_node_free(i32 %28, i32* %29)
  %31 = load i32*, i32** %9, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %19
  store i8* null, i8** %4, align 8
  br label %53

34:                                               ; preds = %19
  %35 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %36 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = call i8* @xml_node_to_str(i32 %37, i32* %38)
  store i8* %39, i8** %10, align 8
  %40 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %41 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @xml_node_free(i32 %42, i32* %43)
  %45 = load i8*, i8** %10, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  store i8* null, i8** %4, align 8
  br label %53

48:                                               ; preds = %34
  %49 = load i32, i32* @MSG_INFO, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @wpa_printf(i32 %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %52 = load i8*, i8** %10, align 8
  store i8* %52, i8** %4, align 8
  br label %53

53:                                               ; preds = %48, %47, %33, %18
  %54 = load i8*, i8** %4, align 8
  ret i8* %54
}

declare dso_local i32* @node_from_file(i32, i8*) #1

declare dso_local i32* @mo_to_tnds(i32, i32*, i32, i8*, i8*) #1

declare dso_local i32 @xml_node_free(i32, i32*) #1

declare dso_local i8* @xml_node_to_str(i32, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

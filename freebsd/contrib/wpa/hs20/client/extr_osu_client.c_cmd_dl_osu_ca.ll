; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_cmd_dl_osu_ca.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_cmd_dl_osu_ca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not read or parse '%s'\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"SubscriptionUpdate/TrustRoot\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"No SubscriptionUpdate/TrustRoot/CertURL found from PPS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hs20_osu_client*, i8*, i8*)* @cmd_dl_osu_ca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_dl_osu_ca(%struct.hs20_osu_client* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hs20_osu_client*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %12 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32* @node_from_file(i32 %13, i8* %14)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @MSG_INFO, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32 -1, i32* %4, align 4
  br label %49

22:                                               ; preds = %3
  %23 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %24 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = call i32* @get_child_node(i32 %25, i32* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load i32, i32* @MSG_INFO, align 4
  %32 = call i32 (i32, i8*, ...) @wpa_printf(i32 %31, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %34 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @xml_node_free(i32 %35, i32* %36)
  store i32 -1, i32* %4, align 4
  br label %49

38:                                               ; preds = %22
  %39 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @download_cert(%struct.hs20_osu_client* %39, i32* %40, i8* %41)
  store i32 %42, i32* %10, align 4
  %43 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %44 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @xml_node_free(i32 %45, i32* %46)
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %38, %30, %18
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32* @node_from_file(i32, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @get_child_node(i32, i32*, i8*) #1

declare dso_local i32 @xml_node_free(i32, i32*) #1

declare dso_local i32 @download_cert(%struct.hs20_osu_client*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

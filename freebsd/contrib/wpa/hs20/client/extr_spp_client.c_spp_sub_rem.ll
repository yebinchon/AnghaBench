; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_spp_client.c_spp_sub_rem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_spp_client.c_spp_sub_rem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"SPP subscription remediation\00", align 1
@SPP_SUBSCRIPTION_REMEDIATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Subscription remediation\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spp_sub_rem(%struct.hs20_osu_client* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i32* %7) #0 {
  %9 = alloca %struct.hs20_osu_client*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32* %7, i32** %16, align 8
  %17 = load i32, i32* @MSG_INFO, align 4
  %18 = call i32 @wpa_printf(i32 %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %9, align 8
  %20 = call i32 @write_summary(%struct.hs20_osu_client* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %9, align 8
  %22 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @os_free(i32 %23)
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @os_strdup(i8* %25)
  %27 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %9, align 8
  %28 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %9, align 8
  %30 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %10, align 8
  %33 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %9, align 8
  %34 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %14, align 8
  %37 = load i8*, i8** %15, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = call i64 @soap_init_client(i32 %31, i8* %32, i32 %35, i8* %36, i8* %37, i8* %38, i8* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %8
  %43 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %9, align 8
  %44 = load i32, i32* @SPP_SUBSCRIPTION_REMEDIATION, align 4
  %45 = load i8*, i8** %11, align 8
  %46 = load i32*, i32** %16, align 8
  %47 = call i32 @spp_post_dev_data(%struct.hs20_osu_client* %43, i32 %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %45, i32* %46)
  br label %48

48:                                               ; preds = %42, %8
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @write_summary(%struct.hs20_osu_client*, i8*) #1

declare dso_local i32 @os_free(i32) #1

declare dso_local i32 @os_strdup(i8*) #1

declare dso_local i64 @soap_init_client(i32, i8*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @spp_post_dev_data(%struct.hs20_osu_client*, i32, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

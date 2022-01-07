; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_spp_client.c_cmd_prov.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_spp_client.c_cmd_prov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i8*, i64, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Cert/est_cert.der\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Cert/est_cert.pem\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Invalid prov command (missing URL)\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Credential provisioning requested - URL: %s ca_fname: %s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@SPP_SUBSCRIPTION_REGISTRATION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Subscription registration\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_prov(%struct.hs20_osu_client* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hs20_osu_client*, align 8
  %5 = alloca i8*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = call i32 @unlink(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @unlink(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i8*, i8** %5, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @MSG_INFO, align 4
  %12 = call i32 (i32, i8*, ...) @wpa_printf(i32 %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %56

13:                                               ; preds = %2
  %14 = load i32, i32* @MSG_INFO, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %17 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %22 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  br label %25

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i8* [ %23, %20 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), %24 ]
  %27 = call i32 (i32, i8*, ...) @wpa_printf(i32 %14, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i8* %15, i8* %26)
  %28 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %29 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @os_free(i32 %30)
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @os_strdup(i8* %32)
  %34 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %35 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %37 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %41 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @soap_init_client(i32 %38, i8* %39, i8* %42, i32* null, i32* null, i32* null, i32* null)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %56

46:                                               ; preds = %25
  %47 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %48 = load i32, i32* @SPP_SUBSCRIPTION_REGISTRATION, align 4
  %49 = call i32 @spp_post_dev_data(%struct.hs20_osu_client* %47, i32 %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32* null, i32* null)
  %50 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %51 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 0, i32 -1
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %46, %45, %10
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_free(i32) #1

declare dso_local i32 @os_strdup(i8*) #1

declare dso_local i64 @soap_init_client(i32, i8*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @spp_post_dev_data(%struct.hs20_osu_client*, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

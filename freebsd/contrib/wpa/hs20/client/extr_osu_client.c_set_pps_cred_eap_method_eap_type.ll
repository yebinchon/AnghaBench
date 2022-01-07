; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_set_pps_cred_eap_method_eap_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_set_pps_cred_eap_method_eap_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"- Credential/UsernamePassword/EAPMethod/EAPType = %s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"TLS\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TTLS\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"PEAP\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"PWD\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Unknown EAPType value\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"eap\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Failed to set cred eap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hs20_osu_client*, i32, i32*)* @set_pps_cred_eap_method_eap_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_pps_cred_eap_method_eap_type(%struct.hs20_osu_client* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.hs20_osu_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %11 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i8* @xml_node_get_text(i32 %12, i32* %13)
  store i8* %14, i8** %7, align 8
  store i8* null, i8** %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %51

18:                                               ; preds = %3
  %19 = load i32, i32* @MSG_INFO, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %19, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @atoi(i8* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %29 [
    i32 129, label %25
    i32 128, label %26
    i32 131, label %27
    i32 130, label %28
  ]

25:                                               ; preds = %18
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %29

26:                                               ; preds = %18
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %29

27:                                               ; preds = %18
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %29

28:                                               ; preds = %18
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %29

29:                                               ; preds = %18, %28, %27, %26, %25
  %30 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %31 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @xml_node_get_text_free(i32 %32, i8* %33)
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @MSG_INFO, align 4
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %51

40:                                               ; preds = %29
  %41 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %42 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i8*, i8** %9, align 8
  %46 = call i64 @set_cred(i32 %43, i32 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* @MSG_INFO, align 4
  %50 = call i32 (i32, i8*, ...) @wpa_printf(i32 %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %51

51:                                               ; preds = %17, %37, %48, %40
  ret void
}

declare dso_local i8* @xml_node_get_text(i32, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @xml_node_get_text_free(i32, i8*) #1

declare dso_local i64 @set_cred(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

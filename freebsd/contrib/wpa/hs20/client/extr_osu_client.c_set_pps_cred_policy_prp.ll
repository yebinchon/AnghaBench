; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_set_pps_cred_policy_prp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_set_pps_cred_policy_prp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"Priority\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"- Policy/PreferredRoamingPartnerList/<X+>/Priority = %s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Country\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"- Policy/PreferredRoamingPartnerList/<X+>/Country = %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"FQDN_Match\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"- Policy/PreferredRoamingPartnerList/<X+>/FQDN_Match = %s\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"%s,%d,%d,%s\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"includeSubdomains\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"roaming_partner\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Failed to set cred roaming_partner\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hs20_osu_client*, i32, i32*)* @set_pps_cred_policy_prp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_pps_cred_policy_prp(%struct.hs20_osu_client* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.hs20_osu_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [200 x i8], align 16
  %14 = alloca i32, align 4
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %11, align 8
  %15 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %16 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = call i32* @get_node(i32 %17, i32* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %126

23:                                               ; preds = %3
  %24 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %25 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = call i8* @xml_node_get_text(i32 %26, i32* %27)
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %126

32:                                               ; preds = %23
  %33 = load i32, i32* @MSG_INFO, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 (i32, i8*, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @atoi(i8* %36)
  store i32 %37, i32* %14, align 4
  %38 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %39 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @xml_node_get_text_free(i32 %40, i8* %41)
  %43 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %44 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = call i32* @get_node(i32 %45, i32* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32* %47, i32** %7, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %64

50:                                               ; preds = %32
  %51 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %52 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = call i8* @xml_node_get_text(i32 %53, i32* %54)
  store i8* %55, i8** %11, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %126

59:                                               ; preds = %50
  %60 = load i8*, i8** %11, align 8
  store i8* %60, i8** %12, align 8
  %61 = load i32, i32* @MSG_INFO, align 4
  %62 = load i8*, i8** %12, align 8
  %63 = call i32 (i32, i8*, ...) @wpa_printf(i32 %61, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  br label %65

64:                                               ; preds = %32
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  br label %65

65:                                               ; preds = %64, %59
  %66 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %67 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = call i32* @get_node(i32 %68, i32* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i32* %70, i32** %7, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %115

74:                                               ; preds = %65
  %75 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %76 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = call i8* @xml_node_get_text(i32 %77, i32* %78)
  store i8* %79, i8** %8, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %115

83:                                               ; preds = %74
  %84 = load i32, i32* @MSG_INFO, align 4
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 (i32, i8*, ...) @wpa_printf(i32 %84, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i8* %85)
  %87 = load i8*, i8** %8, align 8
  %88 = call i8* @strrchr(i8* %87, i8 signext 44)
  store i8* %88, i8** %9, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = icmp eq i8* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  br label %115

92:                                               ; preds = %83
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %9, align 8
  store i8 0, i8* %93, align 1
  %95 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i64 0, i64 0
  %96 = load i8*, i8** %8, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = call i64 @strcmp(i8* %97, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %99 = icmp ne i64 %98, 0
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %14, align 4
  %102 = load i8*, i8** %12, align 8
  %103 = call i32 @snprintf(i8* %95, i32 200, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %96, i32 %100, i32 %101, i8* %102)
  %104 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %105 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %5, align 4
  %108 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i64 0, i64 0
  %109 = call i64 @set_cred_quoted(i32 %106, i32 %107, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %108)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %92
  %112 = load i32, i32* @MSG_INFO, align 4
  %113 = call i32 (i32, i8*, ...) @wpa_printf(i32 %112, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %92
  br label %115

115:                                              ; preds = %114, %91, %82, %73
  %116 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %117 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i8*, i8** %11, align 8
  %120 = call i32 @xml_node_get_text_free(i32 %118, i8* %119)
  %121 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %122 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i8*, i8** %8, align 8
  %125 = call i32 @xml_node_get_text_free(i32 %123, i8* %124)
  br label %126

126:                                              ; preds = %115, %58, %31, %22
  ret void
}

declare dso_local i32* @get_node(i32, i32*, i8*) #1

declare dso_local i8* @xml_node_get_text(i32, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @xml_node_get_text_free(i32, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @set_cred_quoted(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

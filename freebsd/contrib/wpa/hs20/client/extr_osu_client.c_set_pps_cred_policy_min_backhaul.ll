; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_set_pps_cred_policy_min_backhaul.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_set_pps_cred_policy_min_backhaul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"NetworkType\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"Ignore MinBackhaulThreshold without mandatory NetworkType node\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"- Policy/MinBackhaulThreshold/<X+>/NetworkType = %s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"home\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"roaming\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"Ignore MinBackhaulThreshold with invalid NetworkType\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"DLBandwidth\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"ULBandwidth\00", align 1
@.str.8 = private unnamed_addr constant [76 x i8] c"Ignore MinBackhaulThreshold without either DLBandwidth or ULBandwidth nodes\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"- Policy/MinBackhaulThreshold/<X+>/DLBandwidth = %s\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"- Policy/MinBackhaulThreshold/<X+>/ULBandwidth = %s\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"min_dl_bandwidth_home\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Failed to set cred bandwidth limit\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"min_ul_bandwidth_home\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"min_dl_bandwidth_roaming\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"min_ul_bandwidth_roaming\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hs20_osu_client*, i32, i32*)* @set_pps_cred_policy_min_backhaul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_pps_cred_policy_min_backhaul(%struct.hs20_osu_client* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.hs20_osu_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %12 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %13 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32* @get_node(i32 %14, i32* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @MSG_INFO, align 4
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %20, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  br label %181

22:                                               ; preds = %3
  %23 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %24 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = call i8* @xml_node_get_text(i32 %25, i32* %26)
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %181

31:                                               ; preds = %22
  %32 = load i32, i32* @MSG_INFO, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  %35 = load i8*, i8** %8, align 8
  %36 = call i64 @os_strcasecmp(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 1, i32* %11, align 4
  br label %53

39:                                               ; preds = %31
  %40 = load i8*, i8** %8, align 8
  %41 = call i64 @os_strcasecmp(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  br label %52

44:                                               ; preds = %39
  %45 = load i32, i32* @MSG_INFO, align 4
  %46 = call i32 (i32, i8*, ...) @wpa_printf(i32 %45, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  %47 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %48 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @xml_node_get_text_free(i32 %49, i8* %50)
  br label %181

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %38
  %54 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %55 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @xml_node_get_text_free(i32 %56, i8* %57)
  %59 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %60 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = call i32* @get_node(i32 %61, i32* %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  store i32* %63, i32** %7, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %53
  %67 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %68 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = call i8* @xml_node_get_text(i32 %69, i32* %70)
  store i8* %71, i8** %9, align 8
  br label %72

72:                                               ; preds = %66, %53
  %73 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %74 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = call i32* @get_node(i32 %75, i32* %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  store i32* %77, i32** %7, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %72
  %81 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %82 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = call i8* @xml_node_get_text(i32 %83, i32* %84)
  store i8* %85, i8** %10, align 8
  br label %86

86:                                               ; preds = %80, %72
  %87 = load i8*, i8** %9, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i8*, i8** %10, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* @MSG_INFO, align 4
  %94 = call i32 (i32, i8*, ...) @wpa_printf(i32 %93, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.8, i64 0, i64 0))
  br label %181

95:                                               ; preds = %89, %86
  %96 = load i8*, i8** %9, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, i32* @MSG_INFO, align 4
  %100 = load i8*, i8** %9, align 8
  %101 = call i32 (i32, i8*, ...) @wpa_printf(i32 %99, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %98, %95
  %103 = load i8*, i8** %10, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i32, i32* @MSG_INFO, align 4
  %107 = load i8*, i8** %10, align 8
  %108 = call i32 (i32, i8*, ...) @wpa_printf(i32 %106, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %105, %102
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %141

112:                                              ; preds = %109
  %113 = load i8*, i8** %9, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %126

115:                                              ; preds = %112
  %116 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %117 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %5, align 4
  %120 = load i8*, i8** %9, align 8
  %121 = call i64 @set_cred(i32 %118, i32 %119, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* %120)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %115
  %124 = load i32, i32* @MSG_INFO, align 4
  %125 = call i32 (i32, i8*, ...) @wpa_printf(i32 %124, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123, %115, %112
  %127 = load i8*, i8** %10, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %140

129:                                              ; preds = %126
  %130 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %131 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %5, align 4
  %134 = load i8*, i8** %10, align 8
  %135 = call i64 @set_cred(i32 %132, i32 %133, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i8* %134)
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %129
  %138 = load i32, i32* @MSG_INFO, align 4
  %139 = call i32 (i32, i8*, ...) @wpa_printf(i32 %138, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %129, %126
  br label %170

141:                                              ; preds = %109
  %142 = load i8*, i8** %9, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %155

144:                                              ; preds = %141
  %145 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %146 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %5, align 4
  %149 = load i8*, i8** %9, align 8
  %150 = call i64 @set_cred(i32 %147, i32 %148, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i8* %149)
  %151 = icmp slt i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %144
  %153 = load i32, i32* @MSG_INFO, align 4
  %154 = call i32 (i32, i8*, ...) @wpa_printf(i32 %153, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  br label %155

155:                                              ; preds = %152, %144, %141
  %156 = load i8*, i8** %10, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %169

158:                                              ; preds = %155
  %159 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %160 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %5, align 4
  %163 = load i8*, i8** %10, align 8
  %164 = call i64 @set_cred(i32 %161, i32 %162, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i8* %163)
  %165 = icmp slt i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %158
  %167 = load i32, i32* @MSG_INFO, align 4
  %168 = call i32 (i32, i8*, ...) @wpa_printf(i32 %167, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  br label %169

169:                                              ; preds = %166, %158, %155
  br label %170

170:                                              ; preds = %169, %140
  %171 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %172 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i8*, i8** %9, align 8
  %175 = call i32 @xml_node_get_text_free(i32 %173, i8* %174)
  %176 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %177 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i8*, i8** %10, align 8
  %180 = call i32 @xml_node_get_text_free(i32 %178, i8* %179)
  br label %181

181:                                              ; preds = %170, %92, %44, %30, %19
  ret void
}

declare dso_local i32* @get_node(i32, i32*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i8* @xml_node_get_text(i32, i32*) #1

declare dso_local i64 @os_strcasecmp(i8*, i8*) #1

declare dso_local i32 @xml_node_get_text_free(i32, i8*) #1

declare dso_local i64 @set_cred(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

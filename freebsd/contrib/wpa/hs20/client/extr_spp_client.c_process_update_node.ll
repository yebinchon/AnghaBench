; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_spp_client.c_process_update_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_spp_client.c_process_update_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i8*, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Processing updateNode\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"updateNode\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"managementTreeURI\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"No managementTreeURI present\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"managementTreeUri: '%s'\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Unexpected URI\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Update interior node: '%s'\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Could not extract MO text\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"[hs20] nodeContainer text: '%s'\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"<![CDATA[\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"]]>\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"MgmtTree\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"/MgmtTree\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"[hs20] Removing extra CDATA container\00", align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"[hs20] nodeContainer text with CDATA container removed: '%s'\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"[hs20] Could not parse nodeContainer text\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"[hs20] Could not parse nodeContainer TNDS text\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Parsed TNDS\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"[hs20] %s node not found\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"./Wi-Fi/\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"Do not allow update outside ./Wi-Fi\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"FQDN not known\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"Do not allow update outside ./Wi-Fi/%s\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"PerProviderSubscription/\00", align 1
@.str.24 = private unnamed_addr constant [63 x i8] c"Do not allow update outside ./Wi-Fi/%s/PerProviderSubscription\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"Update command for PPS node %s\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"Replace '%s' node\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"Could not find parent %s\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"Add '%s' node\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hs20_osu_client*, i32*, i32*)* @process_update_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_update_node(%struct.hs20_osu_client* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hs20_osu_client*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %21 = load i32, i32* @MSG_INFO, align 4
  %22 = call i32 (i32, i8*, ...) @wpa_printf(i32 %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @debug_dump_node(%struct.hs20_osu_client* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %24)
  %26 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %27 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i8* @get_spp_attr_value(i32 %28, i32* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i8* %30, i8** %14, align 8
  %31 = load i8*, i8** %14, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @MSG_INFO, align 4
  %35 = call i32 (i32, i8*, ...) @wpa_printf(i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %369

36:                                               ; preds = %3
  %37 = load i32, i32* @MSG_INFO, align 4
  %38 = load i8*, i8** %14, align 8
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %38)
  %40 = load i8*, i8** %14, align 8
  %41 = call i8* @os_strrchr(i8* %40, i8 signext 47)
  store i8* %41, i8** %13, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load i32, i32* @MSG_INFO, align 4
  %46 = call i32 (i32, i8*, ...) @wpa_printf(i32 %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %47 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %48 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = call i32 @xml_node_get_attr_value_free(i32 %49, i8* %50)
  store i32 -1, i32* %4, align 4
  br label %369

52:                                               ; preds = %36
  %53 = load i8*, i8** %13, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %13, align 8
  %55 = load i32, i32* @MSG_INFO, align 4
  %56 = load i8*, i8** %13, align 8
  %57 = call i32 (i32, i8*, ...) @wpa_printf(i32 %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %56)
  %58 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %59 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i8* @xml_node_get_text(i32 %60, i32* %61)
  store i8* %62, i8** %12, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %52
  %66 = load i32, i32* @MSG_INFO, align 4
  %67 = call i32 (i32, i8*, ...) @wpa_printf(i32 %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %68 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %69 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i8*, i8** %14, align 8
  %72 = call i32 @xml_node_get_attr_value_free(i32 %70, i8* %71)
  store i32 -1, i32* %4, align 4
  br label %369

73:                                               ; preds = %52
  %74 = load i32, i32* @MSG_DEBUG, align 4
  %75 = load i8*, i8** %12, align 8
  %76 = call i32 (i32, i8*, ...) @wpa_printf(i32 %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8* %75)
  %77 = load i8*, i8** %12, align 8
  %78 = call i8* @strstr(i8* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  store i8* %78, i8** %16, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = call i8* @strstr(i8* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  store i8* %80, i8** %17, align 8
  %81 = load i8*, i8** %16, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %128

83:                                               ; preds = %73
  %84 = load i8*, i8** %17, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %128

86:                                               ; preds = %83
  %87 = load i8*, i8** %17, align 8
  %88 = load i8*, i8** %16, align 8
  %89 = icmp ugt i8* %87, %88
  br i1 %89, label %90, label %128

90:                                               ; preds = %86
  %91 = load i8*, i8** %16, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = call i8* @strstr(i8* %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %94 = icmp ult i8* %91, %93
  br i1 %94, label %95, label %128

95:                                               ; preds = %90
  %96 = load i8*, i8** %17, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = call i8* @strstr(i8* %97, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %99 = icmp ugt i8* %96, %98
  br i1 %99, label %100, label %128

100:                                              ; preds = %95
  %101 = load i32, i32* @MSG_DEBUG, align 4
  %102 = call i32 (i32, i8*, ...) @wpa_printf(i32 %101, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0))
  %103 = load i8*, i8** %16, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 9
  %105 = call i8* @strdup(i8* %104)
  store i8* %105, i8** %19, align 8
  %106 = load i8*, i8** %19, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %126

108:                                              ; preds = %100
  %109 = load i8*, i8** %19, align 8
  %110 = call i8* @strstr(i8* %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  store i8* %110, i8** %17, align 8
  %111 = load i8*, i8** %17, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load i8*, i8** %17, align 8
  store i8 0, i8* %114, align 1
  br label %115

115:                                              ; preds = %113, %108
  %116 = load i32, i32* @MSG_DEBUG, align 4
  %117 = load i8*, i8** %19, align 8
  %118 = call i32 (i32, i8*, ...) @wpa_printf(i32 %116, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.14, i64 0, i64 0), i8* %117)
  %119 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %120 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i8*, i8** %19, align 8
  %123 = call i32* @xml_node_from_buf(i32 %121, i8* %122)
  store i32* %123, i32** %10, align 8
  %124 = load i8*, i8** %19, align 8
  %125 = call i32 @free(i8* %124)
  br label %127

126:                                              ; preds = %100
  store i32* null, i32** %10, align 8
  br label %127

127:                                              ; preds = %126, %115
  br label %134

128:                                              ; preds = %95, %90, %86, %83, %73
  %129 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %130 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i8*, i8** %12, align 8
  %133 = call i32* @xml_node_from_buf(i32 %131, i8* %132)
  store i32* %133, i32** %10, align 8
  br label %134

134:                                              ; preds = %128, %127
  %135 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %136 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i8*, i8** %12, align 8
  %139 = call i32 @xml_node_get_text_free(i32 %137, i8* %138)
  %140 = load i32*, i32** %10, align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %150

142:                                              ; preds = %134
  %143 = load i32, i32* @MSG_INFO, align 4
  %144 = call i32 (i32, i8*, ...) @wpa_printf(i32 %143, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0))
  %145 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %146 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i8*, i8** %14, align 8
  %149 = call i32 @xml_node_get_attr_value_free(i32 %147, i8* %148)
  store i32 -1, i32* %4, align 4
  br label %369

150:                                              ; preds = %134
  %151 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %152 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load i32*, i32** %10, align 8
  %155 = call i32* @tnds_to_mo(i32 %153, i32* %154)
  store i32* %155, i32** %11, align 8
  %156 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %157 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load i32*, i32** %10, align 8
  %160 = call i32 @xml_node_free(i32 %158, i32* %159)
  %161 = load i32*, i32** %11, align 8
  %162 = icmp eq i32* %161, null
  br i1 %162, label %163, label %171

163:                                              ; preds = %150
  %164 = load i32, i32* @MSG_INFO, align 4
  %165 = call i32 (i32, i8*, ...) @wpa_printf(i32 %164, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i64 0, i64 0))
  %166 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %167 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load i8*, i8** %14, align 8
  %170 = call i32 @xml_node_get_attr_value_free(i32 %168, i8* %169)
  store i32 -1, i32* %4, align 4
  br label %369

171:                                              ; preds = %150
  %172 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %173 = load i32*, i32** %11, align 8
  %174 = call i32 @debug_dump_node(%struct.hs20_osu_client* %172, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32* %173)
  %175 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %176 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load i32*, i32** %11, align 8
  %179 = load i8*, i8** %13, align 8
  %180 = call i32* @get_node_uri(i32 %177, i32* %178, i8* %179)
  %181 = icmp eq i32* %180, null
  br i1 %181, label %182, label %196

182:                                              ; preds = %171
  %183 = load i32, i32* @MSG_INFO, align 4
  %184 = load i8*, i8** %13, align 8
  %185 = call i32 (i32, i8*, ...) @wpa_printf(i32 %183, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i8* %184)
  %186 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %187 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load i32*, i32** %11, align 8
  %190 = call i32 @xml_node_free(i32 %188, i32* %189)
  %191 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %192 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = load i8*, i8** %14, align 8
  %195 = call i32 @xml_node_get_attr_value_free(i32 %193, i8* %194)
  store i32 -1, i32* %4, align 4
  br label %369

196:                                              ; preds = %171
  %197 = load i8*, i8** %14, align 8
  %198 = call i64 @os_strncasecmp(i8* %197, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 8)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %213

200:                                              ; preds = %196
  %201 = load i32, i32* @MSG_INFO, align 4
  %202 = call i32 (i32, i8*, ...) @wpa_printf(i32 %201, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0))
  %203 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %204 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = load i32*, i32** %11, align 8
  %207 = call i32 @xml_node_free(i32 %205, i32* %206)
  %208 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %209 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load i8*, i8** %14, align 8
  %212 = call i32 @xml_node_get_attr_value_free(i32 %210, i8* %211)
  store i32 -1, i32* %4, align 4
  br label %369

213:                                              ; preds = %196
  %214 = load i8*, i8** %14, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 8
  store i8* %215, i8** %15, align 8
  %216 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %217 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = icmp eq i8* %218, null
  br i1 %219, label %220, label %233

220:                                              ; preds = %213
  %221 = load i32, i32* @MSG_INFO, align 4
  %222 = call i32 (i32, i8*, ...) @wpa_printf(i32 %221, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0))
  %223 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %224 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = load i32*, i32** %11, align 8
  %227 = call i32 @xml_node_free(i32 %225, i32* %226)
  %228 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %229 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = load i8*, i8** %14, align 8
  %232 = call i32 @xml_node_get_attr_value_free(i32 %230, i8* %231)
  store i32 -1, i32* %4, align 4
  br label %369

233:                                              ; preds = %213
  %234 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %235 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %234, i32 0, i32 0
  %236 = load i8*, i8** %235, align 8
  %237 = call i64 @os_strlen(i8* %236)
  store i64 %237, i64* %18, align 8
  %238 = load i8*, i8** %15, align 8
  %239 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %240 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %239, i32 0, i32 0
  %241 = load i8*, i8** %240, align 8
  %242 = load i64, i64* %18, align 8
  %243 = trunc i64 %242 to i32
  %244 = call i64 @os_strncasecmp(i8* %238, i8* %241, i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %253, label %246

246:                                              ; preds = %233
  %247 = load i8*, i8** %15, align 8
  %248 = load i64, i64* %18, align 8
  %249 = getelementptr inbounds i8, i8* %247, i64 %248
  %250 = load i8, i8* %249, align 1
  %251 = sext i8 %250 to i32
  %252 = icmp ne i32 %251, 47
  br i1 %252, label %253, label %269

253:                                              ; preds = %246, %233
  %254 = load i32, i32* @MSG_INFO, align 4
  %255 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %256 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %255, i32 0, i32 0
  %257 = load i8*, i8** %256, align 8
  %258 = call i32 (i32, i8*, ...) @wpa_printf(i32 %254, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0), i8* %257)
  %259 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %260 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = load i32*, i32** %11, align 8
  %263 = call i32 @xml_node_free(i32 %261, i32* %262)
  %264 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %265 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = load i8*, i8** %14, align 8
  %268 = call i32 @xml_node_get_attr_value_free(i32 %266, i8* %267)
  store i32 -1, i32* %4, align 4
  br label %369

269:                                              ; preds = %246
  %270 = load i64, i64* %18, align 8
  %271 = add i64 %270, 1
  %272 = load i8*, i8** %15, align 8
  %273 = getelementptr inbounds i8, i8* %272, i64 %271
  store i8* %273, i8** %15, align 8
  %274 = load i8*, i8** %15, align 8
  %275 = call i64 @os_strncasecmp(i8* %274, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0), i32 24)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %293

277:                                              ; preds = %269
  %278 = load i32, i32* @MSG_INFO, align 4
  %279 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %280 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %279, i32 0, i32 0
  %281 = load i8*, i8** %280, align 8
  %282 = call i32 (i32, i8*, ...) @wpa_printf(i32 %278, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.24, i64 0, i64 0), i8* %281)
  %283 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %284 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = load i32*, i32** %11, align 8
  %287 = call i32 @xml_node_free(i32 %285, i32* %286)
  %288 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %289 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 8
  %291 = load i8*, i8** %14, align 8
  %292 = call i32 @xml_node_get_attr_value_free(i32 %290, i8* %291)
  store i32 -1, i32* %4, align 4
  br label %369

293:                                              ; preds = %269
  %294 = load i8*, i8** %15, align 8
  %295 = getelementptr inbounds i8, i8* %294, i64 24
  store i8* %295, i8** %15, align 8
  %296 = load i32, i32* @MSG_INFO, align 4
  %297 = load i8*, i8** %15, align 8
  %298 = call i32 (i32, i8*, ...) @wpa_printf(i32 %296, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i64 0, i64 0), i8* %297)
  %299 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %300 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = load i32*, i32** %6, align 8
  %303 = load i8*, i8** %15, align 8
  %304 = call i32* @get_node(i32 %301, i32* %302, i8* %303)
  store i32* %304, i32** %8, align 8
  %305 = load i32*, i32** %8, align 8
  %306 = icmp ne i32* %305, null
  br i1 %306, label %307, label %321

307:                                              ; preds = %293
  %308 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %309 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  %311 = load i32*, i32** %8, align 8
  %312 = call i32* @xml_node_get_parent(i32 %310, i32* %311)
  store i32* %312, i32** %9, align 8
  %313 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %314 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = load i32*, i32** %8, align 8
  %317 = call i32 @xml_node_detach(i32 %315, i32* %316)
  %318 = load i32, i32* @MSG_INFO, align 4
  %319 = load i8*, i8** %13, align 8
  %320 = call i32 (i32, i8*, ...) @wpa_printf(i32 %318, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i8* %319)
  br label %357

321:                                              ; preds = %293
  %322 = load i8*, i8** %15, align 8
  %323 = call i8* @os_strrchr(i8* %322, i8 signext 47)
  store i8* %323, i8** %20, align 8
  %324 = load i8*, i8** %20, align 8
  %325 = icmp eq i8* %324, null
  br i1 %325, label %326, label %328

326:                                              ; preds = %321
  %327 = load i32*, i32** %6, align 8
  store i32* %327, i32** %9, align 8
  br label %336

328:                                              ; preds = %321
  %329 = load i8*, i8** %20, align 8
  store i8 0, i8* %329, align 1
  %330 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %331 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 8
  %333 = load i32*, i32** %6, align 8
  %334 = load i8*, i8** %15, align 8
  %335 = call i32* @get_node(i32 %332, i32* %333, i8* %334)
  store i32* %335, i32** %9, align 8
  br label %336

336:                                              ; preds = %328, %326
  %337 = load i32*, i32** %9, align 8
  %338 = icmp eq i32* %337, null
  br i1 %338, label %339, label %353

339:                                              ; preds = %336
  %340 = load i32, i32* @MSG_INFO, align 4
  %341 = load i8*, i8** %15, align 8
  %342 = call i32 (i32, i8*, ...) @wpa_printf(i32 %340, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0), i8* %341)
  %343 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %344 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 8
  %346 = load i32*, i32** %11, align 8
  %347 = call i32 @xml_node_free(i32 %345, i32* %346)
  %348 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %349 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 8
  %351 = load i8*, i8** %14, align 8
  %352 = call i32 @xml_node_get_attr_value_free(i32 %350, i8* %351)
  store i32 -1, i32* %4, align 4
  br label %369

353:                                              ; preds = %336
  %354 = load i32, i32* @MSG_INFO, align 4
  %355 = load i8*, i8** %13, align 8
  %356 = call i32 (i32, i8*, ...) @wpa_printf(i32 %354, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i8* %355)
  br label %357

357:                                              ; preds = %353, %307
  %358 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %359 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 8
  %361 = load i32*, i32** %9, align 8
  %362 = load i32*, i32** %11, align 8
  %363 = call i32 @xml_node_add_child(i32 %360, i32* %361, i32* %362)
  %364 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %365 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 8
  %367 = load i8*, i8** %14, align 8
  %368 = call i32 @xml_node_get_attr_value_free(i32 %366, i8* %367)
  store i32 0, i32* %4, align 4
  br label %369

369:                                              ; preds = %357, %339, %277, %253, %220, %200, %182, %163, %142, %65, %44, %33
  %370 = load i32, i32* %4, align 4
  ret i32 %370
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @debug_dump_node(%struct.hs20_osu_client*, i8*, i32*) #1

declare dso_local i8* @get_spp_attr_value(i32, i32*, i8*) #1

declare dso_local i8* @os_strrchr(i8*, i8 signext) #1

declare dso_local i32 @xml_node_get_attr_value_free(i32, i8*) #1

declare dso_local i8* @xml_node_get_text(i32, i32*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32* @xml_node_from_buf(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @xml_node_get_text_free(i32, i8*) #1

declare dso_local i32* @tnds_to_mo(i32, i32*) #1

declare dso_local i32 @xml_node_free(i32, i32*) #1

declare dso_local i32* @get_node_uri(i32, i32*, i8*) #1

declare dso_local i64 @os_strncasecmp(i8*, i8*, i32) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i32* @get_node(i32, i32*, i8*) #1

declare dso_local i32* @xml_node_get_parent(i32, i32*) #1

declare dso_local i32 @xml_node_detach(i32, i32*) #1

declare dso_local i32 @xml_node_add_child(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

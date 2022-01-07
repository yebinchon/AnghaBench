; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_hs20_add_pps_mo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_hs20_add_pps_mo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32, i64 }

@.str = private unnamed_addr constant [9 x i8] c"./Wi-Fi/\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Unsupported location for addMO to add PPS MO: '%s'\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"/PerProviderSubscription\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"Unsupported location for addMO to add PPS MO (extra directory): '%s'\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"SP FQDN: %s\00", align 1
@.str.5 = private unnamed_addr constant [91 x i8] c"FQDN '%s' for new PPS MO did not have suffix match with server's dNSName values, count: %d\00", align 1
@.str.6 = private unnamed_addr constant [80 x i8] c"FQDN '%s' for new PPS MO did not have suffix match with server's dNSName values\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Invalid FQDN '%s'\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"SP\00", align 1
@S_IRWXU = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"SP/%s\00", align 1
@errno = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"mkdir(%s) failed: %s\00", align 1
@S_IRWXG = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"SP/%s/pps.xml\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"PPS file '%s' exists - reject addMO\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Using PPS file: %s\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Could not extract MO text\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [24 x i8] c"[hs20] addMO text: '%s'\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"[hs20] Could not parse addMO text\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"[hs20] Could not parse addMO TNDS text\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"Parsed TNDS\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"PerProviderSubscription\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"[hs20] Unexpected PPS MO root node name '%s'\00", align 1
@.str.21 = private unnamed_addr constant [52 x i8] c"Credential/DigitalCertificate/CertSHA256Fingerprint\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"Could not write MO to file\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"A new PPS MO added as '%s'\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"Remove invalid PPS MO file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hs20_add_pps_mo(%struct.hs20_osu_client* %0, i8* %1, i32* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hs20_osu_client*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @strncmp(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %5
  %25 = load i32, i32* @MSG_INFO, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 (i32, i8*, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @write_result(%struct.hs20_osu_client* %28, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  store i32 -1, i32* %6, align 4
  br label %277

31:                                               ; preds = %5
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 8
  %34 = call i8* @strdup(i8* %33)
  store i8* %34, i8** %13, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 -1, i32* %6, align 4
  br label %277

38:                                               ; preds = %31
  %39 = load i8*, i8** %13, align 8
  %40 = call i8* @strchr(i8* %39, i8 signext 47)
  store i8* %40, i8** %14, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %58

43:                                               ; preds = %38
  %44 = load i8*, i8** %14, align 8
  %45 = call i64 @os_strcasecmp(i8* %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load i32, i32* @MSG_INFO, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 (i32, i8*, ...) @wpa_printf(i32 %48, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  %51 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @write_result(%struct.hs20_osu_client* %51, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  %54 = load i8*, i8** %13, align 8
  %55 = call i32 @free(i8* %54)
  store i32 -1, i32* %6, align 4
  br label %277

56:                                               ; preds = %43
  %57 = load i8*, i8** %14, align 8
  store i8 0, i8* %57, align 1
  br label %58

58:                                               ; preds = %56, %38
  %59 = load i32, i32* @MSG_INFO, align 4
  %60 = load i8*, i8** %13, align 8
  %61 = call i32 (i32, i8*, ...) @wpa_printf(i32 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %60)
  %62 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = call i32 @server_dnsname_suffix_match(%struct.hs20_osu_client* %62, i8* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* @MSG_INFO, align 4
  %68 = load i8*, i8** %13, align 8
  %69 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %70 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 (i32, i8*, ...) @wpa_printf(i32 %67, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.5, i64 0, i64 0), i8* %68, i32 %72)
  %74 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %75 = load i8*, i8** %13, align 8
  %76 = call i32 @write_result(%struct.hs20_osu_client* %74, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.6, i64 0, i64 0), i8* %75)
  %77 = load i8*, i8** %13, align 8
  %78 = call i32 @free(i8* %77)
  store i32 -1, i32* %6, align 4
  br label %277

79:                                               ; preds = %58
  %80 = load i8*, i8** %13, align 8
  %81 = call i32 @valid_fqdn(i8* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* @MSG_INFO, align 4
  %85 = load i8*, i8** %13, align 8
  %86 = call i32 (i32, i8*, ...) @wpa_printf(i32 %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %85)
  %87 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = call i32 @write_result(%struct.hs20_osu_client* %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %88)
  %90 = load i8*, i8** %13, align 8
  %91 = call i32 @free(i8* %90)
  store i32 -1, i32* %6, align 4
  br label %277

92:                                               ; preds = %79
  %93 = load i32, i32* @S_IRWXU, align 4
  %94 = call i64 @mkdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %93)
  %95 = load i8*, i8** %10, align 8
  %96 = load i64, i64* %11, align 8
  %97 = load i8*, i8** %13, align 8
  %98 = call i32 @snprintf(i8* %95, i64 %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %97)
  %99 = load i8*, i8** %10, align 8
  %100 = load i32, i32* @S_IRWXU, align 4
  %101 = call i64 @mkdir(i8* %99, i32 %100)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %92
  %104 = load i32, i32* @errno, align 4
  %105 = load i32, i32* @EEXIST, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %103
  %108 = load i32, i32* @errno, align 4
  store i32 %108, i32* %20, align 4
  %109 = load i32, i32* @MSG_INFO, align 4
  %110 = load i8*, i8** %10, align 8
  %111 = load i32, i32* %20, align 4
  %112 = call i32 @strerror(i32 %111)
  %113 = call i32 (i32, i8*, ...) @wpa_printf(i32 %109, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %110, i32 %112)
  %114 = load i8*, i8** %13, align 8
  %115 = call i32 @free(i8* %114)
  store i32 -1, i32* %6, align 4
  br label %277

116:                                              ; preds = %103
  br label %117

117:                                              ; preds = %116, %92
  %118 = load i32, i32* @S_IRWXU, align 4
  %119 = load i32, i32* @S_IRWXG, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @android_update_permission(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %120)
  %122 = load i8*, i8** %10, align 8
  %123 = load i32, i32* @S_IRWXU, align 4
  %124 = load i32, i32* @S_IRWXG, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @android_update_permission(i8* %122, i32 %125)
  %127 = load i8*, i8** %10, align 8
  %128 = load i64, i64* %11, align 8
  %129 = load i8*, i8** %13, align 8
  %130 = call i32 @snprintf(i8* %127, i64 %128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %129)
  %131 = load i8*, i8** %10, align 8
  %132 = call i64 @os_file_exists(i8* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %117
  %135 = load i32, i32* @MSG_INFO, align 4
  %136 = load i8*, i8** %10, align 8
  %137 = call i32 (i32, i8*, ...) @wpa_printf(i32 %135, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i8* %136)
  %138 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %139 = load i8*, i8** %10, align 8
  %140 = call i32 @write_result(%struct.hs20_osu_client* %138, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i8* %139)
  %141 = load i8*, i8** %13, align 8
  %142 = call i32 @free(i8* %141)
  store i32 -2, i32* %6, align 4
  br label %277

143:                                              ; preds = %117
  %144 = load i32, i32* @MSG_INFO, align 4
  %145 = load i8*, i8** %10, align 8
  %146 = call i32 (i32, i8*, ...) @wpa_printf(i32 %144, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i8* %145)
  %147 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %148 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32*, i32** %9, align 8
  %151 = call i8* @xml_node_get_text(i32 %149, i32* %150)
  store i8* %151, i8** %12, align 8
  %152 = load i8*, i8** %12, align 8
  %153 = icmp eq i8* %152, null
  br i1 %153, label %154, label %159

154:                                              ; preds = %143
  %155 = load i32, i32* @MSG_INFO, align 4
  %156 = call i32 (i32, i8*, ...) @wpa_printf(i32 %155, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  %157 = load i8*, i8** %13, align 8
  %158 = call i32 @free(i8* %157)
  store i32 -1, i32* %6, align 4
  br label %277

159:                                              ; preds = %143
  %160 = load i32, i32* @MSG_DEBUG, align 4
  %161 = load i8*, i8** %12, align 8
  %162 = call i32 (i32, i8*, ...) @wpa_printf(i32 %160, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i8* %161)
  %163 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %164 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i8*, i8** %12, align 8
  %167 = call i32* @xml_node_from_buf(i32 %165, i8* %166)
  store i32* %167, i32** %15, align 8
  %168 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %169 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i8*, i8** %12, align 8
  %172 = call i32 @xml_node_get_text_free(i32 %170, i8* %171)
  %173 = load i32*, i32** %15, align 8
  %174 = icmp eq i32* %173, null
  br i1 %174, label %175, label %180

175:                                              ; preds = %159
  %176 = load i32, i32* @MSG_INFO, align 4
  %177 = call i32 (i32, i8*, ...) @wpa_printf(i32 %176, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0))
  %178 = load i8*, i8** %13, align 8
  %179 = call i32 @free(i8* %178)
  store i32 -1, i32* %6, align 4
  br label %277

180:                                              ; preds = %159
  %181 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %182 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32*, i32** %15, align 8
  %185 = call i32* @tnds_to_mo(i32 %183, i32* %184)
  store i32* %185, i32** %16, align 8
  %186 = load i32*, i32** %16, align 8
  %187 = icmp eq i32* %186, null
  br i1 %187, label %188, label %193

188:                                              ; preds = %180
  %189 = load i32, i32* @MSG_INFO, align 4
  %190 = call i32 (i32, i8*, ...) @wpa_printf(i32 %189, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0))
  %191 = load i8*, i8** %13, align 8
  %192 = call i32 @free(i8* %191)
  store i32 -1, i32* %6, align 4
  br label %277

193:                                              ; preds = %180
  %194 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %195 = load i32*, i32** %16, align 8
  %196 = call i32 @debug_dump_node(%struct.hs20_osu_client* %194, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32* %195)
  %197 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %198 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32*, i32** %16, align 8
  %201 = call i8* @xml_node_get_localname(i32 %199, i32* %200)
  store i8* %201, i8** %18, align 8
  %202 = load i8*, i8** %18, align 8
  %203 = call i64 @os_strcasecmp(i8* %202, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0))
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %193
  %206 = load i32, i32* @MSG_INFO, align 4
  %207 = load i8*, i8** %18, align 8
  %208 = call i32 (i32, i8*, ...) @wpa_printf(i32 %206, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i64 0, i64 0), i8* %207)
  %209 = load i8*, i8** %13, align 8
  %210 = call i32 @free(i8* %209)
  store i32 -1, i32* %6, align 4
  br label %277

211:                                              ; preds = %193
  %212 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %213 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32*, i32** %16, align 8
  %216 = call i32* @get_child_node(i32 %214, i32* %215, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.21, i64 0, i64 0))
  store i32* %216, i32** %17, align 8
  %217 = load i32*, i32** %17, align 8
  %218 = icmp ne i32* %217, null
  br i1 %218, label %219, label %233

219:                                              ; preds = %211
  %220 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %221 = load i32*, i32** %17, align 8
  %222 = load i8*, i8** %13, align 8
  %223 = call i64 @process_est_cert(%struct.hs20_osu_client* %220, i32* %221, i8* %222)
  %224 = icmp slt i64 %223, 0
  br i1 %224, label %225, label %233

225:                                              ; preds = %219
  %226 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %227 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32*, i32** %16, align 8
  %230 = call i32 @xml_node_free(i32 %228, i32* %229)
  %231 = load i8*, i8** %13, align 8
  %232 = call i32 @free(i8* %231)
  store i32 -1, i32* %6, align 4
  br label %277

233:                                              ; preds = %219, %211
  %234 = load i8*, i8** %13, align 8
  %235 = call i32 @free(i8* %234)
  %236 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %237 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i8*, i8** %10, align 8
  %240 = load i32*, i32** %16, align 8
  %241 = call i64 @node_to_file(i32 %238, i8* %239, i32* %240)
  %242 = icmp slt i64 %241, 0
  br i1 %242, label %243, label %251

243:                                              ; preds = %233
  %244 = load i32, i32* @MSG_INFO, align 4
  %245 = call i32 (i32, i8*, ...) @wpa_printf(i32 %244, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0))
  %246 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %247 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32*, i32** %16, align 8
  %250 = call i32 @xml_node_free(i32 %248, i32* %249)
  store i32 -1, i32* %6, align 4
  br label %277

251:                                              ; preds = %233
  %252 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %253 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32*, i32** %16, align 8
  %256 = call i32 @xml_node_free(i32 %254, i32* %255)
  %257 = load i32, i32* @MSG_INFO, align 4
  %258 = load i8*, i8** %10, align 8
  %259 = call i32 (i32, i8*, ...) @wpa_printf(i32 %257, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0), i8* %258)
  %260 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %261 = load i8*, i8** %10, align 8
  %262 = call i32 (%struct.hs20_osu_client*, i8*, ...) @write_summary(%struct.hs20_osu_client* %260, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0), i8* %261)
  %263 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %264 = load i8*, i8** %10, align 8
  %265 = call i32 @download_trust_roots(%struct.hs20_osu_client* %263, i8* %264)
  store i32 %265, i32* %19, align 4
  %266 = load i32, i32* %19, align 4
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %275

268:                                              ; preds = %251
  %269 = load i32, i32* @MSG_INFO, align 4
  %270 = call i32 (i32, i8*, ...) @wpa_printf(i32 %269, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0))
  %271 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %272 = call i32 (%struct.hs20_osu_client*, i8*, ...) @write_summary(%struct.hs20_osu_client* %271, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0))
  %273 = load i8*, i8** %10, align 8
  %274 = call i32 @unlink(i8* %273)
  br label %275

275:                                              ; preds = %268, %251
  %276 = load i32, i32* %19, align 4
  store i32 %276, i32* %6, align 4
  br label %277

277:                                              ; preds = %275, %243, %225, %205, %188, %175, %154, %134, %107, %83, %66, %47, %37, %24
  %278 = load i32, i32* %6, align 4
  ret i32 %278
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @write_result(%struct.hs20_osu_client*, i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @os_strcasecmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @server_dnsname_suffix_match(%struct.hs20_osu_client*, i8*) #1

declare dso_local i32 @valid_fqdn(i8*) #1

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @android_update_permission(i8*, i32) #1

declare dso_local i64 @os_file_exists(i8*) #1

declare dso_local i8* @xml_node_get_text(i32, i32*) #1

declare dso_local i32* @xml_node_from_buf(i32, i8*) #1

declare dso_local i32 @xml_node_get_text_free(i32, i8*) #1

declare dso_local i32* @tnds_to_mo(i32, i32*) #1

declare dso_local i32 @debug_dump_node(%struct.hs20_osu_client*, i8*, i32*) #1

declare dso_local i8* @xml_node_get_localname(i32, i32*) #1

declare dso_local i32* @get_child_node(i32, i32*, i8*) #1

declare dso_local i64 @process_est_cert(%struct.hs20_osu_client*, i32*, i8*) #1

declare dso_local i32 @xml_node_free(i32, i32*) #1

declare dso_local i64 @node_to_file(i32, i8*, i32*) #1

declare dso_local i32 @write_summary(%struct.hs20_osu_client*, i8*, ...) #1

declare dso_local i32 @download_trust_roots(%struct.hs20_osu_client*, i8*) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

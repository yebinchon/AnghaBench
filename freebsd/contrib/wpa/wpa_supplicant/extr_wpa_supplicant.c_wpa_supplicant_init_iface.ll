; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_init_iface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_init_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i32, i32, i32, i32*, i32, i32, i32, i32, i8*, i32, %struct.TYPE_8__*, i32, i32, i32, i32, i64, i32*, i32*, i32, i32, i64*, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i64*, i32*, i32* }
%struct.TYPE_8__ = type { i8*, i32, i32, i32, i32*, i32, i32, i64*, i64, i64, i64, i32, i32* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.wpa_interface = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64 }
%struct.wpa_driver_capa = type { i32, i32, i32*, i32, i32, i64, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"Initializing interface '%s' conf '%s' driver '%s' ctrl_interface '%s' bridge '%s'\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Failed to read or parse configuration '%s'.\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"\0ANo configuration found.\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"\0AInterface name is required.\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"\0AToo long interface name '%s'.\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"\0AToo long bridge interface name '%s'.\00", align 1
@FALSE = common dso_local global i32 0, align 4
@RSNA_PMK_LIFETIME = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [59 x i8] c"Invalid WPA parameter value for dot11RSNAConfigPMKLifetime\00", align 1
@RSNA_PMK_REAUTH_THRESHOLD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [66 x i8] c"Invalid WPA parameter value for dot11RSNAConfigPMKReauthThreshold\00", align 1
@RSNA_SA_TIMEOUT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [57 x i8] c"Invalid WPA parameter value for dot11RSNAConfigSATimeout\00", align 1
@CAPAB_VHT = common dso_local global i64 0, align 8
@HT_CAP_INFO_SUPP_CHANNEL_WIDTH_SET = common dso_local global i32 0, align 4
@CAPAB_HT40 = common dso_local global i64 0, align 8
@CAPAB_NO_HT_VHT = common dso_local global i64 0, align 8
@CAPAB_HT = common dso_local global i64 0, align 8
@MAC_ADDR_RAND_SCAN = common dso_local global i32 0, align 4
@MAC_ADDR_RAND_SCHED_SCAN = common dso_local global i32 0, align 4
@MAC_ADDR_RAND_PNO = common dso_local global i32 0, align 4
@WPA_IF_STATION = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_DEDICATED_P2P_DEVICE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"Failed to set country\00", align 1
@.str.12 = private unnamed_addr constant [266 x i8] c"Failed to initialize control interface '%s'.\0AYou may have another wpa_supplicant process already running or the file was\0Aleft by an unclean termination of wpa_supplicant in which case you will need\0Ato manually remove this file before starting wpa_supplicant again.\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Failed to initialize GAS query\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Failed to init P2P\00", align 1
@OCE_STA = common dso_local global i32 0, align 4
@OCE_STA_CFON = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_OCE_STA = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_OCE_STA_CFON = common dso_local global i32 0, align 4
@wpas_gas_server_tx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.wpa_interface*)* @wpa_supplicant_init_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_init_iface(%struct.wpa_supplicant* %0, %struct.wpa_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpa_interface*, align 8
  %6 = alloca %struct.wpa_driver_capa, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.wpa_interface* %1, %struct.wpa_interface** %5, align 8
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = load %struct.wpa_interface*, %struct.wpa_interface** %5, align 8
  %12 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.wpa_interface*, %struct.wpa_interface** %5, align 8
  %15 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.wpa_interface*, %struct.wpa_interface** %5, align 8
  %20 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i8* [ %21, %18 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %22 ]
  %25 = load %struct.wpa_interface*, %struct.wpa_interface** %5, align 8
  %26 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.wpa_interface*, %struct.wpa_interface** %5, align 8
  %31 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  br label %34

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %33 ]
  %36 = load %struct.wpa_interface*, %struct.wpa_interface** %5, align 8
  %37 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %36, i32 0, i32 3
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.wpa_interface*, %struct.wpa_interface** %5, align 8
  %42 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %41, i32 0, i32 3
  %43 = load i8*, i8** %42, align 8
  br label %45

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %40
  %46 = phi i8* [ %43, %40 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %44 ]
  %47 = load %struct.wpa_interface*, %struct.wpa_interface** %5, align 8
  %48 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %47, i32 0, i32 4
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.wpa_interface*, %struct.wpa_interface** %5, align 8
  %53 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %52, i32 0, i32 4
  %54 = load i8*, i8** %53, align 8
  br label %56

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %51
  %57 = phi i8* [ %54, %51 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %55 ]
  %58 = call i32 (i32, i8*, ...) @wpa_printf(i32 %10, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %24, i8* %35, i8* %46, i8* %57)
  %59 = load %struct.wpa_interface*, %struct.wpa_interface** %5, align 8
  %60 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %178

63:                                               ; preds = %56
  %64 = load %struct.wpa_interface*, %struct.wpa_interface** %5, align 8
  %65 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* @os_strdup(i8* %66)
  %68 = bitcast i8* %67 to i32*
  %69 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %70 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %69, i32 0, i32 41
  store i32* %68, i32** %70, align 8
  %71 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %72 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %71, i32 0, i32 41
  %73 = load i32*, i32** %72, align 8
  %74 = call %struct.TYPE_8__* @wpa_config_read(i32* %73, %struct.TYPE_8__* null)
  %75 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %76 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %75, i32 0, i32 11
  store %struct.TYPE_8__* %74, %struct.TYPE_8__** %76, align 8
  %77 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %78 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %77, i32 0, i32 11
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = icmp eq %struct.TYPE_8__* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %63
  %82 = load i32, i32* @MSG_ERROR, align 4
  %83 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %84 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %83, i32 0, i32 41
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 (i32, i8*, ...) @wpa_printf(i32 %82, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32* %85)
  store i32 -1, i32* %3, align 4
  br label %754

87:                                               ; preds = %63
  %88 = load %struct.wpa_interface*, %struct.wpa_interface** %5, align 8
  %89 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %88, i32 0, i32 5
  %90 = load i8*, i8** %89, align 8
  %91 = call i8* @os_rel2abs_path(i8* %90)
  %92 = bitcast i8* %91 to i32*
  %93 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %94 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %93, i32 0, i32 40
  store i32* %92, i32** %94, align 8
  %95 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %96 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %95, i32 0, i32 40
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %114

99:                                               ; preds = %87
  %100 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %101 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %100, i32 0, i32 40
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %104 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %103, i32 0, i32 11
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = call %struct.TYPE_8__* @wpa_config_read(i32* %102, %struct.TYPE_8__* %105)
  %107 = icmp ne %struct.TYPE_8__* %106, null
  br i1 %107, label %114, label %108

108:                                              ; preds = %99
  %109 = load i32, i32* @MSG_ERROR, align 4
  %110 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %111 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %110, i32 0, i32 40
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 (i32, i8*, ...) @wpa_printf(i32 %109, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32* %112)
  store i32 -1, i32* %3, align 4
  br label %754

114:                                              ; preds = %99, %87
  %115 = load %struct.wpa_interface*, %struct.wpa_interface** %5, align 8
  %116 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %115, i32 0, i32 3
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %135

119:                                              ; preds = %114
  %120 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %121 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %120, i32 0, i32 11
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 4
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @os_free(i32* %124)
  %126 = load %struct.wpa_interface*, %struct.wpa_interface** %5, align 8
  %127 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %126, i32 0, i32 3
  %128 = load i8*, i8** %127, align 8
  %129 = call i8* @os_strdup(i8* %128)
  %130 = bitcast i8* %129 to i32*
  %131 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %132 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %131, i32 0, i32 11
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 4
  store i32* %130, i32** %134, align 8
  br label %135

135:                                              ; preds = %119, %114
  %136 = load %struct.wpa_interface*, %struct.wpa_interface** %5, align 8
  %137 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %136, i32 0, i32 6
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %156

140:                                              ; preds = %135
  %141 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %142 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %141, i32 0, i32 11
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 12
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @os_free(i32* %145)
  %147 = load %struct.wpa_interface*, %struct.wpa_interface** %5, align 8
  %148 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %147, i32 0, i32 6
  %149 = load i8*, i8** %148, align 8
  %150 = call i8* @os_strdup(i8* %149)
  %151 = bitcast i8* %150 to i32*
  %152 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %153 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %152, i32 0, i32 11
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 12
  store i32* %151, i32** %155, align 8
  br label %156

156:                                              ; preds = %140, %135
  %157 = load %struct.wpa_interface*, %struct.wpa_interface** %5, align 8
  %158 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %157, i32 0, i32 7
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %177

161:                                              ; preds = %156
  %162 = load %struct.wpa_interface*, %struct.wpa_interface** %5, align 8
  %163 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %162, i32 0, i32 3
  %164 = load i8*, i8** %163, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %177, label %166

166:                                              ; preds = %161
  %167 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %168 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %167, i32 0, i32 11
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 4
  %171 = load i32*, i32** %170, align 8
  %172 = call i32 @os_free(i32* %171)
  %173 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %174 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %173, i32 0, i32 11
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 4
  store i32* null, i32** %176, align 8
  br label %177

177:                                              ; preds = %166, %161, %156
  br label %188

178:                                              ; preds = %56
  %179 = load %struct.wpa_interface*, %struct.wpa_interface** %5, align 8
  %180 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %179, i32 0, i32 3
  %181 = load i8*, i8** %180, align 8
  %182 = load %struct.wpa_interface*, %struct.wpa_interface** %5, align 8
  %183 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %182, i32 0, i32 6
  %184 = load i8*, i8** %183, align 8
  %185 = call %struct.TYPE_8__* @wpa_config_alloc_empty(i8* %181, i8* %184)
  %186 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %187 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %186, i32 0, i32 11
  store %struct.TYPE_8__* %185, %struct.TYPE_8__** %187, align 8
  br label %188

188:                                              ; preds = %178, %177
  %189 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %190 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %189, i32 0, i32 11
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %190, align 8
  %192 = icmp eq %struct.TYPE_8__* %191, null
  br i1 %192, label %193, label %196

193:                                              ; preds = %188
  %194 = load i32, i32* @MSG_ERROR, align 4
  %195 = call i32 (i32, i8*, ...) @wpa_printf(i32 %194, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %754

196:                                              ; preds = %188
  %197 = load %struct.wpa_interface*, %struct.wpa_interface** %5, align 8
  %198 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = icmp eq i8* %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %196
  %202 = load i32, i32* @MSG_ERROR, align 4
  %203 = call i32 (i32, i8*, ...) @wpa_printf(i32 %202, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %754

204:                                              ; preds = %196
  %205 = load %struct.wpa_interface*, %struct.wpa_interface** %5, align 8
  %206 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = call i32 @os_strlen(i8* %207)
  %209 = sext i32 %208 to i64
  %210 = icmp uge i64 %209, 8
  br i1 %210, label %211, label %217

211:                                              ; preds = %204
  %212 = load i32, i32* @MSG_ERROR, align 4
  %213 = load %struct.wpa_interface*, %struct.wpa_interface** %5, align 8
  %214 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 (i32, i8*, ...) @wpa_printf(i32 %212, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %215)
  store i32 -1, i32* %3, align 4
  br label %754

217:                                              ; preds = %204
  %218 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %219 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %218, i32 0, i32 21
  %220 = load i64*, i64** %219, align 8
  %221 = load %struct.wpa_interface*, %struct.wpa_interface** %5, align 8
  %222 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %221, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  %224 = call i32 @os_strlcpy(i64* %220, i8* %223, i32 8)
  %225 = load %struct.wpa_interface*, %struct.wpa_interface** %5, align 8
  %226 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %225, i32 0, i32 4
  %227 = load i8*, i8** %226, align 8
  %228 = icmp ne i8* %227, null
  br i1 %228, label %229, label %250

229:                                              ; preds = %217
  %230 = load %struct.wpa_interface*, %struct.wpa_interface** %5, align 8
  %231 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %230, i32 0, i32 4
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 @os_strlen(i8* %232)
  %234 = sext i32 %233 to i64
  %235 = icmp uge i64 %234, 8
  br i1 %235, label %236, label %242

236:                                              ; preds = %229
  %237 = load i32, i32* @MSG_ERROR, align 4
  %238 = load %struct.wpa_interface*, %struct.wpa_interface** %5, align 8
  %239 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %238, i32 0, i32 4
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 (i32, i8*, ...) @wpa_printf(i32 %237, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* %240)
  store i32 -1, i32* %3, align 4
  br label %754

242:                                              ; preds = %229
  %243 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %244 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %243, i32 0, i32 39
  %245 = load i64*, i64** %244, align 8
  %246 = load %struct.wpa_interface*, %struct.wpa_interface** %5, align 8
  %247 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %246, i32 0, i32 4
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 @os_strlcpy(i64* %245, i8* %248, i32 8)
  br label %250

250:                                              ; preds = %242, %217
  %251 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %252 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %251, i32 0, i32 13
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @FALSE, align 4
  %255 = call i32 @eapol_sm_notify_portEnabled(i32 %253, i32 %254)
  %256 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %257 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %256, i32 0, i32 13
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @FALSE, align 4
  %260 = call i32 @eapol_sm_notify_portValid(i32 %258, i32 %259)
  %261 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %262 = load %struct.wpa_interface*, %struct.wpa_interface** %5, align 8
  %263 = call i64 @wpas_init_driver(%struct.wpa_supplicant* %261, %struct.wpa_interface* %262)
  %264 = icmp slt i64 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %250
  store i32 -1, i32* %3, align 4
  br label %754

266:                                              ; preds = %250
  %267 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %268 = call i64 @wpa_supplicant_init_wpa(%struct.wpa_supplicant* %267)
  %269 = icmp slt i64 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %266
  store i32 -1, i32* %3, align 4
  br label %754

271:                                              ; preds = %266
  %272 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %273 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %272, i32 0, i32 19
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %276 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %275, i32 0, i32 21
  %277 = load i64*, i64** %276, align 8
  %278 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %279 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %278, i32 0, i32 39
  %280 = load i64*, i64** %279, align 8
  %281 = getelementptr inbounds i64, i64* %280, i64 0
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %271
  %285 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %286 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %285, i32 0, i32 39
  %287 = load i64*, i64** %286, align 8
  br label %289

288:                                              ; preds = %271
  br label %289

289:                                              ; preds = %288, %284
  %290 = phi i64* [ %287, %284 ], [ null, %288 ]
  %291 = call i32 @wpa_sm_set_ifname(i32 %274, i64* %277, i64* %290)
  %292 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %293 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %292, i32 0, i32 19
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %296 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %295, i32 0, i32 11
  %297 = load %struct.TYPE_8__*, %struct.TYPE_8__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 11
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @wpa_sm_set_fast_reauth(i32 %294, i32 %299)
  %301 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %302 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %301, i32 0, i32 11
  %303 = load %struct.TYPE_8__*, %struct.TYPE_8__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 10
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %323

307:                                              ; preds = %289
  %308 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %309 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %308, i32 0, i32 19
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* @RSNA_PMK_LIFETIME, align 4
  %312 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %313 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %312, i32 0, i32 11
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 10
  %316 = load i64, i64* %315, align 8
  %317 = call i64 @wpa_sm_set_param(i32 %310, i32 %311, i64 %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %307
  %320 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %321 = load i32, i32* @MSG_ERROR, align 4
  %322 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_msg(%struct.wpa_supplicant* %320, i32 %321, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %754

323:                                              ; preds = %307, %289
  %324 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %325 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %324, i32 0, i32 11
  %326 = load %struct.TYPE_8__*, %struct.TYPE_8__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 9
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %346

330:                                              ; preds = %323
  %331 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %332 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %331, i32 0, i32 19
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* @RSNA_PMK_REAUTH_THRESHOLD, align 4
  %335 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %336 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %335, i32 0, i32 11
  %337 = load %struct.TYPE_8__*, %struct.TYPE_8__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i32 0, i32 9
  %339 = load i64, i64* %338, align 8
  %340 = call i64 @wpa_sm_set_param(i32 %333, i32 %334, i64 %339)
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %346

342:                                              ; preds = %330
  %343 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %344 = load i32, i32* @MSG_ERROR, align 4
  %345 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_msg(%struct.wpa_supplicant* %343, i32 %344, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %754

346:                                              ; preds = %330, %323
  %347 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %348 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %347, i32 0, i32 11
  %349 = load %struct.TYPE_8__*, %struct.TYPE_8__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i32 0, i32 8
  %351 = load i64, i64* %350, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %369

353:                                              ; preds = %346
  %354 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %355 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %354, i32 0, i32 19
  %356 = load i32, i32* %355, align 8
  %357 = load i32, i32* @RSNA_SA_TIMEOUT, align 4
  %358 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %359 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %358, i32 0, i32 11
  %360 = load %struct.TYPE_8__*, %struct.TYPE_8__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %360, i32 0, i32 8
  %362 = load i64, i64* %361, align 8
  %363 = call i64 @wpa_sm_set_param(i32 %356, i32 %357, i64 %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %369

365:                                              ; preds = %353
  %366 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %367 = load i32, i32* @MSG_ERROR, align 4
  %368 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_msg(%struct.wpa_supplicant* %366, i32 %367, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %754

369:                                              ; preds = %353, %346
  %370 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %371 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %372 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %371, i32 0, i32 38
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 0
  %374 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %375 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %374, i32 0, i32 38
  %376 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %375, i32 0, i32 2
  %377 = call %struct.TYPE_7__* @wpa_drv_get_hw_feature_data(%struct.wpa_supplicant* %370, i64* %373, i32* %376, i32* %8)
  %378 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %379 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %378, i32 0, i32 38
  %380 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %379, i32 0, i32 1
  store %struct.TYPE_7__* %377, %struct.TYPE_7__** %380, align 8
  %381 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %382 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %381, i32 0, i32 38
  %383 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %382, i32 0, i32 1
  %384 = load %struct.TYPE_7__*, %struct.TYPE_7__** %383, align 8
  %385 = icmp ne %struct.TYPE_7__* %384, null
  br i1 %385, label %386, label %450

386:                                              ; preds = %369
  store i64 0, i64* %9, align 8
  br label %387

387:                                              ; preds = %446, %386
  %388 = load i64, i64* %9, align 8
  %389 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %390 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %389, i32 0, i32 38
  %391 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %390, i32 0, i32 0
  %392 = load i64, i64* %391, align 8
  %393 = icmp ult i64 %388, %392
  br i1 %393, label %394, label %449

394:                                              ; preds = %387
  %395 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %396 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %395, i32 0, i32 38
  %397 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %396, i32 0, i32 1
  %398 = load %struct.TYPE_7__*, %struct.TYPE_7__** %397, align 8
  %399 = load i64, i64* %9, align 8
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %398, i64 %399
  %401 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %400, i32 0, i32 1
  %402 = load i64, i64* %401, align 8
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %408

404:                                              ; preds = %394
  %405 = load i64, i64* @CAPAB_VHT, align 8
  %406 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %407 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %406, i32 0, i32 0
  store i64 %405, i64* %407, align 8
  br label %449

408:                                              ; preds = %394
  %409 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %410 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %409, i32 0, i32 38
  %411 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %410, i32 0, i32 1
  %412 = load %struct.TYPE_7__*, %struct.TYPE_7__** %411, align 8
  %413 = load i64, i64* %9, align 8
  %414 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %412, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = load i32, i32* @HT_CAP_INFO_SUPP_CHANNEL_WIDTH_SET, align 4
  %418 = and i32 %416, %417
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %424

420:                                              ; preds = %408
  %421 = load i64, i64* @CAPAB_HT40, align 8
  %422 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %423 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %422, i32 0, i32 0
  store i64 %421, i64* %423, align 8
  br label %445

424:                                              ; preds = %408
  %425 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %426 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %425, i32 0, i32 38
  %427 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %426, i32 0, i32 1
  %428 = load %struct.TYPE_7__*, %struct.TYPE_7__** %427, align 8
  %429 = load i64, i64* %9, align 8
  %430 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %428, i64 %429
  %431 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %444

434:                                              ; preds = %424
  %435 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %436 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %435, i32 0, i32 0
  %437 = load i64, i64* %436, align 8
  %438 = load i64, i64* @CAPAB_NO_HT_VHT, align 8
  %439 = icmp eq i64 %437, %438
  br i1 %439, label %440, label %444

440:                                              ; preds = %434
  %441 = load i64, i64* @CAPAB_HT, align 8
  %442 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %443 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %442, i32 0, i32 0
  store i64 %441, i64* %443, align 8
  br label %444

444:                                              ; preds = %440, %434, %424
  br label %445

445:                                              ; preds = %444, %420
  br label %446

446:                                              ; preds = %445
  %447 = load i64, i64* %9, align 8
  %448 = add i64 %447, 1
  store i64 %448, i64* %9, align 8
  br label %387

449:                                              ; preds = %404, %387
  br label %450

450:                                              ; preds = %449, %369
  %451 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %452 = call i32 @wpa_drv_get_capa(%struct.wpa_supplicant* %451, %struct.wpa_driver_capa* %6)
  store i32 %452, i32* %7, align 4
  %453 = load i32, i32* %7, align 4
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %455, label %585

455:                                              ; preds = %450
  %456 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %457 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %456, i32 0, i32 1
  store i32 1, i32* %457, align 8
  %458 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %6, i32 0, i32 0
  %459 = load i32, i32* %458, align 8
  %460 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %461 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %460, i32 0, i32 2
  store i32 %459, i32* %461, align 4
  %462 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %6, i32 0, i32 20
  %463 = load i32, i32* %462, align 8
  %464 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %465 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %464, i32 0, i32 37
  store i32 %463, i32* %465, align 8
  %466 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %6, i32 0, i32 19
  %467 = load i32, i32* %466, align 4
  %468 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %469 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %468, i32 0, i32 36
  store i32 %467, i32* %469, align 4
  %470 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %6, i32 0, i32 18
  %471 = load i32, i32* %470, align 8
  %472 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %473 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %472, i32 0, i32 35
  store i32 %471, i32* %473, align 8
  %474 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %6, i32 0, i32 17
  %475 = load i32, i32* %474, align 4
  %476 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %477 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %476, i32 0, i32 34
  store i32 %475, i32* %477, align 4
  %478 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %6, i32 0, i32 16
  %479 = load i32, i32* %478, align 8
  %480 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %481 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %480, i32 0, i32 33
  store i32 %479, i32* %481, align 8
  %482 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %6, i32 0, i32 15
  %483 = load i32, i32* %482, align 4
  %484 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %485 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %484, i32 0, i32 32
  store i32 %483, i32* %485, align 4
  %486 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %6, i32 0, i32 14
  %487 = load i32, i32* %486, align 8
  %488 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %489 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %488, i32 0, i32 31
  store i32 %487, i32* %489, align 8
  %490 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %6, i32 0, i32 13
  %491 = load i32, i32* %490, align 4
  %492 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %493 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %492, i32 0, i32 30
  store i32 %491, i32* %493, align 4
  %494 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %6, i32 0, i32 12
  %495 = load i32, i32* %494, align 8
  %496 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %497 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %496, i32 0, i32 29
  store i32 %495, i32* %497, align 8
  %498 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %6, i32 0, i32 11
  %499 = load i64, i64* %498, align 8
  %500 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %501 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %500, i32 0, i32 24
  store i64 %499, i64* %501, align 8
  %502 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %6, i32 0, i32 10
  %503 = load i32, i32* %502, align 4
  %504 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %505 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %504, i32 0, i32 28
  store i32 %503, i32* %505, align 4
  %506 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %6, i32 0, i32 1
  %507 = load i32, i32* %506, align 4
  %508 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %509 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %508, i32 0, i32 3
  store i32 %507, i32* %509, align 8
  %510 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %6, i32 0, i32 9
  %511 = load i32, i32* %510, align 8
  %512 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %513 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %512, i32 0, i32 27
  store i32 %511, i32* %513, align 8
  %514 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %6, i32 0, i32 2
  %515 = load i32*, i32** %514, align 8
  %516 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %517 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %516, i32 0, i32 4
  store i32* %515, i32** %517, align 8
  %518 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %6, i32 0, i32 8
  %519 = load i32, i32* %518, align 4
  %520 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %521 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %520, i32 0, i32 26
  store i32 %519, i32* %521, align 4
  %522 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %6, i32 0, i32 3
  %523 = load i32, i32* %522, align 8
  %524 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %525 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %524, i32 0, i32 5
  store i32 %523, i32* %525, align 8
  %526 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %6, i32 0, i32 4
  %527 = load i32, i32* %526, align 4
  %528 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %529 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %528, i32 0, i32 6
  store i32 %527, i32* %529, align 4
  %530 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %6, i32 0, i32 7
  %531 = load i32, i32* %530, align 8
  %532 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %533 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %532, i32 0, i32 25
  store i32 %531, i32* %533, align 8
  %534 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %6, i32 0, i32 6
  %535 = load i64, i64* %534, align 8
  %536 = icmp ne i64 %535, 0
  br i1 %536, label %537, label %543

537:                                              ; preds = %455
  %538 = load i32, i32* @MAC_ADDR_RAND_SCAN, align 4
  %539 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %540 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %539, i32 0, i32 7
  %541 = load i32, i32* %540, align 8
  %542 = or i32 %541, %538
  store i32 %542, i32* %540, align 8
  br label %543

543:                                              ; preds = %537, %455
  %544 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %545 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %544, i32 0, i32 24
  %546 = load i64, i64* %545, align 8
  %547 = icmp ne i64 %546, 0
  br i1 %547, label %548, label %560

548:                                              ; preds = %543
  %549 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %6, i32 0, i32 5
  %550 = load i64, i64* %549, align 8
  %551 = icmp ne i64 %550, 0
  br i1 %551, label %552, label %560

552:                                              ; preds = %548
  %553 = load i32, i32* @MAC_ADDR_RAND_SCHED_SCAN, align 4
  %554 = load i32, i32* @MAC_ADDR_RAND_PNO, align 4
  %555 = or i32 %553, %554
  %556 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %557 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %556, i32 0, i32 7
  %558 = load i32, i32* %557, align 8
  %559 = or i32 %558, %555
  store i32 %559, i32* %557, align 8
  br label %560

560:                                              ; preds = %552, %548, %543
  %561 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %562 = load i32, i32* @WPA_IF_STATION, align 4
  %563 = call i32 @wpa_drv_get_ext_capa(%struct.wpa_supplicant* %561, i32 %562)
  %564 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %565 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %564, i32 0, i32 4
  %566 = load i32*, i32** %565, align 8
  %567 = icmp ne i32* %566, null
  br i1 %567, label %568, label %584

568:                                              ; preds = %560
  %569 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %570 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %569, i32 0, i32 5
  %571 = load i32, i32* %570, align 8
  %572 = icmp sge i32 %571, 3
  br i1 %572, label %573, label %584

573:                                              ; preds = %568
  %574 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %575 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %574, i32 0, i32 4
  %576 = load i32*, i32** %575, align 8
  %577 = getelementptr inbounds i32, i32* %576, i64 2
  %578 = load i32, i32* %577, align 4
  %579 = and i32 %578, 64
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %581, label %584

581:                                              ; preds = %573
  %582 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %583 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %582, i32 0, i32 8
  store i32 1, i32* %583, align 4
  br label %584

584:                                              ; preds = %581, %573, %568, %560
  br label %585

585:                                              ; preds = %584, %450
  %586 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %587 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %586, i32 0, i32 3
  %588 = load i32, i32* %587, align 8
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %590, label %593

590:                                              ; preds = %585
  %591 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %592 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %591, i32 0, i32 3
  store i32 1000, i32* %592, align 8
  br label %593

593:                                              ; preds = %590, %585
  %594 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %595 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %594, i32 0, i32 2
  %596 = load i32, i32* %595, align 4
  %597 = load i32, i32* @WPA_DRIVER_FLAGS_DEDICATED_P2P_DEVICE, align 4
  %598 = and i32 %596, %597
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %600, label %606

600:                                              ; preds = %593
  %601 = load %struct.wpa_interface*, %struct.wpa_interface** %5, align 8
  %602 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %601, i32 0, i32 7
  %603 = load i64, i64* %602, align 8
  %604 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %605 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %604, i32 0, i32 16
  store i64 %603, i64* %605, align 8
  br label %606

606:                                              ; preds = %600, %593
  %607 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %608 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %607, i32 0, i32 6
  %609 = load i32, i32* %608, align 4
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %611, label %614

611:                                              ; preds = %606
  %612 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %613 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %612, i32 0, i32 6
  store i32 1, i32* %613, align 4
  br label %614

614:                                              ; preds = %611, %606
  %615 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %616 = call i64 @wpa_supplicant_driver_init(%struct.wpa_supplicant* %615)
  %617 = icmp slt i64 %616, 0
  br i1 %617, label %618, label %619

618:                                              ; preds = %614
  store i32 -1, i32* %3, align 4
  br label %754

619:                                              ; preds = %614
  %620 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %621 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %620, i32 0, i32 11
  %622 = load %struct.TYPE_8__*, %struct.TYPE_8__** %621, align 8
  %623 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %622, i32 0, i32 7
  %624 = load i64*, i64** %623, align 8
  %625 = getelementptr inbounds i64, i64* %624, i64 0
  %626 = load i64, i64* %625, align 8
  %627 = icmp ne i64 %626, 0
  br i1 %627, label %628, label %650

628:                                              ; preds = %619
  %629 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %630 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %629, i32 0, i32 11
  %631 = load %struct.TYPE_8__*, %struct.TYPE_8__** %630, align 8
  %632 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %631, i32 0, i32 7
  %633 = load i64*, i64** %632, align 8
  %634 = getelementptr inbounds i64, i64* %633, i64 1
  %635 = load i64, i64* %634, align 8
  %636 = icmp ne i64 %635, 0
  br i1 %636, label %637, label %650

637:                                              ; preds = %628
  %638 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %639 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %640 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %639, i32 0, i32 11
  %641 = load %struct.TYPE_8__*, %struct.TYPE_8__** %640, align 8
  %642 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %641, i32 0, i32 7
  %643 = load i64*, i64** %642, align 8
  %644 = call i64 @wpa_drv_set_country(%struct.wpa_supplicant* %638, i64* %643)
  %645 = icmp ne i64 %644, 0
  br i1 %645, label %646, label %650

646:                                              ; preds = %637
  %647 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %648 = load i32, i32* @MSG_DEBUG, align 4
  %649 = call i32 @wpa_dbg(%struct.wpa_supplicant* %647, i32 %648, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %754

650:                                              ; preds = %637, %628, %619
  %651 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %652 = call i64 @wpas_wps_init(%struct.wpa_supplicant* %651)
  %653 = icmp ne i64 %652, 0
  br i1 %653, label %654, label %655

654:                                              ; preds = %650
  store i32 -1, i32* %3, align 4
  br label %754

655:                                              ; preds = %650
  %656 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %657 = call i64 @wpa_supplicant_init_eapol(%struct.wpa_supplicant* %656)
  %658 = icmp slt i64 %657, 0
  br i1 %658, label %659, label %660

659:                                              ; preds = %655
  store i32 -1, i32* %3, align 4
  br label %754

660:                                              ; preds = %655
  %661 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %662 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %661, i32 0, i32 19
  %663 = load i32, i32* %662, align 8
  %664 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %665 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %664, i32 0, i32 13
  %666 = load i32, i32* %665, align 4
  %667 = call i32 @wpa_sm_set_eapol(i32 %663, i32 %666)
  %668 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %669 = call i32* @wpa_supplicant_ctrl_iface_init(%struct.wpa_supplicant* %668)
  %670 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %671 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %670, i32 0, i32 18
  store i32* %669, i32** %671, align 8
  %672 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %673 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %672, i32 0, i32 18
  %674 = load i32*, i32** %673, align 8
  %675 = icmp eq i32* %674, null
  br i1 %675, label %676, label %684

676:                                              ; preds = %660
  %677 = load i32, i32* @MSG_ERROR, align 4
  %678 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %679 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %678, i32 0, i32 11
  %680 = load %struct.TYPE_8__*, %struct.TYPE_8__** %679, align 8
  %681 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %680, i32 0, i32 4
  %682 = load i32*, i32** %681, align 8
  %683 = call i32 (i32, i8*, ...) @wpa_printf(i32 %677, i8* getelementptr inbounds ([266 x i8], [266 x i8]* @.str.12, i64 0, i64 0), i32* %682)
  store i32 -1, i32* %3, align 4
  br label %754

684:                                              ; preds = %660
  %685 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %686 = call i32* @gas_query_init(%struct.wpa_supplicant* %685)
  %687 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %688 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %687, i32 0, i32 17
  store i32* %686, i32** %688, align 8
  %689 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %690 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %689, i32 0, i32 17
  %691 = load i32*, i32** %690, align 8
  %692 = icmp eq i32* %691, null
  br i1 %692, label %693, label %696

693:                                              ; preds = %684
  %694 = load i32, i32* @MSG_ERROR, align 4
  %695 = call i32 (i32, i8*, ...) @wpa_printf(i32 %694, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %754

696:                                              ; preds = %684
  %697 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %698 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %697, i32 0, i32 2
  %699 = load i32, i32* %698, align 4
  %700 = load i32, i32* @WPA_DRIVER_FLAGS_DEDICATED_P2P_DEVICE, align 4
  %701 = and i32 %699, %700
  %702 = icmp ne i32 %701, 0
  br i1 %702, label %703, label %708

703:                                              ; preds = %696
  %704 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %705 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %704, i32 0, i32 16
  %706 = load i64, i64* %705, align 8
  %707 = icmp ne i64 %706, 0
  br i1 %707, label %708, label %719

708:                                              ; preds = %703, %696
  %709 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %710 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %709, i32 0, i32 15
  %711 = load i32, i32* %710, align 4
  %712 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %713 = call i64 @wpas_p2p_init(i32 %711, %struct.wpa_supplicant* %712)
  %714 = icmp slt i64 %713, 0
  br i1 %714, label %715, label %719

715:                                              ; preds = %708
  %716 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %717 = load i32, i32* @MSG_ERROR, align 4
  %718 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_msg(%struct.wpa_supplicant* %716, i32 %717, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %754

719:                                              ; preds = %708, %703
  %720 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %721 = call i64 @wpa_bss_init(%struct.wpa_supplicant* %720)
  %722 = icmp slt i64 %721, 0
  br i1 %722, label %723, label %724

723:                                              ; preds = %719
  store i32 -1, i32* %3, align 4
  br label %754

724:                                              ; preds = %719
  %725 = load i32, i32* %7, align 4
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %727, label %732

727:                                              ; preds = %724
  %728 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %729 = call i64 @wpas_set_wowlan_triggers(%struct.wpa_supplicant* %728, %struct.wpa_driver_capa* %6)
  %730 = icmp slt i64 %729, 0
  br i1 %730, label %731, label %732

731:                                              ; preds = %727
  store i32 -1, i32* %3, align 4
  br label %754

732:                                              ; preds = %727, %724
  %733 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %734 = call i64 @pcsc_reader_init(%struct.wpa_supplicant* %733)
  %735 = icmp slt i64 %734, 0
  br i1 %735, label %736, label %737

736:                                              ; preds = %732
  store i32 -1, i32* %3, align 4
  br label %754

737:                                              ; preds = %732
  %738 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %739 = call i64 @wpas_init_ext_pw(%struct.wpa_supplicant* %738)
  %740 = icmp slt i64 %739, 0
  br i1 %740, label %741, label %742

741:                                              ; preds = %737
  store i32 -1, i32* %3, align 4
  br label %754

742:                                              ; preds = %737
  %743 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %744 = call i32 @wpas_rrm_reset(%struct.wpa_supplicant* %743)
  %745 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %746 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %747 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %746, i32 0, i32 11
  %748 = load %struct.TYPE_8__*, %struct.TYPE_8__** %747, align 8
  %749 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %748, i32 0, i32 3
  %750 = load i32, i32* %749, align 8
  %751 = call i32 @wpas_sched_scan_plans_set(%struct.wpa_supplicant* %745, i32 %750)
  %752 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %753 = call i32 @wpa_supplicant_set_default_scan_ies(%struct.wpa_supplicant* %752)
  store i32 0, i32* %3, align 4
  br label %754

754:                                              ; preds = %742, %741, %736, %731, %723, %715, %693, %676, %659, %654, %646, %618, %365, %342, %319, %270, %265, %236, %211, %201, %193, %108, %81
  %755 = load i32, i32* %3, align 4
  ret i32 %755
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i8* @os_strdup(i8*) #1

declare dso_local %struct.TYPE_8__* @wpa_config_read(i32*, %struct.TYPE_8__*) #1

declare dso_local i8* @os_rel2abs_path(i8*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local %struct.TYPE_8__* @wpa_config_alloc_empty(i8*, i8*) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i32 @os_strlcpy(i64*, i8*, i32) #1

declare dso_local i32 @eapol_sm_notify_portEnabled(i32, i32) #1

declare dso_local i32 @eapol_sm_notify_portValid(i32, i32) #1

declare dso_local i64 @wpas_init_driver(%struct.wpa_supplicant*, %struct.wpa_interface*) #1

declare dso_local i64 @wpa_supplicant_init_wpa(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_sm_set_ifname(i32, i64*, i64*) #1

declare dso_local i32 @wpa_sm_set_fast_reauth(i32, i32) #1

declare dso_local i64 @wpa_sm_set_param(i32, i32, i64) #1

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i8*, ...) #1

declare dso_local %struct.TYPE_7__* @wpa_drv_get_hw_feature_data(%struct.wpa_supplicant*, i64*, i32*, i32*) #1

declare dso_local i32 @wpa_drv_get_capa(%struct.wpa_supplicant*, %struct.wpa_driver_capa*) #1

declare dso_local i32 @wpa_drv_get_ext_capa(%struct.wpa_supplicant*, i32) #1

declare dso_local i64 @wpa_supplicant_driver_init(%struct.wpa_supplicant*) #1

declare dso_local i64 @wpa_drv_set_country(%struct.wpa_supplicant*, i64*) #1

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local i64 @wpas_wps_init(%struct.wpa_supplicant*) #1

declare dso_local i64 @wpa_supplicant_init_eapol(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_sm_set_eapol(i32, i32) #1

declare dso_local i32* @wpa_supplicant_ctrl_iface_init(%struct.wpa_supplicant*) #1

declare dso_local i32* @gas_query_init(%struct.wpa_supplicant*) #1

declare dso_local i64 @wpas_p2p_init(i32, %struct.wpa_supplicant*) #1

declare dso_local i64 @wpa_bss_init(%struct.wpa_supplicant*) #1

declare dso_local i64 @wpas_set_wowlan_triggers(%struct.wpa_supplicant*, %struct.wpa_driver_capa*) #1

declare dso_local i64 @pcsc_reader_init(%struct.wpa_supplicant*) #1

declare dso_local i64 @wpas_init_ext_pw(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_rrm_reset(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_sched_scan_plans_set(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpa_supplicant_set_default_scan_ies(%struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

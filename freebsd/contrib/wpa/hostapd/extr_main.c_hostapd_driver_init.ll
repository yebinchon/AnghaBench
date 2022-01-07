; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_main.c_hostapd_driver_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_main.c_hostapd_driver_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 (i32*, %struct.wpa_driver_capa*)*, i64 (i32*, i64**)*, i32, i32* (%struct.hostapd_data*, %struct.wpa_init_params*)*, i32* (i32)* }
%struct.wpa_driver_capa = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.hostapd_data = type { i32*, %struct.TYPE_7__*, i32, %struct.hostapd_bss_config*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.hostapd_bss_config = type { i32*, i32, i64*, i32, i32 }
%struct.TYPE_6__ = type { i64, %struct.hostapd_data** }
%struct.TYPE_5__ = type { i32 }
%struct.wpa_init_params = type { i32*, i64, i64**, i32, i32, i32, i32, i32* }
%struct.TYPE_8__ = type { i32** }
%struct.hostapd_iface = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.hostapd_data** }
%struct.wowlan_triggers = type opaque

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"No hostapd driver wrapper available\00", align 1
@wpa_drivers = common dso_local global %struct.TYPE_7__** null, align 8
@global = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to initialize driver '%s'\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"%s driver initialization failed.\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"set_wowlan failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_iface*)* @hostapd_driver_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_driver_init(%struct.hostapd_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostapd_iface*, align 8
  %4 = alloca %struct.wpa_init_params, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hostapd_data*, align 8
  %7 = alloca %struct.hostapd_bss_config*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.wpa_driver_capa, align 4
  %10 = alloca %struct.hostapd_data*, align 8
  %11 = alloca %struct.wowlan_triggers*, align 8
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %3, align 8
  %12 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %13 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %12, i32 0, i32 8
  %14 = load %struct.hostapd_data**, %struct.hostapd_data*** %13, align 8
  %15 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %14, i64 0
  %16 = load %struct.hostapd_data*, %struct.hostapd_data** %15, align 8
  store %struct.hostapd_data* %16, %struct.hostapd_data** %6, align 8
  %17 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %18 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %17, i32 0, i32 3
  %19 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %18, align 8
  store %struct.hostapd_bss_config* %19, %struct.hostapd_bss_config** %7, align 8
  %20 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %7, align 8
  %21 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %8, align 8
  %23 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %24 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = icmp eq %struct.TYPE_7__* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %1
  %28 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %29 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  %32 = load i32* (%struct.hostapd_data*, %struct.wpa_init_params*)*, i32* (%struct.hostapd_data*, %struct.wpa_init_params*)** %31, align 8
  %33 = icmp eq i32* (%struct.hostapd_data*, %struct.wpa_init_params*)* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %27, %1
  %35 = load i32, i32* @MSG_ERROR, align 4
  %36 = call i32 (i32, i8*, ...) @wpa_printf(i32 %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %327

37:                                               ; preds = %27
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %40, %43
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %44, %47
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %48, %51
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %52, %55
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 5
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %37
  store i32* null, i32** %8, align 8
  br label %63

63:                                               ; preds = %62, %37
  %64 = call i32 @os_memset(%struct.wpa_init_params* %4, i32 0, i32 48)
  store i64 0, i64* %5, align 8
  br label %65

65:                                               ; preds = %130, %63
  %66 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @wpa_drivers, align 8
  %67 = load i64, i64* %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %66, i64 %67
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = icmp ne %struct.TYPE_7__* %69, null
  br i1 %70, label %71, label %133

71:                                               ; preds = %65
  %72 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @wpa_drivers, align 8
  %73 = load i64, i64* %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %72, i64 %73
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %77 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %76, i32 0, i32 1
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = icmp ne %struct.TYPE_7__* %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %130

81:                                               ; preds = %71
  %82 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @global, i32 0, i32 0), align 8
  %83 = load i64, i64* %5, align 8
  %84 = getelementptr inbounds i32*, i32** %82, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %124

87:                                               ; preds = %81
  %88 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @wpa_drivers, align 8
  %89 = load i64, i64* %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %88, i64 %89
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 4
  %93 = load i32* (i32)*, i32* (i32)** %92, align 8
  %94 = icmp ne i32* (i32)* %93, null
  br i1 %94, label %95, label %124

95:                                               ; preds = %87
  %96 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @wpa_drivers, align 8
  %97 = load i64, i64* %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %96, i64 %97
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 4
  %101 = load i32* (i32)*, i32* (i32)** %100, align 8
  %102 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %103 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = call i32* %101(i32 %104)
  %106 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @global, i32 0, i32 0), align 8
  %107 = load i64, i64* %5, align 8
  %108 = getelementptr inbounds i32*, i32** %106, i64 %107
  store i32* %105, i32** %108, align 8
  %109 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @global, i32 0, i32 0), align 8
  %110 = load i64, i64* %5, align 8
  %111 = getelementptr inbounds i32*, i32** %109, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %123

114:                                              ; preds = %95
  %115 = load i32, i32* @MSG_ERROR, align 4
  %116 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @wpa_drivers, align 8
  %117 = load i64, i64* %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %116, i64 %117
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (i32, i8*, ...) @wpa_printf(i32 %115, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  store i32 -1, i32* %2, align 4
  br label %327

123:                                              ; preds = %95
  br label %124

124:                                              ; preds = %123, %87, %81
  %125 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @global, i32 0, i32 0), align 8
  %126 = load i64, i64* %5, align 8
  %127 = getelementptr inbounds i32*, i32** %125, i64 %126
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds %struct.wpa_init_params, %struct.wpa_init_params* %4, i32 0, i32 7
  store i32* %128, i32** %129, align 8
  br label %133

130:                                              ; preds = %80
  %131 = load i64, i64* %5, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %5, align 8
  br label %65

133:                                              ; preds = %124, %65
  %134 = load i32*, i32** %8, align 8
  %135 = getelementptr inbounds %struct.wpa_init_params, %struct.wpa_init_params* %4, i32 0, i32 0
  store i32* %134, i32** %135, align 8
  %136 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %137 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %136, i32 0, i32 3
  %138 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %137, align 8
  %139 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.wpa_init_params, %struct.wpa_init_params* %4, i32 0, i32 6
  store i32 %140, i32* %141, align 4
  %142 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %143 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %142, i32 0, i32 5
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.wpa_init_params, %struct.wpa_init_params* %4, i32 0, i32 5
  store i32 %146, i32* %147, align 8
  %148 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %149 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %148, i32 0, i32 3
  %150 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %149, align 8
  %151 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = getelementptr inbounds %struct.wpa_init_params, %struct.wpa_init_params* %4, i32 0, i32 4
  store i32 %152, i32* %153, align 4
  %154 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %155 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %154, i32 0, i32 4
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds %struct.wpa_init_params, %struct.wpa_init_params* %4, i32 0, i32 1
  store i64 %158, i64* %159, align 8
  %160 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %161 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %160, i32 0, i32 4
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i64** @os_calloc(i64 %164, i32 8)
  %166 = getelementptr inbounds %struct.wpa_init_params, %struct.wpa_init_params* %4, i32 0, i32 2
  store i64** %165, i64*** %166, align 8
  %167 = getelementptr inbounds %struct.wpa_init_params, %struct.wpa_init_params* %4, i32 0, i32 2
  %168 = load i64**, i64*** %167, align 8
  %169 = icmp eq i64** %168, null
  br i1 %169, label %170, label %171

170:                                              ; preds = %133
  store i32 -1, i32* %2, align 4
  br label %327

171:                                              ; preds = %133
  store i64 0, i64* %5, align 8
  br label %172

172:                                              ; preds = %208, %171
  %173 = load i64, i64* %5, align 8
  %174 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %175 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %174, i32 0, i32 4
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp ult i64 %173, %178
  br i1 %179, label %180, label %211

180:                                              ; preds = %172
  %181 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %182 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %181, i32 0, i32 4
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 1
  %185 = load %struct.hostapd_data**, %struct.hostapd_data*** %184, align 8
  %186 = load i64, i64* %5, align 8
  %187 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %185, i64 %186
  %188 = load %struct.hostapd_data*, %struct.hostapd_data** %187, align 8
  store %struct.hostapd_data* %188, %struct.hostapd_data** %10, align 8
  %189 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %190 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %189, i32 0, i32 3
  %191 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %190, align 8
  %192 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %191, i32 0, i32 2
  %193 = load i64*, i64** %192, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %207

197:                                              ; preds = %180
  %198 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %199 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %198, i32 0, i32 3
  %200 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %199, align 8
  %201 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %200, i32 0, i32 2
  %202 = load i64*, i64** %201, align 8
  %203 = getelementptr inbounds %struct.wpa_init_params, %struct.wpa_init_params* %4, i32 0, i32 2
  %204 = load i64**, i64*** %203, align 8
  %205 = load i64, i64* %5, align 8
  %206 = getelementptr inbounds i64*, i64** %204, i64 %205
  store i64* %202, i64** %206, align 8
  br label %207

207:                                              ; preds = %197, %180
  br label %208

208:                                              ; preds = %207
  %209 = load i64, i64* %5, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %5, align 8
  br label %172

211:                                              ; preds = %172
  %212 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %213 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = getelementptr inbounds %struct.wpa_init_params, %struct.wpa_init_params* %4, i32 0, i32 3
  store i32 %214, i32* %215, align 8
  %216 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %217 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %216, i32 0, i32 1
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 3
  %220 = load i32* (%struct.hostapd_data*, %struct.wpa_init_params*)*, i32* (%struct.hostapd_data*, %struct.wpa_init_params*)** %219, align 8
  %221 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %222 = call i32* %220(%struct.hostapd_data* %221, %struct.wpa_init_params* %4)
  %223 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %224 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %223, i32 0, i32 0
  store i32* %222, i32** %224, align 8
  %225 = getelementptr inbounds %struct.wpa_init_params, %struct.wpa_init_params* %4, i32 0, i32 2
  %226 = load i64**, i64*** %225, align 8
  %227 = call i32 @os_free(i64** %226)
  %228 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %229 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = icmp eq i32* %230, null
  br i1 %231, label %232, label %242

232:                                              ; preds = %211
  %233 = load i32, i32* @MSG_ERROR, align 4
  %234 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %235 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %234, i32 0, i32 1
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = call i32 (i32, i8*, ...) @wpa_printf(i32 %233, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %238)
  %240 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %241 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %240, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %241, align 8
  store i32 -1, i32* %2, align 4
  br label %327

242:                                              ; preds = %211
  %243 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %244 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %243, i32 0, i32 1
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 0
  %247 = load i64 (i32*, %struct.wpa_driver_capa*)*, i64 (i32*, %struct.wpa_driver_capa*)** %246, align 8
  %248 = icmp ne i64 (i32*, %struct.wpa_driver_capa*)* %247, null
  br i1 %248, label %249, label %326

249:                                              ; preds = %242
  %250 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %251 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %250, i32 0, i32 1
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 0
  %254 = load i64 (i32*, %struct.wpa_driver_capa*)*, i64 (i32*, %struct.wpa_driver_capa*)** %253, align 8
  %255 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %256 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = call i64 %254(i32* %257, %struct.wpa_driver_capa* %9)
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %260, label %326

260:                                              ; preds = %249
  %261 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %9, i32 0, i32 6
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %264 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %263, i32 0, i32 6
  store i32 %262, i32* %264, align 8
  %265 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %9, i32 0, i32 5
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %268 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %267, i32 0, i32 5
  store i32 %266, i32* %268, align 4
  %269 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %9, i32 0, i32 4
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %272 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %271, i32 0, i32 4
  store i32 %270, i32* %272, align 8
  %273 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %9, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %276 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %275, i32 0, i32 3
  store i32 %274, i32* %276, align 4
  %277 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %9, i32 0, i32 2
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %280 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %279, i32 0, i32 2
  store i32 %278, i32* %280, align 8
  %281 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %9, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %284 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %283, i32 0, i32 1
  store i32 %282, i32* %284, align 4
  %285 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %9, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %288 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %287, i32 0, i32 0
  store i32 %286, i32* %288, align 8
  %289 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %290 = call i32 @hostapd_get_ext_capa(%struct.hostapd_iface* %289)
  %291 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %7, align 8
  %292 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = call i64** @wpa_get_wowlan_triggers(i32 %293, %struct.wpa_driver_capa* %9)
  %295 = bitcast i64** %294 to %struct.wowlan_triggers*
  store %struct.wowlan_triggers* %295, %struct.wowlan_triggers** %11, align 8
  %296 = load %struct.wowlan_triggers*, %struct.wowlan_triggers** %11, align 8
  %297 = icmp ne %struct.wowlan_triggers* %296, null
  br i1 %297, label %298, label %322

298:                                              ; preds = %260
  %299 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %300 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %299, i32 0, i32 1
  %301 = load %struct.TYPE_7__*, %struct.TYPE_7__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 1
  %303 = load i64 (i32*, i64**)*, i64 (i32*, i64**)** %302, align 8
  %304 = icmp ne i64 (i32*, i64**)* %303, null
  br i1 %304, label %305, label %322

305:                                              ; preds = %298
  %306 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %307 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %306, i32 0, i32 1
  %308 = load %struct.TYPE_7__*, %struct.TYPE_7__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 1
  %310 = load i64 (i32*, i64**)*, i64 (i32*, i64**)** %309, align 8
  %311 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %312 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %311, i32 0, i32 0
  %313 = load i32*, i32** %312, align 8
  %314 = load %struct.wowlan_triggers*, %struct.wowlan_triggers** %11, align 8
  %315 = bitcast %struct.wowlan_triggers* %314 to i64**
  %316 = call i64 %310(i32* %313, i64** %315)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %321

318:                                              ; preds = %305
  %319 = load i32, i32* @MSG_ERROR, align 4
  %320 = call i32 (i32, i8*, ...) @wpa_printf(i32 %319, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %321

321:                                              ; preds = %318, %305
  br label %322

322:                                              ; preds = %321, %298, %260
  %323 = load %struct.wowlan_triggers*, %struct.wowlan_triggers** %11, align 8
  %324 = bitcast %struct.wowlan_triggers* %323 to i64**
  %325 = call i32 @os_free(i64** %324)
  br label %326

326:                                              ; preds = %322, %249, %242
  store i32 0, i32* %2, align 4
  br label %327

327:                                              ; preds = %326, %232, %170, %114, %34
  %328 = load i32, i32* %2, align 4
  ret i32 %328
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_memset(%struct.wpa_init_params*, i32, i32) #1

declare dso_local i64** @os_calloc(i64, i32) #1

declare dso_local i32 @os_free(i64**) #1

declare dso_local i32 @hostapd_get_ext_capa(%struct.hostapd_iface*) #1

declare dso_local i64** @wpa_get_wowlan_triggers(i32, %struct.wpa_driver_capa*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

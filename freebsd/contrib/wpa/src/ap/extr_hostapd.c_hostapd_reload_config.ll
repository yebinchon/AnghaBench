; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_reload_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_reload_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { i64, %struct.hostapd_data**, %struct.hostapd_config*, %struct.hapd_interfaces*, i32* }
%struct.hostapd_data = type { %struct.TYPE_2__*, %struct.hostapd_config* }
%struct.TYPE_2__ = type { i32 }
%struct.hostapd_config = type { %struct.TYPE_2__**, i32, i32, i32, i32, i32, i32, i32 }
%struct.hapd_interfaces = type { i64, %struct.hostapd_iface**, %struct.hostapd_config* (i32*)* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"Configuration changes include interface/BSS modification - force full disable+enable sequence\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed to initialize interface on config reload\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to enable interface on config reload\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_reload_config(%struct.hostapd_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostapd_iface*, align 8
  %4 = alloca %struct.hapd_interfaces*, align 8
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca %struct.hostapd_config*, align 8
  %7 = alloca %struct.hostapd_config*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %3, align 8
  %11 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %12 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %11, i32 0, i32 3
  %13 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %12, align 8
  store %struct.hapd_interfaces* %13, %struct.hapd_interfaces** %4, align 8
  %14 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %15 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %14, i32 0, i32 1
  %16 = load %struct.hostapd_data**, %struct.hostapd_data*** %15, align 8
  %17 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %16, i64 0
  %18 = load %struct.hostapd_data*, %struct.hostapd_data** %17, align 8
  store %struct.hostapd_data* %18, %struct.hostapd_data** %5, align 8
  %19 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %20 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %44

23:                                               ; preds = %1
  %24 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %25 = call i32 @hostapd_clear_old(%struct.hostapd_iface* %24)
  store i64 0, i64* %8, align 8
  br label %26

26:                                               ; preds = %40, %23
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %29 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %34 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %33, i32 0, i32 1
  %35 = load %struct.hostapd_data**, %struct.hostapd_data*** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %35, i64 %36
  %38 = load %struct.hostapd_data*, %struct.hostapd_data** %37, align 8
  %39 = call i32 @hostapd_reload_bss(%struct.hostapd_data* %38)
  br label %40

40:                                               ; preds = %32
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %8, align 8
  br label %26

43:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %240

44:                                               ; preds = %1
  %45 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %46 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %45, i32 0, i32 3
  %47 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %46, align 8
  %48 = icmp eq %struct.hapd_interfaces* %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %51 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %50, i32 0, i32 3
  %52 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %51, align 8
  %53 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %52, i32 0, i32 2
  %54 = load %struct.hostapd_config* (i32*)*, %struct.hostapd_config* (i32*)** %53, align 8
  %55 = icmp eq %struct.hostapd_config* (i32*)* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %49, %44
  store i32 -1, i32* %2, align 4
  br label %240

57:                                               ; preds = %49
  %58 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %59 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %58, i32 0, i32 3
  %60 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %59, align 8
  %61 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %60, i32 0, i32 2
  %62 = load %struct.hostapd_config* (i32*)*, %struct.hostapd_config* (i32*)** %61, align 8
  %63 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %64 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = call %struct.hostapd_config* %62(i32* %65)
  store %struct.hostapd_config* %66, %struct.hostapd_config** %6, align 8
  %67 = load %struct.hostapd_config*, %struct.hostapd_config** %6, align 8
  %68 = icmp eq %struct.hostapd_config* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  store i32 -1, i32* %2, align 4
  br label %240

70:                                               ; preds = %57
  %71 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %72 = call i32 @hostapd_clear_old(%struct.hostapd_iface* %71)
  %73 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %74 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %73, i32 0, i32 1
  %75 = load %struct.hostapd_config*, %struct.hostapd_config** %74, align 8
  store %struct.hostapd_config* %75, %struct.hostapd_config** %7, align 8
  %76 = load %struct.hostapd_config*, %struct.hostapd_config** %6, align 8
  %77 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %78 = call i64 @hostapd_iface_conf_changed(%struct.hostapd_config* %76, %struct.hostapd_config* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %137

80:                                               ; preds = %70
  %81 = load i32, i32* @MSG_DEBUG, align 4
  %82 = call i32 @wpa_printf(i32 %81, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0))
  %83 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %84 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = call i8* @os_strdup(i32* %85)
  store i8* %86, i8** %9, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %80
  %90 = load %struct.hostapd_config*, %struct.hostapd_config** %6, align 8
  %91 = call i32 @hostapd_config_free(%struct.hostapd_config* %90)
  store i32 -1, i32* %2, align 4
  br label %240

92:                                               ; preds = %80
  %93 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %4, align 8
  %94 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %95 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @hostapd_remove_iface(%struct.hapd_interfaces* %93, i32 %98)
  %100 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %4, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = call %struct.hostapd_iface* @hostapd_init(%struct.hapd_interfaces* %100, i8* %101)
  store %struct.hostapd_iface* %102, %struct.hostapd_iface** %3, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = call i32 @os_free(i8* %103)
  %105 = load %struct.hostapd_config*, %struct.hostapd_config** %6, align 8
  %106 = call i32 @hostapd_config_free(%struct.hostapd_config* %105)
  %107 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %108 = icmp ne %struct.hostapd_iface* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %92
  %110 = load i32, i32* @MSG_ERROR, align 4
  %111 = call i32 @wpa_printf(i32 %110, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %240

112:                                              ; preds = %92
  %113 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %4, align 8
  %114 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %115 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %114, i32 0, i32 3
  store %struct.hapd_interfaces* %113, %struct.hapd_interfaces** %115, align 8
  %116 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %117 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %4, align 8
  %118 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %117, i32 0, i32 1
  %119 = load %struct.hostapd_iface**, %struct.hostapd_iface*** %118, align 8
  %120 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %4, align 8
  %121 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.hostapd_iface*, %struct.hostapd_iface** %119, i64 %122
  store %struct.hostapd_iface* %116, %struct.hostapd_iface** %123, align 8
  %124 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %4, align 8
  %125 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %125, align 8
  %128 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %129 = call i32 @hostapd_enable_iface(%struct.hostapd_iface* %128)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %112
  %133 = load i32, i32* @MSG_ERROR, align 4
  %134 = call i32 @wpa_printf(i32 %133, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %135

135:                                              ; preds = %132, %112
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %2, align 4
  br label %240

137:                                              ; preds = %70
  %138 = load %struct.hostapd_config*, %struct.hostapd_config** %6, align 8
  %139 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %140 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %139, i32 0, i32 2
  store %struct.hostapd_config* %138, %struct.hostapd_config** %140, align 8
  store i64 0, i64* %8, align 8
  br label %141

141:                                              ; preds = %234, %137
  %142 = load i64, i64* %8, align 8
  %143 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %144 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ult i64 %142, %145
  br i1 %146, label %147, label %237

147:                                              ; preds = %141
  %148 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %149 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %148, i32 0, i32 1
  %150 = load %struct.hostapd_data**, %struct.hostapd_data*** %149, align 8
  %151 = load i64, i64* %8, align 8
  %152 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %150, i64 %151
  %153 = load %struct.hostapd_data*, %struct.hostapd_data** %152, align 8
  store %struct.hostapd_data* %153, %struct.hostapd_data** %5, align 8
  %154 = load %struct.hostapd_config*, %struct.hostapd_config** %6, align 8
  %155 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %156 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %155, i32 0, i32 1
  store %struct.hostapd_config* %154, %struct.hostapd_config** %156, align 8
  %157 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %158 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %157, i32 0, i32 7
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %161 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %160, i32 0, i32 1
  %162 = load %struct.hostapd_config*, %struct.hostapd_config** %161, align 8
  %163 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %162, i32 0, i32 7
  store i32 %159, i32* %163, align 8
  %164 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %165 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %168 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %167, i32 0, i32 1
  %169 = load %struct.hostapd_config*, %struct.hostapd_config** %168, align 8
  %170 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %169, i32 0, i32 6
  store i32 %166, i32* %170, align 4
  %171 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %172 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %175 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %174, i32 0, i32 1
  %176 = load %struct.hostapd_config*, %struct.hostapd_config** %175, align 8
  %177 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %176, i32 0, i32 5
  store i32 %173, i32* %177, align 8
  %178 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %179 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %182 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %181, i32 0, i32 1
  %183 = load %struct.hostapd_config*, %struct.hostapd_config** %182, align 8
  %184 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %183, i32 0, i32 4
  store i32 %180, i32* %184, align 4
  %185 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %186 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %189 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %188, i32 0, i32 1
  %190 = load %struct.hostapd_config*, %struct.hostapd_config** %189, align 8
  %191 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %190, i32 0, i32 3
  store i32 %187, i32* %191, align 8
  %192 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %193 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %196 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %195, i32 0, i32 1
  %197 = load %struct.hostapd_config*, %struct.hostapd_config** %196, align 8
  %198 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %197, i32 0, i32 2
  store i32 %194, i32* %198, align 4
  %199 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %200 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %203 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %202, i32 0, i32 1
  %204 = load %struct.hostapd_config*, %struct.hostapd_config** %203, align 8
  %205 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %204, i32 0, i32 1
  store i32 %201, i32* %205, align 8
  %206 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %207 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %206, i32 0, i32 1
  %208 = load %struct.hostapd_config*, %struct.hostapd_config** %207, align 8
  %209 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %210 = call i32 @hostapd_get_oper_chwidth(%struct.hostapd_config* %209)
  %211 = call i32 @hostapd_set_oper_chwidth(%struct.hostapd_config* %208, i32 %210)
  %212 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %213 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %212, i32 0, i32 1
  %214 = load %struct.hostapd_config*, %struct.hostapd_config** %213, align 8
  %215 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %216 = call i32 @hostapd_get_oper_centr_freq_seg0_idx(%struct.hostapd_config* %215)
  %217 = call i32 @hostapd_set_oper_centr_freq_seg0_idx(%struct.hostapd_config* %214, i32 %216)
  %218 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %219 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %218, i32 0, i32 1
  %220 = load %struct.hostapd_config*, %struct.hostapd_config** %219, align 8
  %221 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %222 = call i32 @hostapd_get_oper_centr_freq_seg1_idx(%struct.hostapd_config* %221)
  %223 = call i32 @hostapd_set_oper_centr_freq_seg1_idx(%struct.hostapd_config* %220, i32 %222)
  %224 = load %struct.hostapd_config*, %struct.hostapd_config** %6, align 8
  %225 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %224, i32 0, i32 0
  %226 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %225, align 8
  %227 = load i64, i64* %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %226, i64 %227
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** %228, align 8
  %230 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %231 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %230, i32 0, i32 0
  store %struct.TYPE_2__* %229, %struct.TYPE_2__** %231, align 8
  %232 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %233 = call i32 @hostapd_reload_bss(%struct.hostapd_data* %232)
  br label %234

234:                                              ; preds = %147
  %235 = load i64, i64* %8, align 8
  %236 = add i64 %235, 1
  store i64 %236, i64* %8, align 8
  br label %141

237:                                              ; preds = %141
  %238 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %239 = call i32 @hostapd_config_free(%struct.hostapd_config* %238)
  store i32 0, i32* %2, align 4
  br label %240

240:                                              ; preds = %237, %135, %109, %89, %69, %56, %43
  %241 = load i32, i32* %2, align 4
  ret i32 %241
}

declare dso_local i32 @hostapd_clear_old(%struct.hostapd_iface*) #1

declare dso_local i32 @hostapd_reload_bss(%struct.hostapd_data*) #1

declare dso_local i64 @hostapd_iface_conf_changed(%struct.hostapd_config*, %struct.hostapd_config*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i8* @os_strdup(i32*) #1

declare dso_local i32 @hostapd_config_free(%struct.hostapd_config*) #1

declare dso_local i32 @hostapd_remove_iface(%struct.hapd_interfaces*, i32) #1

declare dso_local %struct.hostapd_iface* @hostapd_init(%struct.hapd_interfaces*, i8*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @hostapd_enable_iface(%struct.hostapd_iface*) #1

declare dso_local i32 @hostapd_set_oper_chwidth(%struct.hostapd_config*, i32) #1

declare dso_local i32 @hostapd_get_oper_chwidth(%struct.hostapd_config*) #1

declare dso_local i32 @hostapd_set_oper_centr_freq_seg0_idx(%struct.hostapd_config*, i32) #1

declare dso_local i32 @hostapd_get_oper_centr_freq_seg0_idx(%struct.hostapd_config*) #1

declare dso_local i32 @hostapd_set_oper_centr_freq_seg1_idx(%struct.hostapd_config*, i32) #1

declare dso_local i32 @hostapd_get_oper_centr_freq_seg1_idx(%struct.hostapd_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

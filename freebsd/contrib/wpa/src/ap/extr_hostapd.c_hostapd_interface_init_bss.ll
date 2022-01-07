; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_interface_init_bss.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_interface_init_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { i32, %struct.hostapd_data**, %struct.TYPE_4__*, %struct.hapd_interfaces*, i32 }
%struct.hostapd_data = type { i8*, %struct.TYPE_3__*, %struct.hostapd_data* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32, %struct.hostapd_data**, %struct.hostapd_data* }
%struct.hapd_interfaces = type { i64, %struct.hostapd_config* (i8*)*, %struct.hostapd_iface** }
%struct.hostapd_config = type { i32, %struct.hostapd_data** }
%struct.hostapd_bss_config = type { i8*, %struct.TYPE_3__*, %struct.hostapd_bss_config* }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Configuration file: %s (phy %s)%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [13 x i8] c" --> new PHY\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Multiple BSSes specified in BSS-config\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Interface name %s already in use\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Interface name not specified in %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hostapd_iface* @hostapd_interface_init_bss(%struct.hapd_interfaces* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.hostapd_iface*, align 8
  %6 = alloca %struct.hapd_interfaces*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hostapd_iface*, align 8
  %11 = alloca %struct.hostapd_iface*, align 8
  %12 = alloca %struct.hostapd_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.hostapd_config*, align 8
  %17 = alloca %struct.hostapd_bss_config**, align 8
  %18 = alloca %struct.hostapd_data**, align 8
  %19 = alloca %struct.hostapd_bss_config*, align 8
  %20 = alloca i8*, align 8
  store %struct.hapd_interfaces* %0, %struct.hapd_interfaces** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.hostapd_iface* null, %struct.hostapd_iface** %10, align 8
  store %struct.hostapd_iface* null, %struct.hostapd_iface** %11, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i8*, i8** %7, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %4
  store %struct.hostapd_iface* null, %struct.hostapd_iface** %5, align 8
  br label %330

28:                                               ; preds = %23
  store i64 0, i64* %14, align 8
  br label %29

29:                                               ; preds = %55, %28
  %30 = load i64, i64* %14, align 8
  %31 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %6, align 8
  %32 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %29
  %36 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %6, align 8
  %37 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %36, i32 0, i32 2
  %38 = load %struct.hostapd_iface**, %struct.hostapd_iface*** %37, align 8
  %39 = load i64, i64* %14, align 8
  %40 = getelementptr inbounds %struct.hostapd_iface*, %struct.hostapd_iface** %38, i64 %39
  %41 = load %struct.hostapd_iface*, %struct.hostapd_iface** %40, align 8
  %42 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i64 @os_strcmp(i32 %43, i8* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %35
  %48 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %6, align 8
  %49 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %48, i32 0, i32 2
  %50 = load %struct.hostapd_iface**, %struct.hostapd_iface*** %49, align 8
  %51 = load i64, i64* %14, align 8
  %52 = getelementptr inbounds %struct.hostapd_iface*, %struct.hostapd_iface** %50, i64 %51
  %53 = load %struct.hostapd_iface*, %struct.hostapd_iface** %52, align 8
  store %struct.hostapd_iface* %53, %struct.hostapd_iface** %11, align 8
  br label %58

54:                                               ; preds = %35
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %14, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %14, align 8
  br label %29

58:                                               ; preds = %47, %29
  %59 = load i32, i32* @MSG_INFO, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load %struct.hostapd_iface*, %struct.hostapd_iface** %11, align 8
  %63 = icmp ne %struct.hostapd_iface* %62, null
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)
  %66 = call i32 (i32, i8*, ...) @wpa_printf(i32 %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %60, i8* %61, i8* %65)
  %67 = load %struct.hostapd_iface*, %struct.hostapd_iface** %11, align 8
  %68 = icmp ne %struct.hostapd_iface* %67, null
  br i1 %68, label %69, label %245

69:                                               ; preds = %58
  %70 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %6, align 8
  %71 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %70, i32 0, i32 1
  %72 = load %struct.hostapd_config* (i8*)*, %struct.hostapd_config* (i8*)** %71, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = call %struct.hostapd_config* %72(i8* %73)
  store %struct.hostapd_config* %74, %struct.hostapd_config** %16, align 8
  %75 = load %struct.hostapd_config*, %struct.hostapd_config** %16, align 8
  %76 = icmp eq %struct.hostapd_config* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  store %struct.hostapd_iface* null, %struct.hostapd_iface** %5, align 8
  br label %330

78:                                               ; preds = %69
  %79 = load %struct.hostapd_config*, %struct.hostapd_config** %16, align 8
  %80 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load i32, i32* @MSG_ERROR, align 4
  %85 = call i32 (i32, i8*, ...) @wpa_printf(i32 %84, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %86 = load %struct.hostapd_config*, %struct.hostapd_config** %16, align 8
  %87 = call i32 @hostapd_config_free(%struct.hostapd_config* %86)
  store %struct.hostapd_iface* null, %struct.hostapd_iface** %5, align 8
  br label %330

88:                                               ; preds = %78
  %89 = load %struct.hostapd_config*, %struct.hostapd_config** %16, align 8
  %90 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %89, i32 0, i32 1
  %91 = load %struct.hostapd_data**, %struct.hostapd_data*** %90, align 8
  %92 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %91, i64 0
  %93 = load %struct.hostapd_data*, %struct.hostapd_data** %92, align 8
  %94 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %20, align 8
  %96 = load i8*, i8** %20, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %88
  %102 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %6, align 8
  %103 = load i8*, i8** %20, align 8
  %104 = call i64 @ifname_in_use(%struct.hapd_interfaces* %102, i8* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load i32, i32* @MSG_ERROR, align 4
  %108 = load i8*, i8** %20, align 8
  %109 = call i32 (i32, i8*, ...) @wpa_printf(i32 %107, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %108)
  %110 = load %struct.hostapd_config*, %struct.hostapd_config** %16, align 8
  %111 = call i32 @hostapd_config_free(%struct.hostapd_config* %110)
  store %struct.hostapd_iface* null, %struct.hostapd_iface** %5, align 8
  br label %330

112:                                              ; preds = %101, %88
  %113 = load %struct.hostapd_iface*, %struct.hostapd_iface** %11, align 8
  %114 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %113, i32 0, i32 2
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load %struct.hostapd_data**, %struct.hostapd_data*** %116, align 8
  %118 = load %struct.hostapd_iface*, %struct.hostapd_iface** %11, align 8
  %119 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %118, i32 0, i32 2
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  %124 = call i8* @os_realloc_array(%struct.hostapd_data** %117, i32 %123, i32 8)
  %125 = bitcast i8* %124 to %struct.hostapd_bss_config**
  store %struct.hostapd_bss_config** %125, %struct.hostapd_bss_config*** %17, align 8
  %126 = load %struct.hostapd_iface*, %struct.hostapd_iface** %11, align 8
  %127 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %126, i32 0, i32 1
  %128 = load %struct.hostapd_data**, %struct.hostapd_data*** %127, align 8
  %129 = load %struct.hostapd_iface*, %struct.hostapd_iface** %11, align 8
  %130 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, 1
  %133 = call i8* @os_realloc_array(%struct.hostapd_data** %128, i32 %132, i32 8)
  %134 = bitcast i8* %133 to %struct.hostapd_data**
  store %struct.hostapd_data** %134, %struct.hostapd_data*** %18, align 8
  %135 = load %struct.hostapd_data**, %struct.hostapd_data*** %18, align 8
  %136 = icmp ne %struct.hostapd_data** %135, null
  br i1 %136, label %137, label %141

137:                                              ; preds = %112
  %138 = load %struct.hostapd_data**, %struct.hostapd_data*** %18, align 8
  %139 = load %struct.hostapd_iface*, %struct.hostapd_iface** %11, align 8
  %140 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %139, i32 0, i32 1
  store %struct.hostapd_data** %138, %struct.hostapd_data*** %140, align 8
  br label %141

141:                                              ; preds = %137, %112
  %142 = load %struct.hostapd_bss_config**, %struct.hostapd_bss_config*** %17, align 8
  %143 = icmp ne %struct.hostapd_bss_config** %142, null
  br i1 %143, label %144, label %159

144:                                              ; preds = %141
  %145 = load %struct.hostapd_bss_config**, %struct.hostapd_bss_config*** %17, align 8
  %146 = bitcast %struct.hostapd_bss_config** %145 to %struct.hostapd_data**
  %147 = load %struct.hostapd_iface*, %struct.hostapd_iface** %11, align 8
  %148 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %147, i32 0, i32 2
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  store %struct.hostapd_data** %146, %struct.hostapd_data*** %150, align 8
  %151 = load %struct.hostapd_bss_config**, %struct.hostapd_bss_config*** %17, align 8
  %152 = getelementptr inbounds %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %151, i64 0
  %153 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %152, align 8
  %154 = bitcast %struct.hostapd_bss_config* %153 to %struct.hostapd_data*
  %155 = load %struct.hostapd_iface*, %struct.hostapd_iface** %11, align 8
  %156 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %155, i32 0, i32 2
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 2
  store %struct.hostapd_data* %154, %struct.hostapd_data** %158, align 8
  br label %159

159:                                              ; preds = %144, %141
  %160 = load %struct.hostapd_data**, %struct.hostapd_data*** %18, align 8
  %161 = icmp eq %struct.hostapd_data** %160, null
  br i1 %161, label %165, label %162

162:                                              ; preds = %159
  %163 = load %struct.hostapd_bss_config**, %struct.hostapd_bss_config*** %17, align 8
  %164 = icmp eq %struct.hostapd_bss_config** %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %162, %159
  %166 = load %struct.hostapd_config*, %struct.hostapd_config** %16, align 8
  %167 = call i32 @hostapd_config_free(%struct.hostapd_config* %166)
  store %struct.hostapd_iface* null, %struct.hostapd_iface** %5, align 8
  br label %330

168:                                              ; preds = %162
  %169 = load %struct.hostapd_config*, %struct.hostapd_config** %16, align 8
  %170 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %169, i32 0, i32 1
  %171 = load %struct.hostapd_data**, %struct.hostapd_data*** %170, align 8
  %172 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %171, i64 0
  %173 = load %struct.hostapd_data*, %struct.hostapd_data** %172, align 8
  %174 = load %struct.hostapd_iface*, %struct.hostapd_iface** %11, align 8
  %175 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %174, i32 0, i32 2
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  %178 = load %struct.hostapd_data**, %struct.hostapd_data*** %177, align 8
  %179 = load %struct.hostapd_iface*, %struct.hostapd_iface** %11, align 8
  %180 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %179, i32 0, i32 2
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %178, i64 %184
  store %struct.hostapd_data* %173, %struct.hostapd_data** %185, align 8
  %186 = bitcast %struct.hostapd_data* %173 to %struct.hostapd_bss_config*
  store %struct.hostapd_bss_config* %186, %struct.hostapd_bss_config** %19, align 8
  %187 = load %struct.hostapd_iface*, %struct.hostapd_iface** %11, align 8
  %188 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %187, i32 0, i32 2
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 8
  %193 = load %struct.hostapd_iface*, %struct.hostapd_iface** %11, align 8
  %194 = load %struct.hostapd_iface*, %struct.hostapd_iface** %11, align 8
  %195 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %194, i32 0, i32 2
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %195, align 8
  %197 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %19, align 8
  %198 = bitcast %struct.hostapd_bss_config* %197 to %struct.hostapd_data*
  %199 = call %struct.hostapd_data* @hostapd_alloc_bss_data(%struct.hostapd_iface* %193, %struct.TYPE_4__* %196, %struct.hostapd_data* %198)
  store %struct.hostapd_data* %199, %struct.hostapd_data** %12, align 8
  %200 = load %struct.hostapd_data*, %struct.hostapd_data** %12, align 8
  %201 = icmp eq %struct.hostapd_data* %200, null
  br i1 %201, label %202, label %211

202:                                              ; preds = %168
  %203 = load %struct.hostapd_iface*, %struct.hostapd_iface** %11, align 8
  %204 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %203, i32 0, i32 2
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %207, -1
  store i32 %208, i32* %206, align 8
  %209 = load %struct.hostapd_config*, %struct.hostapd_config** %16, align 8
  %210 = call i32 @hostapd_config_free(%struct.hostapd_config* %209)
  store %struct.hostapd_iface* null, %struct.hostapd_iface** %5, align 8
  br label %330

211:                                              ; preds = %168
  %212 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %19, align 8
  %213 = bitcast %struct.hostapd_bss_config* %212 to %struct.hostapd_data*
  %214 = load %struct.hostapd_iface*, %struct.hostapd_iface** %11, align 8
  %215 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %214, i32 0, i32 2
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 2
  store %struct.hostapd_data* %213, %struct.hostapd_data** %217, align 8
  %218 = load %struct.hostapd_data*, %struct.hostapd_data** %12, align 8
  %219 = load %struct.hostapd_iface*, %struct.hostapd_iface** %11, align 8
  %220 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %219, i32 0, i32 1
  %221 = load %struct.hostapd_data**, %struct.hostapd_data*** %220, align 8
  %222 = load %struct.hostapd_iface*, %struct.hostapd_iface** %11, align 8
  %223 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %221, i64 %225
  store %struct.hostapd_data* %218, %struct.hostapd_data** %226, align 8
  %227 = load %struct.hostapd_data*, %struct.hostapd_data** %12, align 8
  %228 = load %struct.hostapd_data*, %struct.hostapd_data** %12, align 8
  %229 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %228, i32 0, i32 2
  store %struct.hostapd_data* %227, %struct.hostapd_data** %229, align 8
  %230 = load %struct.hostapd_iface*, %struct.hostapd_iface** %11, align 8
  %231 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %231, align 8
  %234 = sext i32 %232 to i64
  store i64 %234, i64* %15, align 8
  %235 = load %struct.hostapd_config*, %struct.hostapd_config** %16, align 8
  %236 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = add nsw i32 %237, -1
  store i32 %238, i32* %236, align 8
  %239 = load %struct.hostapd_config*, %struct.hostapd_config** %16, align 8
  %240 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %239, i32 0, i32 1
  %241 = load %struct.hostapd_data**, %struct.hostapd_data*** %240, align 8
  %242 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %241, i64 0
  store %struct.hostapd_data* null, %struct.hostapd_data** %242, align 8
  %243 = load %struct.hostapd_config*, %struct.hostapd_config** %16, align 8
  %244 = call i32 @hostapd_config_free(%struct.hostapd_config* %243)
  br label %261

245:                                              ; preds = %58
  %246 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %6, align 8
  %247 = load i8*, i8** %8, align 8
  %248 = call %struct.hostapd_iface* @hostapd_init(%struct.hapd_interfaces* %246, i8* %247)
  store %struct.hostapd_iface* %248, %struct.hostapd_iface** %11, align 8
  store %struct.hostapd_iface* %248, %struct.hostapd_iface** %10, align 8
  %249 = load %struct.hostapd_iface*, %struct.hostapd_iface** %11, align 8
  %250 = icmp ne %struct.hostapd_iface* %249, null
  br i1 %250, label %252, label %251

251:                                              ; preds = %245
  store %struct.hostapd_iface* null, %struct.hostapd_iface** %5, align 8
  br label %330

252:                                              ; preds = %245
  %253 = load %struct.hostapd_iface*, %struct.hostapd_iface** %11, align 8
  %254 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 8
  %256 = load i8*, i8** %7, align 8
  %257 = call i32 @os_strlcpy(i32 %255, i8* %256, i32 4)
  %258 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %6, align 8
  %259 = load %struct.hostapd_iface*, %struct.hostapd_iface** %11, align 8
  %260 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %259, i32 0, i32 3
  store %struct.hapd_interfaces* %258, %struct.hapd_interfaces** %260, align 8
  store i64 0, i64* %15, align 8
  br label %261

261:                                              ; preds = %252, %211
  store i32 0, i32* %13, align 4
  br label %262

262:                                              ; preds = %291, %261
  %263 = load i32, i32* %13, align 4
  %264 = load i32, i32* %9, align 4
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %266, label %294

266:                                              ; preds = %262
  %267 = load %struct.hostapd_iface*, %struct.hostapd_iface** %11, align 8
  %268 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %267, i32 0, i32 1
  %269 = load %struct.hostapd_data**, %struct.hostapd_data*** %268, align 8
  %270 = load i64, i64* %15, align 8
  %271 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %269, i64 %270
  %272 = load %struct.hostapd_data*, %struct.hostapd_data** %271, align 8
  %273 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %272, i32 0, i32 1
  %274 = load %struct.TYPE_3__*, %struct.TYPE_3__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = icmp sgt i64 %276, 0
  br i1 %277, label %278, label %290

278:                                              ; preds = %266
  %279 = load %struct.hostapd_iface*, %struct.hostapd_iface** %11, align 8
  %280 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %279, i32 0, i32 1
  %281 = load %struct.hostapd_data**, %struct.hostapd_data*** %280, align 8
  %282 = load i64, i64* %15, align 8
  %283 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %281, i64 %282
  %284 = load %struct.hostapd_data*, %struct.hostapd_data** %283, align 8
  %285 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %284, i32 0, i32 1
  %286 = load %struct.TYPE_3__*, %struct.TYPE_3__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = add nsw i64 %288, -1
  store i64 %289, i64* %287, align 8
  br label %290

290:                                              ; preds = %278, %266
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %13, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %13, align 4
  br label %262

294:                                              ; preds = %262
  %295 = load %struct.hostapd_iface*, %struct.hostapd_iface** %11, align 8
  %296 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %295, i32 0, i32 2
  %297 = load %struct.TYPE_4__*, %struct.TYPE_4__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 1
  %299 = load %struct.hostapd_data**, %struct.hostapd_data*** %298, align 8
  %300 = load i64, i64* %15, align 8
  %301 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %299, i64 %300
  %302 = load %struct.hostapd_data*, %struct.hostapd_data** %301, align 8
  %303 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %302, i32 0, i32 0
  %304 = load i8*, i8** %303, align 8
  %305 = getelementptr inbounds i8, i8* %304, i64 0
  %306 = load i8, i8* %305, align 1
  %307 = sext i8 %306 to i32
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %328

309:                                              ; preds = %294
  %310 = load %struct.hostapd_iface*, %struct.hostapd_iface** %11, align 8
  %311 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %310, i32 0, i32 1
  %312 = load %struct.hostapd_data**, %struct.hostapd_data*** %311, align 8
  %313 = load i64, i64* %15, align 8
  %314 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %312, i64 %313
  %315 = load %struct.hostapd_data*, %struct.hostapd_data** %314, align 8
  %316 = call i32 @hostapd_drv_none(%struct.hostapd_data* %315)
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %328, label %318

318:                                              ; preds = %309
  %319 = load i32, i32* @MSG_ERROR, align 4
  %320 = load i8*, i8** %8, align 8
  %321 = call i32 (i32, i8*, ...) @wpa_printf(i32 %319, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %320)
  %322 = load %struct.hostapd_iface*, %struct.hostapd_iface** %10, align 8
  %323 = icmp ne %struct.hostapd_iface* %322, null
  br i1 %323, label %324, label %327

324:                                              ; preds = %318
  %325 = load %struct.hostapd_iface*, %struct.hostapd_iface** %10, align 8
  %326 = call i32 @hostapd_interface_deinit_free(%struct.hostapd_iface* %325)
  br label %327

327:                                              ; preds = %324, %318
  store %struct.hostapd_iface* null, %struct.hostapd_iface** %5, align 8
  br label %330

328:                                              ; preds = %309, %294
  %329 = load %struct.hostapd_iface*, %struct.hostapd_iface** %11, align 8
  store %struct.hostapd_iface* %329, %struct.hostapd_iface** %5, align 8
  br label %330

330:                                              ; preds = %328, %327, %251, %202, %165, %106, %83, %77, %27
  %331 = load %struct.hostapd_iface*, %struct.hostapd_iface** %5, align 8
  ret %struct.hostapd_iface* %331
}

declare dso_local i64 @os_strcmp(i32, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @hostapd_config_free(%struct.hostapd_config*) #1

declare dso_local i64 @ifname_in_use(%struct.hapd_interfaces*, i8*) #1

declare dso_local i8* @os_realloc_array(%struct.hostapd_data**, i32, i32) #1

declare dso_local %struct.hostapd_data* @hostapd_alloc_bss_data(%struct.hostapd_iface*, %struct.TYPE_4__*, %struct.hostapd_data*) #1

declare dso_local %struct.hostapd_iface* @hostapd_init(%struct.hapd_interfaces*, i8*) #1

declare dso_local i32 @os_strlcpy(i32, i8*, i32) #1

declare dso_local i32 @hostapd_drv_none(%struct.hostapd_data*) #1

declare dso_local i32 @hostapd_interface_deinit_free(%struct.hostapd_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

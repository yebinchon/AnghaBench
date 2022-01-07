; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_server_data = type { i32, i32, i32, i32, i32*, i8*, i32, i8*, i8*, i32, i8*, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i64, i32, i32, i32, i32, i32, i32 }
%struct.radius_server_conf = type { i32, i32, i64, i64, i64, i32, i64, i64, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"RADIUS server compiled without IPv6 support\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"No RADIUS clients configured\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Failed to open UDP socket for RADIUS authentication server\00", align 1
@radius_server_receive_auth = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"Failed to open UDP socket for RADIUS accounting server\00", align 1
@radius_server_receive_acct = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radius_server_data* @radius_server_init(%struct.radius_server_conf* %0) #0 {
  %2 = alloca %struct.radius_server_data*, align 8
  %3 = alloca %struct.radius_server_conf*, align 8
  %4 = alloca %struct.radius_server_data*, align 8
  store %struct.radius_server_conf* %0, %struct.radius_server_conf** %3, align 8
  %5 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %6 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @MSG_ERROR, align 4
  %11 = call i32 @wpa_printf(i32 %10, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store %struct.radius_server_data* null, %struct.radius_server_data** %2, align 8
  br label %359

12:                                               ; preds = %1
  %13 = call %struct.radius_server_data* @os_zalloc(i32 200)
  store %struct.radius_server_data* %13, %struct.radius_server_data** %4, align 8
  %14 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %15 = icmp eq %struct.radius_server_data* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store %struct.radius_server_data* null, %struct.radius_server_data** %2, align 8
  br label %359

17:                                               ; preds = %12
  %18 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %19 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 8
  %20 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %21 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %20, i32 0, i32 1
  store i32 -1, i32* %21, align 4
  %22 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %23 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %22, i32 0, i32 37
  %24 = call i32 @dl_list_init(i32* %23)
  %25 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %26 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %25, i32 0, i32 36
  %27 = call i32 @os_get_reltime(i32* %26)
  %28 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %29 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %28, i32 0, i32 35
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %32 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %31, i32 0, i32 35
  store i32 %30, i32* %32, align 4
  %33 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %34 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %33, i32 0, i32 34
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %37 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %36, i32 0, i32 34
  store i32 %35, i32* %37, align 8
  %38 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %39 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %38, i32 0, i32 33
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %42 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %41, i32 0, i32 33
  store i32 %40, i32* %42, align 4
  %43 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %44 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %43, i32 0, i32 32
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %47 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %46, i32 0, i32 32
  store i32 %45, i32* %47, align 8
  %48 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %49 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %52 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %51, i32 0, i32 31
  store i64 %50, i64* %52, align 8
  %53 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %54 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %53, i32 0, i32 31
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %17
  %58 = call i8* @os_malloc(i32 16)
  %59 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %60 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %59, i32 0, i32 30
  store i8* %58, i8** %60, align 8
  %61 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %62 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %61, i32 0, i32 30
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %57
  %66 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %67 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %66, i32 0, i32 30
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %70 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %69, i32 0, i32 31
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @os_memcpy(i8* %68, i32 %71, i32 16)
  br label %73

73:                                               ; preds = %65, %57
  br label %74

74:                                               ; preds = %73, %17
  %75 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %76 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %75, i32 0, i32 30
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %107

79:                                               ; preds = %74
  %80 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %81 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i8* @os_malloc(i32 %82)
  %84 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %85 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %84, i32 0, i32 29
  store i8* %83, i8** %85, align 8
  %86 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %87 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %86, i32 0, i32 29
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %106

90:                                               ; preds = %79
  %91 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %92 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %91, i32 0, i32 29
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %95 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %94, i32 0, i32 30
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %98 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @os_memcpy(i8* %93, i32 %96, i32 %99)
  %101 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %102 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %105 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  br label %106

106:                                              ; preds = %90, %79
  br label %107

107:                                              ; preds = %106, %74
  %108 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %109 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %108, i32 0, i32 29
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %107
  %113 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %114 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %113, i32 0, i32 29
  %115 = load i64, i64* %114, align 8
  %116 = call i8* @os_strdup(i64 %115)
  %117 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %118 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %117, i32 0, i32 28
  store i8* %116, i8** %118, align 8
  br label %119

119:                                              ; preds = %112, %107
  %120 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %121 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %120, i32 0, i32 28
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %124 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %123, i32 0, i32 27
  store i32 %122, i32* %124, align 4
  %125 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %126 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %125, i32 0, i32 27
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %129 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %128, i32 0, i32 26
  store i32 %127, i32* %129, align 8
  %130 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %131 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %130, i32 0, i32 26
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %134 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %133, i32 0, i32 25
  store i32 %132, i32* %134, align 4
  %135 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %136 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %135, i32 0, i32 25
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %139 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %138, i32 0, i32 24
  store i32 %137, i32* %139, align 8
  %140 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %141 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %140, i32 0, i32 24
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %144 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %143, i32 0, i32 23
  store i32 %142, i32* %144, align 4
  %145 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %146 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %145, i32 0, i32 23
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %149 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %148, i32 0, i32 22
  store i32 %147, i32* %149, align 8
  %150 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %151 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %150, i32 0, i32 22
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %154 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %153, i32 0, i32 21
  store i32 %152, i32* %154, align 4
  %155 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %156 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %155, i32 0, i32 21
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %159 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %158, i32 0, i32 20
  store i32 %157, i32* %159, align 8
  %160 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %161 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %160, i32 0, i32 20
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %164 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %163, i32 0, i32 19
  store i32 %162, i32* %164, align 4
  %165 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %166 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %165, i32 0, i32 19
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %169 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %168, i32 0, i32 18
  store i32 %167, i32* %169, align 8
  %170 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %171 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %170, i32 0, i32 18
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %174 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %173, i32 0, i32 17
  store i32 %172, i32* %174, align 4
  %175 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %176 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %175, i32 0, i32 17
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %179 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %178, i32 0, i32 16
  store i32 %177, i32* %179, align 8
  %180 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %181 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %180, i32 0, i32 16
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %212

184:                                              ; preds = %119
  %185 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %186 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i8* @os_malloc(i32 %187)
  %189 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %190 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %189, i32 0, i32 15
  store i8* %188, i8** %190, align 8
  %191 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %192 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %191, i32 0, i32 15
  %193 = load i8*, i8** %192, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %211

195:                                              ; preds = %184
  %196 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %197 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %196, i32 0, i32 15
  %198 = load i8*, i8** %197, align 8
  %199 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %200 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %199, i32 0, i32 16
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %203 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @os_memcpy(i8* %198, i32 %201, i32 %204)
  %206 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %207 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %210 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %209, i32 0, i32 3
  store i32 %208, i32* %210, align 4
  br label %211

211:                                              ; preds = %195, %184
  br label %212

212:                                              ; preds = %211, %119
  %213 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %214 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %213, i32 0, i32 15
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %217 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %216, i32 0, i32 14
  store i32 %215, i32* %217, align 4
  %218 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %219 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %218, i32 0, i32 14
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %222 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %221, i32 0, i32 13
  store i32 %220, i32* %222, align 8
  %223 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %224 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %223, i32 0, i32 13
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %227 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %226, i32 0, i32 12
  store i32 %225, i32* %227, align 4
  %228 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %229 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %228, i32 0, i32 12
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %232 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %231, i32 0, i32 11
  store i32 %230, i32* %232, align 8
  %233 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %234 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %233, i32 0, i32 11
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %212
  %238 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %239 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %238, i32 0, i32 11
  %240 = load i64, i64* %239, align 8
  %241 = call i8* @os_strdup(i64 %240)
  %242 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %243 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %242, i32 0, i32 10
  store i8* %241, i8** %243, align 8
  br label %244

244:                                              ; preds = %237, %212
  %245 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %246 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %245, i32 0, i32 10
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %249 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %248, i32 0, i32 9
  store i32 %247, i32* %249, align 8
  %250 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %251 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %250, i32 0, i32 9
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %261

254:                                              ; preds = %244
  %255 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %256 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %255, i32 0, i32 9
  %257 = load i64, i64* %256, align 8
  %258 = call i8* @os_strdup(i64 %257)
  %259 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %260 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %259, i32 0, i32 8
  store i8* %258, i8** %260, align 8
  br label %261

261:                                              ; preds = %254, %244
  %262 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %263 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %262, i32 0, i32 8
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %273

266:                                              ; preds = %261
  %267 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %268 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %267, i32 0, i32 8
  %269 = load i64, i64* %268, align 8
  %270 = call i8* @os_strdup(i64 %269)
  %271 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %272 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %271, i32 0, i32 7
  store i8* %270, i8** %272, align 8
  br label %273

273:                                              ; preds = %266, %261
  %274 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %275 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %274, i32 0, i32 5
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %278 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %277, i32 0, i32 3
  %279 = load i64, i64* %278, align 8
  %280 = call i32* @radius_server_read_clients(i32 %276, i64 %279)
  %281 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %282 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %281, i32 0, i32 4
  store i32* %280, i32** %282, align 8
  %283 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %284 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %283, i32 0, i32 4
  %285 = load i32*, i32** %284, align 8
  %286 = icmp eq i32* %285, null
  br i1 %286, label %287, label %292

287:                                              ; preds = %273
  %288 = load i32, i32* @MSG_ERROR, align 4
  %289 = call i32 @wpa_printf(i32 %288, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %290 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %291 = call i32 @radius_server_deinit(%struct.radius_server_data* %290)
  store %struct.radius_server_data* null, %struct.radius_server_data** %2, align 8
  br label %359

292:                                              ; preds = %273
  %293 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %294 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %293, i32 0, i32 4
  %295 = load i64, i64* %294, align 8
  %296 = call i8* @radius_server_open_socket(i64 %295)
  %297 = ptrtoint i8* %296 to i32
  %298 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %299 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %298, i32 0, i32 0
  store i32 %297, i32* %299, align 8
  %300 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %301 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %304, label %309

304:                                              ; preds = %292
  %305 = load i32, i32* @MSG_ERROR, align 4
  %306 = call i32 @wpa_printf(i32 %305, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %307 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %308 = call i32 @radius_server_deinit(%struct.radius_server_data* %307)
  store %struct.radius_server_data* null, %struct.radius_server_data** %2, align 8
  br label %359

309:                                              ; preds = %292
  %310 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %311 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* @radius_server_receive_auth, align 4
  %314 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %315 = call i64 @eloop_register_read_sock(i32 %312, i32 %313, %struct.radius_server_data* %314, i32* null)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %320

317:                                              ; preds = %309
  %318 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %319 = call i32 @radius_server_deinit(%struct.radius_server_data* %318)
  store %struct.radius_server_data* null, %struct.radius_server_data** %2, align 8
  br label %359

320:                                              ; preds = %309
  %321 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %322 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %321, i32 0, i32 2
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %354

325:                                              ; preds = %320
  %326 = load %struct.radius_server_conf*, %struct.radius_server_conf** %3, align 8
  %327 = getelementptr inbounds %struct.radius_server_conf, %struct.radius_server_conf* %326, i32 0, i32 2
  %328 = load i64, i64* %327, align 8
  %329 = call i8* @radius_server_open_socket(i64 %328)
  %330 = ptrtoint i8* %329 to i32
  %331 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %332 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %331, i32 0, i32 1
  store i32 %330, i32* %332, align 4
  %333 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %334 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = icmp slt i32 %335, 0
  br i1 %336, label %337, label %342

337:                                              ; preds = %325
  %338 = load i32, i32* @MSG_ERROR, align 4
  %339 = call i32 @wpa_printf(i32 %338, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %340 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %341 = call i32 @radius_server_deinit(%struct.radius_server_data* %340)
  store %struct.radius_server_data* null, %struct.radius_server_data** %2, align 8
  br label %359

342:                                              ; preds = %325
  %343 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %344 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = load i32, i32* @radius_server_receive_acct, align 4
  %347 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %348 = call i64 @eloop_register_read_sock(i32 %345, i32 %346, %struct.radius_server_data* %347, i32* null)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %353

350:                                              ; preds = %342
  %351 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %352 = call i32 @radius_server_deinit(%struct.radius_server_data* %351)
  store %struct.radius_server_data* null, %struct.radius_server_data** %2, align 8
  br label %359

353:                                              ; preds = %342
  br label %357

354:                                              ; preds = %320
  %355 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %356 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %355, i32 0, i32 1
  store i32 -1, i32* %356, align 4
  br label %357

357:                                              ; preds = %354, %353
  %358 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  store %struct.radius_server_data* %358, %struct.radius_server_data** %2, align 8
  br label %359

359:                                              ; preds = %357, %350, %337, %317, %304, %287, %16, %9
  %360 = load %struct.radius_server_data*, %struct.radius_server_data** %2, align 8
  ret %struct.radius_server_data* %360
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.radius_server_data* @os_zalloc(i32) #1

declare dso_local i32 @dl_list_init(i32*) #1

declare dso_local i32 @os_get_reltime(i32*) #1

declare dso_local i8* @os_malloc(i32) #1

declare dso_local i32 @os_memcpy(i8*, i32, i32) #1

declare dso_local i8* @os_strdup(i64) #1

declare dso_local i32* @radius_server_read_clients(i32, i64) #1

declare dso_local i32 @radius_server_deinit(%struct.radius_server_data*) #1

declare dso_local i8* @radius_server_open_socket(i64) #1

declare dso_local i64 @eloop_register_read_sock(i32, i32, %struct.radius_server_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server.c_eap_server_sm_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server.c_eap_server_sm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, %struct.eapol_callbacks*, i8* }
%struct.eapol_callbacks = type { i32 }
%struct.eap_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"EAP: Server state machine created\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.eap_sm* @eap_server_sm_init(i8* %0, %struct.eapol_callbacks* %1, %struct.eap_config* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.eapol_callbacks*, align 8
  %7 = alloca %struct.eap_config*, align 8
  %8 = alloca %struct.eap_sm*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.eapol_callbacks* %1, %struct.eapol_callbacks** %6, align 8
  store %struct.eap_config* %2, %struct.eap_config** %7, align 8
  %9 = call %struct.eap_sm* @os_zalloc(i32 168)
  store %struct.eap_sm* %9, %struct.eap_sm** %8, align 8
  %10 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %11 = icmp eq %struct.eap_sm* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct.eap_sm* null, %struct.eap_sm** %4, align 8
  br label %240

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %16 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %15, i32 0, i32 32
  store i8* %14, i8** %16, align 8
  %17 = load %struct.eapol_callbacks*, %struct.eapol_callbacks** %6, align 8
  %18 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %19 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %18, i32 0, i32 31
  store %struct.eapol_callbacks* %17, %struct.eapol_callbacks** %19, align 8
  %20 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %21 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %20, i32 0, i32 0
  store i32 5, i32* %21, align 8
  %22 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %23 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %22, i32 0, i32 29
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %26 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %25, i32 0, i32 30
  store i32 %24, i32* %26, align 8
  %27 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %28 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %27, i32 0, i32 28
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %31 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %30, i32 0, i32 29
  store i32 %29, i32* %31, align 4
  %32 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %33 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %32, i32 0, i32 27
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %36 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %35, i32 0, i32 28
  store i32 %34, i32* %36, align 8
  %37 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %38 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %37, i32 0, i32 26
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %41 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %40, i32 0, i32 27
  store i32 %39, i32* %41, align 4
  %42 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %43 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %42, i32 0, i32 25
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %46 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %45, i32 0, i32 26
  store i32 %44, i32* %46, align 8
  %47 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %48 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %47, i32 0, i32 24
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %13
  %52 = call i8* @os_malloc(i32 16)
  %53 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %54 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %53, i32 0, i32 25
  store i8* %52, i8** %54, align 8
  %55 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %56 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %55, i32 0, i32 25
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %51
  %60 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %61 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %60, i32 0, i32 25
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %64 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %63, i32 0, i32 24
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @os_memcpy(i8* %62, i32 %65, i32 16)
  br label %67

67:                                               ; preds = %59, %51
  br label %68

68:                                               ; preds = %67, %13
  %69 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %70 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %69, i32 0, i32 23
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %101

73:                                               ; preds = %68
  %74 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %75 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i8* @os_malloc(i32 %76)
  %78 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %79 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %78, i32 0, i32 24
  store i8* %77, i8** %79, align 8
  %80 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %81 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %80, i32 0, i32 24
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %100

84:                                               ; preds = %73
  %85 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %86 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %85, i32 0, i32 24
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %89 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %88, i32 0, i32 23
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %92 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @os_memcpy(i8* %87, i32 %90, i32 %93)
  %95 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %96 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %99 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %84, %73
  br label %101

101:                                              ; preds = %100, %68
  %102 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %103 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %102, i32 0, i32 22
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %108 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %107, i32 0, i32 22
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @os_strdup(i64 %109)
  %111 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %112 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %111, i32 0, i32 23
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %106, %101
  %114 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %115 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %114, i32 0, i32 21
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %118 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %117, i32 0, i32 22
  store i32 %116, i32* %118, align 8
  %119 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %120 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %119, i32 0, i32 20
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %123 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %122, i32 0, i32 21
  store i32 %121, i32* %123, align 4
  %124 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %125 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %124, i32 0, i32 19
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %128 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %127, i32 0, i32 20
  store i32 %126, i32* %128, align 8
  %129 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %130 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %129, i32 0, i32 18
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %133 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %132, i32 0, i32 19
  store i32 %131, i32* %133, align 4
  %134 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %135 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %134, i32 0, i32 17
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %138 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %137, i32 0, i32 18
  store i32 %136, i32* %138, align 8
  %139 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %140 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %139, i32 0, i32 16
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %143 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %142, i32 0, i32 17
  store i32 %141, i32* %143, align 4
  %144 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %145 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %144, i32 0, i32 15
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %148 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %147, i32 0, i32 16
  store i32 %146, i32* %148, align 8
  %149 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %150 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %149, i32 0, i32 14
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %153 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %152, i32 0, i32 15
  store i32 %151, i32* %153, align 4
  %154 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %155 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %154, i32 0, i32 13
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %158 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %157, i32 0, i32 14
  store i32 %156, i32* %158, align 8
  %159 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %160 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %159, i32 0, i32 12
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %113
  %164 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %165 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %164, i32 0, i32 12
  %166 = load i64, i64* %165, align 8
  %167 = call i8* @wpabuf_dup(i64 %166)
  %168 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %169 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %168, i32 0, i32 13
  store i8* %167, i8** %169, align 8
  br label %170

170:                                              ; preds = %163, %113
  %171 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %172 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %171, i32 0, i32 11
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %170
  %176 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %177 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %176, i32 0, i32 11
  %178 = load i64, i64* %177, align 8
  %179 = call i8* @wpabuf_dup(i64 %178)
  %180 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %181 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %180, i32 0, i32 12
  store i8* %179, i8** %181, align 8
  br label %182

182:                                              ; preds = %175, %170
  %183 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %184 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %183, i32 0, i32 10
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %182
  %188 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %189 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %188, i32 0, i32 11
  %190 = load i8*, i8** %189, align 8
  %191 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %192 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %191, i32 0, i32 10
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @ETH_ALEN, align 4
  %195 = call i32 @os_memcpy(i8* %190, i32 %193, i32 %194)
  br label %196

196:                                              ; preds = %187, %182
  %197 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %198 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %197, i32 0, i32 9
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %201 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %200, i32 0, i32 10
  store i32 %199, i32* %201, align 8
  %202 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %203 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %202, i32 0, i32 8
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %206 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %205, i32 0, i32 9
  store i32 %204, i32* %206, align 4
  %207 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %208 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %207, i32 0, i32 7
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %211 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %210, i32 0, i32 8
  store i32 %209, i32* %211, align 8
  %212 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %213 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %212, i32 0, i32 6
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %216 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %215, i32 0, i32 7
  store i32 %214, i32* %216, align 4
  %217 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %218 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %221 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %220, i32 0, i32 6
  store i32 %219, i32* %221, align 8
  %222 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %223 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %226 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %225, i32 0, i32 5
  store i32 %224, i32* %226, align 4
  %227 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %228 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %231 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %230, i32 0, i32 4
  store i32 %229, i32* %231, align 8
  %232 = load %struct.eap_config*, %struct.eap_config** %7, align 8
  %233 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %236 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %235, i32 0, i32 3
  store i32 %234, i32* %236, align 4
  %237 = load i32, i32* @MSG_DEBUG, align 4
  %238 = call i32 @wpa_printf(i32 %237, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %239 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  store %struct.eap_sm* %239, %struct.eap_sm** %4, align 8
  br label %240

240:                                              ; preds = %196, %12
  %241 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  ret %struct.eap_sm* %241
}

declare dso_local %struct.eap_sm* @os_zalloc(i32) #1

declare dso_local i8* @os_malloc(i32) #1

declare dso_local i32 @os_memcpy(i8*, i32, i32) #1

declare dso_local i32 @os_strdup(i64) #1

declare dso_local i8* @wpabuf_dup(i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_completed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32, i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__*, i32*, i64, i64, i64, %struct.wpa_ssid* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.wpa_supplicant* }
%struct.wpa_ssid = type { i64, i32*, i32*, i64, i32, i32, i32*, i64 }

@ETH_ALEN = common dso_local global i32 0, align 4
@WPAS_MODE_P2P_GROUP_FORMATION = common dso_local global i64 0, align 8
@wpas_p2p_group_formation_timeout = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"P2P: Marking group formation completed on client on data connection\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c" ip_addr=%u.%u.%u.%u ip_mask=%u.%u.%u.%u go_ip_addr=%u.%u.%u.%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_p2p_completed(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  %3 = alloca %struct.wpa_ssid*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [12 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca [100 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %14 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %13, i32 0, i32 10
  %15 = load %struct.wpa_ssid*, %struct.wpa_ssid** %14, align 8
  store %struct.wpa_ssid* %15, %struct.wpa_ssid** %3, align 8
  %16 = load i32, i32* @ETH_ALEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %4, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %5, align 8
  store i32* null, i32** %9, align 8
  %20 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %21 = icmp eq %struct.wpa_ssid* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %1
  %23 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %24 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @WPAS_MODE_P2P_GROUP_FORMATION, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22, %1
  %29 = load i32, i32* @wpas_p2p_group_formation_timeout, align 4
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %31 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @eloop_cancel_timeout(i32 %29, i32 %32, i32* null)
  br label %34

34:                                               ; preds = %28, %22
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 9
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %41 = icmp ne %struct.wpa_ssid* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39, %34
  store i32 1, i32* %11, align 4
  br label %210

43:                                               ; preds = %39
  %44 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %45 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %44, i32 0, i32 9
  store i64 0, i64* %45, align 8
  %46 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %47 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %72, label %50

50:                                               ; preds = %43
  %51 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %52 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %51, i32 0, i32 5
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %54, align 8
  %56 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %57 = icmp eq %struct.wpa_supplicant* %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %50
  %59 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %60 = load i32, i32* @MSG_DEBUG, align 4
  %61 = call i32 @wpa_dbg(%struct.wpa_supplicant* %59, i32 %60, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %63 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %65 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %64, i32 0, i32 5
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store %struct.wpa_supplicant* null, %struct.wpa_supplicant** %67, align 8
  %68 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %69 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %68, i32 0, i32 8
  store i64 0, i64* %69, align 8
  %70 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %71 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %70, i32 0, i32 7
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %58, %50, %43
  %73 = load i32, i32* @ETH_ALEN, align 4
  %74 = call i32 @os_memset(i32* %19, i32 0, i32 %73)
  %75 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %76 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %75, i32 0, i32 7
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %81 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %80, i32 0, i32 6
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* @ETH_ALEN, align 4
  %84 = call i32 @os_memcpy(i32* %19, i32* %82, i32 %83)
  br label %85

85:                                               ; preds = %79, %72
  %86 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %87 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %88 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %91 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @wpas_p2p_persistent_group(%struct.wpa_supplicant* %86, i32* %19, i32 %89, i32 %92)
  store i32 %93, i32* %6, align 4
  %94 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %95 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %94, i32 0, i32 6
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* @ETH_ALEN, align 4
  %98 = call i32 @os_memcpy(i32* %96, i32* %19, i32 %97)
  %99 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %100 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %99, i32 0, i32 5
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %102, align 8
  %104 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %105 = icmp eq %struct.wpa_supplicant* %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %85
  %107 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %108 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %107, i32 0, i32 5
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  store %struct.wpa_supplicant* null, %struct.wpa_supplicant** %110, align 8
  br label %111

111:                                              ; preds = %106, %85
  %112 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %113 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %112, i32 0, i32 4
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = icmp ne %struct.TYPE_4__* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %118 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %117, i32 0, i32 4
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  br label %127

122:                                              ; preds = %111
  %123 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %124 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  br label %127

127:                                              ; preds = %122, %116
  %128 = phi i32 [ %121, %116 ], [ %126, %122 ]
  store i32 %128, i32* %7, align 4
  %129 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %129, align 16
  %130 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %131 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 0
  %134 = call i64 @wpa_sm_get_p2p_ip_addr(i32 %132, i32* %133)
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %170

136:                                              ; preds = %127
  %137 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %138 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 0
  %139 = load i32, i32* %138, align 16
  %140 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 2
  %143 = load i32, i32* %142, align 8
  %144 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 3
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 4
  %147 = load i32, i32* %146, align 16
  %148 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 5
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 6
  %151 = load i32, i32* %150, align 8
  %152 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 7
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 8
  %155 = load i32, i32* %154, align 16
  %156 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 9
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 10
  %159 = load i32, i32* %158, align 8
  %160 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 11
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @os_snprintf(i8* %137, i32 100, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %139, i32 %141, i32 %143, i32 %145, i32 %147, i32 %149, i32 %151, i32 %153, i32 %155, i32 %157, i32 %159, i32 %161)
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* %12, align 4
  %164 = call i64 @os_snprintf_error(i32 100, i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %136
  %167 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %167, align 16
  br label %168

168:                                              ; preds = %166, %136
  %169 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 0
  store i32* %169, i32** %9, align 8
  br label %170

170:                                              ; preds = %168, %127
  %171 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %172 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %173 = load i32, i32* %7, align 4
  %174 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %175 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = icmp eq i32* %176, null
  br i1 %177, label %178, label %187

178:                                              ; preds = %170
  %179 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %180 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %178
  %184 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %185 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  br label %188

187:                                              ; preds = %178, %170
  br label %188

188:                                              ; preds = %187, %183
  %189 = phi i32* [ %186, %183 ], [ null, %187 ]
  %190 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %191 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %6, align 4
  %194 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %195 = call i32 @wpas_p2p_group_started(%struct.wpa_supplicant* %171, i32 0, %struct.wpa_ssid* %172, i32 %173, i32* %189, i32* %192, i32* %19, i32 %193, i8* %194)
  %196 = load i32, i32* %6, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %188
  %199 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %200 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %203 = call i32 @wpas_p2p_store_persistent_group(i32 %201, %struct.wpa_ssid* %202, i32* %19)
  br label %204

204:                                              ; preds = %198, %188
  %205 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %206 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %207 = load i32, i32* %6, align 4
  %208 = load i32*, i32** %9, align 8
  %209 = call i32 @wpas_notify_p2p_group_started(%struct.wpa_supplicant* %205, %struct.wpa_ssid* %206, i32 %207, i32 1, i32* %208)
  store i32 0, i32* %11, align 4
  br label %210

210:                                              ; preds = %204, %42
  %211 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %211)
  %212 = load i32, i32* %11, align 4
  switch i32 %212, label %214 [
    i32 0, label %213
    i32 1, label %213
  ]

213:                                              ; preds = %210, %210
  ret void

214:                                              ; preds = %210
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @eloop_cancel_timeout(i32, i32, i32*) #2

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*) #2

declare dso_local i32 @os_memset(i32*, i32, i32) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

declare dso_local i32 @wpas_p2p_persistent_group(%struct.wpa_supplicant*, i32*, i32, i32) #2

declare dso_local i64 @wpa_sm_get_p2p_ip_addr(i32, i32*) #2

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i64 @os_snprintf_error(i32, i32) #2

declare dso_local i32 @wpas_p2p_group_started(%struct.wpa_supplicant*, i32, %struct.wpa_ssid*, i32, i32*, i32*, i32*, i32, i8*) #2

declare dso_local i32 @wpas_p2p_store_persistent_group(i32, %struct.wpa_ssid*, i32*) #2

declare dso_local i32 @wpas_notify_p2p_group_started(%struct.wpa_supplicant*, %struct.wpa_ssid*, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

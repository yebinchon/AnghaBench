; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_get_capability.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_get_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_ndis_data = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i64, i32, i32 }
%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32, i32 }

@WPA_DRIVER_FLAGS_DRIVER_IE = common dso_local global i32 0, align 4
@OID_802_11_CAPABILITY = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"OID_802_11_CAPABILITY\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"NDIS: unsupported OID_802_11_CAPABILITY data\00", align 1
@.str.2 = private unnamed_addr constant [81 x i8] c"NDIS: Driver supports OID_802_11_CAPABILITY - NoOfPMKIDs %d NoOfAuthEncrPairs %d\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"NDIS: auth/encr pair list overflow\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"NDIS: %d - auth %d encr %d\00", align 1
@WPA_DRIVER_AUTH_OPEN = common dso_local global i32 0, align 4
@WPA_DRIVER_AUTH_SHARED = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_WPA = common dso_local global i64 0, align 8
@WPA_DRIVER_CAPA_KEY_MGMT_WPA_PSK = common dso_local global i64 0, align 8
@WPA_DRIVER_CAPA_KEY_MGMT_WPA2 = common dso_local global i64 0, align 8
@WPA_DRIVER_CAPA_KEY_MGMT_WPA2_PSK = common dso_local global i64 0, align 8
@WPA_DRIVER_CAPA_KEY_MGMT_WPA_NONE = common dso_local global i64 0, align 8
@WPA_DRIVER_CAPA_ENC_WEP40 = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_ENC_WEP104 = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_ENC_TKIP = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_ENC_CCMP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [60 x i8] c"NDIS: driver capabilities: key_mgmt 0x%x enc 0x%x auth 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_driver_ndis_data*)* @wpa_driver_ndis_get_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_driver_ndis_get_capability(%struct.wpa_driver_ndis_data* %0) #0 {
  %2 = alloca %struct.wpa_driver_ndis_data*, align 8
  %3 = alloca [512 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.wpa_driver_ndis_data* %0, %struct.wpa_driver_ndis_data** %2, align 8
  %8 = load i32, i32* @WPA_DRIVER_FLAGS_DRIVER_IE, align 4
  %9 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %10 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  store i32 %8, i32* %11, align 4
  %12 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %13 = load i32, i32* @OID_802_11_CAPABILITY, align 4
  %14 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %15 = call i32 @ndis_get_oid(%struct.wpa_driver_ndis_data* %12, i32 %13, i8* %14, i32 512)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %20 = call i32 @wpa_driver_ndis_get_wpa_capability(%struct.wpa_driver_ndis_data* %19)
  br label %195

21:                                               ; preds = %1
  %22 = load i32, i32* @MSG_MSGDUMP, align 4
  %23 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %24 = bitcast i8* %23 to i32*
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @wpa_hexdump(i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %24, i32 %25)
  %27 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %28 = bitcast i8* %27 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %6, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ult i64 %30, 32
  br i1 %31, label %37, label %32

32:                                               ; preds = %21
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 2
  br i1 %36, label %37, label %40

37:                                               ; preds = %32, %21
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %38, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %195

40:                                               ; preds = %32
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 (i32, i8*, ...) @wpa_printf(i32 %41, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %49)
  %51 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %52 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %57 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  store i64 0, i64* %5, align 8
  br label %58

58:                                               ; preds = %177, %40
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ult i64 %59, %62
  br i1 %63, label %64, label %180

64:                                               ; preds = %58
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i64, i64* %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %68
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** %7, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 1
  %72 = bitcast %struct.TYPE_6__* %71 to i8*
  %73 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = icmp ugt i8* %72, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %64
  %79 = load i32, i32* @MSG_DEBUG, align 4
  %80 = call i32 (i32, i8*, ...) @wpa_printf(i32 %79, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %180

81:                                               ; preds = %64
  %82 = load i32, i32* @MSG_MSGDUMP, align 4
  %83 = load i64, i64* %5, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32, i8*, ...) @wpa_printf(i32 %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %83, i32 %86, i32 %89)
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  switch i32 %93, label %143 [
    i32 137, label %94
    i32 136, label %101
    i32 135, label %108
    i32 131, label %115
    i32 134, label %122
    i32 133, label %129
    i32 132, label %136
  ]

94:                                               ; preds = %81
  %95 = load i32, i32* @WPA_DRIVER_AUTH_OPEN, align 4
  %96 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %97 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %95
  store i32 %100, i32* %98, align 8
  br label %144

101:                                              ; preds = %81
  %102 = load i32, i32* @WPA_DRIVER_AUTH_SHARED, align 4
  %103 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %104 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %102
  store i32 %107, i32* %105, align 8
  br label %144

108:                                              ; preds = %81
  %109 = load i64, i64* @WPA_DRIVER_CAPA_KEY_MGMT_WPA, align 8
  %110 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %111 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = or i64 %113, %109
  store i64 %114, i64* %112, align 8
  br label %144

115:                                              ; preds = %81
  %116 = load i64, i64* @WPA_DRIVER_CAPA_KEY_MGMT_WPA_PSK, align 8
  %117 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %118 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = or i64 %120, %116
  store i64 %121, i64* %119, align 8
  br label %144

122:                                              ; preds = %81
  %123 = load i64, i64* @WPA_DRIVER_CAPA_KEY_MGMT_WPA2, align 8
  %124 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %125 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = or i64 %127, %123
  store i64 %128, i64* %126, align 8
  br label %144

129:                                              ; preds = %81
  %130 = load i64, i64* @WPA_DRIVER_CAPA_KEY_MGMT_WPA2_PSK, align 8
  %131 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %132 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = or i64 %134, %130
  store i64 %135, i64* %133, align 8
  br label %144

136:                                              ; preds = %81
  %137 = load i64, i64* @WPA_DRIVER_CAPA_KEY_MGMT_WPA_NONE, align 8
  %138 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %139 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = or i64 %141, %137
  store i64 %142, i64* %140, align 8
  br label %144

143:                                              ; preds = %81
  br label %144

144:                                              ; preds = %143, %136, %129, %122, %115, %108, %101, %94
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  switch i32 %147, label %175 [
    i32 130, label %148
    i32 129, label %161
    i32 128, label %168
  ]

148:                                              ; preds = %144
  %149 = load i32, i32* @WPA_DRIVER_CAPA_ENC_WEP40, align 4
  %150 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %151 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %149
  store i32 %154, i32* %152, align 8
  %155 = load i32, i32* @WPA_DRIVER_CAPA_ENC_WEP104, align 4
  %156 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %157 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %155
  store i32 %160, i32* %158, align 8
  br label %176

161:                                              ; preds = %144
  %162 = load i32, i32* @WPA_DRIVER_CAPA_ENC_TKIP, align 4
  %163 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %164 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = or i32 %166, %162
  store i32 %167, i32* %165, align 8
  br label %176

168:                                              ; preds = %144
  %169 = load i32, i32* @WPA_DRIVER_CAPA_ENC_CCMP, align 4
  %170 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %171 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, %169
  store i32 %174, i32* %172, align 8
  br label %176

175:                                              ; preds = %144
  br label %176

176:                                              ; preds = %175, %168, %161, %148
  br label %177

177:                                              ; preds = %176
  %178 = load i64, i64* %5, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %5, align 8
  br label %58

180:                                              ; preds = %78, %58
  %181 = load i32, i32* @MSG_DEBUG, align 4
  %182 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %183 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %187 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %191 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 (i32, i8*, ...) @wpa_printf(i32 %181, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i64 %185, i32 %189, i32 %193)
  br label %195

195:                                              ; preds = %180, %37, %18
  ret void
}

declare dso_local i32 @ndis_get_oid(%struct.wpa_driver_ndis_data*, i32, i8*, i32) #1

declare dso_local i32 @wpa_driver_ndis_get_wpa_capability(%struct.wpa_driver_ndis_data*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

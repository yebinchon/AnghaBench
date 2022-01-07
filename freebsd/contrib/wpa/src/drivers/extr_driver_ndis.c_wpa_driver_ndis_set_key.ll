; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_set_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_ndis_data = type { i32 }
%struct.TYPE_4__ = type { i64, i32, i64, i64, i64*, i64* }

@ETH_ALEN = common dso_local global i32 0, align 4
@WPA_ALG_NONE = common dso_local global i32 0, align 4
@WPA_ALG_WEP = common dso_local global i32 0, align 4
@WPA_ALG_TKIP = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"NDIS: OID_802_11_ADD_KEY\00", align 1
@OID_802_11_ADD_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64*, i32, i32, i64*, i64, i64*, i64)* @wpa_driver_ndis_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_driver_ndis_set_key(i8* %0, i8* %1, i32 %2, i64* %3, i32 %4, i32 %5, i64* %6, i64 %7, i64* %8, i64 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.wpa_driver_ndis_data*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_4__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i64* %3, i64** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i64* %6, i64** %18, align 8
  store i64 %7, i64* %19, align 8
  store i64* %8, i64** %20, align 8
  store i64 %9, i64* %21, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = bitcast i8* %31 to %struct.wpa_driver_ndis_data*
  store %struct.wpa_driver_ndis_data* %32, %struct.wpa_driver_ndis_data** %22, align 8
  %33 = load i32, i32* @ETH_ALEN, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %28, align 8
  %36 = alloca i64, i64 %34, align 16
  store i64 %34, i64* %29, align 8
  %37 = load i64*, i64** %15, align 8
  %38 = icmp eq i64* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %10
  %40 = load i64*, i64** %15, align 8
  %41 = call i64 @is_broadcast_ether_addr(i64* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %39, %10
  store i32 0, i32* %27, align 4
  %44 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %22, align 8
  %45 = call i64 @wpa_driver_ndis_get_bssid(%struct.wpa_driver_ndis_data* %44, i64* %36)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @ETH_ALEN, align 4
  %49 = call i32 @os_memset(i64* %36, i32 255, i32 %48)
  br label %50

50:                                               ; preds = %47, %43
  br label %56

51:                                               ; preds = %39
  store i32 1, i32* %27, align 4
  %52 = load i64*, i64** %15, align 8
  %53 = load i32, i32* @ETH_ALEN, align 4
  %54 = sext i32 %53 to i64
  %55 = call i32 @os_memcpy(i64* %36, i64* %52, i64 %54)
  br label %56

56:                                               ; preds = %51, %50
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @WPA_ALG_NONE, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %21, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60, %56
  %64 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %22, align 8
  %65 = load i32, i32* %16, align 4
  %66 = load i64*, i64** %15, align 8
  %67 = load i32, i32* %27, align 4
  %68 = call i32 @wpa_driver_ndis_remove_key(%struct.wpa_driver_ndis_data* %64, i32 %65, i64* %66, i64* %36, i32 %67)
  store i32 %68, i32* %11, align 4
  store i32 1, i32* %30, align 4
  br label %207

69:                                               ; preds = %60
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @WPA_ALG_WEP, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %22, align 8
  %75 = load i32, i32* %27, align 4
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %17, align 4
  %78 = load i64*, i64** %20, align 8
  %79 = load i64, i64* %21, align 8
  %80 = call i32 @wpa_driver_ndis_add_wep(%struct.wpa_driver_ndis_data* %74, i32 %75, i32 %76, i32 %77, i64* %78, i64 %79)
  store i32 %80, i32* %11, align 4
  store i32 1, i32* %30, align 4
  br label %207

81:                                               ; preds = %69
  %82 = load i64, i64* %21, align 8
  %83 = add i64 32, %82
  store i64 %83, i64* %23, align 8
  %84 = load i64, i64* %23, align 8
  %85 = call %struct.TYPE_4__* @os_zalloc(i64 %84)
  store %struct.TYPE_4__* %85, %struct.TYPE_4__** %25, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %87 = icmp eq %struct.TYPE_4__* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  store i32 -1, i32* %11, align 4
  store i32 1, i32* %30, align 4
  br label %207

89:                                               ; preds = %81
  %90 = load i64, i64* %23, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load i32, i32* %16, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* %17, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %89
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, -2147483648
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %98, %89
  %104 = load i32, i32* %27, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, 1073741824
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %106, %103
  %112 = load i64*, i64** %18, align 8
  %113 = icmp ne i64* %112, null
  br i1 %113, label %114, label %122

114:                                              ; preds = %111
  %115 = load i64, i64* %19, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, 536870912
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %117, %114, %111
  %123 = load i64, i64* %21, align 8
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 2
  store i64 %123, i64* %125, align 8
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 5
  %128 = load i64*, i64** %127, align 8
  %129 = load i32, i32* @ETH_ALEN, align 4
  %130 = sext i32 %129 to i64
  %131 = call i32 @os_memcpy(i64* %128, i64* %36, i64 %130)
  %132 = load i64*, i64** %18, align 8
  %133 = icmp ne i64* %132, null
  br i1 %133, label %134, label %158

134:                                              ; preds = %122
  %135 = load i64, i64* %19, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %158

137:                                              ; preds = %134
  store i64 0, i64* %24, align 8
  br label %138

138:                                              ; preds = %154, %137
  %139 = load i64, i64* %24, align 8
  %140 = load i64, i64* %19, align 8
  %141 = icmp ult i64 %139, %140
  br i1 %141, label %142, label %157

142:                                              ; preds = %138
  %143 = load i64*, i64** %18, align 8
  %144 = load i64, i64* %24, align 8
  %145 = getelementptr inbounds i64, i64* %143, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %24, align 8
  %148 = mul i64 %147, 8
  %149 = shl i64 %146, %148
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = or i64 %152, %149
  store i64 %153, i64* %151, align 8
  br label %154

154:                                              ; preds = %142
  %155 = load i64, i64* %24, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %24, align 8
  br label %138

157:                                              ; preds = %138
  br label %158

158:                                              ; preds = %157, %134, %122
  %159 = load i32, i32* %14, align 4
  %160 = load i32, i32* @WPA_ALG_TKIP, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %185

162:                                              ; preds = %158
  %163 = load i64, i64* %21, align 8
  %164 = icmp eq i64 %163, 32
  br i1 %164, label %165, label %185

165:                                              ; preds = %162
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 4
  %168 = load i64*, i64** %167, align 8
  %169 = load i64*, i64** %20, align 8
  %170 = call i32 @os_memcpy(i64* %168, i64* %169, i64 16)
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 4
  %173 = load i64*, i64** %172, align 8
  %174 = getelementptr inbounds i64, i64* %173, i64 16
  %175 = load i64*, i64** %20, align 8
  %176 = getelementptr inbounds i64, i64* %175, i64 24
  %177 = call i32 @os_memcpy(i64* %174, i64* %176, i64 8)
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 4
  %180 = load i64*, i64** %179, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 24
  %182 = load i64*, i64** %20, align 8
  %183 = getelementptr inbounds i64, i64* %182, i64 16
  %184 = call i32 @os_memcpy(i64* %181, i64* %183, i64 8)
  br label %192

185:                                              ; preds = %162, %158
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 4
  %188 = load i64*, i64** %187, align 8
  %189 = load i64*, i64** %20, align 8
  %190 = load i64, i64* %21, align 8
  %191 = call i32 @os_memcpy(i64* %188, i64* %189, i64 %190)
  br label %192

192:                                              ; preds = %185, %165
  %193 = load i32, i32* @MSG_MSGDUMP, align 4
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %195 = bitcast %struct.TYPE_4__* %194 to i64*
  %196 = load i64, i64* %23, align 8
  %197 = call i32 @wpa_hexdump_key(i32 %193, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64* %195, i64 %196)
  %198 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %22, align 8
  %199 = load i32, i32* @OID_802_11_ADD_KEY, align 4
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %201 = bitcast %struct.TYPE_4__* %200 to i8*
  %202 = load i64, i64* %23, align 8
  %203 = call i32 @ndis_set_oid(%struct.wpa_driver_ndis_data* %198, i32 %199, i8* %201, i64 %202)
  store i32 %203, i32* %26, align 4
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %205 = call i32 @os_free(%struct.TYPE_4__* %204)
  %206 = load i32, i32* %26, align 4
  store i32 %206, i32* %11, align 4
  store i32 1, i32* %30, align 4
  br label %207

207:                                              ; preds = %192, %88, %73, %63
  %208 = load i8*, i8** %28, align 8
  call void @llvm.stackrestore(i8* %208)
  %209 = load i32, i32* %11, align 4
  ret i32 %209
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @is_broadcast_ether_addr(i64*) #2

declare dso_local i64 @wpa_driver_ndis_get_bssid(%struct.wpa_driver_ndis_data*, i64*) #2

declare dso_local i32 @os_memset(i64*, i32, i32) #2

declare dso_local i32 @os_memcpy(i64*, i64*, i64) #2

declare dso_local i32 @wpa_driver_ndis_remove_key(%struct.wpa_driver_ndis_data*, i32, i64*, i64*, i32) #2

declare dso_local i32 @wpa_driver_ndis_add_wep(%struct.wpa_driver_ndis_data*, i32, i32, i32, i64*, i64) #2

declare dso_local %struct.TYPE_4__* @os_zalloc(i64) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i64*, i64) #2

declare dso_local i32 @ndis_set_oid(%struct.wpa_driver_ndis_data*, i32, i8*, i64) #2

declare dso_local i32 @os_free(%struct.TYPE_4__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

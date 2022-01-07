; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_build_soh.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_build_soh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"wpa_supplicant@w1.fi\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"TNC: SoH Correlation ID\00", align 1
@EAP_TLV_VENDOR_SPECIFIC_TLV = common dso_local global i32 0, align 4
@EAP_VENDOR_MICROSOFT = common dso_local global i32 0, align 4
@SSOH_MS_PACKET_INFO = common dso_local global i32 0, align 4
@SSOH_MS_MACHINE_INVENTORY = common dso_local global i32 0, align 4
@SSOH_MS_MACHINENAME = common dso_local global i32 0, align 4
@SSOH_MS_CORRELATIONID = common dso_local global i32 0, align 4
@SSOH_MS_QUARANTINE_STATE = common dso_local global i32 0, align 4
@SSOH_MS_MACHINE_INVENTORY_EX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (i32)* @tncc_build_soh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @tncc_build_soh(i32 %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [24 x i8], align 16
  %12 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds [24 x i8], [24 x i8]* %11, i64 0, i64 0
  %14 = call i64 @os_get_random(i8* %13, i32 24)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %194

17:                                               ; preds = %1
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = getelementptr inbounds [24 x i8], [24 x i8]* %11, i64 0, i64 0
  %20 = call i32 @wpa_hexdump(i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %19, i32 24)
  %21 = call %struct.wpabuf* @wpabuf_alloc(i32 200)
  store %struct.wpabuf* %21, %struct.wpabuf** %4, align 8
  %22 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %23 = icmp eq %struct.wpabuf* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %194

25:                                               ; preds = %17
  %26 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %27 = load i32, i32* @EAP_TLV_VENDOR_SPECIFIC_TLV, align 4
  %28 = call i32 @wpabuf_put_be16(%struct.wpabuf* %26, i32 %27)
  %29 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %30 = call i8* @wpabuf_put(%struct.wpabuf* %29, i32 2)
  store i8* %30, i8** %5, align 8
  %31 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %32 = load i32, i32* @EAP_VENDOR_MICROSOFT, align 4
  %33 = call i32 @wpabuf_put_be32(%struct.wpabuf* %31, i32 %32)
  %34 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %35 = call i32 @wpabuf_put_be16(%struct.wpabuf* %34, i32 1)
  %36 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %37 = call i8* @wpabuf_put(%struct.wpabuf* %36, i32 2)
  store i8* %37, i8** %6, align 8
  %38 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %39 = load i32, i32* @EAP_TLV_VENDOR_SPECIFIC_TLV, align 4
  %40 = call i32 @wpabuf_put_be16(%struct.wpabuf* %38, i32 %39)
  %41 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %42 = call i8* @wpabuf_put(%struct.wpabuf* %41, i32 2)
  store i8* %42, i8** %7, align 8
  %43 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %44 = load i32, i32* @EAP_VENDOR_MICROSOFT, align 4
  %45 = call i32 @wpabuf_put_be32(%struct.wpabuf* %43, i32 %44)
  %46 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @wpabuf_put_be16(%struct.wpabuf* %46, i32 %47)
  %49 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %50 = call i8* @wpabuf_put(%struct.wpabuf* %49, i32 2)
  store i8* %50, i8** %8, align 8
  %51 = load i32, i32* %3, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %69

53:                                               ; preds = %25
  %54 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %55 = load i32, i32* @EAP_TLV_VENDOR_SPECIFIC_TLV, align 4
  %56 = call i32 @wpabuf_put_be16(%struct.wpabuf* %54, i32 %55)
  %57 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %58 = call i32 @wpabuf_put_be16(%struct.wpabuf* %57, i32 30)
  %59 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %60 = load i32, i32* @EAP_VENDOR_MICROSOFT, align 4
  %61 = call i32 @wpabuf_put_be32(%struct.wpabuf* %59, i32 %60)
  %62 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %63 = getelementptr inbounds [24 x i8], [24 x i8]* %11, i64 0, i64 0
  %64 = call i32 @wpabuf_put_data(%struct.wpabuf* %62, i8* %63, i32 24)
  %65 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %66 = call i32 @wpabuf_put_u8(%struct.wpabuf* %65, i32 1)
  %67 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %68 = call i32 @wpabuf_put_u8(%struct.wpabuf* %67, i32 0)
  br label %69

69:                                               ; preds = %53, %25
  %70 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %71 = call i32 @wpabuf_put_be16(%struct.wpabuf* %70, i32 2)
  %72 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %73 = call i32 @wpabuf_put_be16(%struct.wpabuf* %72, i32 4)
  %74 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %75 = call i32 @wpabuf_put_be32(%struct.wpabuf* %74, i32 79616)
  %76 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %77 = load i32, i32* @EAP_TLV_VENDOR_SPECIFIC_TLV, align 4
  %78 = call i32 @wpabuf_put_be16(%struct.wpabuf* %76, i32 %77)
  %79 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %80 = call i8* @wpabuf_put(%struct.wpabuf* %79, i32 2)
  store i8* %80, i8** %9, align 8
  %81 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %82 = load i32, i32* @EAP_VENDOR_MICROSOFT, align 4
  %83 = call i32 @wpabuf_put_be32(%struct.wpabuf* %81, i32 %82)
  %84 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %85 = load i32, i32* @SSOH_MS_PACKET_INFO, align 4
  %86 = call i32 @wpabuf_put_u8(%struct.wpabuf* %84, i32 %85)
  %87 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %88 = call i32 @wpabuf_put_u8(%struct.wpabuf* %87, i32 17)
  %89 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %90 = load i32, i32* @SSOH_MS_MACHINE_INVENTORY, align 4
  %91 = call i32 @wpabuf_put_u8(%struct.wpabuf* %89, i32 %90)
  %92 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %93 = call i32 @wpabuf_put_be32(%struct.wpabuf* %92, i32 0)
  %94 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %95 = call i32 @wpabuf_put_be32(%struct.wpabuf* %94, i32 0)
  %96 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %97 = call i32 @wpabuf_put_be32(%struct.wpabuf* %96, i32 0)
  %98 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %99 = call i32 @wpabuf_put_be16(%struct.wpabuf* %98, i32 0)
  %100 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %101 = call i32 @wpabuf_put_be16(%struct.wpabuf* %100, i32 0)
  %102 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %103 = call i32 @wpabuf_put_be16(%struct.wpabuf* %102, i32 0)
  %104 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %105 = load i32, i32* @SSOH_MS_MACHINENAME, align 4
  %106 = call i32 @wpabuf_put_u8(%struct.wpabuf* %104, i32 %105)
  %107 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = call i32 @os_strlen(i8* %108)
  %110 = add nsw i32 %109, 1
  %111 = call i32 @wpabuf_put_be16(%struct.wpabuf* %107, i32 %110)
  %112 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %113 = load i8*, i8** %12, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = call i32 @os_strlen(i8* %114)
  %116 = add nsw i32 %115, 1
  %117 = call i32 @wpabuf_put_data(%struct.wpabuf* %112, i8* %113, i32 %116)
  %118 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %119 = load i32, i32* @SSOH_MS_CORRELATIONID, align 4
  %120 = call i32 @wpabuf_put_u8(%struct.wpabuf* %118, i32 %119)
  %121 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %122 = getelementptr inbounds [24 x i8], [24 x i8]* %11, i64 0, i64 0
  %123 = call i32 @wpabuf_put_data(%struct.wpabuf* %121, i8* %122, i32 24)
  %124 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %125 = load i32, i32* @SSOH_MS_QUARANTINE_STATE, align 4
  %126 = call i32 @wpabuf_put_u8(%struct.wpabuf* %124, i32 %125)
  %127 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %128 = call i32 @wpabuf_put_be16(%struct.wpabuf* %127, i32 1)
  %129 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %130 = call i32 @wpabuf_put_be32(%struct.wpabuf* %129, i32 -1)
  %131 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %132 = call i32 @wpabuf_put_be32(%struct.wpabuf* %131, i32 -1)
  %133 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %134 = call i32 @wpabuf_put_be16(%struct.wpabuf* %133, i32 1)
  %135 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %136 = call i32 @wpabuf_put_u8(%struct.wpabuf* %135, i32 0)
  %137 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %138 = load i32, i32* @SSOH_MS_MACHINE_INVENTORY_EX, align 4
  %139 = call i32 @wpabuf_put_u8(%struct.wpabuf* %137, i32 %138)
  %140 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %141 = call i32 @wpabuf_put_be32(%struct.wpabuf* %140, i32 0)
  %142 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %143 = call i32 @wpabuf_put_u8(%struct.wpabuf* %142, i32 1)
  %144 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %145 = call i8* @wpabuf_put(%struct.wpabuf* %144, i32 0)
  store i8* %145, i8** %10, align 8
  %146 = load i8*, i8** %9, align 8
  %147 = load i8*, i8** %10, align 8
  %148 = load i8*, i8** %9, align 8
  %149 = ptrtoint i8* %147 to i64
  %150 = ptrtoint i8* %148 to i64
  %151 = sub i64 %149, %150
  %152 = sub nsw i64 %151, 2
  %153 = trunc i64 %152 to i32
  %154 = call i32 @WPA_PUT_BE16(i8* %146, i32 %153)
  %155 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %156 = call i8* @wpabuf_put(%struct.wpabuf* %155, i32 0)
  store i8* %156, i8** %10, align 8
  %157 = load i8*, i8** %5, align 8
  %158 = load i8*, i8** %10, align 8
  %159 = load i8*, i8** %5, align 8
  %160 = ptrtoint i8* %158 to i64
  %161 = ptrtoint i8* %159 to i64
  %162 = sub i64 %160, %161
  %163 = sub nsw i64 %162, 2
  %164 = trunc i64 %163 to i32
  %165 = call i32 @WPA_PUT_BE16(i8* %157, i32 %164)
  %166 = load i8*, i8** %6, align 8
  %167 = load i8*, i8** %10, align 8
  %168 = load i8*, i8** %6, align 8
  %169 = ptrtoint i8* %167 to i64
  %170 = ptrtoint i8* %168 to i64
  %171 = sub i64 %169, %170
  %172 = sub nsw i64 %171, 2
  %173 = trunc i64 %172 to i32
  %174 = call i32 @WPA_PUT_BE16(i8* %166, i32 %173)
  %175 = load i8*, i8** %7, align 8
  %176 = load i8*, i8** %10, align 8
  %177 = load i8*, i8** %7, align 8
  %178 = ptrtoint i8* %176 to i64
  %179 = ptrtoint i8* %177 to i64
  %180 = sub i64 %178, %179
  %181 = sub nsw i64 %180, 2
  %182 = trunc i64 %181 to i32
  %183 = call i32 @WPA_PUT_BE16(i8* %175, i32 %182)
  %184 = load i8*, i8** %8, align 8
  %185 = load i8*, i8** %10, align 8
  %186 = load i8*, i8** %8, align 8
  %187 = ptrtoint i8* %185 to i64
  %188 = ptrtoint i8* %186 to i64
  %189 = sub i64 %187, %188
  %190 = sub nsw i64 %189, 2
  %191 = trunc i64 %190 to i32
  %192 = call i32 @WPA_PUT_BE16(i8* %184, i32 %191)
  %193 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %193, %struct.wpabuf** %2, align 8
  br label %194

194:                                              ; preds = %69, %24, %16
  %195 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %195
}

declare dso_local i64 @os_get_random(i8*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i8*, i32) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i8* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be32(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i8*, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i32 @WPA_PUT_BE16(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

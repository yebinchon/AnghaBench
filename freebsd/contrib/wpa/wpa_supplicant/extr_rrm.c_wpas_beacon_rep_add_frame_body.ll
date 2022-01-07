; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_beacon_rep_add_frame_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_beacon_rep_add_frame_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitfield = type { i32 }
%struct.wpa_bss = type { i32, i32, i32 }

@REPORTED_FRAME_BODY_SUBELEM_LEN = common dso_local global i32 0, align 4
@BEACON_REPORT_DETAIL_ALL_FIELDS_AND_ELEMENTS = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Beacon Request: Invalid reporting detail: %d\00", align 1
@BEACON_REPORT_DETAIL_NONE = common dso_local global i32 0, align 4
@WLAN_BEACON_REPORT_SUBELEM_FRAME_BODY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bitfield*, i32, %struct.wpa_bss*, i32*, i64, i32**, i64*, i32)* @wpas_beacon_rep_add_frame_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_beacon_rep_add_frame_body(%struct.bitfield* %0, i32 %1, %struct.wpa_bss* %2, i32* %3, i64 %4, i32** %5, i64* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.bitfield*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.wpa_bss*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.bitfield* %0, %struct.bitfield** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.wpa_bss* %2, %struct.wpa_bss** %12, align 8
  store i32* %3, i32** %13, align 8
  store i64 %4, i64* %14, align 8
  store i32** %5, i32*** %15, align 8
  store i64* %6, i64** %16, align 8
  store i32 %7, i32* %17, align 4
  %23 = load i32**, i32*** %15, align 8
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %18, align 8
  %25 = load i64*, i64** %16, align 8
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %19, align 8
  %27 = load i32*, i32** %13, align 8
  store i32* %27, i32** %20, align 8
  %28 = load i32, i32* @REPORTED_FRAME_BODY_SUBELEM_LEN, align 4
  %29 = sext i32 %28 to i64
  %30 = sub i64 245, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %21, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @BEACON_REPORT_DETAIL_ALL_FIELDS_AND_ELEMENTS, align 4
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %8
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @wpa_printf(i32 %36, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 -1, i32* %9, align 4
  br label %203

39:                                               ; preds = %8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @BEACON_REPORT_DETAIL_NONE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  br label %203

44:                                               ; preds = %39
  %45 = load i32, i32* %17, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i64, i64* %14, align 8
  %49 = icmp ult i64 %48, 14
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 -1, i32* %9, align 4
  br label %203

51:                                               ; preds = %47, %44
  %52 = load i32, i32* @WLAN_BEACON_REPORT_SUBELEM_FRAME_BODY, align 4
  %53 = load i32*, i32** %20, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %20, align 8
  store i32 %52, i32* %53, align 4
  %55 = load i32*, i32** %20, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %20, align 8
  %57 = load i32, i32* %17, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %51
  %60 = load i32*, i32** %20, align 8
  %61 = load %struct.wpa_bss*, %struct.wpa_bss** %12, align 8
  %62 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @WPA_PUT_LE64(i32* %60, i32 %63)
  %65 = load i32*, i32** %20, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  store i32* %66, i32** %20, align 8
  %67 = load i32*, i32** %20, align 8
  %68 = load %struct.wpa_bss*, %struct.wpa_bss** %12, align 8
  %69 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @WPA_PUT_LE16(i32* %67, i32 %70)
  %72 = load i32*, i32** %20, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  store i32* %73, i32** %20, align 8
  %74 = load i32*, i32** %20, align 8
  %75 = load %struct.wpa_bss*, %struct.wpa_bss** %12, align 8
  %76 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @WPA_PUT_LE16(i32* %74, i32 %77)
  %79 = load i32*, i32** %20, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  store i32* %80, i32** %20, align 8
  br label %81

81:                                               ; preds = %59, %51
  %82 = load i32*, i32** %20, align 8
  %83 = load i32*, i32** %13, align 8
  %84 = ptrtoint i32* %82 to i64
  %85 = ptrtoint i32* %83 to i64
  %86 = sub i64 %84, %85
  %87 = sdiv exact i64 %86, 4
  %88 = load i32, i32* %21, align 4
  %89 = sext i32 %88 to i64
  %90 = sub nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %21, align 4
  br label %92

92:                                               ; preds = %166, %81
  %93 = load i64, i64* %19, align 8
  %94 = icmp ugt i64 %93, 2
  br i1 %94, label %95, label %106

95:                                               ; preds = %92
  %96 = load i32*, i32** %18, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = add i32 2, %98
  %100 = zext i32 %99 to i64
  %101 = load i64, i64* %19, align 8
  %102 = icmp ule i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = load i32, i32* %21, align 4
  %105 = icmp sgt i32 %104, 0
  br label %106

106:                                              ; preds = %103, %95, %92
  %107 = phi i1 [ false, %95 ], [ false, %92 ], [ %105, %103 ]
  br i1 %107, label %108, label %181

108:                                              ; preds = %106
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @BEACON_REPORT_DETAIL_ALL_FIELDS_AND_ELEMENTS, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %122, label %112

112:                                              ; preds = %108
  %113 = load %struct.bitfield*, %struct.bitfield** %10, align 8
  %114 = icmp ne %struct.bitfield* %113, null
  br i1 %114, label %115, label %166

115:                                              ; preds = %112
  %116 = load %struct.bitfield*, %struct.bitfield** %10, align 8
  %117 = load i32*, i32** %18, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @bitfield_is_set(%struct.bitfield* %116, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %166

122:                                              ; preds = %115, %108
  %123 = load i32*, i32** %18, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %22, align 4
  %126 = load i32, i32* %22, align 4
  %127 = add i32 2, %126
  %128 = zext i32 %127 to i64
  %129 = load i32*, i32** %13, align 8
  %130 = load i64, i64* %14, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32*, i32** %20, align 8
  %133 = ptrtoint i32* %131 to i64
  %134 = ptrtoint i32* %132 to i64
  %135 = sub i64 %133, %134
  %136 = sdiv exact i64 %135, 4
  %137 = icmp sgt i64 %128, %136
  br i1 %137, label %143, label %138

138:                                              ; preds = %122
  %139 = load i32, i32* %22, align 4
  %140 = add i32 2, %139
  %141 = load i32, i32* %21, align 4
  %142 = icmp ugt i32 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %138, %122
  br label %181

144:                                              ; preds = %138
  %145 = load i32*, i32** %18, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %20, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %20, align 8
  store i32 %147, i32* %148, align 4
  %150 = load i32, i32* %22, align 4
  %151 = load i32*, i32** %20, align 8
  %152 = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %152, i32** %20, align 8
  store i32 %150, i32* %151, align 4
  %153 = load i32*, i32** %20, align 8
  %154 = load i32*, i32** %18, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 2
  %156 = load i32, i32* %22, align 4
  %157 = call i32 @os_memcpy(i32* %153, i32* %155, i32 %156)
  %158 = load i32, i32* %22, align 4
  %159 = load i32*, i32** %20, align 8
  %160 = zext i32 %158 to i64
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  store i32* %161, i32** %20, align 8
  %162 = load i32, i32* %22, align 4
  %163 = add i32 2, %162
  %164 = load i32, i32* %21, align 4
  %165 = sub i32 %164, %163
  store i32 %165, i32* %21, align 4
  br label %166

166:                                              ; preds = %144, %115, %112
  %167 = load i32*, i32** %18, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  %169 = load i32, i32* %168, align 4
  %170 = add i32 2, %169
  %171 = zext i32 %170 to i64
  %172 = load i64, i64* %19, align 8
  %173 = sub i64 %172, %171
  store i64 %173, i64* %19, align 8
  %174 = load i32*, i32** %18, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  %176 = load i32, i32* %175, align 4
  %177 = add i32 2, %176
  %178 = load i32*, i32** %18, align 8
  %179 = zext i32 %177 to i64
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  store i32* %180, i32** %18, align 8
  br label %92

181:                                              ; preds = %143, %106
  %182 = load i64, i64* %19, align 8
  %183 = load i64*, i64** %16, align 8
  store i64 %182, i64* %183, align 8
  %184 = load i32*, i32** %18, align 8
  %185 = load i32**, i32*** %15, align 8
  store i32* %184, i32** %185, align 8
  %186 = load i32*, i32** %20, align 8
  %187 = load i32*, i32** %13, align 8
  %188 = ptrtoint i32* %186 to i64
  %189 = ptrtoint i32* %187 to i64
  %190 = sub i64 %188, %189
  %191 = sdiv exact i64 %190, 4
  %192 = sub nsw i64 %191, 2
  %193 = trunc i64 %192 to i32
  %194 = load i32*, i32** %13, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 1
  store i32 %193, i32* %195, align 4
  %196 = load i32*, i32** %20, align 8
  %197 = load i32*, i32** %13, align 8
  %198 = ptrtoint i32* %196 to i64
  %199 = ptrtoint i32* %197 to i64
  %200 = sub i64 %198, %199
  %201 = sdiv exact i64 %200, 4
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %9, align 4
  br label %203

203:                                              ; preds = %181, %50, %43, %35
  %204 = load i32, i32* %9, align 4
  ret i32 %204
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @WPA_PUT_LE64(i32*, i32) #1

declare dso_local i32 @WPA_PUT_LE16(i32*, i32) #1

declare dso_local i64 @bitfield_is_set(%struct.bitfield*, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

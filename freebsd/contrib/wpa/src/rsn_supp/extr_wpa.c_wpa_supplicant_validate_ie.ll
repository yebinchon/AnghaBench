; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_supplicant_validate_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_supplicant_validate_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i64, i64, i32, i64, i32*, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wpa_eapol_ie_parse = type { i64, i32, i32*, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"WPA: No WPA/RSN IE for this AP known. Trying to get from scan results\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"WPA: Could not find AP from the scan results\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"WPA: Found the current AP from updated scan results\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"IE in 3/4 msg does not match with IE in Beacon/ProbeResp (no IE?)\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"IE in 3/4 msg does not match with IE in Beacon/ProbeResp\00", align 1
@WPA_PROTO_WPA = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [108 x i8] c"Possible downgrade attack detected - RSN was enabled and RSN IE was in msg 3/4, but not in Beacon/ProbeResp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_sm*, i8*, %struct.wpa_eapol_ie_parse*)* @wpa_supplicant_validate_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_validate_ie(%struct.wpa_sm* %0, i8* %1, %struct.wpa_eapol_ie_parse* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wpa_eapol_ie_parse*, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.wpa_eapol_ie_parse* %2, %struct.wpa_eapol_ie_parse** %7, align 8
  %8 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %9 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %8, i32 0, i32 6
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %45

12:                                               ; preds = %3
  %13 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %14 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %45

17:                                               ; preds = %12
  %18 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %19 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %18, i32 0, i32 7
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = call i32 @wpa_dbg(i32 %22, i32 %23, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %26 = call i64 @wpa_sm_get_beacon_ie(%struct.wpa_sm* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %17
  %29 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %30 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %29, i32 0, i32 7
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MSG_WARNING, align 4
  %35 = call i32 @wpa_msg(i32 %33, i32 %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %44

36:                                               ; preds = %17
  %37 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %38 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %37, i32 0, i32 7
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MSG_DEBUG, align 4
  %43 = call i32 @wpa_msg(i32 %41, i32 %42, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %36, %28
  br label %45

45:                                               ; preds = %44, %12, %3
  %46 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %47 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %81

50:                                               ; preds = %45
  %51 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %52 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %81

55:                                               ; preds = %50
  %56 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %57 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %56, i32 0, i32 6
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %62 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %81

65:                                               ; preds = %60, %55
  %66 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %69 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %72 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %75 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %78 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @wpa_report_ie_mismatch(%struct.wpa_sm* %66, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i8* %67, i32* %70, i64 %73, i32* %76, i32 %79)
  store i32 -1, i32* %4, align 4
  br label %194

81:                                               ; preds = %60, %50, %45
  %82 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %83 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %111

86:                                               ; preds = %81
  %87 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %88 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %87, i32 0, i32 6
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %111

91:                                               ; preds = %86
  %92 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %93 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %96 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %94, %97
  br i1 %98, label %140, label %99

99:                                               ; preds = %91
  %100 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %101 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %104 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %103, i32 0, i32 6
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %107 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @os_memcmp(i32* %102, i32* %105, i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %140, label %111

111:                                              ; preds = %99, %86, %81
  %112 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %113 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %156

116:                                              ; preds = %111
  %117 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %118 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %117, i32 0, i32 4
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %156

121:                                              ; preds = %116
  %122 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %123 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @wpa_key_mgmt_ft(i32 %124)
  %126 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %127 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %130 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %133 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %136 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i64 @wpa_compare_rsn_ie(i64 %125, i32* %128, i32 %131, i32* %134, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %156

140:                                              ; preds = %121, %99, %91
  %141 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %142 = load i8*, i8** %6, align 8
  %143 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %144 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %147 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %150 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %153 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @wpa_report_ie_mismatch(%struct.wpa_sm* %141, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i8* %142, i32* %145, i64 %148, i32* %151, i32 %154)
  store i32 -1, i32* %4, align 4
  br label %194

156:                                              ; preds = %121, %116, %111
  %157 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %158 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @WPA_PROTO_WPA, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %193

162:                                              ; preds = %156
  %163 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %164 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %193

167:                                              ; preds = %162
  %168 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %169 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %168, i32 0, i32 4
  %170 = load i32*, i32** %169, align 8
  %171 = icmp eq i32* %170, null
  br i1 %171, label %172, label %193

172:                                              ; preds = %167
  %173 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %174 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %193

177:                                              ; preds = %172
  %178 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %179 = load i8*, i8** %6, align 8
  %180 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %181 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %180, i32 0, i32 3
  %182 = load i32*, i32** %181, align 8
  %183 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %184 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %187 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %190 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @wpa_report_ie_mismatch(%struct.wpa_sm* %178, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.5, i64 0, i64 0), i8* %179, i32* %182, i64 %185, i32* %188, i32 %191)
  store i32 -1, i32* %4, align 4
  br label %194

193:                                              ; preds = %172, %167, %162, %156
  store i32 0, i32* %4, align 4
  br label %194

194:                                              ; preds = %193, %177, %140, %65
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

declare dso_local i32 @wpa_dbg(i32, i32, i8*) #1

declare dso_local i64 @wpa_sm_get_beacon_ie(%struct.wpa_sm*) #1

declare dso_local i32 @wpa_msg(i32, i32, i8*) #1

declare dso_local i32 @wpa_report_ie_mismatch(%struct.wpa_sm*, i8*, i8*, i32*, i64, i32*, i32) #1

declare dso_local i64 @os_memcmp(i32*, i32*, i64) #1

declare dso_local i64 @wpa_compare_rsn_ie(i64, i32*, i32, i32*, i32) #1

declare dso_local i64 @wpa_key_mgmt_ft(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

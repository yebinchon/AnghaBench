; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_interworking_credentials_available_roaming_consortium.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_interworking_credentials_available_roaming_consortium.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_cred = type { i64, i64, i32, i32, %struct.wpa_cred* }
%struct.wpa_supplicant = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.wpa_cred* }
%struct.wpa_bss = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.wpabuf* }
%struct.wpabuf = type { i32 }

@WLAN_EID_ROAMING_CONSORTIUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpa_cred* (%struct.wpa_supplicant*, %struct.wpa_bss*, i32, i32*)* @interworking_credentials_available_roaming_consortium to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpa_cred* @interworking_credentials_available_roaming_consortium(%struct.wpa_supplicant* %0, %struct.wpa_bss* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.wpa_cred*, align 8
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca %struct.wpa_bss*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.wpa_cred*, align 8
  %11 = alloca %struct.wpa_cred*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.wpabuf*, align 8
  %14 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store %struct.wpa_bss* %1, %struct.wpa_bss** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.wpa_cred* null, %struct.wpa_cred** %11, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.wpa_bss*, %struct.wpa_bss** %7, align 8
  %16 = load i32, i32* @WLAN_EID_ROAMING_CONSORTIUM, align 4
  %17 = call i32* @wpa_bss_get_ie(%struct.wpa_bss* %15, i32 %16)
  store i32* %17, i32** %12, align 8
  %18 = load %struct.wpa_bss*, %struct.wpa_bss** %7, align 8
  %19 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load %struct.wpa_bss*, %struct.wpa_bss** %7, align 8
  %24 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  br label %29

28:                                               ; preds = %4
  br label %29

29:                                               ; preds = %28, %22
  %30 = phi %struct.wpabuf* [ %27, %22 ], [ null, %28 ]
  store %struct.wpabuf* %30, %struct.wpabuf** %13, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %35 = icmp ne %struct.wpabuf* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store %struct.wpa_cred* null, %struct.wpa_cred** %5, align 8
  br label %172

37:                                               ; preds = %33, %29
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %39 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.wpa_cred*, %struct.wpa_cred** %41, align 8
  %43 = icmp eq %struct.wpa_cred* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store %struct.wpa_cred* null, %struct.wpa_cred** %5, align 8
  br label %172

45:                                               ; preds = %37
  %46 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %47 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.wpa_cred*, %struct.wpa_cred** %49, align 8
  store %struct.wpa_cred* %50, %struct.wpa_cred** %10, align 8
  br label %51

51:                                               ; preds = %160, %45
  %52 = load %struct.wpa_cred*, %struct.wpa_cred** %10, align 8
  %53 = icmp ne %struct.wpa_cred* %52, null
  br i1 %53, label %54, label %164

54:                                               ; preds = %51
  %55 = load %struct.wpa_cred*, %struct.wpa_cred** %10, align 8
  %56 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.wpa_cred*, %struct.wpa_cred** %10, align 8
  %61 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %160

65:                                               ; preds = %59, %54
  %66 = load %struct.wpa_cred*, %struct.wpa_cred** %10, align 8
  %67 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  br label %160

71:                                               ; preds = %65
  %72 = load %struct.wpa_cred*, %struct.wpa_cred** %10, align 8
  %73 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %71
  %77 = load i32*, i32** %12, align 8
  %78 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %79 = load %struct.wpa_cred*, %struct.wpa_cred** %10, align 8
  %80 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.wpa_cred*, %struct.wpa_cred** %10, align 8
  %83 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @roaming_consortium_match(i32* %77, %struct.wpabuf* %78, i32 %81, i64 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %76, %71
  %88 = load i32*, i32** %12, align 8
  %89 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %90 = load %struct.wpa_cred*, %struct.wpa_cred** %10, align 8
  %91 = call i32 @cred_roaming_consortiums_match(i32* %88, %struct.wpabuf* %89, %struct.wpa_cred* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  br label %160

94:                                               ; preds = %87, %76
  %95 = load %struct.wpa_cred*, %struct.wpa_cred** %10, align 8
  %96 = load %struct.wpa_bss*, %struct.wpa_bss** %7, align 8
  %97 = call i64 @cred_no_required_oi_match(%struct.wpa_cred* %95, %struct.wpa_bss* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %160

100:                                              ; preds = %94
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %100
  %104 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %105 = load %struct.wpa_cred*, %struct.wpa_cred** %10, align 8
  %106 = load %struct.wpa_bss*, %struct.wpa_bss** %7, align 8
  %107 = call i64 @cred_below_min_backhaul(%struct.wpa_supplicant* %104, %struct.wpa_cred* %105, %struct.wpa_bss* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %160

110:                                              ; preds = %103, %100
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %110
  %114 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %115 = load %struct.wpa_cred*, %struct.wpa_cred** %10, align 8
  %116 = load %struct.wpa_bss*, %struct.wpa_bss** %7, align 8
  %117 = call i64 @cred_over_max_bss_load(%struct.wpa_supplicant* %114, %struct.wpa_cred* %115, %struct.wpa_bss* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %160

120:                                              ; preds = %113, %110
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %120
  %124 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %125 = load %struct.wpa_cred*, %struct.wpa_cred** %10, align 8
  %126 = load %struct.wpa_bss*, %struct.wpa_bss** %7, align 8
  %127 = call i64 @cred_conn_capab_missing(%struct.wpa_supplicant* %124, %struct.wpa_cred* %125, %struct.wpa_bss* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  br label %160

130:                                              ; preds = %123, %120
  %131 = load %struct.wpa_cred*, %struct.wpa_cred** %10, align 8
  %132 = load %struct.wpa_bss*, %struct.wpa_bss** %7, align 8
  %133 = call i64 @cred_excluded_ssid(%struct.wpa_cred* %131, %struct.wpa_bss* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %130
  %136 = load i32*, i32** %9, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  br label %160

139:                                              ; preds = %135
  %140 = load %struct.wpa_cred*, %struct.wpa_cred** %11, align 8
  %141 = icmp eq %struct.wpa_cred* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = load %struct.wpa_cred*, %struct.wpa_cred** %10, align 8
  store %struct.wpa_cred* %143, %struct.wpa_cred** %11, align 8
  store i32 1, i32* %14, align 4
  br label %144

144:                                              ; preds = %142, %139
  br label %159

145:                                              ; preds = %130
  %146 = load %struct.wpa_cred*, %struct.wpa_cred** %11, align 8
  %147 = icmp eq %struct.wpa_cred* %146, null
  br i1 %147, label %156, label %148

148:                                              ; preds = %145
  %149 = load i32, i32* %14, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %148
  %152 = load %struct.wpa_cred*, %struct.wpa_cred** %11, align 8
  %153 = load %struct.wpa_cred*, %struct.wpa_cred** %10, align 8
  %154 = call i64 @cred_prio_cmp(%struct.wpa_cred* %152, %struct.wpa_cred* %153)
  %155 = icmp slt i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %151, %148, %145
  %157 = load %struct.wpa_cred*, %struct.wpa_cred** %10, align 8
  store %struct.wpa_cred* %157, %struct.wpa_cred** %11, align 8
  store i32 0, i32* %14, align 4
  br label %158

158:                                              ; preds = %156, %151
  br label %159

159:                                              ; preds = %158, %144
  br label %160

160:                                              ; preds = %159, %138, %129, %119, %109, %99, %93, %70, %64
  %161 = load %struct.wpa_cred*, %struct.wpa_cred** %10, align 8
  %162 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %161, i32 0, i32 4
  %163 = load %struct.wpa_cred*, %struct.wpa_cred** %162, align 8
  store %struct.wpa_cred* %163, %struct.wpa_cred** %10, align 8
  br label %51

164:                                              ; preds = %51
  %165 = load i32*, i32** %9, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i32, i32* %14, align 4
  %169 = load i32*, i32** %9, align 8
  store i32 %168, i32* %169, align 4
  br label %170

170:                                              ; preds = %167, %164
  %171 = load %struct.wpa_cred*, %struct.wpa_cred** %11, align 8
  store %struct.wpa_cred* %171, %struct.wpa_cred** %5, align 8
  br label %172

172:                                              ; preds = %170, %44, %36
  %173 = load %struct.wpa_cred*, %struct.wpa_cred** %5, align 8
  ret %struct.wpa_cred* %173
}

declare dso_local i32* @wpa_bss_get_ie(%struct.wpa_bss*, i32) #1

declare dso_local i32 @roaming_consortium_match(i32*, %struct.wpabuf*, i32, i64) #1

declare dso_local i32 @cred_roaming_consortiums_match(i32*, %struct.wpabuf*, %struct.wpa_cred*) #1

declare dso_local i64 @cred_no_required_oi_match(%struct.wpa_cred*, %struct.wpa_bss*) #1

declare dso_local i64 @cred_below_min_backhaul(%struct.wpa_supplicant*, %struct.wpa_cred*, %struct.wpa_bss*) #1

declare dso_local i64 @cred_over_max_bss_load(%struct.wpa_supplicant*, %struct.wpa_cred*, %struct.wpa_bss*) #1

declare dso_local i64 @cred_conn_capab_missing(%struct.wpa_supplicant*, %struct.wpa_cred*, %struct.wpa_bss*) #1

declare dso_local i64 @cred_excluded_ssid(%struct.wpa_cred*, %struct.wpa_bss*) #1

declare dso_local i64 @cred_prio_cmp(%struct.wpa_cred*, %struct.wpa_cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

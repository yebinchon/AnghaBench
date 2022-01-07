; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_full.c_vlan_newlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_full.c_vlan_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, %struct.hostapd_vlan* }
%struct.hostapd_vlan = type { i32, i32, %struct.TYPE_3__, i32, %struct.hostapd_vlan* }
%struct.TYPE_3__ = type { i32, i32, i32* }

@IFNAMSIZ = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"VLAN: vlan_newlink(%s)\00", align 1
@DVLAN_CLEAN_WLAN_PORT = common dso_local global i32 0, align 4
@MAX_VLAN_ID = common dso_local global i32 0, align 4
@MAX_NUM_TAGGED_VLAN = common dso_local global i32 0, align 4
@DYNAMIC_VLAN_NAMING_WITH_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlan_newlink(i8* %0, %struct.hostapd_data* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hostapd_vlan*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.hostapd_data* %1, %struct.hostapd_data** %4, align 8
  %13 = load i32, i32* @IFNAMSIZ, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @wpa_printf(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %21 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %23, align 8
  store %struct.hostapd_vlan* %24, %struct.hostapd_vlan** %7, align 8
  br label %25

25:                                               ; preds = %42, %2
  %26 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %27 = icmp ne %struct.hostapd_vlan* %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %30 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = load i8*, i8** %3, align 8
  %35 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %36 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @os_strcmp(i8* %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33, %28
  br label %42

41:                                               ; preds = %33
  br label %46

42:                                               ; preds = %40
  %43 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %44 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %43, i32 0, i32 4
  %45 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %44, align 8
  store %struct.hostapd_vlan* %45, %struct.hostapd_vlan** %7, align 8
  br label %25

46:                                               ; preds = %41, %25
  %47 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %48 = icmp ne %struct.hostapd_vlan* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  store i32 1, i32* %12, align 4
  br label %204

50:                                               ; preds = %46
  %51 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %52 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %54 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %11, align 4
  %57 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %58 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %8, align 4
  %61 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %62 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %9, align 8
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %93, label %67

67:                                               ; preds = %50
  %68 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %69 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %67
  %78 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %79 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i8*, i8** %3, align 8
  %84 = call i32 @br_addif(i8* %82, i8* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %77
  %87 = load i32, i32* @DVLAN_CLEAN_WLAN_PORT, align 4
  %88 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %89 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %86, %77, %67
  br label %119

93:                                               ; preds = %50
  %94 = load i32, i32* %8, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %118

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @MAX_VLAN_ID, align 4
  %99 = icmp sle i32 %97, %98
  br i1 %99, label %100, label %118

100:                                              ; preds = %96
  %101 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %102 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @vlan_bridge_name(i8* %16, %struct.hostapd_data* %101, %struct.hostapd_vlan* %102, i32 %103)
  %105 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @vlan_get_bridge(i8* %16, %struct.hostapd_data* %105, i32 %106)
  %108 = load i8*, i8** %3, align 8
  %109 = call i32 @br_addif(i8* %16, i8* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %100
  %112 = load i32, i32* @DVLAN_CLEAN_WLAN_PORT, align 4
  %113 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %114 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %111, %100
  br label %118

118:                                              ; preds = %117, %96, %93
  br label %119

119:                                              ; preds = %118, %92
  store i32 0, i32* %10, align 4
  br label %120

120:                                              ; preds = %198, %119
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @MAX_NUM_TAGGED_VLAN, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %120
  %125 = load i32*, i32** %9, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br label %131

131:                                              ; preds = %124, %120
  %132 = phi i1 [ false, %120 ], [ %130, %124 ]
  br i1 %132, label %133, label %201

133:                                              ; preds = %131
  %134 = load i32*, i32** %9, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %172, label %141

141:                                              ; preds = %133
  %142 = load i32*, i32** %9, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = icmp sle i32 %146, 0
  br i1 %147, label %172, label %148

148:                                              ; preds = %141
  %149 = load i32*, i32** %9, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @MAX_VLAN_ID, align 4
  %155 = icmp sgt i32 %153, %154
  br i1 %155, label %172, label %156

156:                                              ; preds = %148
  %157 = load i32, i32* %10, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %173

159:                                              ; preds = %156
  %160 = load i32*, i32** %9, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %9, align 8
  %166 = load i32, i32* %10, align 4
  %167 = sub nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 %164, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %159, %148, %141, %133
  br label %198

173:                                              ; preds = %159, %156
  %174 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %175 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %7, align 8
  %176 = load i32*, i32** %9, align 8
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @vlan_bridge_name(i8* %16, %struct.hostapd_data* %174, %struct.hostapd_vlan* %175, i32 %180)
  %182 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %183 = load i32*, i32** %9, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @vlan_get_bridge(i8* %16, %struct.hostapd_data* %182, i32 %187)
  %189 = load i32, i32* @DYNAMIC_VLAN_NAMING_WITH_DEVICE, align 4
  %190 = load i8*, i8** %3, align 8
  %191 = load i32*, i32** %9, align 8
  %192 = load i32, i32* %10, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %197 = call i32 @vlan_newlink_tagged(i32 %189, i8* %190, i8* %16, i32 %195, %struct.hostapd_data* %196)
  br label %198

198:                                              ; preds = %173, %172
  %199 = load i32, i32* %10, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %10, align 4
  br label %120

201:                                              ; preds = %131
  %202 = load i8*, i8** %3, align 8
  %203 = call i32 @ifconfig_up(i8* %202)
  store i32 0, i32* %12, align 4
  br label %204

204:                                              ; preds = %201, %49
  %205 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %205)
  %206 = load i32, i32* %12, align 4
  switch i32 %206, label %208 [
    i32 0, label %207
    i32 1, label %207
  ]

207:                                              ; preds = %204, %204
  ret void

208:                                              ; preds = %204
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #2

declare dso_local i64 @os_strcmp(i8*, i32) #2

declare dso_local i32 @br_addif(i8*, i8*) #2

declare dso_local i32 @vlan_bridge_name(i8*, %struct.hostapd_data*, %struct.hostapd_vlan*, i32) #2

declare dso_local i32 @vlan_get_bridge(i8*, %struct.hostapd_data*, i32) #2

declare dso_local i32 @vlan_newlink_tagged(i32, i8*, i8*, i32, %struct.hostapd_data*) #2

declare dso_local i32 @ifconfig_up(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

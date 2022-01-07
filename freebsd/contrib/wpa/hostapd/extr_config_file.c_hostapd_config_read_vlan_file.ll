; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_config_file.c_hostapd_config_read_vlan_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_config_file.c_hostapd_config_read_vlan_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_bss_config = type { %struct.hostapd_vlan* }
%struct.hostapd_vlan = type { i32, %struct.hostapd_vlan*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"VLAN file '%s' not readable.\00", align 1
@VLAN_ID_WILDCARD = common dso_local global i32 0, align 4
@MAX_VLAN_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Invalid VLAN ID at line %d in '%s'\00", align 1
@IFNAMSIZ = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"Invalid VLAN ifname at line %d in '%s'\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Out of memory while reading VLAN interfaces from '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_bss_config*, i8*)* @hostapd_config_read_vlan_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_config_read_vlan_file(%struct.hostapd_bss_config* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_bss_config*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hostapd_vlan*, align 8
  store %struct.hostapd_bss_config* %0, %struct.hostapd_bss_config** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %11, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @MSG_ERROR, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  store i32 -1, i32* %3, align 4
  br label %238

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %201, %58, %35, %22
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %25 = load i32*, i32** %6, align 8
  %26 = call i64 @fgets(i8* %24, i32 128, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %235

28:                                               ; preds = %23
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %11, align 4
  %31 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %32 = load i8, i8* %31, align 16
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 35
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %23

36:                                               ; preds = %28
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  store i8* %37, i8** %8, align 8
  br label %38

38:                                               ; preds = %50, %36
  %39 = load i8*, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load i8*, i8** %8, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 10
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i8*, i8** %8, align 8
  store i8 0, i8* %49, align 1
  br label %53

50:                                               ; preds = %43
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %8, align 8
  br label %38

53:                                               ; preds = %48, %38
  %54 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %55 = load i8, i8* %54, align 16
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %23

59:                                               ; preds = %53
  %60 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %61 = load i8, i8* %60, align 16
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 42
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @VLAN_ID_WILDCARD, align 4
  store i32 %65, i32* %12, align 4
  %66 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  store i8* %67, i8** %8, align 8
  br label %89

68:                                               ; preds = %59
  %69 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %70 = call i32 @strtol(i8* %69, i8** %8, i32 10)
  store i32 %70, i32* %12, align 4
  %71 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %72 = load i8*, i8** %8, align 8
  %73 = icmp eq i8* %71, %72
  br i1 %73, label %81, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %75, 1
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @MAX_VLAN_ID, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %77, %74, %68
  %82 = load i32, i32* @MSG_ERROR, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 (i32, i8*, ...) @wpa_printf(i32 %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %83, i8* %84)
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @fclose(i32* %86)
  store i32 -1, i32* %3, align 4
  br label %238

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88, %64
  br label %90

90:                                               ; preds = %102, %89
  %91 = load i8*, i8** %8, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 32
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load i8*, i8** %8, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 9
  br label %100

100:                                              ; preds = %95, %90
  %101 = phi i1 [ true, %90 ], [ %99, %95 ]
  br i1 %101, label %102, label %105

102:                                              ; preds = %100
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %8, align 8
  br label %90

105:                                              ; preds = %100
  %106 = load i8*, i8** %8, align 8
  store i8* %106, i8** %9, align 8
  br label %107

107:                                              ; preds = %124, %105
  %108 = load i8*, i8** %9, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 32
  br i1 %111, label %112, label %122

112:                                              ; preds = %107
  %113 = load i8*, i8** %9, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 9
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load i8*, i8** %9, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp ne i32 %120, 0
  br label %122

122:                                              ; preds = %117, %112, %107
  %123 = phi i1 [ false, %112 ], [ false, %107 ], [ %121, %117 ]
  br i1 %123, label %124, label %127

124:                                              ; preds = %122
  %125 = load i8*, i8** %9, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %9, align 8
  br label %107

127:                                              ; preds = %122
  %128 = load i8*, i8** %9, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i8*, i8** %9, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %9, align 8
  store i8 0, i8* %133, align 1
  br label %135

135:                                              ; preds = %132, %127
  %136 = load i8*, i8** %8, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %135
  %141 = load i8*, i8** %8, align 8
  %142 = call i64 @os_strlen(i8* %141)
  %143 = load i64, i64* @IFNAMSIZ, align 8
  %144 = icmp sgt i64 %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %140, %135
  %146 = load i32, i32* @MSG_ERROR, align 4
  %147 = load i32, i32* %11, align 4
  %148 = load i8*, i8** %5, align 8
  %149 = call i32 (i32, i8*, ...) @wpa_printf(i32 %146, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %147, i8* %148)
  %150 = load i32*, i32** %6, align 8
  %151 = call i32 @fclose(i32* %150)
  store i32 -1, i32* %3, align 4
  br label %238

152:                                              ; preds = %140
  br label %153

153:                                              ; preds = %165, %152
  %154 = load i8*, i8** %9, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 32
  br i1 %157, label %163, label %158

158:                                              ; preds = %153
  %159 = load i8*, i8** %9, align 8
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 9
  br label %163

163:                                              ; preds = %158, %153
  %164 = phi i1 [ true, %153 ], [ %162, %158 ]
  br i1 %164, label %165, label %168

165:                                              ; preds = %163
  %166 = load i8*, i8** %9, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %9, align 8
  br label %153

168:                                              ; preds = %163
  %169 = load i8*, i8** %9, align 8
  store i8* %169, i8** %10, align 8
  br label %170

170:                                              ; preds = %187, %168
  %171 = load i8*, i8** %10, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp ne i32 %173, 32
  br i1 %174, label %175, label %185

175:                                              ; preds = %170
  %176 = load i8*, i8** %10, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp ne i32 %178, 9
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = load i8*, i8** %10, align 8
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp ne i32 %183, 0
  br label %185

185:                                              ; preds = %180, %175, %170
  %186 = phi i1 [ false, %175 ], [ false, %170 ], [ %184, %180 ]
  br i1 %186, label %187, label %190

187:                                              ; preds = %185
  %188 = load i8*, i8** %10, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %10, align 8
  br label %170

190:                                              ; preds = %185
  %191 = load i8*, i8** %10, align 8
  store i8 0, i8* %191, align 1
  %192 = call %struct.hostapd_vlan* @os_zalloc(i32 32)
  store %struct.hostapd_vlan* %192, %struct.hostapd_vlan** %13, align 8
  %193 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %13, align 8
  %194 = icmp eq %struct.hostapd_vlan* %193, null
  br i1 %194, label %195, label %201

195:                                              ; preds = %190
  %196 = load i32, i32* @MSG_ERROR, align 4
  %197 = load i8*, i8** %5, align 8
  %198 = call i32 (i32, i8*, ...) @wpa_printf(i32 %196, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i8* %197)
  %199 = load i32*, i32** %6, align 8
  %200 = call i32 @fclose(i32* %199)
  store i32 -1, i32* %3, align 4
  br label %238

201:                                              ; preds = %190
  %202 = load i32, i32* %12, align 4
  %203 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %13, align 8
  %204 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 8
  %205 = load i32, i32* %12, align 4
  %206 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %13, align 8
  %207 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 0
  store i32 %205, i32* %208, align 8
  %209 = load i32, i32* %12, align 4
  %210 = icmp ne i32 %209, 0
  %211 = xor i1 %210, true
  %212 = xor i1 %211, true
  %213 = zext i1 %212 to i32
  %214 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %13, align 8
  %215 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %214, i32 0, i32 4
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 1
  store i32 %213, i32* %216, align 4
  %217 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %13, align 8
  %218 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = load i8*, i8** %8, align 8
  %221 = call i32 @os_strlcpy(i32 %219, i8* %220, i32 4)
  %222 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %13, align 8
  %223 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = load i8*, i8** %9, align 8
  %226 = call i32 @os_strlcpy(i32 %224, i8* %225, i32 4)
  %227 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %4, align 8
  %228 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %227, i32 0, i32 0
  %229 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %228, align 8
  %230 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %13, align 8
  %231 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %230, i32 0, i32 1
  store %struct.hostapd_vlan* %229, %struct.hostapd_vlan** %231, align 8
  %232 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %13, align 8
  %233 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %4, align 8
  %234 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %233, i32 0, i32 0
  store %struct.hostapd_vlan* %232, %struct.hostapd_vlan** %234, align 8
  br label %23

235:                                              ; preds = %23
  %236 = load i32*, i32** %6, align 8
  %237 = call i32 @fclose(i32* %236)
  store i32 0, i32* %3, align 4
  br label %238

238:                                              ; preds = %235, %195, %145, %81, %18
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local %struct.hostapd_vlan* @os_zalloc(i32) #1

declare dso_local i32 @os_strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

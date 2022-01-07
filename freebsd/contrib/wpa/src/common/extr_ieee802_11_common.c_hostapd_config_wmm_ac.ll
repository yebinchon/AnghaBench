; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_hostapd_config_wmm_ac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_hostapd_config_wmm_ac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_wmm_ac_params = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"be_\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bk_\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"vi_\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"vo_\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Unknown WMM name '%s'\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"aifs\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Invalid AIFS value %d\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"cwmin\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Invalid cwMin value %d\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"cwmax\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Invalid cwMax value %d\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"txop_limit\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"Invalid txop value %d\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"acm\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Invalid acm value %d\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Unknown wmm_ac_ field '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_config_wmm_ac(%struct.hostapd_wmm_ac_params* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_wmm_ac_params*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.hostapd_wmm_ac_params*, align 8
  store %struct.hostapd_wmm_ac_params* %0, %struct.hostapd_wmm_ac_params** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 7
  store i8* %13, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = call i64 @os_strncmp(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 3
  store i8* %19, i8** %10, align 8
  br label %48

20:                                               ; preds = %3
  %21 = load i8*, i8** %10, align 8
  %22 = call i64 @os_strncmp(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  store i32 1, i32* %8, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 3
  store i8* %26, i8** %10, align 8
  br label %47

27:                                               ; preds = %20
  %28 = load i8*, i8** %10, align 8
  %29 = call i64 @os_strncmp(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  store i32 2, i32* %8, align 4
  %32 = load i8*, i8** %10, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 3
  store i8* %33, i8** %10, align 8
  br label %46

34:                                               ; preds = %27
  %35 = load i8*, i8** %10, align 8
  %36 = call i64 @os_strncmp(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  store i32 3, i32* %8, align 4
  %39 = load i8*, i8** %10, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 3
  store i8* %40, i8** %10, align 8
  br label %45

41:                                               ; preds = %34
  %42 = load i32, i32* @MSG_ERROR, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 (i32, i8*, ...) @wpa_printf(i32 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %43)
  store i32 -1, i32* %4, align 4
  br label %161

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %31
  br label %47

47:                                               ; preds = %46, %24
  br label %48

48:                                               ; preds = %47, %17
  %49 = load %struct.hostapd_wmm_ac_params*, %struct.hostapd_wmm_ac_params** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.hostapd_wmm_ac_params, %struct.hostapd_wmm_ac_params* %49, i64 %51
  store %struct.hostapd_wmm_ac_params* %52, %struct.hostapd_wmm_ac_params** %11, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = call i64 @os_strcmp(i8* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %48
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @atoi(i8* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 1
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %9, align 4
  %63 = icmp sgt i32 %62, 255
  br i1 %63, label %64, label %68

64:                                               ; preds = %61, %56
  %65 = load i32, i32* @MSG_ERROR, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 (i32, i8*, ...) @wpa_printf(i32 %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %66)
  store i32 -1, i32* %4, align 4
  br label %161

68:                                               ; preds = %61
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.hostapd_wmm_ac_params*, %struct.hostapd_wmm_ac_params** %11, align 8
  %71 = getelementptr inbounds %struct.hostapd_wmm_ac_params, %struct.hostapd_wmm_ac_params* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %160

72:                                               ; preds = %48
  %73 = load i8*, i8** %10, align 8
  %74 = call i64 @os_strcmp(i8* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %72
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 @atoi(i8* %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %9, align 4
  %83 = icmp sgt i32 %82, 15
  br i1 %83, label %84, label %88

84:                                               ; preds = %81, %76
  %85 = load i32, i32* @MSG_ERROR, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 (i32, i8*, ...) @wpa_printf(i32 %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %86)
  store i32 -1, i32* %4, align 4
  br label %161

88:                                               ; preds = %81
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.hostapd_wmm_ac_params*, %struct.hostapd_wmm_ac_params** %11, align 8
  %91 = getelementptr inbounds %struct.hostapd_wmm_ac_params, %struct.hostapd_wmm_ac_params* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  br label %159

92:                                               ; preds = %72
  %93 = load i8*, i8** %10, align 8
  %94 = call i64 @os_strcmp(i8* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %92
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 @atoi(i8* %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %9, align 4
  %103 = icmp sgt i32 %102, 15
  br i1 %103, label %104, label %108

104:                                              ; preds = %101, %96
  %105 = load i32, i32* @MSG_ERROR, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 (i32, i8*, ...) @wpa_printf(i32 %105, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %106)
  store i32 -1, i32* %4, align 4
  br label %161

108:                                              ; preds = %101
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.hostapd_wmm_ac_params*, %struct.hostapd_wmm_ac_params** %11, align 8
  %111 = getelementptr inbounds %struct.hostapd_wmm_ac_params, %struct.hostapd_wmm_ac_params* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  br label %158

112:                                              ; preds = %92
  %113 = load i8*, i8** %10, align 8
  %114 = call i64 @os_strcmp(i8* %113, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %112
  %117 = load i8*, i8** %7, align 8
  %118 = call i32 @atoi(i8* %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %116
  %122 = load i32, i32* %9, align 4
  %123 = icmp sgt i32 %122, 65535
  br i1 %123, label %124, label %128

124:                                              ; preds = %121, %116
  %125 = load i32, i32* @MSG_ERROR, align 4
  %126 = load i32, i32* %9, align 4
  %127 = call i32 (i32, i8*, ...) @wpa_printf(i32 %125, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 %126)
  store i32 -1, i32* %4, align 4
  br label %161

128:                                              ; preds = %121
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.hostapd_wmm_ac_params*, %struct.hostapd_wmm_ac_params** %11, align 8
  %131 = getelementptr inbounds %struct.hostapd_wmm_ac_params, %struct.hostapd_wmm_ac_params* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  br label %157

132:                                              ; preds = %112
  %133 = load i8*, i8** %10, align 8
  %134 = call i64 @os_strcmp(i8* %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %152

136:                                              ; preds = %132
  %137 = load i8*, i8** %7, align 8
  %138 = call i32 @atoi(i8* %137)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %136
  %142 = load i32, i32* %9, align 4
  %143 = icmp sgt i32 %142, 1
  br i1 %143, label %144, label %148

144:                                              ; preds = %141, %136
  %145 = load i32, i32* @MSG_ERROR, align 4
  %146 = load i32, i32* %9, align 4
  %147 = call i32 (i32, i8*, ...) @wpa_printf(i32 %145, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 %146)
  store i32 -1, i32* %4, align 4
  br label %161

148:                                              ; preds = %141
  %149 = load i32, i32* %9, align 4
  %150 = load %struct.hostapd_wmm_ac_params*, %struct.hostapd_wmm_ac_params** %11, align 8
  %151 = getelementptr inbounds %struct.hostapd_wmm_ac_params, %struct.hostapd_wmm_ac_params* %150, i32 0, i32 4
  store i32 %149, i32* %151, align 4
  br label %156

152:                                              ; preds = %132
  %153 = load i32, i32* @MSG_ERROR, align 4
  %154 = load i8*, i8** %10, align 8
  %155 = call i32 (i32, i8*, ...) @wpa_printf(i32 %153, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i8* %154)
  store i32 -1, i32* %4, align 4
  br label %161

156:                                              ; preds = %148
  br label %157

157:                                              ; preds = %156, %128
  br label %158

158:                                              ; preds = %157, %108
  br label %159

159:                                              ; preds = %158, %88
  br label %160

160:                                              ; preds = %159, %68
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %160, %152, %144, %124, %104, %84, %64, %41
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

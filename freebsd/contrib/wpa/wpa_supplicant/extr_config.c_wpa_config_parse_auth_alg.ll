; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_parse_auth_alg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_parse_auth_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_data = type { i32 }
%struct.wpa_ssid = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"OPEN\00", align 1
@WPA_AUTH_ALG_OPEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"SHARED\00", align 1
@WPA_AUTH_ALG_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"LEAP\00", align 1
@WPA_AUTH_ALG_LEAP = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Line %d: invalid auth_alg '%s'\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Line %d: no auth_alg values configured.\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"auth_alg: 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse_data*, %struct.wpa_ssid*, i32, i8*)* @wpa_config_parse_auth_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_config_parse_auth_alg(%struct.parse_data* %0, %struct.wpa_ssid* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.parse_data*, align 8
  %7 = alloca %struct.wpa_ssid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.parse_data* %0, %struct.parse_data** %6, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = call i8* @os_strdup(i8* %16)
  store i8* %17, i8** %15, align 8
  %18 = load i8*, i8** %15, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %150

21:                                               ; preds = %4
  %22 = load i8*, i8** %15, align 8
  store i8* %22, i8** %13, align 8
  br label %23

23:                                               ; preds = %115, %21
  %24 = load i8*, i8** %13, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %118

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %41, %28
  %30 = load i8*, i8** %13, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 32
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i8*, i8** %13, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 9
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi i1 [ true, %29 ], [ %38, %34 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i8*, i8** %13, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %13, align 8
  br label %29

44:                                               ; preds = %39
  %45 = load i8*, i8** %13, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %118

50:                                               ; preds = %44
  %51 = load i8*, i8** %13, align 8
  store i8* %51, i8** %14, align 8
  br label %52

52:                                               ; preds = %69, %50
  %53 = load i8*, i8** %14, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 32
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load i8*, i8** %14, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 9
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i8*, i8** %14, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br label %67

67:                                               ; preds = %62, %57, %52
  %68 = phi i1 [ false, %57 ], [ false, %52 ], [ %66, %62 ]
  br i1 %68, label %69, label %72

69:                                               ; preds = %67
  %70 = load i8*, i8** %14, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %14, align 8
  br label %52

72:                                               ; preds = %67
  %73 = load i8*, i8** %14, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 0
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %11, align 4
  %78 = load i8*, i8** %14, align 8
  store i8 0, i8* %78, align 1
  %79 = load i8*, i8** %13, align 8
  %80 = call i64 @os_strcmp(i8* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %72
  %83 = load i32, i32* @WPA_AUTH_ALG_OPEN, align 4
  %84 = load i32, i32* %10, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %10, align 4
  br label %111

86:                                               ; preds = %72
  %87 = load i8*, i8** %13, align 8
  %88 = call i64 @os_strcmp(i8* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i32, i32* @WPA_AUTH_ALG_SHARED, align 4
  %92 = load i32, i32* %10, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %10, align 4
  br label %110

94:                                               ; preds = %86
  %95 = load i8*, i8** %13, align 8
  %96 = call i64 @os_strcmp(i8* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i32, i32* @WPA_AUTH_ALG_LEAP, align 4
  %100 = load i32, i32* %10, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %10, align 4
  br label %109

102:                                              ; preds = %94
  %103 = load i32, i32* @MSG_ERROR, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i8*, i8** %13, align 8
  %106 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %104, i8* %105)
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %102, %98
  br label %110

110:                                              ; preds = %109, %90
  br label %111

111:                                              ; preds = %110, %82
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  br label %118

115:                                              ; preds = %111
  %116 = load i8*, i8** %14, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 1
  store i8* %117, i8** %13, align 8
  br label %23

118:                                              ; preds = %114, %49, %23
  %119 = load i8*, i8** %15, align 8
  %120 = call i32 @os_free(i8* %119)
  %121 = load i32, i32* %10, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load i32, i32* @MSG_ERROR, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %124, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %12, align 4
  br label %129

129:                                              ; preds = %123, %118
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %129
  %133 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %134 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  store i32 1, i32* %5, align 4
  br label %150

139:                                              ; preds = %132, %129
  %140 = load i32, i32* @MSG_MSGDUMP, align 4
  %141 = load i32, i32* %10, align 4
  %142 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %140, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %145 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* %12, align 4
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i32 -1, i32 0
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %139, %138, %20
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local i8* @os_strdup(i8*) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

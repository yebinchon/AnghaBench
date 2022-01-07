; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_parse_proto.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_parse_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_data = type { i32 }
%struct.wpa_ssid = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"WPA\00", align 1
@WPA_PROTO_WPA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"RSN\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"WPA2\00", align 1
@WPA_PROTO_RSN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"OSEN\00", align 1
@WPA_PROTO_OSEN = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Line %d: invalid proto '%s'\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Line %d: no proto values configured.\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"proto: 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse_data*, %struct.wpa_ssid*, i32, i8*)* @wpa_config_parse_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_config_parse_proto(%struct.parse_data* %0, %struct.wpa_ssid* %1, i32 %2, i8* %3) #0 {
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
  br label %154

21:                                               ; preds = %4
  %22 = load i8*, i8** %15, align 8
  store i8* %22, i8** %13, align 8
  br label %23

23:                                               ; preds = %119, %21
  %24 = load i8*, i8** %13, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %122

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
  br label %122

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
  %80 = call i64 @os_strcmp(i8* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %72
  %83 = load i32, i32* @WPA_PROTO_WPA, align 4
  %84 = load i32, i32* %10, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %10, align 4
  br label %115

86:                                               ; preds = %72
  %87 = load i8*, i8** %13, align 8
  %88 = call i64 @os_strcmp(i8* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i8*, i8** %13, align 8
  %92 = call i64 @os_strcmp(i8* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90, %86
  %95 = load i32, i32* @WPA_PROTO_RSN, align 4
  %96 = load i32, i32* %10, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %10, align 4
  br label %114

98:                                               ; preds = %90
  %99 = load i8*, i8** %13, align 8
  %100 = call i64 @os_strcmp(i8* %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i32, i32* @WPA_PROTO_OSEN, align 4
  %104 = load i32, i32* %10, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %10, align 4
  br label %113

106:                                              ; preds = %98
  %107 = load i32, i32* @MSG_ERROR, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i8*, i8** %13, align 8
  %110 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %108, i8* %109)
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %106, %102
  br label %114

114:                                              ; preds = %113, %94
  br label %115

115:                                              ; preds = %114, %82
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  br label %122

119:                                              ; preds = %115
  %120 = load i8*, i8** %14, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  store i8* %121, i8** %13, align 8
  br label %23

122:                                              ; preds = %118, %49, %23
  %123 = load i8*, i8** %15, align 8
  %124 = call i32 @os_free(i8* %123)
  %125 = load i32, i32* %10, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load i32, i32* @MSG_ERROR, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %128, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %12, align 4
  br label %133

133:                                              ; preds = %127, %122
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %143, label %136

136:                                              ; preds = %133
  %137 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %138 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  store i32 1, i32* %5, align 4
  br label %154

143:                                              ; preds = %136, %133
  %144 = load i32, i32* @MSG_MSGDUMP, align 4
  %145 = load i32, i32* %10, align 4
  %146 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %144, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %149 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* %12, align 4
  %151 = icmp ne i32 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i32 -1, i32 0
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %143, %142, %20
  %155 = load i32, i32* %5, align 4
  ret i32 %155
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

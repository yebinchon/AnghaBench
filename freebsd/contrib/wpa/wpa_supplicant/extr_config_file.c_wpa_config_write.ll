; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config_file.c_wpa_config_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config_file.c_wpa_config_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_config = type { %struct.wpa_config_blob*, %struct.wpa_ssid*, %struct.wpa_cred* }
%struct.wpa_config_blob = type { %struct.wpa_config_blob* }
%struct.wpa_ssid = type { i64, i32, i32, i64, %struct.wpa_ssid* }
%struct.wpa_cred = type { i64, %struct.wpa_cred* }

@.str = private unnamed_addr constant [7 x i8] c"%s.tmp\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Writing configuration file '%s'\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to open '%s' for writing\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"\0Acred={\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@WPA_KEY_MGMT_WPS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"\0Anetwork={\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Configuration file '%s' written %ssuccessfully\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@S_IRGRP = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_config_write(i8* %0, %struct.wpa_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wpa_config*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.wpa_ssid*, align 8
  %8 = alloca %struct.wpa_cred*, align 8
  %9 = alloca %struct.wpa_config_blob*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.wpa_config* %1, %struct.wpa_config** %5, align 8
  store i32 0, i32* %10, align 4
  %15 = load i8*, i8** %4, align 8
  store i8* %15, i8** %11, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @os_strlen(i8* %16)
  %18 = add nsw i32 %17, 5
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = call i8* @os_malloc(i32 %19)
  store i8* %20, i8** %13, align 8
  %21 = load i8*, i8** %13, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i8*, i8** %13, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @os_snprintf(i8* %24, i32 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i8*, i8** %13, align 8
  store i8* %28, i8** %4, align 8
  br label %29

29:                                               ; preds = %23, %2
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = load i8*, i8** %4, align 8
  %34 = call i32* @fopen(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  %41 = load i8*, i8** %13, align 8
  %42 = call i32 @os_free(i8* %41)
  store i32 -1, i32* %3, align 4
  br label %166

43:                                               ; preds = %29
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.wpa_config*, %struct.wpa_config** %5, align 8
  %46 = call i32 @wpa_config_write_global(i32* %44, %struct.wpa_config* %45)
  %47 = load %struct.wpa_config*, %struct.wpa_config** %5, align 8
  %48 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %47, i32 0, i32 2
  %49 = load %struct.wpa_cred*, %struct.wpa_cred** %48, align 8
  store %struct.wpa_cred* %49, %struct.wpa_cred** %8, align 8
  br label %50

50:                                               ; preds = %67, %43
  %51 = load %struct.wpa_cred*, %struct.wpa_cred** %8, align 8
  %52 = icmp ne %struct.wpa_cred* %51, null
  br i1 %52, label %53, label %71

53:                                               ; preds = %50
  %54 = load %struct.wpa_cred*, %struct.wpa_cred** %8, align 8
  %55 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %67

59:                                               ; preds = %53
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @fprintf(i32* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %62 = load i32*, i32** %6, align 8
  %63 = load %struct.wpa_cred*, %struct.wpa_cred** %8, align 8
  %64 = call i32 @wpa_config_write_cred(i32* %62, %struct.wpa_cred* %63)
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @fprintf(i32* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %67

67:                                               ; preds = %59, %58
  %68 = load %struct.wpa_cred*, %struct.wpa_cred** %8, align 8
  %69 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %68, i32 0, i32 1
  %70 = load %struct.wpa_cred*, %struct.wpa_cred** %69, align 8
  store %struct.wpa_cred* %70, %struct.wpa_cred** %8, align 8
  br label %50

71:                                               ; preds = %50
  %72 = load %struct.wpa_config*, %struct.wpa_config** %5, align 8
  %73 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %72, i32 0, i32 1
  %74 = load %struct.wpa_ssid*, %struct.wpa_ssid** %73, align 8
  store %struct.wpa_ssid* %74, %struct.wpa_ssid** %7, align 8
  br label %75

75:                                               ; preds = %115, %71
  %76 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %77 = icmp ne %struct.wpa_ssid* %76, null
  br i1 %77, label %78, label %119

78:                                               ; preds = %75
  %79 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %80 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @WPA_KEY_MGMT_WPS, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %89, label %84

84:                                               ; preds = %78
  %85 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %86 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84, %78
  br label %115

90:                                               ; preds = %84
  %91 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %92 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @wpa_key_mgmt_wpa_psk(i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %90
  %97 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %98 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %96
  %102 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %103 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %101
  br label %115

107:                                              ; preds = %101, %96, %90
  %108 = load i32*, i32** %6, align 8
  %109 = call i32 @fprintf(i32* %108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %110 = load i32*, i32** %6, align 8
  %111 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %112 = call i32 @wpa_config_write_network(i32* %110, %struct.wpa_ssid* %111)
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @fprintf(i32* %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %115

115:                                              ; preds = %107, %106, %89
  %116 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %117 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %116, i32 0, i32 4
  %118 = load %struct.wpa_ssid*, %struct.wpa_ssid** %117, align 8
  store %struct.wpa_ssid* %118, %struct.wpa_ssid** %7, align 8
  br label %75

119:                                              ; preds = %75
  %120 = load %struct.wpa_config*, %struct.wpa_config** %5, align 8
  %121 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %120, i32 0, i32 0
  %122 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %121, align 8
  store %struct.wpa_config_blob* %122, %struct.wpa_config_blob** %9, align 8
  br label %123

123:                                              ; preds = %134, %119
  %124 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %9, align 8
  %125 = icmp ne %struct.wpa_config_blob* %124, null
  br i1 %125, label %126, label %138

126:                                              ; preds = %123
  %127 = load i32*, i32** %6, align 8
  %128 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %9, align 8
  %129 = call i32 @wpa_config_write_blob(i32* %127, %struct.wpa_config_blob* %128)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  br label %138

133:                                              ; preds = %126
  br label %134

134:                                              ; preds = %133
  %135 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %9, align 8
  %136 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %135, i32 0, i32 0
  %137 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %136, align 8
  store %struct.wpa_config_blob* %137, %struct.wpa_config_blob** %9, align 8
  br label %123

138:                                              ; preds = %132, %123
  %139 = load i32*, i32** %6, align 8
  %140 = call i32 @os_fdatasync(i32* %139)
  %141 = load i32*, i32** %6, align 8
  %142 = call i32 @fclose(i32* %141)
  %143 = load i8*, i8** %13, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %157

145:                                              ; preds = %138
  store i32 0, i32* %14, align 4
  %146 = load i32, i32* %14, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %145
  %149 = load i8*, i8** %13, align 8
  %150 = load i8*, i8** %11, align 8
  %151 = call i64 @rename(i8* %149, i8* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148, %145
  store i32 -1, i32* %10, align 4
  br label %154

154:                                              ; preds = %153, %148
  %155 = load i8*, i8** %13, align 8
  %156 = call i32 @os_free(i8* %155)
  br label %157

157:                                              ; preds = %154, %138
  %158 = load i32, i32* @MSG_DEBUG, align 4
  %159 = load i8*, i8** %11, align 8
  %160 = load i32, i32* %10, align 4
  %161 = icmp ne i32 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %164 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %158, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i8* %159, i8* %163)
  %165 = load i32, i32* %10, align 4
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %157, %37
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i8* @os_malloc(i32) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @wpa_config_write_global(i32*, %struct.wpa_config*) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @wpa_config_write_cred(i32*, %struct.wpa_cred*) #1

declare dso_local i64 @wpa_key_mgmt_wpa_psk(i64) #1

declare dso_local i32 @wpa_config_write_network(i32*, %struct.wpa_ssid*) #1

declare dso_local i32 @wpa_config_write_blob(i32*, %struct.wpa_config_blob*) #1

declare dso_local i32 @os_fdatasync(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @rename(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

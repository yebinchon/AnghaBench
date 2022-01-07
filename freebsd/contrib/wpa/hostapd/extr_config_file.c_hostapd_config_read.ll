; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_config_file.c_hostapd_config_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_config_file.c_hostapd_config_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_config = type { i64, %struct.hostapd_bss_config**, %struct.hostapd_bss_config*, i32* }
%struct.hostapd_bss_config = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Could not open configuration file '%s' for reading.\00", align 1
@wpa_drivers = common dso_local global i32** null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"No driver wrappers registered!\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Line %d: invalid line '%s'\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"%d errors found in configuration file '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hostapd_config* @hostapd_config_read(i8* %0) #0 {
  %2 = alloca %struct.hostapd_config*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hostapd_config*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [4096 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.hostapd_bss_config*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = call i32* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @MSG_ERROR, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 (i32, i8*, ...) @wpa_printf(i32 %17, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  store %struct.hostapd_config* null, %struct.hostapd_config** %2, align 8
  br label %156

20:                                               ; preds = %1
  %21 = call %struct.hostapd_config* (...) @hostapd_config_defaults()
  store %struct.hostapd_config* %21, %struct.hostapd_config** %4, align 8
  %22 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %23 = icmp eq %struct.hostapd_config* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @fclose(i32* %25)
  store %struct.hostapd_config* null, %struct.hostapd_config** %2, align 8
  br label %156

27:                                               ; preds = %20
  %28 = load i32**, i32*** @wpa_drivers, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %32 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %31, i32 0, i32 3
  store i32* %30, i32** %32, align 8
  %33 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %34 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %27
  %38 = load i32, i32* @MSG_ERROR, align 4
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %41 = call i32 @hostapd_config_free(%struct.hostapd_config* %40)
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @fclose(i32* %42)
  store %struct.hostapd_config* null, %struct.hostapd_config** %2, align 8
  br label %156

44:                                               ; preds = %27
  %45 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %46 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %45, i32 0, i32 1
  %47 = load %struct.hostapd_bss_config**, %struct.hostapd_bss_config*** %46, align 8
  %48 = getelementptr inbounds %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %47, i64 0
  %49 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %48, align 8
  %50 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %51 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %50, i32 0, i32 2
  store %struct.hostapd_bss_config* %49, %struct.hostapd_bss_config** %51, align 8
  br label %52

52:                                               ; preds = %103, %96, %90, %67, %44
  %53 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %54 = load i32*, i32** %5, align 8
  %55 = call i64 @fgets(i8* %53, i32 4096, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %117

57:                                               ; preds = %52
  %58 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %59 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %58, i32 0, i32 2
  %60 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %59, align 8
  store %struct.hostapd_bss_config* %60, %struct.hostapd_bss_config** %11, align 8
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  %63 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %64 = load i8, i8* %63, align 16
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 35
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %52

68:                                               ; preds = %57
  %69 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  store i8* %69, i8** %7, align 8
  br label %70

70:                                               ; preds = %82, %68
  %71 = load i8*, i8** %7, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = load i8*, i8** %7, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 10
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i8*, i8** %7, align 8
  store i8 0, i8* %81, align 1
  br label %85

82:                                               ; preds = %75
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %7, align 8
  br label %70

85:                                               ; preds = %80, %70
  %86 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %87 = load i8, i8* %86, align 16
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %52

91:                                               ; preds = %85
  %92 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %93 = call i8* @os_strchr(i8* %92, i8 signext 61)
  store i8* %93, i8** %7, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load i32, i32* @MSG_ERROR, align 4
  %98 = load i32, i32* %8, align 4
  %99 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %100 = call i32 (i32, i8*, ...) @wpa_printf(i32 %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %98, i8* %99)
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %52

103:                                              ; preds = %91
  %104 = load i8*, i8** %7, align 8
  store i8 0, i8* %104, align 1
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %7, align 8
  %107 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %108 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %11, align 8
  %109 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %110 = load i8*, i8** %7, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i64 @hostapd_config_fill(%struct.hostapd_config* %107, %struct.hostapd_bss_config* %108, i8* %109, i8* %110, i32 %111)
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %9, align 4
  br label %52

117:                                              ; preds = %52
  %118 = load i32*, i32** %5, align 8
  %119 = call i32 @fclose(i32* %118)
  store i64 0, i64* %10, align 8
  br label %120

120:                                              ; preds = %134, %117
  %121 = load i64, i64* %10, align 8
  %122 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %123 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ult i64 %121, %124
  br i1 %125, label %126, label %137

126:                                              ; preds = %120
  %127 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %128 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %127, i32 0, i32 1
  %129 = load %struct.hostapd_bss_config**, %struct.hostapd_bss_config*** %128, align 8
  %130 = load i64, i64* %10, align 8
  %131 = getelementptr inbounds %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %129, i64 %130
  %132 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %131, align 8
  %133 = call i32 @hostapd_set_security_params(%struct.hostapd_bss_config* %132, i32 1)
  br label %134

134:                                              ; preds = %126
  %135 = load i64, i64* %10, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %10, align 8
  br label %120

137:                                              ; preds = %120
  %138 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %139 = call i64 @hostapd_config_check(%struct.hostapd_config* %138, i32 1)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %144

144:                                              ; preds = %141, %137
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %144
  %148 = load i32, i32* @MSG_ERROR, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load i8*, i8** %3, align 8
  %151 = call i32 (i32, i8*, ...) @wpa_printf(i32 %148, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %149, i8* %150)
  %152 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %153 = call i32 @hostapd_config_free(%struct.hostapd_config* %152)
  store %struct.hostapd_config* null, %struct.hostapd_config** %4, align 8
  br label %154

154:                                              ; preds = %147, %144
  %155 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  store %struct.hostapd_config* %155, %struct.hostapd_config** %2, align 8
  br label %156

156:                                              ; preds = %154, %37, %24, %16
  %157 = load %struct.hostapd_config*, %struct.hostapd_config** %2, align 8
  ret %struct.hostapd_config* %157
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.hostapd_config* @hostapd_config_defaults(...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @hostapd_config_free(%struct.hostapd_config*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i64 @hostapd_config_fill(%struct.hostapd_config*, %struct.hostapd_bss_config*, i8*, i8*, i32) #1

declare dso_local i32 @hostapd_set_security_params(%struct.hostapd_bss_config*, i32) #1

declare dso_local i64 @hostapd_config_check(%struct.hostapd_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

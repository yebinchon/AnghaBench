; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_write_proto.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_write_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_data = type { i32 }
%struct.wpa_ssid = type { i32 }

@WPA_PROTO_WPA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%sWPA\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@WPA_PROTO_RSN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%sRSN\00", align 1
@WPA_PROTO_OSEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"%sOSEN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parse_data*, %struct.wpa_ssid*)* @wpa_config_write_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @wpa_config_write_proto(%struct.parse_data* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.parse_data*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.parse_data* %0, %struct.parse_data** %4, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %5, align 8
  %10 = call i8* @os_zalloc(i32 20)
  store i8* %10, i8** %7, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %136

14:                                               ; preds = %2
  %15 = load i8*, i8** %7, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 20
  store i8* %16, i8** %9, align 8
  %17 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %18 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @WPA_PROTO_WPA, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %14
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = trunc i64 %29 to i32
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp eq i8* %31, %32
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %36 = call i32 @os_snprintf(i8* %24, i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @os_snprintf_error(i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %23
  %47 = load i8*, i8** %7, align 8
  store i8* %47, i8** %3, align 8
  br label %136

48:                                               ; preds = %23
  %49 = load i32, i32* %6, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %8, align 8
  br label %53

53:                                               ; preds = %48, %14
  %54 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %55 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @WPA_PROTO_RSN, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %90

60:                                               ; preds = %53
  %61 = load i8*, i8** %8, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  %68 = load i8*, i8** %8, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = icmp eq i8* %68, %69
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %73 = call i32 @os_snprintf(i8* %61, i32 %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %72)
  store i32 %73, i32* %6, align 4
  %74 = load i8*, i8** %9, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  %80 = load i32, i32* %6, align 4
  %81 = call i64 @os_snprintf_error(i32 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %60
  %84 = load i8*, i8** %7, align 8
  store i8* %84, i8** %3, align 8
  br label %136

85:                                               ; preds = %60
  %86 = load i32, i32* %6, align 4
  %87 = load i8*, i8** %8, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8* %89, i8** %8, align 8
  br label %90

90:                                               ; preds = %85, %53
  %91 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %92 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @WPA_PROTO_OSEN, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %127

97:                                               ; preds = %90
  %98 = load i8*, i8** %8, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = trunc i64 %103 to i32
  %105 = load i8*, i8** %8, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = icmp eq i8* %105, %106
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %110 = call i32 @os_snprintf(i8* %98, i32 %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %109)
  store i32 %110, i32* %6, align 4
  %111 = load i8*, i8** %9, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = ptrtoint i8* %111 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = trunc i64 %115 to i32
  %117 = load i32, i32* %6, align 4
  %118 = call i64 @os_snprintf_error(i32 %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %97
  %121 = load i8*, i8** %7, align 8
  store i8* %121, i8** %3, align 8
  br label %136

122:                                              ; preds = %97
  %123 = load i32, i32* %6, align 4
  %124 = load i8*, i8** %8, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8* %126, i8** %8, align 8
  br label %127

127:                                              ; preds = %122, %90
  %128 = load i8*, i8** %8, align 8
  %129 = load i8*, i8** %7, align 8
  %130 = icmp eq i8* %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load i8*, i8** %7, align 8
  %133 = call i32 @os_free(i8* %132)
  store i8* null, i8** %7, align 8
  br label %134

134:                                              ; preds = %131, %127
  %135 = load i8*, i8** %7, align 8
  store i8* %135, i8** %3, align 8
  br label %136

136:                                              ; preds = %134, %120, %83, %46, %13
  %137 = load i8*, i8** %3, align 8
  ret i8* %137
}

declare dso_local i8* @os_zalloc(i32) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

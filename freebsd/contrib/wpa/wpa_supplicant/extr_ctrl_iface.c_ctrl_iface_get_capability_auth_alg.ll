; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_ctrl_iface_get_capability_auth_alg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_ctrl_iface_get_capability_auth_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_driver_capa = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"OPEN SHARED LEAP\00", align 1
@WPA_DRIVER_AUTH_OPEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%sOPEN\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@WPA_DRIVER_AUTH_SHARED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"%sSHARED\00", align 1
@WPA_DRIVER_AUTH_LEAP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"%sLEAP\00", align 1
@WPA_DRIVER_FLAGS_SAE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i32, i8*, %struct.wpa_driver_capa*, i8*, i64)* @ctrl_iface_get_capability_auth_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_iface_get_capability_auth_alg(%struct.wpa_supplicant* %0, i32 %1, i8* %2, %struct.wpa_driver_capa* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_supplicant*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.wpa_driver_capa*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store %struct.wpa_driver_capa* %3, %struct.wpa_driver_capa** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load i8*, i8** %12, align 8
  store i8* %18, i8** %15, align 8
  %19 = load i8*, i8** %15, align 8
  %20 = load i64, i64* %13, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8* %21, i8** %16, align 8
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %6
  %25 = load i8*, i8** %10, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %172

28:                                               ; preds = %24
  %29 = load i8*, i8** %12, align 8
  %30 = load i64, i64* %13, align 8
  %31 = call i64 @os_strlcpy(i8* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %30)
  store i64 %31, i64* %17, align 8
  %32 = load i64, i64* %17, align 8
  %33 = load i64, i64* %13, align 8
  %34 = icmp uge i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 -1, i32* %7, align 4
  br label %172

36:                                               ; preds = %28
  %37 = load i64, i64* %17, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %7, align 4
  br label %172

39:                                               ; preds = %6
  %40 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %11, align 8
  %41 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @WPA_DRIVER_AUTH_OPEN, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %81

46:                                               ; preds = %39
  %47 = load i8*, i8** %15, align 8
  %48 = load i8*, i8** %16, align 8
  %49 = load i8*, i8** %15, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = load i8*, i8** %15, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = icmp eq i8* %54, %55
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %59 = call i32 @os_snprintf(i8* %47, i32 %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  store i32 %59, i32* %14, align 4
  %60 = load i8*, i8** %16, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* %14, align 4
  %67 = call i64 @os_snprintf_error(i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %46
  %70 = load i8*, i8** %15, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %7, align 4
  br label %172

76:                                               ; preds = %46
  %77 = load i32, i32* %14, align 4
  %78 = load i8*, i8** %15, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %15, align 8
  br label %81

81:                                               ; preds = %76, %39
  %82 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %11, align 8
  %83 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @WPA_DRIVER_AUTH_SHARED, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %123

88:                                               ; preds = %81
  %89 = load i8*, i8** %15, align 8
  %90 = load i8*, i8** %16, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = ptrtoint i8* %90 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = trunc i64 %94 to i32
  %96 = load i8*, i8** %15, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = icmp eq i8* %96, %97
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %101 = call i32 @os_snprintf(i8* %89, i32 %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %100)
  store i32 %101, i32* %14, align 4
  %102 = load i8*, i8** %16, align 8
  %103 = load i8*, i8** %15, align 8
  %104 = ptrtoint i8* %102 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = trunc i64 %106 to i32
  %108 = load i32, i32* %14, align 4
  %109 = call i64 @os_snprintf_error(i32 %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %88
  %112 = load i8*, i8** %15, align 8
  %113 = load i8*, i8** %12, align 8
  %114 = ptrtoint i8* %112 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %7, align 4
  br label %172

118:                                              ; preds = %88
  %119 = load i32, i32* %14, align 4
  %120 = load i8*, i8** %15, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %15, align 8
  br label %123

123:                                              ; preds = %118, %81
  %124 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %11, align 8
  %125 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @WPA_DRIVER_AUTH_LEAP, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %165

130:                                              ; preds = %123
  %131 = load i8*, i8** %15, align 8
  %132 = load i8*, i8** %16, align 8
  %133 = load i8*, i8** %15, align 8
  %134 = ptrtoint i8* %132 to i64
  %135 = ptrtoint i8* %133 to i64
  %136 = sub i64 %134, %135
  %137 = trunc i64 %136 to i32
  %138 = load i8*, i8** %15, align 8
  %139 = load i8*, i8** %12, align 8
  %140 = icmp eq i8* %138, %139
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %143 = call i32 @os_snprintf(i8* %131, i32 %137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %142)
  store i32 %143, i32* %14, align 4
  %144 = load i8*, i8** %16, align 8
  %145 = load i8*, i8** %15, align 8
  %146 = ptrtoint i8* %144 to i64
  %147 = ptrtoint i8* %145 to i64
  %148 = sub i64 %146, %147
  %149 = trunc i64 %148 to i32
  %150 = load i32, i32* %14, align 4
  %151 = call i64 @os_snprintf_error(i32 %149, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %130
  %154 = load i8*, i8** %15, align 8
  %155 = load i8*, i8** %12, align 8
  %156 = ptrtoint i8* %154 to i64
  %157 = ptrtoint i8* %155 to i64
  %158 = sub i64 %156, %157
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %7, align 4
  br label %172

160:                                              ; preds = %130
  %161 = load i32, i32* %14, align 4
  %162 = load i8*, i8** %15, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  store i8* %164, i8** %15, align 8
  br label %165

165:                                              ; preds = %160, %123
  %166 = load i8*, i8** %15, align 8
  %167 = load i8*, i8** %12, align 8
  %168 = ptrtoint i8* %166 to i64
  %169 = ptrtoint i8* %167 to i64
  %170 = sub i64 %168, %169
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %7, align 4
  br label %172

172:                                              ; preds = %165, %153, %111, %69, %36, %35, %27
  %173 = load i32, i32* %7, align 4
  ret i32 %173
}

declare dso_local i64 @os_strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

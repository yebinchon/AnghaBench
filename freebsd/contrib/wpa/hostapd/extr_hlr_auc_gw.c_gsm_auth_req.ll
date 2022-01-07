; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hlr_auc_gw.c_gsm_auth_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hlr_auc_gw.c_gsm_auth_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.milenage_parameters = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"GSM-AUTH-RESP %s\00", align 1
@EAP_SIM_MAX_CHAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"No GSM triplets found for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" FAILURE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @gsm_auth_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsm_auth_req(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.milenage_parameters*, align 8
  %14 = alloca [16 x i32], align 16
  %15 = alloca [4 x i32], align 16
  %16 = alloca [8 x i32], align 16
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 0, i8* %18, align 1
  %19 = load i8*, i8** %5, align 8
  %20 = call i8* @os_strchr(i8* %19, i8 signext 32)
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %155

24:                                               ; preds = %3
  %25 = load i8*, i8** %10, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %10, align 8
  store i8 0, i8* %25, align 1
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %29, i8** %12, align 8
  %30 = load i8*, i8** %6, align 8
  store i8* %30, i8** %11, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %31, i32 %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i8*, i8** %12, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* %9, align 4
  %47 = call i64 @os_snprintf_error(i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %24
  store i32 -1, i32* %4, align 4
  br label %155

50:                                               ; preds = %24
  %51 = load i32, i32* %9, align 4
  %52 = load i8*, i8** %11, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %11, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = call %struct.milenage_parameters* @get_milenage(i8* %55)
  store %struct.milenage_parameters* %56, %struct.milenage_parameters** %13, align 8
  %57 = load %struct.milenage_parameters*, %struct.milenage_parameters** %13, align 8
  %58 = icmp ne %struct.milenage_parameters* %57, null
  br i1 %58, label %59, label %129

59:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %124, %59
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @EAP_SIM_MAX_CHAL, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %127

64:                                               ; preds = %60
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %67 = call i64 @hexstr2bin(i8* %65, i32* %66, i32 16)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 -1, i32* %4, align 4
  br label %155

70:                                               ; preds = %64
  %71 = load %struct.milenage_parameters*, %struct.milenage_parameters** %13, align 8
  %72 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.milenage_parameters*, %struct.milenage_parameters** %13, align 8
  %75 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %80 = call i32 @gsm_milenage(i32 %73, i32 %76, i32* %77, i32* %78, i32* %79)
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 32, i32 58
  %85 = trunc i32 %84 to i8
  %86 = load i8*, i8** %11, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %11, align 8
  store i8 %85, i8* %86, align 1
  %88 = load i8*, i8** %11, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = ptrtoint i8* %89 to i64
  %92 = ptrtoint i8* %90 to i64
  %93 = sub i64 %91, %92
  %94 = trunc i64 %93 to i32
  %95 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %96 = call i32 @wpa_snprintf_hex(i8* %88, i32 %94, i32* %95, i32 8)
  %97 = load i8*, i8** %11, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %11, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %11, align 8
  store i8 58, i8* %100, align 1
  %102 = load i8*, i8** %11, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = ptrtoint i8* %103 to i64
  %106 = ptrtoint i8* %104 to i64
  %107 = sub i64 %105, %106
  %108 = trunc i64 %107 to i32
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %110 = call i32 @wpa_snprintf_hex(i8* %102, i32 %108, i32* %109, i32 4)
  %111 = load i8*, i8** %11, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  store i8* %113, i8** %11, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 32
  store i8* %115, i8** %10, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 58
  br i1 %119, label %120, label %121

120:                                              ; preds = %70
  br label %127

121:                                              ; preds = %70
  %122 = load i8*, i8** %10, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %10, align 8
  br label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %60

127:                                              ; preds = %120, %60
  %128 = load i8*, i8** %11, align 8
  store i8 0, i8* %128, align 1
  store i32 0, i32* %4, align 4
  br label %155

129:                                              ; preds = %50
  %130 = load i8*, i8** %5, align 8
  %131 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %130)
  %132 = load i8*, i8** %11, align 8
  %133 = load i8*, i8** %12, align 8
  %134 = load i8*, i8** %11, align 8
  %135 = ptrtoint i8* %133 to i64
  %136 = ptrtoint i8* %134 to i64
  %137 = sub i64 %135, %136
  %138 = trunc i64 %137 to i32
  %139 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %132, i32 %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %139, i32* %9, align 4
  %140 = load i8*, i8** %12, align 8
  %141 = load i8*, i8** %11, align 8
  %142 = ptrtoint i8* %140 to i64
  %143 = ptrtoint i8* %141 to i64
  %144 = sub i64 %142, %143
  %145 = trunc i64 %144 to i32
  %146 = load i32, i32* %9, align 4
  %147 = call i64 @os_snprintf_error(i32 %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %129
  store i32 -1, i32* %4, align 4
  br label %155

150:                                              ; preds = %129
  %151 = load i32, i32* %9, align 4
  %152 = load i8*, i8** %11, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  store i8* %154, i8** %11, align 8
  store i32 0, i32* %4, align 4
  br label %155

155:                                              ; preds = %150, %149, %127, %69, %49, %23
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

declare dso_local %struct.milenage_parameters* @get_milenage(i8*) #1

declare dso_local i64 @hexstr2bin(i8*, i32*, i32) #1

declare dso_local i32 @gsm_milenage(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @wpa_snprintf_hex(i8*, i32, i32*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

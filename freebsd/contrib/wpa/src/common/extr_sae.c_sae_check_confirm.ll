; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_check_confirm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_check_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sae_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64 }

@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"SAE: Too short confirm message\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"SAE: peer-send-confirm %u\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"SAE: Temporary data not yet available\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"SAE: Confirm mismatch\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"SAE: Received confirm\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"SAE: Calculated verifier\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sae_check_confirm(%struct.sae_data* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sae_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.sae_data* %0, %struct.sae_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* @SHA256_MAC_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i32, i32* @SHA256_MAC_LEN, align 4
  %17 = add nsw i32 2, %16
  %18 = sext i32 %17 to i64
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = call i32 (i32, i8*, ...) @wpa_printf(i32 %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %146

23:                                               ; preds = %3
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @WPA_GET_LE16(i32* %25)
  %27 = call i32 (i32, i8*, ...) @wpa_printf(i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %29 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = icmp ne %struct.TYPE_2__* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %23
  %33 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %34 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %39 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37, %32, %23
  %45 = load i32, i32* @MSG_DEBUG, align 4
  %46 = call i32 (i32, i8*, ...) @wpa_printf(i32 %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %146

47:                                               ; preds = %37
  %48 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %49 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %91

54:                                               ; preds = %47
  %55 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %56 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %63 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %61, %54
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %146

69:                                               ; preds = %61
  %70 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %73 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %76 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %81 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %86 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @sae_cn_confirm_ecc(%struct.sae_data* %70, i32* %71, i32 %74, i32 %79, i32 %84, i32 %89, i32* %14)
  br label %128

91:                                               ; preds = %47
  %92 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %93 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %100 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %98, %91
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %146

106:                                              ; preds = %98
  %107 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %108 = load i32*, i32** %6, align 8
  %109 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %110 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %113 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %118 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %123 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @sae_cn_confirm_ffc(%struct.sae_data* %107, i32* %108, i32 %111, i32 %116, i32 %121, i32 %126, i32* %14)
  br label %128

128:                                              ; preds = %106, %69
  %129 = load i32*, i32** %6, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  %131 = load i32, i32* @SHA256_MAC_LEN, align 4
  %132 = call i64 @os_memcmp_const(i32* %14, i32* %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %145

134:                                              ; preds = %128
  %135 = load i32, i32* @MSG_DEBUG, align 4
  %136 = call i32 (i32, i8*, ...) @wpa_printf(i32 %135, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %137 = load i32, i32* @MSG_DEBUG, align 4
  %138 = load i32*, i32** %6, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 2
  %140 = load i32, i32* @SHA256_MAC_LEN, align 4
  %141 = call i32 @wpa_hexdump(i32 %137, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32* %139, i32 %140)
  %142 = load i32, i32* @MSG_DEBUG, align 4
  %143 = load i32, i32* @SHA256_MAC_LEN, align 4
  %144 = call i32 @wpa_hexdump(i32 %142, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32* %14, i32 %143)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %146

145:                                              ; preds = %128
  store i32 0, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %146

146:                                              ; preds = %145, %134, %105, %68, %44, %20
  %147 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %147)
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32 @WPA_GET_LE16(i32*) #2

declare dso_local i32 @sae_cn_confirm_ecc(%struct.sae_data*, i32*, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @sae_cn_confirm_ffc(%struct.sae_data*, i32*, i32, i32, i32, i32, i32*) #2

declare dso_local i64 @os_memcmp_const(i32*, i32*, i32) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

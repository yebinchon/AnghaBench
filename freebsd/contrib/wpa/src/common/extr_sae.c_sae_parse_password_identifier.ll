; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_parse_password_identifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_parse_password_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sae_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"SAE: Possible elements at the end of the frame\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"SAE: No Password Identifier included, but expected one (%s)\00", align 1
@WLAN_STATUS_UNKNOWN_PASSWORD_IDENTIFIER = common dso_local global i32 0, align 4
@WLAN_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [75 x i8] c"SAE: The included Password Identifier does not match the expected one (%s)\00", align 1
@WLAN_STATUS_UNSPECIFIED_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"SAE: Received Password Identifier\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sae_data*, i32*, i32*)* @sae_parse_password_identifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sae_parse_password_identifier(%struct.sae_data* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sae_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.sae_data* %0, %struct.sae_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* @MSG_DEBUG, align 4
  %9 = load i32*, i32** %6, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = ptrtoint i32* %10 to i64
  %13 = ptrtoint i32* %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = call i32 @wpa_hexdump(i32 %8, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32* %9, i32 %16)
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @sae_is_password_id_elem(i32* %18, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %50, label %22

22:                                               ; preds = %3
  %23 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %24 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %32 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @wpa_printf(i32 %30, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @WLAN_STATUS_UNKNOWN_PASSWORD_IDENTIFIER, align 4
  store i32 %37, i32* %4, align 4
  br label %152

38:                                               ; preds = %22
  %39 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %40 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @os_free(i8* %43)
  %45 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %46 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i8* null, i8** %48, align 8
  %49 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %49, i32* %4, align 4
  br label %152

50:                                               ; preds = %3
  %51 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %52 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %93

57:                                               ; preds = %50
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, 1
  %62 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %63 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @os_strlen(i8* %66)
  %68 = trunc i64 %67 to i32
  %69 = icmp ne i32 %61, %68
  br i1 %69, label %84, label %70

70:                                               ; preds = %57
  %71 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %72 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  %78 = load i32*, i32** %6, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 1
  %82 = call i64 @os_memcmp(i8* %75, i32* %77, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %70, %57
  %85 = load i32, i32* @MSG_DEBUG, align 4
  %86 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %87 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @wpa_printf(i32 %85, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i8* %90)
  %92 = load i32, i32* @WLAN_STATUS_UNKNOWN_PASSWORD_IDENTIFIER, align 4
  store i32 %92, i32* %4, align 4
  br label %152

93:                                               ; preds = %70, %50
  %94 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %95 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @os_free(i8* %98)
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @os_malloc(i32 %102)
  %104 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %105 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i8* %103, i8** %107, align 8
  %108 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %109 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %93
  %115 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %115, i32* %4, align 4
  br label %152

116:                                              ; preds = %93
  %117 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %118 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 3
  %124 = load i32*, i32** %6, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %126, 1
  %128 = call i32 @os_memcpy(i8* %121, i32* %123, i32 %127)
  %129 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %130 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %129, i32 0, i32 0
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = load i32*, i32** %6, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  %136 = load i32, i32* %135, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %133, i64 %138
  store i8 0, i8* %139, align 1
  %140 = load i32, i32* @MSG_DEBUG, align 4
  %141 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %142 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %141, i32 0, i32 0
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = load i32*, i32** %6, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %148, 1
  %150 = call i32 @wpa_hexdump_ascii(i32 %140, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %145, i32 %149)
  %151 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %116, %114, %84, %38, %29
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @sae_is_password_id_elem(i32*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i64 @os_memcmp(i8*, i32*, i32) #1

declare dso_local i8* @os_malloc(i32) #1

declare dso_local i32 @os_memcpy(i8*, i32*, i32) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

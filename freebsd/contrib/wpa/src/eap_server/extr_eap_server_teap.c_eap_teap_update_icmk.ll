; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_update_icmk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_update_icmk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_teap_data = type { i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* (%struct.eap_sm*, i32, i64*)*, i32* (%struct.eap_sm*, i32, i64*)* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"EAP-TEAP: Deriving ICMK[%d] (S-IMCK and CMK)\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"EAP-TEAP: Phase 2 method not available\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"EAP-TEAP: Could not fetch Phase 2 MSK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_teap_data*)* @eap_teap_update_icmk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_teap_update_icmk(%struct.eap_sm* %0, %struct.eap_teap_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_teap_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_teap_data* %1, %struct.eap_teap_data** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %11 = load i32, i32* @MSG_DEBUG, align 4
  %12 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %13 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  %16 = call i32 (i32, i8*, ...) @wpa_printf(i32 %11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %18 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %23 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %26 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @eap_teap_derive_cmk_basic_pw_auth(i32 %24, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %128

29:                                               ; preds = %2
  %30 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %31 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %30, i32 0, i32 7
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = icmp ne %struct.TYPE_2__* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %36 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34, %29
  %40 = load i32, i32* @MSG_INFO, align 4
  %41 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %128

42:                                               ; preds = %34
  %43 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %44 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %43, i32 0, i32 7
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32* (%struct.eap_sm*, i32, i64*)*, i32* (%struct.eap_sm*, i32, i64*)** %46, align 8
  %48 = icmp ne i32* (%struct.eap_sm*, i32, i64*)* %47, null
  br i1 %48, label %49, label %66

49:                                               ; preds = %42
  %50 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %51 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %50, i32 0, i32 7
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32* (%struct.eap_sm*, i32, i64*)*, i32* (%struct.eap_sm*, i32, i64*)** %53, align 8
  %55 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %56 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %57 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = call i32* %54(%struct.eap_sm* %55, i32 %58, i64* %8)
  store i32* %59, i32** %6, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %49
  %63 = load i32, i32* @MSG_INFO, align 4
  %64 = call i32 (i32, i8*, ...) @wpa_printf(i32 %63, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %128

65:                                               ; preds = %49
  br label %66

66:                                               ; preds = %65, %42
  %67 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %68 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %67, i32 0, i32 7
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32* (%struct.eap_sm*, i32, i64*)*, i32* (%struct.eap_sm*, i32, i64*)** %70, align 8
  %72 = icmp ne i32* (%struct.eap_sm*, i32, i64*)* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %66
  %74 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %75 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %74, i32 0, i32 7
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32* (%struct.eap_sm*, i32, i64*)*, i32* (%struct.eap_sm*, i32, i64*)** %77, align 8
  %79 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %80 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %81 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 8
  %83 = call i32* %78(%struct.eap_sm* %79, i32 %82, i64* %9)
  store i32* %83, i32** %7, align 8
  br label %84

84:                                               ; preds = %73, %66
  %85 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %86 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %89 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = load i64, i64* %9, align 8
  %95 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %96 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %99 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %102 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %105 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @eap_teap_derive_imck(i32 %87, i32 %90, i32* %91, i64 %92, i32* %93, i64 %94, i32 %97, i32 %100, i32 %103, i32 %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32*, i32** %6, align 8
  %109 = load i64, i64* %8, align 8
  %110 = call i32 @bin_clear_free(i32* %108, i64 %109)
  %111 = load i32*, i32** %7, align 8
  %112 = load i64, i64* %9, align 8
  %113 = call i32 @bin_clear_free(i32* %111, i64 %112)
  %114 = load i32, i32* %10, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %84
  %117 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %118 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %118, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %116
  %124 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %125 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %124, i32 0, i32 0
  store i32 1, i32* %125, align 8
  br label %126

126:                                              ; preds = %123, %116
  br label %127

127:                                              ; preds = %126, %84
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %127, %62, %39, %21
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eap_teap_derive_cmk_basic_pw_auth(i32, i32) #1

declare dso_local i32 @eap_teap_derive_imck(i32, i32, i32*, i64, i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @bin_clear_free(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_get_cmk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_get_cmk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_teap_data = type { i32, i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* (%struct.eap_sm*, i32, i64*)*, i32 (%struct.eap_sm*, i32)*, i32* (%struct.eap_sm*, i32, i64*)* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"EAP-TEAP: Determining CMK[%d] for Compound MAC calculation\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"EAP-TEAP: Phase 2 method not available\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"EAP-TEAP: Phase 2 key material not available\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"EAP-TEAP: Could not fetch Phase 2 MSK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_teap_data*, i32*, i32*)* @eap_teap_get_cmk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_teap_get_cmk(%struct.eap_sm* %0, %struct.eap_teap_data* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca %struct.eap_teap_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store %struct.eap_teap_data* %1, %struct.eap_teap_data** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %17 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  %20 = call i32 (i32, i8*, ...) @wpa_printf(i32 %15, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %22 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %21, i32 0, i32 5
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %4
  %26 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %27 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @eap_teap_derive_cmk_basic_pw_auth(i32 %28, i32* %29)
  store i32 %30, i32* %5, align 4
  br label %163

31:                                               ; preds = %4
  %32 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %33 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %32, i32 0, i32 5
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = icmp ne %struct.TYPE_2__* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %38 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36, %31
  %42 = load i32, i32* @MSG_INFO, align 4
  %43 = call i32 (i32, i8*, ...) @wpa_printf(i32 %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %163

44:                                               ; preds = %36
  %45 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %46 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %45, i32 0, i32 5
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32 (%struct.eap_sm*, i32)*, i32 (%struct.eap_sm*, i32)** %48, align 8
  %50 = icmp ne i32 (%struct.eap_sm*, i32)* %49, null
  br i1 %50, label %51, label %66

51:                                               ; preds = %44
  %52 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %53 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %52, i32 0, i32 5
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32 (%struct.eap_sm*, i32)*, i32 (%struct.eap_sm*, i32)** %55, align 8
  %57 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %58 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %59 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 %56(%struct.eap_sm* %57, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %51
  %64 = load i32, i32* @MSG_INFO, align 4
  %65 = call i32 (i32, i8*, ...) @wpa_printf(i32 %64, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %163

66:                                               ; preds = %51, %44
  %67 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %68 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %67, i32 0, i32 5
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32 (%struct.eap_sm*, i32)*, i32 (%struct.eap_sm*, i32)** %70, align 8
  %72 = icmp ne i32 (%struct.eap_sm*, i32)* %71, null
  br i1 %72, label %73, label %97

73:                                               ; preds = %66
  %74 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %75 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %74, i32 0, i32 5
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32* (%struct.eap_sm*, i32, i64*)*, i32* (%struct.eap_sm*, i32, i64*)** %77, align 8
  %79 = icmp ne i32* (%struct.eap_sm*, i32, i64*)* %78, null
  br i1 %79, label %80, label %97

80:                                               ; preds = %73
  %81 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %82 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %81, i32 0, i32 5
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i32* (%struct.eap_sm*, i32, i64*)*, i32* (%struct.eap_sm*, i32, i64*)** %84, align 8
  %86 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %87 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %88 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call i32* %85(%struct.eap_sm* %86, i32 %89, i64* %12)
  store i32* %90, i32** %10, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %80
  %94 = load i32, i32* @MSG_INFO, align 4
  %95 = call i32 (i32, i8*, ...) @wpa_printf(i32 %94, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %163

96:                                               ; preds = %80
  br label %97

97:                                               ; preds = %96, %73, %66
  %98 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %99 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %98, i32 0, i32 5
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32 (%struct.eap_sm*, i32)*, i32 (%struct.eap_sm*, i32)** %101, align 8
  %103 = icmp ne i32 (%struct.eap_sm*, i32)* %102, null
  br i1 %103, label %104, label %122

104:                                              ; preds = %97
  %105 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %106 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %105, i32 0, i32 5
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32* (%struct.eap_sm*, i32, i64*)*, i32* (%struct.eap_sm*, i32, i64*)** %108, align 8
  %110 = icmp ne i32* (%struct.eap_sm*, i32, i64*)* %109, null
  br i1 %110, label %111, label %122

111:                                              ; preds = %104
  %112 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %113 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %112, i32 0, i32 5
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32* (%struct.eap_sm*, i32, i64*)*, i32* (%struct.eap_sm*, i32, i64*)** %115, align 8
  %117 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %118 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %119 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = call i32* %116(%struct.eap_sm* %117, i32 %120, i64* %13)
  store i32* %121, i32** %11, align 8
  br label %122

122:                                              ; preds = %111, %104, %97
  %123 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %124 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %127 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32*, i32** %10, align 8
  %130 = load i64, i64* %12, align 8
  %131 = load i32*, i32** %11, align 8
  %132 = load i64, i64* %13, align 8
  %133 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %134 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %8, align 8
  %137 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %138 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i32*, i32** %9, align 8
  %141 = call i32 @eap_teap_derive_imck(i32 %125, i32 %128, i32* %129, i64 %130, i32* %131, i64 %132, i32 %135, i32* %136, i32 %139, i32* %140)
  store i32 %141, i32* %14, align 4
  %142 = load i32*, i32** %10, align 8
  %143 = load i64, i64* %12, align 8
  %144 = call i32 @bin_clear_free(i32* %142, i64 %143)
  %145 = load i32*, i32** %11, align 8
  %146 = load i64, i64* %13, align 8
  %147 = call i32 @bin_clear_free(i32* %145, i64 %146)
  %148 = load i32, i32* %14, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %122
  %151 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %152 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* %152, align 8
  %155 = load i32*, i32** %11, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %150
  %158 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %159 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %158, i32 0, i32 0
  store i32 1, i32* %159, align 8
  br label %160

160:                                              ; preds = %157, %150
  br label %161

161:                                              ; preds = %160, %122
  %162 = load i32, i32* %14, align 4
  store i32 %162, i32* %5, align 4
  br label %163

163:                                              ; preds = %161, %93, %63, %41, %25
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eap_teap_derive_cmk_basic_pw_auth(i32, i32*) #1

declare dso_local i32 @eap_teap_derive_imck(i32, i32, i32*, i64, i32*, i64, i32, i32*, i32, i32*) #1

declare dso_local i32 @bin_clear_free(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

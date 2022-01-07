; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_privsep.c_wpa_driver_privsep_get_scan_results2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_privsep.c_wpa_driver_privsep_get_scan_results2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_scan_results = type { i64, i32, i32, %struct.wpa_scan_results** }
%struct.wpa_driver_privsep_data = type { i32 }
%struct.wpa_scan_res = type { i64, i32, i32, %struct.wpa_scan_res** }

@PRIVSEP_CMD_GET_SCAN_RESULTS = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"privsep: Received %lu bytes of scan results\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"privsep: Invalid scan result len %lu\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"privsep: Invalid scan result len (%d + %d + %d > %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpa_scan_results* (i8*)* @wpa_driver_privsep_get_scan_results2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpa_scan_results* @wpa_driver_privsep_get_scan_results2(i8* %0) #0 {
  %2 = alloca %struct.wpa_scan_results*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wpa_driver_privsep_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_scan_results*, align 8
  %8 = alloca %struct.wpa_scan_results*, align 8
  %9 = alloca %struct.wpa_scan_results*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.wpa_scan_results*, align 8
  %12 = alloca %struct.wpa_scan_res*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.wpa_driver_privsep_data*
  store %struct.wpa_driver_privsep_data* %15, %struct.wpa_driver_privsep_data** %4, align 8
  store i64 60000, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = call %struct.wpa_scan_results* @os_malloc(i64 %16)
  store %struct.wpa_scan_results* %17, %struct.wpa_scan_results** %7, align 8
  %18 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %7, align 8
  %19 = icmp eq %struct.wpa_scan_results* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store %struct.wpa_scan_results* null, %struct.wpa_scan_results** %2, align 8
  br label %176

21:                                               ; preds = %1
  %22 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %4, align 8
  %23 = load i32, i32* @PRIVSEP_CMD_GET_SCAN_RESULTS, align 4
  %24 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %7, align 8
  %25 = call i32 @wpa_priv_cmd(%struct.wpa_driver_privsep_data* %22, i32 %23, i32* null, i32 0, %struct.wpa_scan_results* %24, i64* %10)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %7, align 8
  %30 = call i32 @os_free(%struct.wpa_scan_results* %29)
  store %struct.wpa_scan_results* null, %struct.wpa_scan_results** %2, align 8
  br label %176

31:                                               ; preds = %21
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = load i64, i64* %10, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i64, i64* %10, align 8
  %37 = icmp ult i64 %36, 4
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = load i64, i64* %10, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %7, align 8
  %44 = call i32 @os_free(%struct.wpa_scan_results* %43)
  store %struct.wpa_scan_results* null, %struct.wpa_scan_results** %2, align 8
  br label %176

45:                                               ; preds = %31
  %46 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %7, align 8
  store %struct.wpa_scan_results* %46, %struct.wpa_scan_results** %8, align 8
  %47 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %7, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %47, i64 %48
  store %struct.wpa_scan_results* %49, %struct.wpa_scan_results** %9, align 8
  %50 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %8, align 8
  %51 = call i32 @os_memcpy(i32* %6, %struct.wpa_scan_results* %50, i32 4)
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %6, align 4
  %56 = icmp sgt i32 %55, 1000
  br i1 %56, label %57, label %60

57:                                               ; preds = %54, %45
  %58 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %7, align 8
  %59 = call i32 @os_free(%struct.wpa_scan_results* %58)
  store %struct.wpa_scan_results* null, %struct.wpa_scan_results** %2, align 8
  br label %176

60:                                               ; preds = %54
  %61 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %8, align 8
  %62 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %61, i64 4
  store %struct.wpa_scan_results* %62, %struct.wpa_scan_results** %8, align 8
  %63 = call %struct.wpa_scan_results* @os_zalloc(i32 24)
  store %struct.wpa_scan_results* %63, %struct.wpa_scan_results** %11, align 8
  %64 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %11, align 8
  %65 = icmp eq %struct.wpa_scan_results* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %7, align 8
  %68 = call i32 @os_free(%struct.wpa_scan_results* %67)
  store %struct.wpa_scan_results* null, %struct.wpa_scan_results** %2, align 8
  br label %176

69:                                               ; preds = %60
  %70 = load i32, i32* %6, align 4
  %71 = call %struct.wpa_scan_results** @os_calloc(i32 %70, i32 8)
  %72 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %11, align 8
  %73 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %72, i32 0, i32 3
  store %struct.wpa_scan_results** %71, %struct.wpa_scan_results*** %73, align 8
  %74 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %11, align 8
  %75 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %74, i32 0, i32 3
  %76 = load %struct.wpa_scan_results**, %struct.wpa_scan_results*** %75, align 8
  %77 = icmp eq %struct.wpa_scan_results** %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %69
  %79 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %11, align 8
  %80 = call i32 @os_free(%struct.wpa_scan_results* %79)
  %81 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %7, align 8
  %82 = call i32 @os_free(%struct.wpa_scan_results* %81)
  store %struct.wpa_scan_results* null, %struct.wpa_scan_results** %2, align 8
  br label %176

83:                                               ; preds = %69
  br label %84

84:                                               ; preds = %161, %83
  %85 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %11, align 8
  %86 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = icmp ult i64 %87, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %84
  %92 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %9, align 8
  %93 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %8, align 8
  %94 = ptrtoint %struct.wpa_scan_results* %92 to i64
  %95 = ptrtoint %struct.wpa_scan_results* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 24
  %98 = icmp sgt i64 %97, 4
  br label %99

99:                                               ; preds = %91, %84
  %100 = phi i1 [ false, %84 ], [ %98, %91 ]
  br i1 %100, label %101, label %172

101:                                              ; preds = %99
  %102 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %8, align 8
  %103 = call i32 @os_memcpy(i32* %13, %struct.wpa_scan_results* %102, i32 4)
  %104 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %8, align 8
  %105 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %104, i64 4
  store %struct.wpa_scan_results* %105, %struct.wpa_scan_results** %8, align 8
  %106 = load i32, i32* %13, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %121, label %108

108:                                              ; preds = %101
  %109 = load i32, i32* %13, align 4
  %110 = icmp sgt i32 %109, 10000
  br i1 %110, label %121, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %9, align 8
  %115 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %8, align 8
  %116 = ptrtoint %struct.wpa_scan_results* %114 to i64
  %117 = ptrtoint %struct.wpa_scan_results* %115 to i64
  %118 = sub i64 %116, %117
  %119 = sdiv exact i64 %118, 24
  %120 = icmp sgt i64 %113, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %111, %108, %101
  br label %172

122:                                              ; preds = %111
  %123 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %8, align 8
  %124 = load i32, i32* %13, align 4
  %125 = call %struct.wpa_scan_results* @os_memdup(%struct.wpa_scan_results* %123, i32 %124)
  %126 = bitcast %struct.wpa_scan_results* %125 to %struct.wpa_scan_res*
  store %struct.wpa_scan_res* %126, %struct.wpa_scan_res** %12, align 8
  %127 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %12, align 8
  %128 = icmp eq %struct.wpa_scan_res* %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %172

130:                                              ; preds = %122
  %131 = load i32, i32* %13, align 4
  %132 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %8, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %132, i64 %133
  store %struct.wpa_scan_results* %134, %struct.wpa_scan_results** %8, align 8
  %135 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %12, align 8
  %136 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = add i64 24, %138
  %140 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %12, align 8
  %141 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = add i64 %139, %143
  %145 = load i32, i32* %13, align 4
  %146 = sext i32 %145 to i64
  %147 = icmp ugt i64 %144, %146
  br i1 %147, label %148, label %161

148:                                              ; preds = %130
  %149 = load i32, i32* @MSG_ERROR, align 4
  %150 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %12, align 8
  %151 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %12, align 8
  %154 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %13, align 4
  %157 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %149, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 24, i32 %152, i32 %155, i32 %156)
  %158 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %12, align 8
  %159 = bitcast %struct.wpa_scan_res* %158 to %struct.wpa_scan_results*
  %160 = call i32 @os_free(%struct.wpa_scan_results* %159)
  br label %172

161:                                              ; preds = %130
  %162 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %12, align 8
  %163 = bitcast %struct.wpa_scan_res* %162 to %struct.wpa_scan_results*
  %164 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %11, align 8
  %165 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %164, i32 0, i32 3
  %166 = load %struct.wpa_scan_results**, %struct.wpa_scan_results*** %165, align 8
  %167 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %11, align 8
  %168 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %168, align 8
  %171 = getelementptr inbounds %struct.wpa_scan_results*, %struct.wpa_scan_results** %166, i64 %169
  store %struct.wpa_scan_results* %163, %struct.wpa_scan_results** %171, align 8
  br label %84

172:                                              ; preds = %148, %129, %121, %99
  %173 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %7, align 8
  %174 = call i32 @os_free(%struct.wpa_scan_results* %173)
  %175 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %11, align 8
  store %struct.wpa_scan_results* %175, %struct.wpa_scan_results** %2, align 8
  br label %176

176:                                              ; preds = %172, %78, %66, %57, %38, %28, %20
  %177 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %2, align 8
  ret %struct.wpa_scan_results* %177
}

declare dso_local %struct.wpa_scan_results* @os_malloc(i64) #1

declare dso_local i32 @wpa_priv_cmd(%struct.wpa_driver_privsep_data*, i32, i32*, i32, %struct.wpa_scan_results*, i64*) #1

declare dso_local i32 @os_free(%struct.wpa_scan_results*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @os_memcpy(i32*, %struct.wpa_scan_results*, i32) #1

declare dso_local %struct.wpa_scan_results* @os_zalloc(i32) #1

declare dso_local %struct.wpa_scan_results** @os_calloc(i32, i32) #1

declare dso_local %struct.wpa_scan_results* @os_memdup(%struct.wpa_scan_results*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

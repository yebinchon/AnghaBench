; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_ovf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_ovf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { %struct.TYPE_10__, i32, %struct.pt_time_cal, %struct.pt_time }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64, i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.pt_time_cal = type { i32 }
%struct.pt_time = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@ptps_ovf = common dso_local global i64 0, align 8
@pte_bad_context = common dso_local global i32 0, align 4
@pte_eos = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_qry_decode_ovf(%struct.pt_query_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_query_decoder*, align 8
  %4 = alloca %struct.pt_time_cal, align 4
  %5 = alloca %struct.pt_time, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pt_query_decoder* %0, %struct.pt_query_decoder** %3, align 8
  %8 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %9 = icmp ne %struct.pt_query_decoder* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @pte_internal, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %139

13:                                               ; preds = %1
  %14 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %15 = call i32 @pt_qry_process_pending_psb_events(%struct.pt_query_decoder* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %139

20:                                               ; preds = %13
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %139

24:                                               ; preds = %20
  %25 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %26 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %25, i32 0, i32 3
  %27 = bitcast %struct.pt_time* %5 to i8*
  %28 = bitcast %struct.pt_time* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 8 %28, i64 4, i1 false)
  %29 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %30 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %29, i32 0, i32 2
  %31 = bitcast %struct.pt_time_cal* %4 to i8*
  %32 = bitcast %struct.pt_time_cal* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %34 = call i32 @pt_qry_reset(%struct.pt_query_decoder* %33)
  %35 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %36 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %35, i32 0, i32 3
  %37 = bitcast %struct.pt_time* %36 to i8*
  %38 = bitcast %struct.pt_time* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 4 %38, i64 4, i1 false)
  %39 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %40 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %24
  %48 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %49 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %48, i32 0, i32 0
  %50 = call i32 @pt_tcal_update_ovf(%struct.pt_time_cal* %4, %struct.TYPE_10__* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %139

55:                                               ; preds = %47
  %56 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %57 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %56, i32 0, i32 2
  %58 = bitcast %struct.pt_time_cal* %57 to i8*
  %59 = bitcast %struct.pt_time_cal* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 4, i1 false)
  br label %60

60:                                               ; preds = %55, %24
  %61 = load i64, i64* @ptps_ovf, align 8
  %62 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %63 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %61
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 8
  %68 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %69 = call i32 @pt_qry_find_ovf_fup(%struct.pt_query_decoder* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp sle i32 %70, 0
  br i1 %71, label %72, label %120

72:                                               ; preds = %60
  %73 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %74 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %81 = call i32 @pt_qry_handle_skd010(%struct.pt_query_decoder* %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp sle i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %139

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %86, %72
  %88 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %89 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %87
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @pte_bad_context, align 4
  %97 = sub nsw i32 0, %96
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %101 = call i32 @pt_qry_handle_apl11(%struct.pt_query_decoder* %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp sle i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %2, align 4
  br label %139

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %106, %94, %87
  %108 = load i32, i32* %7, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @pte_eos, align 4
  %113 = sub nsw i32 0, %112
  %114 = icmp ne i32 %111, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %2, align 4
  br label %139

117:                                              ; preds = %110, %107
  %118 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %119 = call i32 @pt_qry_event_ovf_disabled(%struct.pt_query_decoder* %118)
  store i32 %119, i32* %2, align 4
  br label %139

120:                                              ; preds = %60
  %121 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %122 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %120
  %128 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @pt_qry_handle_apl12(%struct.pt_query_decoder* %128, i32 %129)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp sle i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  %134 = load i32, i32* %6, align 4
  store i32 %134, i32* %2, align 4
  br label %139

135:                                              ; preds = %127
  br label %136

136:                                              ; preds = %135, %120
  %137 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %138 = call i32 @pt_qry_event_ovf_enabled(%struct.pt_query_decoder* %137)
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %136, %133, %117, %115, %104, %84, %53, %23, %18, %10
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i32 @pt_qry_process_pending_psb_events(%struct.pt_query_decoder*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pt_qry_reset(%struct.pt_query_decoder*) #1

declare dso_local i32 @pt_tcal_update_ovf(%struct.pt_time_cal*, %struct.TYPE_10__*) #1

declare dso_local i32 @pt_qry_find_ovf_fup(%struct.pt_query_decoder*) #1

declare dso_local i32 @pt_qry_handle_skd010(%struct.pt_query_decoder*) #1

declare dso_local i32 @pt_qry_handle_apl11(%struct.pt_query_decoder*) #1

declare dso_local i32 @pt_qry_event_ovf_disabled(%struct.pt_query_decoder*) #1

declare dso_local i32 @pt_qry_handle_apl12(%struct.pt_query_decoder*, i32) #1

declare dso_local i32 @pt_qry_event_ovf_enabled(%struct.pt_query_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

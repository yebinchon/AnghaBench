; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_apl11_apply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_apl11_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { %struct.TYPE_8__, i64, %struct.pt_time_cal, %struct.pt_time }
%struct.TYPE_8__ = type { i64 }
%struct.pt_time_cal = type { i32 }
%struct.pt_time = type { i32 }
%struct.pt_packet_decoder = type { i32 }
%struct.pt_packet = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_bad_opc = common dso_local global i32 0, align 4
@pte_bad_context = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_query_decoder*, %struct.pt_packet_decoder*)* @apl11_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apl11_apply(%struct.pt_query_decoder* %0, %struct.pt_packet_decoder* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_query_decoder*, align 8
  %5 = alloca %struct.pt_packet_decoder*, align 8
  %6 = alloca %struct.pt_time_cal, align 4
  %7 = alloca %struct.pt_time, align 4
  %8 = alloca %struct.pt_packet, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.pt_query_decoder* %0, %struct.pt_query_decoder** %4, align 8
  store %struct.pt_packet_decoder* %1, %struct.pt_packet_decoder** %5, align 8
  %11 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %12 = icmp ne %struct.pt_query_decoder* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @pte_internal, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %125

16:                                               ; preds = %2
  %17 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %18 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %17, i32 0, i32 3
  %19 = bitcast %struct.pt_time* %7 to i8*
  %20 = bitcast %struct.pt_time* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  %21 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %22 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %21, i32 0, i32 2
  %23 = bitcast %struct.pt_time_cal* %6 to i8*
  %24 = bitcast %struct.pt_time_cal* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 8 %24, i64 4, i1 false)
  br label %25

25:                                               ; preds = %124, %16
  %26 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %5, align 8
  %27 = call i32 @pt_pkt_next(%struct.pt_packet_decoder* %26, %struct.pt_packet* %8, i32 24)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %3, align 4
  br label %125

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %124 [
    i32 135, label %35
    i32 150, label %61
    i32 151, label %64
    i32 142, label %64
    i32 134, label %64
    i32 137, label %64
    i32 145, label %64
    i32 148, label %64
    i32 143, label %64
    i32 128, label %64
    i32 152, label %64
    i32 146, label %64
    i32 139, label %64
    i32 138, label %64
    i32 140, label %64
    i32 129, label %65
    i32 144, label %65
    i32 149, label %65
    i32 141, label %66
    i32 136, label %66
    i32 131, label %66
    i32 132, label %66
    i32 130, label %69
    i32 154, label %80
    i32 133, label %91
    i32 147, label %102
    i32 153, label %113
  ]

35:                                               ; preds = %32
  %36 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %5, align 8
  %37 = call i32 @pt_pkt_get_offset(%struct.pt_packet_decoder* %36, i64* %10)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  br label %125

42:                                               ; preds = %35
  %43 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %44 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %43, i32 0, i32 3
  %45 = bitcast %struct.pt_time* %44 to i8*
  %46 = bitcast %struct.pt_time* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 4, i1 false)
  %47 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %48 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %47, i32 0, i32 2
  %49 = bitcast %struct.pt_time_cal* %48 to i8*
  %50 = bitcast %struct.pt_time_cal* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 4 %50, i64 4, i1 false)
  %51 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %52 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = add nsw i64 %54, %55
  %57 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %58 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %60 = call i32 @pt_qry_event_ovf_disabled(%struct.pt_query_decoder* %59)
  store i32 %60, i32* %3, align 4
  br label %125

61:                                               ; preds = %32
  %62 = load i32, i32* @pte_bad_opc, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %125

64:                                               ; preds = %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32
  store i32 1, i32* %3, align 4
  br label %125

65:                                               ; preds = %32, %32, %32
  br label %124

66:                                               ; preds = %32, %32, %32, %32
  %67 = load i32, i32* @pte_bad_context, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %125

69:                                               ; preds = %32
  %70 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %8, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 4
  %72 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %73 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %72, i32 0, i32 0
  %74 = call i32 @pt_qry_apply_tsc(%struct.pt_time* %7, %struct.pt_time_cal* %6, i32* %71, %struct.TYPE_8__* %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %3, align 4
  br label %125

79:                                               ; preds = %69
  br label %124

80:                                               ; preds = %32
  %81 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %8, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 3
  %83 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %84 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %83, i32 0, i32 0
  %85 = call i32 @pt_qry_apply_cbr(%struct.pt_time* %7, %struct.pt_time_cal* %6, i32* %82, %struct.TYPE_8__* %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %3, align 4
  br label %125

90:                                               ; preds = %80
  br label %124

91:                                               ; preds = %32
  %92 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %8, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  %94 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %95 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %94, i32 0, i32 0
  %96 = call i32 @pt_qry_apply_tma(%struct.pt_time* %7, %struct.pt_time_cal* %6, i32* %93, %struct.TYPE_8__* %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %3, align 4
  br label %125

101:                                              ; preds = %91
  br label %124

102:                                              ; preds = %32
  %103 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %8, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %106 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %105, i32 0, i32 0
  %107 = call i32 @pt_qry_apply_mtc(%struct.pt_time* %7, %struct.pt_time_cal* %6, i32* %104, %struct.TYPE_8__* %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %102
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %3, align 4
  br label %125

112:                                              ; preds = %102
  br label %124

113:                                              ; preds = %32
  %114 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %8, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %117 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %116, i32 0, i32 0
  %118 = call i32 @pt_qry_apply_cyc(%struct.pt_time* %7, %struct.pt_time_cal* %6, i32* %115, %struct.TYPE_8__* %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %3, align 4
  br label %125

123:                                              ; preds = %113
  br label %124

124:                                              ; preds = %32, %123, %112, %101, %90, %79, %65
  br label %25

125:                                              ; preds = %121, %110, %99, %88, %77, %66, %64, %61, %42, %40, %30, %13
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pt_pkt_next(%struct.pt_packet_decoder*, %struct.pt_packet*, i32) #2

declare dso_local i32 @pt_pkt_get_offset(%struct.pt_packet_decoder*, i64*) #2

declare dso_local i32 @pt_qry_event_ovf_disabled(%struct.pt_query_decoder*) #2

declare dso_local i32 @pt_qry_apply_tsc(%struct.pt_time*, %struct.pt_time_cal*, i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @pt_qry_apply_cbr(%struct.pt_time*, %struct.pt_time_cal*, i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @pt_qry_apply_tma(%struct.pt_time*, %struct.pt_time_cal*, i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @pt_qry_apply_mtc(%struct.pt_time*, %struct.pt_time_cal*, i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @pt_qry_apply_cyc(%struct.pt_time*, %struct.pt_time_cal*, i32*, %struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

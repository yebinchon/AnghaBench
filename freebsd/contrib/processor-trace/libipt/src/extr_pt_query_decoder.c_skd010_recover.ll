; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_skd010_recover.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_skd010_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i32, %struct.pt_event*, %struct.pt_time_cal, %struct.pt_time, %struct.pt_last_ip, %struct.TYPE_6__, i64, i32 }
%struct.pt_event = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.pt_time_cal = type { i32 }
%struct.pt_time = type { i32 }
%struct.pt_last_ip = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.pt_packet_ip = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@ptev_overflow = common dso_local global i32 0, align 4
@pte_bad_context = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_query_decoder*, %struct.pt_packet_ip*, %struct.pt_time_cal*, %struct.pt_time*, i64)* @skd010_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skd010_recover(%struct.pt_query_decoder* %0, %struct.pt_packet_ip* %1, %struct.pt_time_cal* %2, %struct.pt_time* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_query_decoder*, align 8
  %8 = alloca %struct.pt_packet_ip*, align 8
  %9 = alloca %struct.pt_time_cal*, align 8
  %10 = alloca %struct.pt_time*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pt_last_ip, align 4
  %13 = alloca %struct.pt_event*, align 8
  %14 = alloca i32, align 4
  store %struct.pt_query_decoder* %0, %struct.pt_query_decoder** %7, align 8
  store %struct.pt_packet_ip* %1, %struct.pt_packet_ip** %8, align 8
  store %struct.pt_time_cal* %2, %struct.pt_time_cal** %9, align 8
  store %struct.pt_time* %3, %struct.pt_time** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %7, align 8
  %16 = icmp ne %struct.pt_query_decoder* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %5
  %18 = load %struct.pt_packet_ip*, %struct.pt_packet_ip** %8, align 8
  %19 = icmp ne %struct.pt_packet_ip* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.pt_time_cal*, %struct.pt_time_cal** %9, align 8
  %22 = icmp ne %struct.pt_time_cal* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.pt_time*, %struct.pt_time** %10, align 8
  %25 = icmp ne %struct.pt_time* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23, %20, %17, %5
  %27 = load i32, i32* @pte_internal, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %96

29:                                               ; preds = %23
  %30 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %7, align 8
  %31 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %30, i32 0, i32 4
  %32 = bitcast %struct.pt_last_ip* %12 to i8*
  %33 = bitcast %struct.pt_last_ip* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 8 %33, i64 4, i1 false)
  %34 = load %struct.pt_packet_ip*, %struct.pt_packet_ip** %8, align 8
  %35 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %7, align 8
  %36 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %35, i32 0, i32 5
  %37 = call i32 @pt_last_ip_update_ip(%struct.pt_last_ip* %12, %struct.pt_packet_ip* %34, %struct.TYPE_6__* %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %6, align 4
  br label %96

42:                                               ; preds = %29
  %43 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %7, align 8
  %44 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %43, i32 0, i32 7
  %45 = call %struct.pt_event* @pt_evq_standalone(i32* %44)
  store %struct.pt_event* %45, %struct.pt_event** %13, align 8
  %46 = load %struct.pt_event*, %struct.pt_event** %13, align 8
  %47 = icmp ne %struct.pt_event* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @pte_internal, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %96

51:                                               ; preds = %42
  %52 = load i32, i32* @ptev_overflow, align 4
  %53 = load %struct.pt_event*, %struct.pt_event** %13, align 8
  %54 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.pt_event*, %struct.pt_event** %13, align 8
  %56 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = call i32 @pt_last_ip_query(i32* %58, %struct.pt_last_ip* %12)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = load i32, i32* @pte_bad_context, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %96

65:                                               ; preds = %51
  %66 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %7, align 8
  %67 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = add nsw i64 %69, %70
  %72 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %7, align 8
  %73 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %72, i32 0, i32 6
  store i64 %71, i64* %73, align 8
  %74 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %7, align 8
  %75 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %7, align 8
  %77 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %76, i32 0, i32 4
  %78 = bitcast %struct.pt_last_ip* %77 to i8*
  %79 = bitcast %struct.pt_last_ip* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 4 %79, i64 4, i1 false)
  %80 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %7, align 8
  %81 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %80, i32 0, i32 3
  %82 = load %struct.pt_time*, %struct.pt_time** %10, align 8
  %83 = bitcast %struct.pt_time* %81 to i8*
  %84 = bitcast %struct.pt_time* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 4 %84, i64 4, i1 false)
  %85 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %7, align 8
  %86 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %85, i32 0, i32 2
  %87 = load %struct.pt_time_cal*, %struct.pt_time_cal** %9, align 8
  %88 = bitcast %struct.pt_time_cal* %86 to i8*
  %89 = bitcast %struct.pt_time_cal* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 4 %89, i64 4, i1 false)
  %90 = load %struct.pt_event*, %struct.pt_event** %13, align 8
  %91 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %7, align 8
  %92 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %91, i32 0, i32 1
  store %struct.pt_event* %90, %struct.pt_event** %92, align 8
  %93 = load %struct.pt_event*, %struct.pt_event** %13, align 8
  %94 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %7, align 8
  %95 = call i32 @pt_qry_event_time(%struct.pt_event* %93, %struct.pt_query_decoder* %94)
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %65, %62, %48, %40, %26
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pt_last_ip_update_ip(%struct.pt_last_ip*, %struct.pt_packet_ip*, %struct.TYPE_6__*) #2

declare dso_local %struct.pt_event* @pt_evq_standalone(i32*) #2

declare dso_local i32 @pt_last_ip_query(i32*, %struct.pt_last_ip*) #2

declare dso_local i32 @pt_qry_event_time(%struct.pt_event*, %struct.pt_query_decoder*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

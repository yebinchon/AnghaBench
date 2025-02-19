; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_skd010_recover_disabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_skd010_recover_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { %struct.TYPE_2__, i64, %struct.pt_time_cal, %struct.pt_time }
%struct.TYPE_2__ = type { i64 }
%struct.pt_time_cal = type { i32 }
%struct.pt_time = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_query_decoder*, %struct.pt_time_cal*, %struct.pt_time*, i64)* @skd010_recover_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skd010_recover_disabled(%struct.pt_query_decoder* %0, %struct.pt_time_cal* %1, %struct.pt_time* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_query_decoder*, align 8
  %7 = alloca %struct.pt_time_cal*, align 8
  %8 = alloca %struct.pt_time*, align 8
  %9 = alloca i64, align 8
  store %struct.pt_query_decoder* %0, %struct.pt_query_decoder** %6, align 8
  store %struct.pt_time_cal* %1, %struct.pt_time_cal** %7, align 8
  store %struct.pt_time* %2, %struct.pt_time** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %6, align 8
  %11 = icmp ne %struct.pt_query_decoder* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load %struct.pt_time_cal*, %struct.pt_time_cal** %7, align 8
  %14 = icmp ne %struct.pt_time_cal* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load %struct.pt_time*, %struct.pt_time** %8, align 8
  %17 = icmp ne %struct.pt_time* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %12, %4
  %19 = load i32, i32* @pte_internal, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %42

21:                                               ; preds = %15
  %22 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %6, align 8
  %23 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %22, i32 0, i32 3
  %24 = load %struct.pt_time*, %struct.pt_time** %8, align 8
  %25 = bitcast %struct.pt_time* %23 to i8*
  %26 = bitcast %struct.pt_time* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  %27 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %6, align 8
  %28 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %27, i32 0, i32 2
  %29 = load %struct.pt_time_cal*, %struct.pt_time_cal** %7, align 8
  %30 = bitcast %struct.pt_time_cal* %28 to i8*
  %31 = bitcast %struct.pt_time_cal* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 4 %31, i64 4, i1 false)
  %32 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %6, align 8
  %33 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = add nsw i64 %35, %36
  %38 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %6, align 8
  %39 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %6, align 8
  %41 = call i32 @pt_qry_event_ovf_disabled(%struct.pt_query_decoder* %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %21, %18
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pt_qry_event_ovf_disabled(%struct.pt_query_decoder*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_event_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_event_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptu_decoder_fixture = type { %struct.pt_encoder, %struct.pt_query_decoder }
%struct.pt_encoder = type { i32 }
%struct.pt_query_decoder = type { i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_event = type { i32, i32, i32 }

@pts_eos = common dso_local global i32 0, align 4
@ptev_stop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptu_decoder_fixture*, i32)* @event_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_stop(%struct.ptu_decoder_fixture* %0, i32 %1) #0 {
  %3 = alloca %struct.ptunit_result, align 4
  %4 = alloca %struct.ptu_decoder_fixture*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_query_decoder*, align 8
  %7 = alloca %struct.pt_encoder*, align 8
  %8 = alloca %struct.pt_event, align 4
  %9 = alloca i32, align 4
  store %struct.ptu_decoder_fixture* %0, %struct.ptu_decoder_fixture** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %4, align 8
  %11 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %10, i32 0, i32 1
  store %struct.pt_query_decoder* %11, %struct.pt_query_decoder** %6, align 8
  %12 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %4, align 8
  %13 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %12, i32 0, i32 0
  store %struct.pt_encoder* %13, %struct.pt_encoder** %7, align 8
  %14 = load %struct.pt_encoder*, %struct.pt_encoder** %7, align 8
  %15 = call i32 @pt_encode_stop(%struct.pt_encoder* %14)
  %16 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %6, align 8
  %17 = call i32 @ptu_sync_decoder(%struct.pt_query_decoder* %16)
  %18 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %6, align 8
  %19 = call i32 @pt_qry_event(%struct.pt_query_decoder* %18, %struct.pt_event* %8, i32 12)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @pts_eos, align 4
  %22 = call i32 @ptu_int_eq(i32 %20, i32 %21)
  %23 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %8, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ptev_stop, align 4
  %26 = call i32 @ptu_int_eq(i32 %24, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %8, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ptu_int_eq(i32 %31, i32 0)
  br label %41

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %8, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ptu_int_eq(i32 %35, i32 1)
  %37 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %8, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @ptu_uint_eq(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %33, %29
  %42 = call i32 (...) @ptu_passed()
  %43 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %3, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %3, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  ret i32 %45
}

declare dso_local i32 @pt_encode_stop(%struct.pt_encoder*) #1

declare dso_local i32 @ptu_sync_decoder(%struct.pt_query_decoder*) #1

declare dso_local i32 @pt_qry_event(%struct.pt_query_decoder*, %struct.pt_event*, i32) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_uint_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

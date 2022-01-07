; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_event_paging.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_event_paging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptu_decoder_fixture = type { %struct.pt_encoder, %struct.pt_query_decoder }
%struct.pt_encoder = type { i32 }
%struct.pt_query_decoder = type { i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_event = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@pt_dfix_max_cr3 = common dso_local global i32 0, align 4
@ptu_sync_decoder = common dso_local global i32 0, align 4
@pts_eos = common dso_local global i32 0, align 4
@ptev_paging = common dso_local global i32 0, align 4
@pt_pl_pip_nr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptu_decoder_fixture*, i32, i32)* @event_paging to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_paging(%struct.ptu_decoder_fixture* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ptunit_result, align 4
  %5 = alloca %struct.ptu_decoder_fixture*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pt_query_decoder*, align 8
  %9 = alloca %struct.pt_encoder*, align 8
  %10 = alloca %struct.pt_event, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ptu_decoder_fixture* %0, %struct.ptu_decoder_fixture** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %14 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %13, i32 0, i32 1
  store %struct.pt_query_decoder* %14, %struct.pt_query_decoder** %8, align 8
  %15 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %16 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %15, i32 0, i32 0
  store %struct.pt_encoder* %16, %struct.pt_encoder** %9, align 8
  %17 = load i32, i32* @pt_dfix_max_cr3, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.pt_encoder*, %struct.pt_encoder** %9, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @pt_encode_pip(%struct.pt_encoder* %18, i32 %19, i32 %20)
  %22 = load i32, i32* @ptu_sync_decoder, align 4
  %23 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %8, align 8
  %24 = call i32 @ptu_check(i32 %22, %struct.pt_query_decoder* %23)
  %25 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %8, align 8
  %26 = call i32 @pt_qry_event(%struct.pt_query_decoder* %25, %struct.pt_event* %10, i32 20)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @pts_eos, align 4
  %29 = call i32 @ptu_int_eq(i32 %27, i32 %28)
  %30 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ptev_paging, align 4
  %33 = call i32 @ptu_int_eq(i32 %31, i32 %32)
  %34 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @ptu_uint_eq(i32 %37, i32 %38)
  %40 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @pt_pl_pip_nr, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @ptu_uint_eq(i32 %43, i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %3
  %53 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ptu_int_eq(i32 %54, i32 0)
  br label %64

56:                                               ; preds = %3
  %57 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ptu_int_eq(i32 %58, i32 1)
  %60 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @ptu_uint_eq(i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %56, %52
  %65 = call i32 (...) @ptu_passed()
  %66 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %4, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %4, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  ret i32 %68
}

declare dso_local i32 @pt_encode_pip(%struct.pt_encoder*, i32, i32) #1

declare dso_local i32 @ptu_check(i32, %struct.pt_query_decoder*) #1

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

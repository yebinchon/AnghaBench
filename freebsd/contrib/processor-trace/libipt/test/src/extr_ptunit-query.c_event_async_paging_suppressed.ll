; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_event_async_paging_suppressed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_event_async_paging_suppressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptu_decoder_fixture = type { %struct.pt_encoder, %struct.pt_query_decoder }
%struct.pt_encoder = type { i32 }
%struct.pt_query_decoder = type { i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_event = type { i32, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@pt_dfix_sext_ip = common dso_local global i32 0, align 4
@pt_dfix_max_cr3 = common dso_local global i32 0, align 4
@pt_ipc_sext_48 = common dso_local global i32 0, align 4
@pt_ipc_suppressed = common dso_local global i32 0, align 4
@ptu_sync_decoder = common dso_local global i32 0, align 4
@pts_event_pending = common dso_local global i32 0, align 4
@ptev_async_branch = common dso_local global i32 0, align 4
@pts_eos = common dso_local global i32 0, align 4
@ptev_async_paging = common dso_local global i32 0, align 4
@pt_pl_pip_nr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptu_decoder_fixture*, i32, i32)* @event_async_paging_suppressed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_async_paging_suppressed(%struct.ptu_decoder_fixture* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ptunit_result, align 4
  %5 = alloca %struct.ptu_decoder_fixture*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pt_query_decoder*, align 8
  %9 = alloca %struct.pt_encoder*, align 8
  %10 = alloca %struct.pt_event, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ptu_decoder_fixture* %0, %struct.ptu_decoder_fixture** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %15 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %14, i32 0, i32 1
  store %struct.pt_query_decoder* %15, %struct.pt_query_decoder** %8, align 8
  %16 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %17 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %16, i32 0, i32 0
  store %struct.pt_encoder* %17, %struct.pt_encoder** %9, align 8
  %18 = load i32, i32* @pt_dfix_sext_ip, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* @pt_dfix_max_cr3, align 4
  store i32 %19, i32* %12, align 4
  %20 = load %struct.pt_encoder*, %struct.pt_encoder** %9, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @pt_ipc_sext_48, align 4
  %23 = call i32 @pt_encode_fup(%struct.pt_encoder* %20, i32 %21, i32 %22)
  %24 = load %struct.pt_encoder*, %struct.pt_encoder** %9, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @pt_encode_pip(%struct.pt_encoder* %24, i32 %25, i32 %26)
  %28 = load %struct.pt_encoder*, %struct.pt_encoder** %9, align 8
  %29 = load i32, i32* @pt_ipc_suppressed, align 4
  %30 = call i32 @pt_encode_tip(%struct.pt_encoder* %28, i32 0, i32 %29)
  %31 = load i32, i32* @ptu_sync_decoder, align 4
  %32 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %8, align 8
  %33 = call i32 @ptu_check(i32 %31, %struct.pt_query_decoder* %32)
  %34 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %8, align 8
  %35 = call i32 @pt_qry_event(%struct.pt_query_decoder* %34, %struct.pt_event* %10, i32 28)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @pts_event_pending, align 4
  %38 = call i32 @ptu_int_eq(i32 %36, i32 %37)
  %39 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ptu_uint_ne(i32 %40, i32 0)
  %42 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ptev_async_branch, align 4
  %45 = call i32 @ptu_int_eq(i32 %43, i32 %44)
  %46 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @ptu_uint_eq(i32 %49, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %3
  %55 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ptu_int_eq(i32 %56, i32 0)
  br label %66

58:                                               ; preds = %3
  %59 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ptu_int_eq(i32 %60, i32 1)
  %62 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @ptu_uint_eq(i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %58, %54
  %67 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %8, align 8
  %68 = call i32 @pt_qry_event(%struct.pt_query_decoder* %67, %struct.pt_event* %10, i32 28)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @pts_eos, align 4
  %71 = call i32 @ptu_int_eq(i32 %69, i32 %70)
  %72 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ptu_uint_ne(i32 %73, i32 0)
  %75 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @ptev_async_paging, align 4
  %78 = call i32 @ptu_int_eq(i32 %76, i32 %77)
  %79 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @ptu_uint_eq(i32 %82, i32 %83)
  %85 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @pt_pl_pip_nr, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @ptu_uint_eq(i32 %88, i32 %93)
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %66
  %98 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ptu_int_eq(i32 %99, i32 0)
  br label %109

101:                                              ; preds = %66
  %102 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ptu_int_eq(i32 %103, i32 1)
  %105 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @ptu_uint_eq(i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %101, %97
  %110 = call i32 (...) @ptu_passed()
  %111 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %4, i32 0, i32 0
  store i32 %110, i32* %111, align 4
  %112 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %4, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  ret i32 %113
}

declare dso_local i32 @pt_encode_fup(%struct.pt_encoder*, i32, i32) #1

declare dso_local i32 @pt_encode_pip(%struct.pt_encoder*, i32, i32) #1

declare dso_local i32 @pt_encode_tip(%struct.pt_encoder*, i32, i32) #1

declare dso_local i32 @ptu_check(i32, %struct.pt_query_decoder*) #1

declare dso_local i32 @pt_qry_event(%struct.pt_query_decoder*, %struct.pt_event*, i32) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_uint_ne(i32, i32) #1

declare dso_local i32 @ptu_uint_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

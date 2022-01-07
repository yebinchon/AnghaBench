; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_event_async_paging.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_event_async_paging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptu_decoder_fixture = type { %struct.pt_encoder, %struct.pt_query_decoder }
%struct.pt_encoder = type { i32 }
%struct.pt_query_decoder = type { i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_event = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@pt_dfix_sext_ip = common dso_local global i32 0, align 4
@pt_dfix_max_cr3 = common dso_local global i32 0, align 4
@pt_ipc_sext_48 = common dso_local global i32 0, align 4
@pt_ipc_update_16 = common dso_local global i32 0, align 4
@ptu_sync_decoder = common dso_local global i32 0, align 4
@pts_event_pending = common dso_local global i32 0, align 4
@ptev_async_branch = common dso_local global i32 0, align 4
@pts_eos = common dso_local global i32 0, align 4
@ptev_async_paging = common dso_local global i32 0, align 4
@pt_pl_pip_nr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptu_decoder_fixture*, i32, i32)* @event_async_paging to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_async_paging(%struct.ptu_decoder_fixture* %0, i32 %1, i32 %2) #0 {
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
  %14 = alloca i32, align 4
  store %struct.ptu_decoder_fixture* %0, %struct.ptu_decoder_fixture** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %16 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %15, i32 0, i32 1
  store %struct.pt_query_decoder* %16, %struct.pt_query_decoder** %8, align 8
  %17 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %18 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %17, i32 0, i32 0
  store %struct.pt_encoder* %18, %struct.pt_encoder** %9, align 8
  %19 = load i32, i32* @pt_dfix_sext_ip, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = and i64 %21, -65536
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* @pt_dfix_max_cr3, align 4
  store i32 %24, i32* %13, align 4
  %25 = load %struct.pt_encoder*, %struct.pt_encoder** %9, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @pt_ipc_sext_48, align 4
  %28 = call i32 @pt_encode_fup(%struct.pt_encoder* %25, i32 %26, i32 %27)
  %29 = load %struct.pt_encoder*, %struct.pt_encoder** %9, align 8
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @pt_encode_pip(%struct.pt_encoder* %29, i32 %30, i32 %31)
  %33 = load %struct.pt_encoder*, %struct.pt_encoder** %9, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @pt_ipc_update_16, align 4
  %36 = call i32 @pt_encode_tip(%struct.pt_encoder* %33, i32 %34, i32 %35)
  %37 = load i32, i32* @ptu_sync_decoder, align 4
  %38 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %8, align 8
  %39 = call i32 @ptu_check(i32 %37, %struct.pt_query_decoder* %38)
  %40 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %8, align 8
  %41 = call i32 @pt_qry_event(%struct.pt_query_decoder* %40, %struct.pt_event* %10, i32 32)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @pts_event_pending, align 4
  %44 = call i32 @ptu_int_eq(i32 %42, i32 %43)
  %45 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ptev_async_branch, align 4
  %48 = call i32 @ptu_int_eq(i32 %46, i32 %47)
  %49 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @ptu_uint_eq(i32 %52, i32 %53)
  %55 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @ptu_uint_eq(i32 %58, i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %3
  %64 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ptu_int_eq(i32 %65, i32 0)
  br label %75

67:                                               ; preds = %3
  %68 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ptu_int_eq(i32 %69, i32 1)
  %71 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @ptu_uint_eq(i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %67, %63
  %76 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %8, align 8
  %77 = call i32 @pt_qry_event(%struct.pt_query_decoder* %76, %struct.pt_event* %10, i32 32)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @pts_eos, align 4
  %80 = call i32 @ptu_int_eq(i32 %78, i32 %79)
  %81 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @ptev_async_paging, align 4
  %84 = call i32 @ptu_int_eq(i32 %82, i32 %83)
  %85 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @ptu_uint_eq(i32 %88, i32 %89)
  %91 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @pt_pl_pip_nr, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @ptu_uint_eq(i32 %94, i32 %99)
  %101 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @ptu_uint_eq(i32 %104, i32 %105)
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %75
  %110 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ptu_int_eq(i32 %111, i32 0)
  br label %121

113:                                              ; preds = %75
  %114 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ptu_int_eq(i32 %115, i32 1)
  %117 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @ptu_uint_eq(i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %113, %109
  %122 = call i32 (...) @ptu_passed()
  %123 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %4, i32 0, i32 0
  store i32 %122, i32* %123, align 4
  %124 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %4, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  ret i32 %125
}

declare dso_local i32 @pt_encode_fup(%struct.pt_encoder*, i32, i32) #1

declare dso_local i32 @pt_encode_pip(%struct.pt_encoder*, i32, i32) #1

declare dso_local i32 @pt_encode_tip(%struct.pt_encoder*, i32, i32) #1

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

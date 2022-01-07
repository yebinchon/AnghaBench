; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_indir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_indir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptu_decoder_fixture = type { %struct.TYPE_2__, i32, %struct.pt_encoder, %struct.pt_query_decoder }
%struct.TYPE_2__ = type { i32 }
%struct.pt_encoder = type { i32 }
%struct.pt_query_decoder = type { i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_packet_ip = type { i32, i32 }

@pt_dfix_bad_ip = common dso_local global i32 0, align 4
@pt_dfix_sext_ip = common dso_local global i32 0, align 4
@ptu_sync_decoder = common dso_local global i32 0, align 4
@pt_ipc_suppressed = common dso_local global i32 0, align 4
@pts_ip_suppressed = common dso_local global i32 0, align 4
@pts_eos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptu_decoder_fixture*, i32)* @indir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @indir(%struct.ptu_decoder_fixture* %0, i32 %1) #0 {
  %3 = alloca %struct.ptunit_result, align 4
  %4 = alloca %struct.ptu_decoder_fixture*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_query_decoder*, align 8
  %7 = alloca %struct.pt_encoder*, align 8
  %8 = alloca %struct.pt_packet_ip, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ptu_decoder_fixture* %0, %struct.ptu_decoder_fixture** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %4, align 8
  %12 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %11, i32 0, i32 3
  store %struct.pt_query_decoder* %12, %struct.pt_query_decoder** %6, align 8
  %13 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %4, align 8
  %14 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %13, i32 0, i32 2
  store %struct.pt_encoder* %14, %struct.pt_encoder** %7, align 8
  %15 = load i32, i32* @pt_dfix_bad_ip, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %5, align 4
  %17 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %8, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @pt_dfix_sext_ip, align 4
  %19 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %8, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %4, align 8
  %21 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %20, i32 0, i32 0
  %22 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %4, align 8
  %23 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %22, i32 0, i32 1
  %24 = call i32 @pt_last_ip_update_ip(%struct.TYPE_2__* %21, %struct.pt_packet_ip* %8, i32* %23)
  %25 = load %struct.pt_encoder*, %struct.pt_encoder** %7, align 8
  %26 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %8, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %8, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pt_encode_tip(%struct.pt_encoder* %25, i32 %27, i32 %29)
  %31 = load i32, i32* @ptu_sync_decoder, align 4
  %32 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %6, align 8
  %33 = call i32 @ptu_check(i32 %31, %struct.pt_query_decoder* %32)
  %34 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %6, align 8
  %35 = call i32 @pt_qry_indirect_branch(%struct.pt_query_decoder* %34, i32* %9)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @pt_ipc_suppressed, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %2
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @pts_ip_suppressed, align 4
  %42 = load i32, i32* @pts_eos, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @ptu_int_eq(i32 %40, i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @pt_dfix_bad_ip, align 4
  %47 = call i32 @ptu_uint_eq(i32 %45, i32 %46)
  br label %58

48:                                               ; preds = %2
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @pts_eos, align 4
  %51 = call i32 @ptu_int_eq(i32 %49, i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %4, align 8
  %54 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ptu_uint_eq(i32 %52, i32 %56)
  br label %58

58:                                               ; preds = %48, %39
  %59 = call i32 (...) @ptu_passed()
  %60 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %3, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %3, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  ret i32 %62
}

declare dso_local i32 @pt_last_ip_update_ip(%struct.TYPE_2__*, %struct.pt_packet_ip*, i32*) #1

declare dso_local i32 @pt_encode_tip(%struct.pt_encoder*, i32, i32) #1

declare dso_local i32 @ptu_check(i32, %struct.pt_query_decoder*) #1

declare dso_local i32 @pt_qry_indirect_branch(%struct.pt_query_decoder*, i32*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_uint_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_ptu_dfix_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_ptu_dfix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptu_decoder_fixture = type { i32 (%struct.ptu_decoder_fixture*)*, %struct.TYPE_4__, %struct.TYPE_3__, i32, i64, %struct.pt_config }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32 }
%struct.pt_config = type { i64, i64 }
%struct.ptunit_result = type { i32 }

@pt_dfix_bad_ip = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptu_decoder_fixture*)* @ptu_dfix_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptu_dfix_init(%struct.ptu_decoder_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.ptu_decoder_fixture*, align 8
  %4 = alloca %struct.pt_config*, align 8
  %5 = alloca i32, align 4
  store %struct.ptu_decoder_fixture* %0, %struct.ptu_decoder_fixture** %3, align 8
  %6 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %3, align 8
  %7 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %6, i32 0, i32 5
  store %struct.pt_config* %7, %struct.pt_config** %4, align 8
  %8 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %3, align 8
  %9 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @memset(i64 %10, i32 0, i32 8)
  %12 = load %struct.pt_config*, %struct.pt_config** %4, align 8
  %13 = call i32 @pt_config_init(%struct.pt_config* %12)
  %14 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %3, align 8
  %15 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.pt_config*, %struct.pt_config** %4, align 8
  %18 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  %19 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %3, align 8
  %20 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, 8
  %23 = load %struct.pt_config*, %struct.pt_config** %4, align 8
  %24 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %3, align 8
  %26 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %25, i32 0, i32 3
  %27 = load %struct.pt_config*, %struct.pt_config** %4, align 8
  %28 = call i32 @pt_encoder_init(i32* %26, %struct.pt_config* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @ptu_int_eq(i32 %29, i32 0)
  %31 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %3, align 8
  %32 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %31, i32 0, i32 1
  %33 = load %struct.pt_config*, %struct.pt_config** %4, align 8
  %34 = call i32 @pt_qry_decoder_init(%struct.TYPE_4__* %32, %struct.pt_config* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @ptu_int_eq(i32 %35, i32 0)
  %37 = load i32, i32* @pt_dfix_bad_ip, align 4
  %38 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %3, align 8
  %39 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  store i32 %37, i32* %41, align 8
  %42 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %3, align 8
  %43 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %3, align 8
  %47 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %3, align 8
  %51 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %50, i32 0, i32 2
  %52 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %3, align 8
  %53 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = bitcast %struct.TYPE_3__* %51 to i8*
  %56 = bitcast %struct.TYPE_3__* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 24, i1 false)
  %57 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %3, align 8
  %58 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %57, i32 0, i32 0
  %59 = load i32 (%struct.ptu_decoder_fixture*)*, i32 (%struct.ptu_decoder_fixture*)** %58, align 8
  %60 = icmp ne i32 (%struct.ptu_decoder_fixture*)* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %1
  %62 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %3, align 8
  %63 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %62, i32 0, i32 0
  %64 = load i32 (%struct.ptu_decoder_fixture*)*, i32 (%struct.ptu_decoder_fixture*)** %63, align 8
  %65 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %3, align 8
  %66 = call i32 %64(%struct.ptu_decoder_fixture* %65)
  br label %67

67:                                               ; preds = %61, %1
  %68 = call i32 (...) @ptu_passed()
  %69 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  ret i32 %71
}

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @pt_config_init(%struct.pt_config*) #1

declare dso_local i32 @pt_encoder_init(i32*, %struct.pt_config*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @pt_qry_decoder_init(%struct.TYPE_4__*, %struct.pt_config*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

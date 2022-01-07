; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/dns64/extr_dns64.c_generate_type_A_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/dns64/extr_dns64.c_generate_type_A_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32, i32**, i32*, i32, %struct.TYPE_2__*, %struct.query_info }
%struct.TYPE_2__ = type { i32 (%struct.module_qstate*, %struct.query_info*, i32, i32, i32, %struct.module_qstate**)* }
%struct.query_info = type { i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"dns64: query A record\00", align 1
@LDNS_RR_TYPE_A = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"dns64: sub-query creation failed\00", align 1
@module_error = common dso_local global i32 0, align 4
@module_state_initial = common dso_local global i32 0, align 4
@module_wait_subquery = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, i32)* @generate_type_A_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_type_A_query(%struct.module_qstate* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.module_qstate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.module_qstate*, align 8
  %7 = alloca %struct.query_info, align 4
  store %struct.module_qstate* %0, %struct.module_qstate** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.module_qstate* null, %struct.module_qstate** %6, align 8
  %8 = load i32, i32* @VERB_ALGO, align 4
  %9 = call i32 @verbose(i32 %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %11 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %10, i32 0, i32 5
  %12 = bitcast %struct.query_info* %7 to i8*
  %13 = bitcast %struct.query_info* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 8 %13, i64 4, i1 false)
  %14 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %15 = getelementptr inbounds %struct.query_info, %struct.query_info* %7, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %17 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %16, i32 0, i32 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.module_qstate*, %struct.query_info*, i32, i32, i32, %struct.module_qstate**)*, i32 (%struct.module_qstate*, %struct.query_info*, i32, i32, i32, %struct.module_qstate**)** %19, align 8
  %21 = call i32 @fptr_whitelist_modenv_attach_sub(i32 (%struct.module_qstate*, %struct.query_info*, i32, i32, i32, %struct.module_qstate**)* %20)
  %22 = call i32 @fptr_ok(i32 %21)
  %23 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %24 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %23, i32 0, i32 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.module_qstate*, %struct.query_info*, i32, i32, i32, %struct.module_qstate**)*, i32 (%struct.module_qstate*, %struct.query_info*, i32, i32, i32, %struct.module_qstate**)** %26, align 8
  %28 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %29 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %30 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %27(%struct.module_qstate* %28, %struct.query_info* %7, i32 %31, i32 0, i32 0, %struct.module_qstate** %6)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* @VERB_ALGO, align 4
  %36 = call i32 @verbose(i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @module_error, align 4
  store i32 %37, i32* %3, align 4
  br label %60

38:                                               ; preds = %2
  %39 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %40 = icmp ne %struct.module_qstate* %39, null
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %44 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @module_state_initial, align 4
  %46 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %47 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %45, i32* %51, align 4
  %52 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %53 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %52, i32 0, i32 1
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %41, %38
  %59 = load i32, i32* @module_wait_subquery, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %34
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @verbose(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_modenv_attach_sub(i32 (%struct.module_qstate*, %struct.query_info*, i32, i32, i32, %struct.module_qstate**)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

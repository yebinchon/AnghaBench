; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_generate_dnskey_prefetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_generate_dnskey_prefetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32, i32, i64*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.iter_qstate = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@LDNS_RR_TYPE_DNSKEY = common dso_local global i64 0, align 8
@BIT_RD = common dso_local global i32 0, align 4
@BIT_CD = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"schedule dnskey prefetch\00", align 1
@INIT_REQUEST_STATE = common dso_local global i32 0, align 4
@FINISHED_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"could not generate dnskey prefetch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_qstate*, %struct.iter_qstate*, i32)* @generate_dnskey_prefetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_dnskey_prefetch(%struct.module_qstate* %0, %struct.iter_qstate* %1, i32 %2) #0 {
  %4 = alloca %struct.module_qstate*, align 8
  %5 = alloca %struct.iter_qstate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.module_qstate*, align 8
  %8 = alloca %struct.iter_qstate*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %4, align 8
  store %struct.iter_qstate* %1, %struct.iter_qstate** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %10 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = call i32 @log_assert(%struct.TYPE_8__* %11)
  %13 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %14 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LDNS_RR_TYPE_DNSKEY, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %3
  %20 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %21 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %26 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @query_dname_compare(i32 %24, i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %19
  %32 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %33 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @BIT_RD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %40 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @BIT_CD, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  br label %105

46:                                               ; preds = %38, %31, %19, %3
  %47 = load i32, i32* @VERB_ALGO, align 4
  %48 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %49 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* @LDNS_RR_TYPE_DNSKEY, align 8
  %54 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %55 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @log_nametypeclass(i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %52, i64 %53, i32 %57)
  %59 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %60 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %65 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* @LDNS_RR_TYPE_DNSKEY, align 8
  %70 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %71 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %77 = load i32, i32* @INIT_REQUEST_STATE, align 4
  %78 = load i32, i32* @FINISHED_STATE, align 4
  %79 = call i32 @generate_sub_request(i32 %63, i32 %68, i64 %69, i32 %73, %struct.module_qstate* %74, i32 %75, %struct.iter_qstate* %76, i32 %77, i32 %78, %struct.module_qstate** %7, i32 0)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %46
  %82 = load i32, i32* @VERB_ALGO, align 4
  %83 = call i32 @verbose(i32 %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %105

84:                                               ; preds = %46
  %85 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %86 = icmp ne %struct.module_qstate* %85, null
  br i1 %86, label %87, label %105

87:                                               ; preds = %84
  %88 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %89 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %88, i32 0, i32 2
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to %struct.iter_qstate*
  store %struct.iter_qstate* %95, %struct.iter_qstate** %8, align 8
  %96 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %97 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %96, i32 0, i32 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %100 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call %struct.TYPE_8__* @delegpt_copy(%struct.TYPE_8__* %98, i32 %101)
  %103 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %104 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %103, i32 0, i32 0
  store %struct.TYPE_8__* %102, %struct.TYPE_8__** %104, align 8
  br label %105

105:                                              ; preds = %45, %81, %87, %84
  ret void
}

declare dso_local i32 @log_assert(%struct.TYPE_8__*) #1

declare dso_local i64 @query_dname_compare(i32, i32) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @generate_sub_request(i32, i32, i64, i32, %struct.module_qstate*, i32, %struct.iter_qstate*, i32, i32, %struct.module_qstate**, i32) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local %struct.TYPE_8__* @delegpt_copy(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

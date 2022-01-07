; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_processPrimeResponse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_processPrimeResponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32*, %struct.TYPE_9__, %struct.TYPE_8__*, %struct.TYPE_10__*, i32, i64* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.iter_qstate = type { i32, %struct.TYPE_10__*, i32, i32, i64 }

@BIT_RD = common dso_local global i32 0, align 4
@BIT_RA = common dso_local global i32 0, align 4
@RESPONSE_TYPE_ANSWER = common dso_local global i32 0, align 4
@LDNS_RCODE_NOERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"prime response did not get an answer\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@LDNS_RCODE_SERVFAIL = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"schedule prime validation\00", align 1
@INIT_REQUEST_STATE = common dso_local global i32 0, align 4
@FINISHED_STATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"could not generate prime check\00", align 1
@module_finished = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, i32)* @processPrimeResponse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processPrimeResponse(%struct.module_qstate* %0, i32 %1) #0 {
  %3 = alloca %struct.module_qstate*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iter_qstate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.module_qstate*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %9 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %8, i32 0, i32 5
  %10 = load i64*, i64** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, i64* %10, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.iter_qstate*
  store %struct.iter_qstate* %15, %struct.iter_qstate** %5, align 8
  %16 = load i32, i32* @BIT_RD, align 4
  %17 = load i32, i32* @BIT_RA, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %21 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %19
  store i32 %27, i32* %25, align 4
  %28 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %29 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @BIT_RD, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %2
  %35 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %36 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %34, %2
  %40 = phi i1 [ true, %2 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  %42 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %43 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %42, i32 0, i32 1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %46 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %45, i32 0, i32 3
  %47 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %48 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @response_type_from_server(i32 %41, %struct.TYPE_10__* %44, i32* %46, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @RESPONSE_TYPE_ANSWER, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %39
  %55 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %56 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %57 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %59 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %58, i32 0, i32 1
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %62 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %61, i32 0, i32 3
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %62, align 8
  br label %77

63:                                               ; preds = %39
  %64 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %65 = call i32 @errinf(%struct.module_qstate* %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %67 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %68 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @errinf_dname(%struct.module_qstate* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %73 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %74 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %76 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %75, i32 0, i32 3
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %76, align 8
  br label %77

77:                                               ; preds = %63, %54
  %78 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %79 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %78, i32 0, i32 2
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %132

86:                                               ; preds = %77
  store %struct.module_qstate* null, %struct.module_qstate** %7, align 8
  %87 = load i32, i32* @VERB_ALGO, align 4
  %88 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %89 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %93 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %97 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @log_nametypeclass(i32 %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %91, i32 %95, i32 %99)
  %101 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %102 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %106 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %110 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %114 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %118 = load i32, i32* %4, align 4
  %119 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %120 = load i32, i32* @INIT_REQUEST_STATE, align 4
  %121 = load i32, i32* @FINISHED_STATE, align 4
  %122 = call i32 @generate_sub_request(i32 %104, i32 %108, i32 %112, i32 %116, %struct.module_qstate* %117, i32 %118, %struct.iter_qstate* %119, i32 %120, i32 %121, %struct.module_qstate** %7, i32 1)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %86
  %125 = load i32, i32* @VERB_ALGO, align 4
  %126 = call i32 @verbose(i32 %125, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %86
  %128 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %129 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @generate_a_aaaa_check(%struct.module_qstate* %128, %struct.iter_qstate* %129, i32 %130)
  br label %132

132:                                              ; preds = %127, %77
  %133 = load i32, i32* @module_finished, align 4
  %134 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %135 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %4, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %133, i32* %139, align 4
  ret i32 0
}

declare dso_local i32 @response_type_from_server(i32, %struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @errinf(%struct.module_qstate*, i8*) #1

declare dso_local i32 @errinf_dname(%struct.module_qstate*, i8*, i32) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @generate_sub_request(i32, i32, i32, i32, %struct.module_qstate*, i32, %struct.iter_qstate*, i32, i32, %struct.module_qstate**, i32) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @generate_a_aaaa_check(%struct.module_qstate*, %struct.iter_qstate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

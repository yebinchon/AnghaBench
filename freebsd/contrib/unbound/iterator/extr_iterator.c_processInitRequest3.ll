; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_processInitRequest3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_processInitRequest3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32, %struct.TYPE_7__*, i32, i64, i32 }
%struct.TYPE_7__ = type { i32 (%struct.module_qstate*)*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.iter_qstate = type { i32, i64, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_5__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"resolving (init part 3): \00", align 1
@BIT_RD = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"no RD requested, using delegation msg\00", align 1
@BIT_CD = common dso_local global i32 0, align 4
@QUERYTARGETS_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, %struct.iter_qstate*, i32)* @processInitRequest3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processInitRequest3(%struct.module_qstate* %0, %struct.iter_qstate* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.module_qstate*, align 8
  %6 = alloca %struct.iter_qstate*, align 8
  %7 = alloca i32, align 4
  store %struct.module_qstate* %0, %struct.module_qstate** %5, align 8
  store %struct.iter_qstate* %1, %struct.iter_qstate** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* @VERB_QUERY, align 4
  %9 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %10 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %9, i32 0, i32 4
  %11 = call i32 @log_query_info(i32 %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %10)
  %12 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %13 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %12, i32 0, i32 1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %16 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %19 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %18, i32 0, i32 3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %22 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @iter_indicates_dnssec(%struct.TYPE_7__* %14, i32 %17, %struct.TYPE_8__* %20, i32 %24)
  %26 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %27 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %29 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @BIT_RD, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %79, label %34

34:                                               ; preds = %3
  %35 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %36 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %35, i32 0, i32 3
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = icmp ne %struct.TYPE_8__* %37, null
  br i1 %38, label %39, label %79

39:                                               ; preds = %34
  %40 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %41 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %40, i32 0, i32 3
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %44 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %43, i32 0, i32 2
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %44, align 8
  %45 = load i64, i64* @verbosity, align 8
  %46 = load i64, i64* @VERB_ALGO, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %39
  %49 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %50 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %49, i32 0, i32 2
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = icmp ne %struct.TYPE_8__* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %55 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %54, i32 0, i32 2
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %59 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %58, i32 0, i32 2
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @log_dns_msg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32* %57, i32 %62)
  br label %64

64:                                               ; preds = %53, %48, %39
  %65 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %66 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %71 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %70, i32 0, i32 3
  %72 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %73 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @sock_list_insert(i64* %71, i32* null, i32 0, i32 %74)
  br label %76

76:                                               ; preds = %69, %64
  %77 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %78 = call i32 @final_state(%struct.iter_qstate* %77)
  store i32 %78, i32* %4, align 4
  br label %129

79:                                               ; preds = %34, %3
  %80 = load i32, i32* @BIT_RD, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %83 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %87 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %125

90:                                               ; preds = %79
  %91 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %92 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %91, i32 0, i32 1
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %125

99:                                               ; preds = %90
  %100 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %101 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @BIT_CD, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %125, label %106

106:                                              ; preds = %99
  %107 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %108 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @generate_dnskey_prefetch(%struct.module_qstate* %107, %struct.iter_qstate* %108, i32 %109)
  %111 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %112 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %111, i32 0, i32 1
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32 (%struct.module_qstate*)*, i32 (%struct.module_qstate*)** %114, align 8
  %116 = call i32 @fptr_whitelist_modenv_detach_subs(i32 (%struct.module_qstate*)* %115)
  %117 = call i32 @fptr_ok(i32 %116)
  %118 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %119 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %118, i32 0, i32 1
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32 (%struct.module_qstate*)*, i32 (%struct.module_qstate*)** %121, align 8
  %123 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %124 = call i32 %122(%struct.module_qstate* %123)
  br label %125

125:                                              ; preds = %106, %99, %90, %79
  %126 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %127 = load i32, i32* @QUERYTARGETS_STATE, align 4
  %128 = call i32 @next_state(%struct.iter_qstate* %126, i32 %127)
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %125, %76
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @log_query_info(i32, i8*, i32*) #1

declare dso_local i64 @iter_indicates_dnssec(%struct.TYPE_7__*, i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @log_dns_msg(i8*, i32*, i32) #1

declare dso_local i32 @sock_list_insert(i64*, i32*, i32, i32) #1

declare dso_local i32 @final_state(%struct.iter_qstate*) #1

declare dso_local i32 @generate_dnskey_prefetch(%struct.module_qstate*, %struct.iter_qstate*, i32) #1

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_modenv_detach_subs(i32 (%struct.module_qstate*)*) #1

declare dso_local i32 @next_state(%struct.iter_qstate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

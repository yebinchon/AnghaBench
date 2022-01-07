; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_generate_ns_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_generate_ns_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32, %struct.TYPE_10__*, i32, i64*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 (%struct.module_qstate*)*, i64* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.iter_qstate = type { i64, i32, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.iter_env = type { i64 }

@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@BIT_RD = common dso_local global i32 0, align 4
@BIT_CD = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_DS = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"schedule ns fetch\00", align 1
@INIT_REQUEST_STATE = common dso_local global i32 0, align 4
@FINISHED_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"could not generate ns check\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"out of memory generating ns check, copydp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_qstate*, %struct.iter_qstate*, i32)* @generate_ns_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_ns_check(%struct.module_qstate* %0, %struct.iter_qstate* %1, i32 %2) #0 {
  %4 = alloca %struct.module_qstate*, align 8
  %5 = alloca %struct.iter_qstate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iter_env*, align 8
  %8 = alloca %struct.module_qstate*, align 8
  %9 = alloca %struct.iter_qstate*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %4, align 8
  store %struct.iter_qstate* %1, %struct.iter_qstate** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %11 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %10, i32 0, i32 1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.iter_env*
  store %struct.iter_env* %19, %struct.iter_env** %7, align 8
  %20 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %21 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %20, i32 0, i32 2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = call i32 @log_assert(%struct.TYPE_9__* %22)
  %24 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %25 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.iter_env*, %struct.iter_env** %7, align 8
  %28 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %181

32:                                               ; preds = %3
  %33 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %34 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %33, i32 0, i32 1
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %37 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %36, i32 0, i32 2
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %42 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %41, i32 0, i32 2
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %47 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @can_have_last_resort(%struct.TYPE_10__* %35, i32 %40, i32 %45, i32 %49, i32* null)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %32
  br label %181

53:                                               ; preds = %32
  %54 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %55 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %91

60:                                               ; preds = %53
  %61 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %62 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %61, i32 0, i32 2
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %67 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @query_dname_compare(i32 %65, i32 %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %60
  %73 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %74 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @BIT_RD, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %72
  %80 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %81 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @BIT_CD, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %79
  %87 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %88 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @generate_a_aaaa_check(%struct.module_qstate* %87, %struct.iter_qstate* %88, i32 %89)
  br label %181

91:                                               ; preds = %79, %72, %60, %53
  %92 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %93 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %181

99:                                               ; preds = %91
  %100 = load i32, i32* @VERB_ALGO, align 4
  %101 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %102 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %101, i32 0, i32 2
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %107 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %108 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @log_nametypeclass(i32 %100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %105, i64 %106, i32 %110)
  %112 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %113 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %112, i32 0, i32 2
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %118 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %117, i32 0, i32 2
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %123 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %124 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %130 = load i32, i32* @INIT_REQUEST_STATE, align 4
  %131 = load i32, i32* @FINISHED_STATE, align 4
  %132 = call i32 @generate_sub_request(i32 %116, i32 %121, i64 %122, i32 %126, %struct.module_qstate* %127, i32 %128, %struct.iter_qstate* %129, i32 %130, i32 %131, %struct.module_qstate** %8, i32 1)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %99
  %135 = load i32, i32* @VERB_ALGO, align 4
  %136 = call i32 @verbose(i32 %135, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %181

137:                                              ; preds = %99
  %138 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %139 = icmp ne %struct.module_qstate* %138, null
  br i1 %139, label %140, label %181

140:                                              ; preds = %137
  %141 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %142 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %141, i32 0, i32 3
  %143 = load i64*, i64** %142, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = inttoptr i64 %147 to %struct.iter_qstate*
  store %struct.iter_qstate* %148, %struct.iter_qstate** %9, align 8
  %149 = load %struct.iter_qstate*, %struct.iter_qstate** %9, align 8
  %150 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %149, i32 0, i32 1
  store i32 1, i32* %150, align 8
  %151 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %152 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %151, i32 0, i32 2
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %152, align 8
  %154 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %155 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call %struct.TYPE_9__* @delegpt_copy(%struct.TYPE_9__* %153, i32 %156)
  %158 = load %struct.iter_qstate*, %struct.iter_qstate** %9, align 8
  %159 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %158, i32 0, i32 2
  store %struct.TYPE_9__* %157, %struct.TYPE_9__** %159, align 8
  %160 = load %struct.iter_qstate*, %struct.iter_qstate** %9, align 8
  %161 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %160, i32 0, i32 2
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = icmp ne %struct.TYPE_9__* %162, null
  br i1 %163, label %180, label %164

164:                                              ; preds = %140
  %165 = call i32 @log_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %166 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %167 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %166, i32 0, i32 1
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i32 (%struct.module_qstate*)*, i32 (%struct.module_qstate*)** %169, align 8
  %171 = call i32 @fptr_whitelist_modenv_kill_sub(i32 (%struct.module_qstate*)* %170)
  %172 = call i32 @fptr_ok(i32 %171)
  %173 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %174 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %173, i32 0, i32 1
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i32 (%struct.module_qstate*)*, i32 (%struct.module_qstate*)** %176, align 8
  %178 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %179 = call i32 %177(%struct.module_qstate* %178)
  br label %181

180:                                              ; preds = %140
  br label %181

181:                                              ; preds = %31, %52, %86, %98, %134, %164, %180, %137
  ret void
}

declare dso_local i32 @log_assert(%struct.TYPE_9__*) #1

declare dso_local i32 @can_have_last_resort(%struct.TYPE_10__*, i32, i32, i32, i32*) #1

declare dso_local i64 @query_dname_compare(i32, i32) #1

declare dso_local i32 @generate_a_aaaa_check(%struct.module_qstate*, %struct.iter_qstate*, i32) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @generate_sub_request(i32, i32, i64, i32, %struct.module_qstate*, i32, %struct.iter_qstate*, i32, i32, %struct.module_qstate**, i32) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local %struct.TYPE_9__* @delegpt_copy(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_modenv_kill_sub(i32 (%struct.module_qstate*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

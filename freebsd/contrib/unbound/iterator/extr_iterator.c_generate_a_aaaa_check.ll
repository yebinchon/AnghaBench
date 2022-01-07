; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_generate_a_aaaa_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_generate_a_aaaa_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32, %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.TYPE_5__ = type { i64* }
%struct.iter_qstate = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.reply_info* }
%struct.reply_info = type { i64, i64, i64, %struct.ub_packed_rrset_key** }
%struct.ub_packed_rrset_key = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.iter_env = type { i64 }

@LDNS_RR_TYPE_A = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_AAAA = common dso_local global i64 0, align 8
@BIT_RD = common dso_local global i32 0, align 4
@BIT_CD = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"schedule addr fetch\00", align 1
@INIT_REQUEST_STATE = common dso_local global i32 0, align 4
@FINISHED_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"could not generate addr check\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_qstate*, %struct.iter_qstate*, i32)* @generate_a_aaaa_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_a_aaaa_check(%struct.module_qstate* %0, %struct.iter_qstate* %1, i32 %2) #0 {
  %4 = alloca %struct.module_qstate*, align 8
  %5 = alloca %struct.iter_qstate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iter_env*, align 8
  %8 = alloca %struct.module_qstate*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.reply_info*, align 8
  %11 = alloca %struct.ub_packed_rrset_key*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %4, align 8
  store %struct.iter_qstate* %1, %struct.iter_qstate** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %13 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.iter_env*
  store %struct.iter_env* %21, %struct.iter_env** %7, align 8
  %22 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %23 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %22, i32 0, i32 2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.reply_info*, %struct.reply_info** %25, align 8
  store %struct.reply_info* %26, %struct.reply_info** %10, align 8
  %27 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %28 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @log_assert(i32 %29)
  %31 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %32 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.iter_env*, %struct.iter_env** %7, align 8
  %35 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %3
  br label %173

39:                                               ; preds = %3
  %40 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %41 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %44 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %42, %45
  store i64 %46, i64* %9, align 8
  br label %47

47:                                               ; preds = %170, %39
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %50 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %53, label %173

53:                                               ; preds = %47
  %54 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %55 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %54, i32 0, i32 3
  %56 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %56, i64 %57
  %59 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %58, align 8
  store %struct.ub_packed_rrset_key* %59, %struct.ub_packed_rrset_key** %11, align 8
  %60 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %61 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @ntohs(i32 %63)
  %65 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %76, label %67

67:                                               ; preds = %53
  %68 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %69 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @ntohs(i32 %71)
  %73 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %76, label %75

75:                                               ; preds = %67
  br label %170

76:                                               ; preds = %67, %53
  %77 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %78 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %82 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @ntohs(i32 %84)
  %86 = icmp eq i64 %80, %85
  br i1 %86, label %87, label %124

87:                                               ; preds = %76
  %88 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %89 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %93 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @ntohs(i32 %95)
  %97 = icmp eq i64 %91, %96
  br i1 %97, label %98, label %124

98:                                               ; preds = %87
  %99 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %100 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %104 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @query_dname_compare(i32 %102, i32 %106)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %98
  %110 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %111 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @BIT_RD, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %109
  %117 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %118 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @BIT_CD, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %116
  br label %170

124:                                              ; preds = %116, %109, %98, %87, %76
  %125 = load i32, i32* @VERB_ALGO, align 4
  %126 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %127 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %131 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @ntohs(i32 %133)
  %135 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %136 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @ntohs(i32 %138)
  %140 = call i32 @log_nametypeclass(i32 %125, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %129, i64 %134, i64 %139)
  %141 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %142 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %146 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %150 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @ntohs(i32 %152)
  %154 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %155 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @ntohs(i32 %157)
  %159 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %160 = load i32, i32* %6, align 4
  %161 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %162 = load i32, i32* @INIT_REQUEST_STATE, align 4
  %163 = load i32, i32* @FINISHED_STATE, align 4
  %164 = call i32 @generate_sub_request(i32 %144, i32 %148, i64 %153, i64 %158, %struct.module_qstate* %159, i32 %160, %struct.iter_qstate* %161, i32 %162, i32 %163, %struct.module_qstate** %8, i32 1)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %124
  %167 = load i32, i32* @VERB_ALGO, align 4
  %168 = call i32 @verbose(i32 %167, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %173

169:                                              ; preds = %124
  br label %170

170:                                              ; preds = %169, %123, %75
  %171 = load i64, i64* %9, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %9, align 8
  br label %47

173:                                              ; preds = %38, %166, %47
  ret void
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @query_dname_compare(i32, i32) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32, i64, i64) #1

declare dso_local i32 @generate_sub_request(i32, i32, i64, i64, %struct.module_qstate*, i32, %struct.iter_qstate*, i32, i32, %struct.module_qstate**, i32) #1

declare dso_local i32 @verbose(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

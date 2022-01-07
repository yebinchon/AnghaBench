; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_prove_nods.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_prove_nods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.val_env = type { i32 }
%struct.ub_packed_rrset_key = type { i32 }
%struct.query_info = type { i64, i32, i32 }
%struct.key_entry_key = type { i32 }
%struct.module_qstate = type { i32 }
%struct.nsec3_filter = type { i32 }
%struct.ce_response = type { i32, i32 }

@LDNS_RR_TYPE_DS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"no valid NSEC3s\00", align 1
@sec_status_bogus = common dso_local global i32 0, align 4
@nsec3_hash_cmp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"no NSEC3 records\00", align 1
@sec_status_insecure = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_SOA = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"nsec3 provenods: NSEC3 is from child zone, bogus\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"NSEC3 from child zone\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"nsec3 provenods: NSEC3 has qtype DS, bogus\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"NSEC3 has DS in bitmap\00", align 1
@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@sec_status_indeterminate = common dso_local global i32 0, align 4
@sec_status_secure = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [75 x i8] c"nsec3 provenods: did not match qname, nor found a proven closest encloser.\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"no NSEC3 closest encloser\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"nsec3 nods proof: no next closer nsec3\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"no NSEC3 next closer\00", align 1
@.str.10 = private unnamed_addr constant [86 x i8] c"nsec3 provenods: covering NSEC3 was not opt-out in an opt-out DS NOERROR/NODATA case.\00", align 1
@.str.11 = private unnamed_addr constant [68 x i8] c"covering NSEC3 was not opt-out in an opt-out DS NOERROR/NODATA case\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nsec3_prove_nods(%struct.module_env* %0, %struct.val_env* %1, %struct.ub_packed_rrset_key** %2, i64 %3, %struct.query_info* %4, %struct.key_entry_key* %5, i8** %6, %struct.module_qstate* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.module_env*, align 8
  %11 = alloca %struct.val_env*, align 8
  %12 = alloca %struct.ub_packed_rrset_key**, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.query_info*, align 8
  %15 = alloca %struct.key_entry_key*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca %struct.module_qstate*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.nsec3_filter, align 4
  %20 = alloca %struct.ce_response, align 4
  %21 = alloca %struct.ub_packed_rrset_key*, align 8
  %22 = alloca i32, align 4
  store %struct.module_env* %0, %struct.module_env** %10, align 8
  store %struct.val_env* %1, %struct.val_env** %11, align 8
  store %struct.ub_packed_rrset_key** %2, %struct.ub_packed_rrset_key*** %12, align 8
  store i64 %3, i64* %13, align 8
  store %struct.query_info* %4, %struct.query_info** %14, align 8
  store %struct.key_entry_key* %5, %struct.key_entry_key** %15, align 8
  store i8** %6, i8*** %16, align 8
  store %struct.module_qstate* %7, %struct.module_qstate** %17, align 8
  %23 = load %struct.query_info*, %struct.query_info** %14, align 8
  %24 = getelementptr inbounds %struct.query_info, %struct.query_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @log_assert(i32 %28)
  %30 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %12, align 8
  %31 = icmp ne %struct.ub_packed_rrset_key** %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %8
  %33 = load i64, i64* %13, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = load %struct.key_entry_key*, %struct.key_entry_key** %15, align 8
  %37 = icmp ne %struct.key_entry_key* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.key_entry_key*, %struct.key_entry_key** %15, align 8
  %40 = call i32 @key_entry_isgood(%struct.key_entry_key* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38, %35, %32, %8
  %43 = load i8**, i8*** %16, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %43, align 8
  %44 = load i32, i32* @sec_status_bogus, align 4
  store i32 %44, i32* %9, align 4
  br label %161

45:                                               ; preds = %38
  %46 = load %struct.module_env*, %struct.module_env** %10, align 8
  %47 = load %struct.val_env*, %struct.val_env** %11, align 8
  %48 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %12, align 8
  %49 = load i64, i64* %13, align 8
  %50 = load %struct.key_entry_key*, %struct.key_entry_key** %15, align 8
  %51 = load i8**, i8*** %16, align 8
  %52 = load %struct.module_qstate*, %struct.module_qstate** %17, align 8
  %53 = call i32 @list_is_secure(%struct.module_env* %46, %struct.val_env* %47, %struct.ub_packed_rrset_key** %48, i64 %49, %struct.key_entry_key* %50, i8** %51, %struct.module_qstate* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %45
  %56 = load i32, i32* @sec_status_bogus, align 4
  store i32 %56, i32* %9, align 4
  br label %161

57:                                               ; preds = %45
  %58 = call i32 @rbtree_init(i32* %18, i32* @nsec3_hash_cmp)
  %59 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %12, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load %struct.query_info*, %struct.query_info** %14, align 8
  %62 = call i32 @filter_init(%struct.nsec3_filter* %19, %struct.ub_packed_rrset_key** %59, i64 %60, %struct.query_info* %61)
  %63 = getelementptr inbounds %struct.nsec3_filter, %struct.nsec3_filter* %19, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %57
  %67 = load i8**, i8*** %16, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %67, align 8
  %68 = load i32, i32* @sec_status_bogus, align 4
  store i32 %68, i32* %9, align 4
  br label %161

69:                                               ; preds = %57
  %70 = load %struct.val_env*, %struct.val_env** %11, align 8
  %71 = load %struct.key_entry_key*, %struct.key_entry_key** %15, align 8
  %72 = call i64 @nsec3_iteration_count_high(%struct.val_env* %70, %struct.nsec3_filter* %19, %struct.key_entry_key* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @sec_status_insecure, align 4
  store i32 %75, i32* %9, align 4
  br label %161

76:                                               ; preds = %69
  %77 = load %struct.module_env*, %struct.module_env** %10, align 8
  %78 = load %struct.query_info*, %struct.query_info** %14, align 8
  %79 = getelementptr inbounds %struct.query_info, %struct.query_info* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.query_info*, %struct.query_info** %14, align 8
  %82 = getelementptr inbounds %struct.query_info, %struct.query_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @find_matching_nsec3(%struct.module_env* %77, %struct.nsec3_filter* %19, i32* %18, i32 %80, i32 %83, %struct.ub_packed_rrset_key** %21, i32* %22)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %124

86:                                               ; preds = %76
  %87 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %21, align 8
  %88 = load i32, i32* %22, align 4
  %89 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %90 = call i64 @nsec3_has_type(%struct.ub_packed_rrset_key* %87, i32 %88, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %86
  %93 = load %struct.query_info*, %struct.query_info** %14, align 8
  %94 = getelementptr inbounds %struct.query_info, %struct.query_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 1
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load i32, i32* @VERB_ALGO, align 4
  %99 = call i32 @verbose(i32 %98, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i8**, i8*** %16, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %100, align 8
  %101 = load i32, i32* @sec_status_bogus, align 4
  store i32 %101, i32* %9, align 4
  br label %161

102:                                              ; preds = %92, %86
  %103 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %21, align 8
  %104 = load i32, i32* %22, align 4
  %105 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %106 = call i64 @nsec3_has_type(%struct.ub_packed_rrset_key* %103, i32 %104, i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load i32, i32* @VERB_ALGO, align 4
  %110 = call i32 @verbose(i32 %109, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %111 = load i8**, i8*** %16, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8** %111, align 8
  %112 = load i32, i32* @sec_status_bogus, align 4
  store i32 %112, i32* %9, align 4
  br label %161

113:                                              ; preds = %102
  br label %114

114:                                              ; preds = %113
  %115 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %21, align 8
  %116 = load i32, i32* %22, align 4
  %117 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %118 = call i64 @nsec3_has_type(%struct.ub_packed_rrset_key* %115, i32 %116, i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %114
  %121 = load i32, i32* @sec_status_indeterminate, align 4
  store i32 %121, i32* %9, align 4
  br label %161

122:                                              ; preds = %114
  %123 = load i32, i32* @sec_status_secure, align 4
  store i32 %123, i32* %9, align 4
  br label %161

124:                                              ; preds = %76
  %125 = load %struct.module_env*, %struct.module_env** %10, align 8
  %126 = load %struct.query_info*, %struct.query_info** %14, align 8
  %127 = call i32 @nsec3_prove_closest_encloser(%struct.module_env* %125, %struct.nsec3_filter* %19, i32* %18, %struct.query_info* %126, i32 1, %struct.ce_response* %20)
  %128 = load i32, i32* @sec_status_secure, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %124
  %131 = load i32, i32* @VERB_ALGO, align 4
  %132 = call i32 @verbose(i32 %131, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.6, i64 0, i64 0))
  %133 = load i8**, i8*** %16, align 8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8** %133, align 8
  %134 = load i32, i32* @sec_status_bogus, align 4
  store i32 %134, i32* %9, align 4
  br label %161

135:                                              ; preds = %124
  %136 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %20, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* @VERB_ALGO, align 4
  %141 = call i32 @verbose(i32 %140, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %142 = load i8**, i8*** %16, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8** %142, align 8
  %143 = load i32, i32* @sec_status_bogus, align 4
  store i32 %143, i32* %9, align 4
  br label %161

144:                                              ; preds = %135
  %145 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %20, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @log_assert(i32 %146)
  %148 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %20, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %20, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @nsec3_has_optout(i32 %149, i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %159, label %154

154:                                              ; preds = %144
  %155 = load i32, i32* @VERB_ALGO, align 4
  %156 = call i32 @verbose(i32 %155, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.10, i64 0, i64 0))
  %157 = load i8**, i8*** %16, align 8
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i64 0, i64 0), i8** %157, align 8
  %158 = load i32, i32* @sec_status_bogus, align 4
  store i32 %158, i32* %9, align 4
  br label %161

159:                                              ; preds = %144
  %160 = load i32, i32* @sec_status_insecure, align 4
  store i32 %160, i32* %9, align 4
  br label %161

161:                                              ; preds = %159, %154, %139, %130, %122, %120, %108, %97, %74, %66, %55, %42
  %162 = load i32, i32* %9, align 4
  ret i32 %162
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @key_entry_isgood(%struct.key_entry_key*) #1

declare dso_local i32 @list_is_secure(%struct.module_env*, %struct.val_env*, %struct.ub_packed_rrset_key**, i64, %struct.key_entry_key*, i8**, %struct.module_qstate*) #1

declare dso_local i32 @rbtree_init(i32*, i32*) #1

declare dso_local i32 @filter_init(%struct.nsec3_filter*, %struct.ub_packed_rrset_key**, i64, %struct.query_info*) #1

declare dso_local i64 @nsec3_iteration_count_high(%struct.val_env*, %struct.nsec3_filter*, %struct.key_entry_key*) #1

declare dso_local i64 @find_matching_nsec3(%struct.module_env*, %struct.nsec3_filter*, i32*, i32, i32, %struct.ub_packed_rrset_key**, i32*) #1

declare dso_local i64 @nsec3_has_type(%struct.ub_packed_rrset_key*, i32, i64) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @nsec3_prove_closest_encloser(%struct.module_env*, %struct.nsec3_filter*, i32*, %struct.query_info*, i32, %struct.ce_response*) #1

declare dso_local i32 @nsec3_has_optout(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

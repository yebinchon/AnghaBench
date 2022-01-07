; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_validate_nodata_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_validate_nodata_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.val_env = type { i32 }
%struct.query_info = type { i32 }
%struct.reply_info = type { i64, i64, i32, %struct.ub_packed_rrset_key** }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.key_entry_key = type { i32 }

@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"delegation is insecure\00", align 1
@sec_status_insecure = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_NSEC3 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"NODATA response is insecure\00", align 1
@sec_status_secure = common dso_local global i32 0, align 4
@VERB_QUERY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [62 x i8] c"NODATA response failed to prove NODATA status with NSEC/NSEC3\00", align 1
@verbosity = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"Failed NODATA\00", align 1
@sec_status_bogus = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"successfully validated NODATA response.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_env*, %struct.val_env*, %struct.query_info*, %struct.reply_info*, %struct.key_entry_key*)* @validate_nodata_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_nodata_response(%struct.module_env* %0, %struct.val_env* %1, %struct.query_info* %2, %struct.reply_info* %3, %struct.key_entry_key* %4) #0 {
  %6 = alloca %struct.module_env*, align 8
  %7 = alloca %struct.val_env*, align 8
  %8 = alloca %struct.query_info*, align 8
  %9 = alloca %struct.reply_info*, align 8
  %10 = alloca %struct.key_entry_key*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ub_packed_rrset_key*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.module_env* %0, %struct.module_env** %6, align 8
  store %struct.val_env* %1, %struct.val_env** %7, align 8
  store %struct.query_info* %2, %struct.query_info** %8, align 8
  store %struct.reply_info* %3, %struct.reply_info** %9, align 8
  store %struct.key_entry_key* %4, %struct.key_entry_key** %10, align 8
  store i32 0, i32* %11, align 4
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %19 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %16, align 8
  br label %21

21:                                               ; preds = %87, %5
  %22 = load i64, i64* %16, align 8
  %23 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %24 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %27 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %25, %28
  %30 = icmp ult i64 %22, %29
  br i1 %30, label %31, label %90

31:                                               ; preds = %21
  %32 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %33 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %32, i32 0, i32 3
  %34 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %33, align 8
  %35 = load i64, i64* %16, align 8
  %36 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %34, i64 %35
  %37 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %36, align 8
  store %struct.ub_packed_rrset_key* %37, %struct.ub_packed_rrset_key** %15, align 8
  %38 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %15, align 8
  %39 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @ntohs(i32 %41)
  %43 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %76

45:                                               ; preds = %31
  %46 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %15, align 8
  %47 = load %struct.query_info*, %struct.query_info** %8, align 8
  %48 = call i64 @nsec_proves_nodata(%struct.ub_packed_rrset_key* %46, %struct.query_info* %47, i32** %13)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 1, i32* %11, align 4
  br label %51

51:                                               ; preds = %50, %45
  %52 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %15, align 8
  %53 = load %struct.query_info*, %struct.query_info** %8, align 8
  %54 = getelementptr inbounds %struct.query_info, %struct.query_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @val_nsec_proves_name_error(%struct.ub_packed_rrset_key* %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load %struct.query_info*, %struct.query_info** %8, align 8
  %60 = getelementptr inbounds %struct.query_info, %struct.query_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %15, align 8
  %63 = call i32* @nsec_closest_encloser(i32 %61, %struct.ub_packed_rrset_key* %62)
  store i32* %63, i32** %12, align 8
  br label %64

64:                                               ; preds = %58, %51
  %65 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %15, align 8
  %66 = load %struct.query_info*, %struct.query_info** %8, align 8
  %67 = call i64 @val_nsec_proves_insecuredelegation(%struct.ub_packed_rrset_key* %65, %struct.query_info* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load i64, i64* @VERB_ALGO, align 8
  %71 = call i32 @verbose(i64 %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @sec_status_insecure, align 4
  %73 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %74 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  br label %172

75:                                               ; preds = %64
  br label %86

76:                                               ; preds = %31
  %77 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %15, align 8
  %78 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @ntohs(i32 %80)
  %82 = load i64, i64* @LDNS_RR_TYPE_NSEC3, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  store i32 1, i32* %14, align 4
  br label %85

85:                                               ; preds = %84, %76
  br label %86

86:                                               ; preds = %85, %75
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %16, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %16, align 8
  br label %21

90:                                               ; preds = %21
  %91 = load i32*, i32** %13, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i32*, i32** %12, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  store i32 0, i32* %11, align 4
  br label %111

97:                                               ; preds = %93, %90
  %98 = load i32*, i32** %13, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = load i32*, i32** %12, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load i32*, i32** %13, align 8
  %105 = load i32*, i32** %12, align 8
  %106 = call i64 @query_dname_compare(i32* %104, i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  store i32 0, i32* %11, align 4
  br label %109

109:                                              ; preds = %108, %103
  br label %110

110:                                              ; preds = %109, %100, %97
  br label %111

111:                                              ; preds = %110, %96
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %149, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %149

117:                                              ; preds = %114
  %118 = load %struct.module_env*, %struct.module_env** %6, align 8
  %119 = load %struct.val_env*, %struct.val_env** %7, align 8
  %120 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %121 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %120, i32 0, i32 3
  %122 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %121, align 8
  %123 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %124 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %122, i64 %125
  %127 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %128 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.query_info*, %struct.query_info** %8, align 8
  %131 = load %struct.key_entry_key*, %struct.key_entry_key** %10, align 8
  %132 = call i32 @nsec3_prove_nodata(%struct.module_env* %118, %struct.val_env* %119, %struct.ub_packed_rrset_key** %126, i64 %129, %struct.query_info* %130, %struct.key_entry_key* %131)
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* @sec_status_insecure, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %117
  %137 = load i64, i64* @VERB_ALGO, align 8
  %138 = call i32 @verbose(i64 %137, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %139 = load i32, i32* @sec_status_insecure, align 4
  %140 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %141 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  br label %172

142:                                              ; preds = %117
  %143 = load i32, i32* %17, align 4
  %144 = load i32, i32* @sec_status_secure, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  store i32 1, i32* %11, align 4
  br label %147

147:                                              ; preds = %146, %142
  br label %148

148:                                              ; preds = %147
  br label %149

149:                                              ; preds = %148, %114, %111
  %150 = load i32, i32* %11, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %166, label %152

152:                                              ; preds = %149
  %153 = load i64, i64* @VERB_QUERY, align 8
  %154 = call i32 @verbose(i64 %153, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %155 = load i64, i64* @verbosity, align 8
  %156 = load i64, i64* @VERB_ALGO, align 8
  %157 = icmp sge i64 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %152
  %159 = load %struct.query_info*, %struct.query_info** %8, align 8
  %160 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %161 = call i32 @log_dns_msg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), %struct.query_info* %159, %struct.reply_info* %160)
  br label %162

162:                                              ; preds = %158, %152
  %163 = load i32, i32* @sec_status_bogus, align 4
  %164 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %165 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 8
  br label %172

166:                                              ; preds = %149
  %167 = load i64, i64* @VERB_ALGO, align 8
  %168 = call i32 @verbose(i64 %167, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %169 = load i32, i32* @sec_status_secure, align 4
  %170 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %171 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 8
  br label %172

172:                                              ; preds = %166, %162, %136, %69
  ret void
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @nsec_proves_nodata(%struct.ub_packed_rrset_key*, %struct.query_info*, i32**) #1

declare dso_local i64 @val_nsec_proves_name_error(%struct.ub_packed_rrset_key*, i32) #1

declare dso_local i32* @nsec_closest_encloser(i32, %struct.ub_packed_rrset_key*) #1

declare dso_local i64 @val_nsec_proves_insecuredelegation(%struct.ub_packed_rrset_key*, %struct.query_info*) #1

declare dso_local i32 @verbose(i64, i8*) #1

declare dso_local i64 @query_dname_compare(i32*, i32*) #1

declare dso_local i32 @nsec3_prove_nodata(%struct.module_env*, %struct.val_env*, %struct.ub_packed_rrset_key**, i64, %struct.query_info*, %struct.key_entry_key*) #1

declare dso_local i32 @log_dns_msg(i8*, %struct.query_info*, %struct.reply_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

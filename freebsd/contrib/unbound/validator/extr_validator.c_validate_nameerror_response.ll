; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_validate_nameerror_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_validate_nameerror_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.val_env = type { i32 }
%struct.query_info = type { i32, i32 }
%struct.reply_info = type { i64, i64, i64, %struct.ub_packed_rrset_key** }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.key_entry_key = type { i32 }

@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"delegation is insecure\00", align 1
@sec_status_insecure = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC3 = common dso_local global i64 0, align 8
@sec_status_secure = common dso_local global i64 0, align 8
@VERB_QUERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"NameError response failed nsec, nsec3 proof was %s\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"NameError response has failed to prove: qname does not exist\00", align 1
@sec_status_bogus = common dso_local global i8* null, align 8
@LDNS_RCODE_NOERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [73 x i8] c"NameError response has failed to prove: covering wildcard does not exist\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"successfully validated NAME ERROR response.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_env*, %struct.val_env*, %struct.query_info*, %struct.reply_info*, %struct.key_entry_key*, i32*)* @validate_nameerror_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_nameerror_response(%struct.module_env* %0, %struct.val_env* %1, %struct.query_info* %2, %struct.reply_info* %3, %struct.key_entry_key* %4, i32* %5) #0 {
  %7 = alloca %struct.module_env*, align 8
  %8 = alloca %struct.val_env*, align 8
  %9 = alloca %struct.query_info*, align 8
  %10 = alloca %struct.reply_info*, align 8
  %11 = alloca %struct.key_entry_key*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ub_packed_rrset_key*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.module_env* %0, %struct.module_env** %7, align 8
  store %struct.val_env* %1, %struct.val_env** %8, align 8
  store %struct.query_info* %2, %struct.query_info** %9, align 8
  store %struct.reply_info* %3, %struct.reply_info** %10, align 8
  store %struct.key_entry_key* %4, %struct.key_entry_key** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %21 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %22 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %17, align 8
  br label %24

24:                                               ; preds = %111, %6
  %25 = load i64, i64* %17, align 8
  %26 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %27 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %30 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %28, %31
  %33 = icmp ult i64 %25, %32
  br i1 %33, label %34, label %114

34:                                               ; preds = %24
  %35 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %36 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %35, i32 0, i32 3
  %37 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %36, align 8
  %38 = load i64, i64* %17, align 8
  %39 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %37, i64 %38
  %40 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %39, align 8
  store %struct.ub_packed_rrset_key* %40, %struct.ub_packed_rrset_key** %16, align 8
  %41 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %42 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @ntohs(i32 %44)
  %46 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %100

48:                                               ; preds = %34
  %49 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %50 = load %struct.query_info*, %struct.query_info** %9, align 8
  %51 = getelementptr inbounds %struct.query_info, %struct.query_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @val_nsec_proves_name_error(%struct.ub_packed_rrset_key* %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 1, i32* %13, align 4
  br label %56

56:                                               ; preds = %55, %48
  %57 = load %struct.query_info*, %struct.query_info** %9, align 8
  %58 = getelementptr inbounds %struct.query_info, %struct.query_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %61 = call i32* @nsec_closest_encloser(i32 %59, %struct.ub_packed_rrset_key* %60)
  store i32* %61, i32** %18, align 8
  %62 = load i32*, i32** %18, align 8
  %63 = call i32 @dname_count_labels(i32* %62)
  store i32 %63, i32* %19, align 4
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* %20, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %74, label %67

67:                                               ; preds = %56
  %68 = load i32, i32* %19, align 4
  %69 = load i32, i32* %20, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %67
  %72 = load i32, i32* %14, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %71, %56
  %75 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %76 = load %struct.query_info*, %struct.query_info** %9, align 8
  %77 = getelementptr inbounds %struct.query_info, %struct.query_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.query_info*, %struct.query_info** %9, align 8
  %80 = getelementptr inbounds %struct.query_info, %struct.query_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @val_nsec_proves_no_wc(%struct.ub_packed_rrset_key* %75, i32 %78, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  store i32 1, i32* %14, align 4
  br label %86

85:                                               ; preds = %74
  store i32 0, i32* %14, align 4
  br label %86

86:                                               ; preds = %85, %84
  br label %87

87:                                               ; preds = %86, %71, %67
  %88 = load i32, i32* %19, align 4
  store i32 %88, i32* %20, align 4
  %89 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %90 = load %struct.query_info*, %struct.query_info** %9, align 8
  %91 = call i64 @val_nsec_proves_insecuredelegation(%struct.ub_packed_rrset_key* %89, %struct.query_info* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load i32, i32* @VERB_ALGO, align 4
  %95 = call i32 (i32, i8*, ...) @verbose(i32 %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %96 = load i64, i64* @sec_status_insecure, align 8
  %97 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %98 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  br label %210

99:                                               ; preds = %87
  br label %110

100:                                              ; preds = %34
  %101 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %102 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @ntohs(i32 %104)
  %106 = load i64, i64* @LDNS_RR_TYPE_NSEC3, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  store i32 1, i32* %15, align 4
  br label %109

109:                                              ; preds = %108, %100
  br label %110

110:                                              ; preds = %109, %99
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %17, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %17, align 8
  br label %24

114:                                              ; preds = %24
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %154, label %120

120:                                              ; preds = %117, %114
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %154

123:                                              ; preds = %120
  %124 = load %struct.module_env*, %struct.module_env** %7, align 8
  %125 = load %struct.val_env*, %struct.val_env** %8, align 8
  %126 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %127 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %126, i32 0, i32 3
  %128 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %127, align 8
  %129 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %130 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %133 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = add i64 %131, %134
  %136 = load %struct.query_info*, %struct.query_info** %9, align 8
  %137 = load %struct.key_entry_key*, %struct.key_entry_key** %11, align 8
  %138 = call i64 @nsec3_prove_nameerror(%struct.module_env* %124, %struct.val_env* %125, %struct.ub_packed_rrset_key** %128, i64 %135, %struct.query_info* %136, %struct.key_entry_key* %137)
  %139 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %140 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %139, i32 0, i32 2
  store i64 %138, i64* %140, align 8
  %141 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %142 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @sec_status_secure, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %123
  %147 = load i32, i32* @VERB_QUERY, align 4
  %148 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %149 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @sec_status_to_string(i64 %150)
  %152 = call i32 (i32, i8*, ...) @verbose(i32 %147, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %151)
  br label %210

153:                                              ; preds = %123
  store i32 1, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %154

154:                                              ; preds = %153, %120, %117
  %155 = load i32, i32* %13, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %179, label %157

157:                                              ; preds = %154
  %158 = load i32, i32* @VERB_QUERY, align 4
  %159 = call i32 (i32, i8*, ...) @verbose(i32 %158, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  %160 = load i8*, i8** @sec_status_bogus, align 8
  %161 = ptrtoint i8* %160 to i64
  %162 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %163 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %162, i32 0, i32 2
  store i64 %161, i64* %163, align 8
  %164 = load %struct.module_env*, %struct.module_env** %7, align 8
  %165 = load %struct.val_env*, %struct.val_env** %8, align 8
  %166 = load %struct.query_info*, %struct.query_info** %9, align 8
  %167 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %168 = load %struct.key_entry_key*, %struct.key_entry_key** %11, align 8
  %169 = call i32 @validate_nodata_response(%struct.module_env* %164, %struct.val_env* %165, %struct.query_info* %166, %struct.reply_info* %167, %struct.key_entry_key* %168)
  %170 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %171 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @sec_status_secure, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %157
  %176 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %177 = load i32*, i32** %12, align 8
  store i32 %176, i32* %177, align 4
  br label %178

178:                                              ; preds = %175, %157
  br label %210

179:                                              ; preds = %154
  %180 = load i32, i32* %14, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %204, label %182

182:                                              ; preds = %179
  %183 = load i32, i32* @VERB_QUERY, align 4
  %184 = call i32 (i32, i8*, ...) @verbose(i32 %183, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0))
  %185 = load i8*, i8** @sec_status_bogus, align 8
  %186 = ptrtoint i8* %185 to i64
  %187 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %188 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %187, i32 0, i32 2
  store i64 %186, i64* %188, align 8
  %189 = load %struct.module_env*, %struct.module_env** %7, align 8
  %190 = load %struct.val_env*, %struct.val_env** %8, align 8
  %191 = load %struct.query_info*, %struct.query_info** %9, align 8
  %192 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %193 = load %struct.key_entry_key*, %struct.key_entry_key** %11, align 8
  %194 = call i32 @validate_nodata_response(%struct.module_env* %189, %struct.val_env* %190, %struct.query_info* %191, %struct.reply_info* %192, %struct.key_entry_key* %193)
  %195 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %196 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @sec_status_secure, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %182
  %201 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %202 = load i32*, i32** %12, align 8
  store i32 %201, i32* %202, align 4
  br label %203

203:                                              ; preds = %200, %182
  br label %210

204:                                              ; preds = %179
  %205 = load i32, i32* @VERB_ALGO, align 4
  %206 = call i32 (i32, i8*, ...) @verbose(i32 %205, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %207 = load i64, i64* @sec_status_secure, align 8
  %208 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %209 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %208, i32 0, i32 2
  store i64 %207, i64* %209, align 8
  br label %210

210:                                              ; preds = %204, %203, %178, %146, %93
  ret void
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @val_nsec_proves_name_error(%struct.ub_packed_rrset_key*, i32) #1

declare dso_local i32* @nsec_closest_encloser(i32, %struct.ub_packed_rrset_key*) #1

declare dso_local i32 @dname_count_labels(i32*) #1

declare dso_local i64 @val_nsec_proves_no_wc(%struct.ub_packed_rrset_key*, i32, i32) #1

declare dso_local i64 @val_nsec_proves_insecuredelegation(%struct.ub_packed_rrset_key*, %struct.query_info*) #1

declare dso_local i32 @verbose(i32, i8*, ...) #1

declare dso_local i64 @nsec3_prove_nameerror(%struct.module_env*, %struct.val_env*, %struct.ub_packed_rrset_key**, i64, %struct.query_info*, %struct.key_entry_key*) #1

declare dso_local i32 @sec_status_to_string(i64) #1

declare dso_local i32 @validate_nodata_response(%struct.module_env*, %struct.val_env*, %struct.query_info*, %struct.reply_info*, %struct.key_entry_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

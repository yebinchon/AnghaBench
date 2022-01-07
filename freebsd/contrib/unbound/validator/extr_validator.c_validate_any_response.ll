; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_validate_any_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_validate_any_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.val_env = type { i32 }
%struct.query_info = type { i64 }
%struct.reply_info = type { i32, i64, i64, %struct.ub_packed_rrset_key** }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.key_entry_key = type { i32 }

@LDNS_RR_TYPE_ANY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"internal error: ANY validation called for non-ANY\00", align 1
@sec_status_bogus = common dso_local global i8* null, align 8
@VERB_QUERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Positive ANY response has inconsistent wildcard sigs:\00", align 1
@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC3 = common dso_local global i64 0, align 8
@sec_status_insecure = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Positive ANY wildcard response is insecure\00", align 1
@sec_status_secure = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [91 x i8] c"positive ANY response was wildcard expansion and did not prove original data did not exist\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Successfully validated positive ANY response\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_env*, %struct.val_env*, %struct.query_info*, %struct.reply_info*, %struct.key_entry_key*)* @validate_any_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_any_response(%struct.module_env* %0, %struct.val_env* %1, %struct.query_info* %2, %struct.reply_info* %3, %struct.key_entry_key* %4) #0 {
  %6 = alloca %struct.module_env*, align 8
  %7 = alloca %struct.val_env*, align 8
  %8 = alloca %struct.query_info*, align 8
  %9 = alloca %struct.reply_info*, align 8
  %10 = alloca %struct.key_entry_key*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.ub_packed_rrset_key*, align 8
  %17 = alloca i32, align 4
  store %struct.module_env* %0, %struct.module_env** %6, align 8
  store %struct.val_env* %1, %struct.val_env** %7, align 8
  store %struct.query_info* %2, %struct.query_info** %8, align 8
  store %struct.reply_info* %3, %struct.reply_info** %9, align 8
  store %struct.key_entry_key* %4, %struct.key_entry_key** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load %struct.query_info*, %struct.query_info** %8, align 8
  %19 = getelementptr inbounds %struct.query_info, %struct.query_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @LDNS_RR_TYPE_ANY, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %5
  %24 = call i32 @log_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %25 = load i8*, i8** @sec_status_bogus, align 8
  %26 = ptrtoint i8* %25 to i32
  %27 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %28 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  br label %182

29:                                               ; preds = %5
  store i64 0, i64* %15, align 8
  br label %30

30:                                               ; preds = %68, %29
  %31 = load i64, i64* %15, align 8
  %32 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %33 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %71

36:                                               ; preds = %30
  %37 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %38 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %37, i32 0, i32 3
  %39 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %38, align 8
  %40 = load i64, i64* %15, align 8
  %41 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %39, i64 %40
  %42 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %41, align 8
  store %struct.ub_packed_rrset_key* %42, %struct.ub_packed_rrset_key** %16, align 8
  %43 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %44 = call i32 @val_rrset_wildcard(%struct.ub_packed_rrset_key* %43, i32** %11, i64* %12)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %67, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* @VERB_QUERY, align 4
  %48 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %49 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %53 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @ntohs(i32 %55)
  %57 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %58 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @ntohs(i32 %60)
  %62 = call i32 @log_nametypeclass(i32 %47, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %51, i64 %56, i64 %61)
  %63 = load i8*, i8** @sec_status_bogus, align 8
  %64 = ptrtoint i8* %63 to i32
  %65 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %66 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %182

67:                                               ; preds = %36
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %15, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %15, align 8
  br label %30

71:                                               ; preds = %30
  %72 = load i32*, i32** %11, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %121

74:                                               ; preds = %71
  store i64 0, i64* %15, align 8
  br label %75

75:                                               ; preds = %117, %74
  %76 = load i64, i64* %15, align 8
  %77 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %78 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %81 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %79, %82
  %84 = icmp ult i64 %76, %83
  br i1 %84, label %85, label %120

85:                                               ; preds = %75
  %86 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %87 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %86, i32 0, i32 3
  %88 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %87, align 8
  %89 = load i64, i64* %15, align 8
  %90 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %88, i64 %89
  %91 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %90, align 8
  store %struct.ub_packed_rrset_key* %91, %struct.ub_packed_rrset_key** %16, align 8
  %92 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %93 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @ntohs(i32 %95)
  %97 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %85
  %100 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %101 = load %struct.query_info*, %struct.query_info** %8, align 8
  %102 = load i32*, i32** %11, align 8
  %103 = call i64 @val_nsec_proves_positive_wildcard(%struct.ub_packed_rrset_key* %100, %struct.query_info* %101, i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  store i32 1, i32* %13, align 4
  br label %106

106:                                              ; preds = %105, %99
  br label %107

107:                                              ; preds = %106, %85
  %108 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %109 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @ntohs(i32 %111)
  %113 = load i64, i64* @LDNS_RR_TYPE_NSEC3, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  store i32 1, i32* %14, align 4
  br label %116

116:                                              ; preds = %115, %107
  br label %117

117:                                              ; preds = %116
  %118 = load i64, i64* %15, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %15, align 8
  br label %75

120:                                              ; preds = %75
  br label %121

121:                                              ; preds = %120, %71
  %122 = load i32*, i32** %11, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %163

124:                                              ; preds = %121
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %163, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %14, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %163

130:                                              ; preds = %127
  %131 = load %struct.module_env*, %struct.module_env** %6, align 8
  %132 = load %struct.val_env*, %struct.val_env** %7, align 8
  %133 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %134 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %133, i32 0, i32 3
  %135 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %134, align 8
  %136 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %137 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %140 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = add i64 %138, %141
  %143 = load %struct.query_info*, %struct.query_info** %8, align 8
  %144 = load %struct.key_entry_key*, %struct.key_entry_key** %10, align 8
  %145 = load i32*, i32** %11, align 8
  %146 = call i32 @nsec3_prove_wildcard(%struct.module_env* %131, %struct.val_env* %132, %struct.ub_packed_rrset_key** %135, i64 %142, %struct.query_info* %143, %struct.key_entry_key* %144, i32* %145)
  store i32 %146, i32* %17, align 4
  %147 = load i32, i32* %17, align 4
  %148 = load i32, i32* @sec_status_insecure, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %130
  %151 = load i32, i32* @VERB_ALGO, align 4
  %152 = call i32 @verbose(i32 %151, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %153 = load i32, i32* @sec_status_insecure, align 4
  %154 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %155 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  br label %182

156:                                              ; preds = %130
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* @sec_status_secure, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  store i32 1, i32* %13, align 4
  br label %161

161:                                              ; preds = %160, %156
  br label %162

162:                                              ; preds = %161
  br label %163

163:                                              ; preds = %162, %127, %124, %121
  %164 = load i32*, i32** %11, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %176

166:                                              ; preds = %163
  %167 = load i32, i32* %13, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %176, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* @VERB_QUERY, align 4
  %171 = call i32 @verbose(i32 %170, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.3, i64 0, i64 0))
  %172 = load i8*, i8** @sec_status_bogus, align 8
  %173 = ptrtoint i8* %172 to i32
  %174 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %175 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  br label %182

176:                                              ; preds = %166, %163
  %177 = load i32, i32* @VERB_ALGO, align 4
  %178 = call i32 @verbose(i32 %177, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %179 = load i32, i32* @sec_status_secure, align 4
  %180 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %181 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  br label %182

182:                                              ; preds = %176, %169, %150, %46, %23
  ret void
}

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @val_rrset_wildcard(%struct.ub_packed_rrset_key*, i32**, i64*) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32, i64, i64) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @val_nsec_proves_positive_wildcard(%struct.ub_packed_rrset_key*, %struct.query_info*, i32*) #1

declare dso_local i32 @nsec3_prove_wildcard(%struct.module_env*, %struct.val_env*, %struct.ub_packed_rrset_key**, i64, %struct.query_info*, %struct.key_entry_key*, i32*) #1

declare dso_local i32 @verbose(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

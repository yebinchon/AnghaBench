; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_verify_rrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_verify_rrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32*, i32, i32 }
%struct.val_env = type { i32, i32, i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.module_qstate = type { i32 }
%struct.packed_rrset_data = type { i64, i64, i64, i32*, i32, i32 }

@sec_status_secure = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"verify rrset cached\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"verify rrset from cache\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"verify rrset\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"verify result: %s\00", align 1
@rrset_trust_validated = common dso_local global i32 0, align 4
@sec_status_bogus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @val_verify_rrset(%struct.module_env* %0, %struct.val_env* %1, %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key* %3, i32* %4, i8** %5, i32 %6, %struct.module_qstate* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.module_env*, align 8
  %11 = alloca %struct.val_env*, align 8
  %12 = alloca %struct.ub_packed_rrset_key*, align 8
  %13 = alloca %struct.ub_packed_rrset_key*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.module_qstate*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.packed_rrset_data*, align 8
  %20 = alloca i64, align 8
  store %struct.module_env* %0, %struct.module_env** %10, align 8
  store %struct.val_env* %1, %struct.val_env** %11, align 8
  store %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key** %12, align 8
  store %struct.ub_packed_rrset_key* %3, %struct.ub_packed_rrset_key** %13, align 8
  store i32* %4, i32** %14, align 8
  store i8** %5, i8*** %15, align 8
  store i32 %6, i32* %16, align 4
  store %struct.module_qstate* %7, %struct.module_qstate** %17, align 8
  %21 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %22 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %25, %struct.packed_rrset_data** %19, align 8
  %26 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %19, align 8
  %27 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @sec_status_secure, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %8
  %32 = load i32, i32* @VERB_ALGO, align 4
  %33 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %34 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %38 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ntohs(i32 %40)
  %42 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %43 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ntohs(i32 %45)
  %47 = call i32 @log_nametypeclass(i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %41, i32 %46)
  %48 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %19, align 8
  %49 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %9, align 4
  br label %197

52:                                               ; preds = %8
  %53 = load %struct.module_env*, %struct.module_env** %10, align 8
  %54 = getelementptr inbounds %struct.module_env, %struct.module_env* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %57 = load %struct.module_env*, %struct.module_env** %10, align 8
  %58 = getelementptr inbounds %struct.module_env, %struct.module_env* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @rrset_check_sec_status(i32 %55, %struct.ub_packed_rrset_key* %56, i32 %60)
  %62 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %19, align 8
  %63 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @sec_status_secure, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %52
  %68 = load i32, i32* @VERB_ALGO, align 4
  %69 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %70 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %74 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ntohs(i32 %76)
  %78 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %79 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @ntohs(i32 %81)
  %83 = call i32 @log_nametypeclass(i32 %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %77, i32 %82)
  %84 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %19, align 8
  %85 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %9, align 4
  br label %197

88:                                               ; preds = %52
  %89 = load i32, i32* @VERB_ALGO, align 4
  %90 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %91 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %95 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ntohs(i32 %97)
  %99 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %100 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @ntohs(i32 %102)
  %104 = call i32 @log_nametypeclass(i32 %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32 %98, i32 %103)
  %105 = load %struct.module_env*, %struct.module_env** %10, align 8
  %106 = load %struct.val_env*, %struct.val_env** %11, align 8
  %107 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %108 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %109 = load i32*, i32** %14, align 8
  %110 = load i8**, i8*** %15, align 8
  %111 = load i32, i32* %16, align 4
  %112 = load %struct.module_qstate*, %struct.module_qstate** %17, align 8
  %113 = call i32 @dnskeyset_verify_rrset(%struct.module_env* %105, %struct.val_env* %106, %struct.ub_packed_rrset_key* %107, %struct.ub_packed_rrset_key* %108, i32* %109, i8** %110, i32 %111, %struct.module_qstate* %112)
  store i32 %113, i32* %18, align 4
  %114 = load i32, i32* @VERB_ALGO, align 4
  %115 = load i32, i32* %18, align 4
  %116 = call i32 @sec_status_to_string(i32 %115)
  %117 = call i32 @verbose(i32 %114, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  %118 = load %struct.module_env*, %struct.module_env** %10, align 8
  %119 = getelementptr inbounds %struct.module_env, %struct.module_env* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @regional_free_all(i32 %120)
  %122 = load i32, i32* %18, align 4
  %123 = zext i32 %122 to i64
  %124 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %19, align 8
  %125 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp sgt i64 %123, %126
  br i1 %127, label %128, label %195

128:                                              ; preds = %88
  %129 = load i32, i32* %18, align 4
  %130 = zext i32 %129 to i64
  %131 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %19, align 8
  %132 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load i32, i32* %18, align 4
  %134 = zext i32 %133 to i64
  %135 = load i64, i64* @sec_status_secure, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %128
  %138 = load i32, i32* @rrset_trust_validated, align 4
  %139 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %19, align 8
  %140 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %139, i32 0, i32 5
  store i32 %138, i32* %140, align 4
  br label %185

141:                                              ; preds = %128
  %142 = load i32, i32* %18, align 4
  %143 = load i32, i32* @sec_status_bogus, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %184

145:                                              ; preds = %141
  %146 = load %struct.val_env*, %struct.val_env** %11, align 8
  %147 = getelementptr inbounds %struct.val_env, %struct.val_env* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %19, align 8
  %150 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 8
  store i64 0, i64* %20, align 8
  br label %151

151:                                              ; preds = %170, %145
  %152 = load i64, i64* %20, align 8
  %153 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %19, align 8
  %154 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %19, align 8
  %157 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = add i64 %155, %158
  %160 = icmp ult i64 %152, %159
  br i1 %160, label %161, label %173

161:                                              ; preds = %151
  %162 = load %struct.val_env*, %struct.val_env** %11, align 8
  %163 = getelementptr inbounds %struct.val_env, %struct.val_env* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %19, align 8
  %166 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %165, i32 0, i32 3
  %167 = load i32*, i32** %166, align 8
  %168 = load i64, i64* %20, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  store i32 %164, i32* %169, align 4
  br label %170

170:                                              ; preds = %161
  %171 = load i64, i64* %20, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %20, align 8
  br label %151

173:                                              ; preds = %151
  %174 = load %struct.val_env*, %struct.val_env** %11, align 8
  %175 = getelementptr inbounds %struct.val_env, %struct.val_env* %174, i32 0, i32 0
  %176 = call i32 @lock_basic_lock(i32* %175)
  %177 = load %struct.val_env*, %struct.val_env** %11, align 8
  %178 = getelementptr inbounds %struct.val_env, %struct.val_env* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %178, align 4
  %181 = load %struct.val_env*, %struct.val_env** %11, align 8
  %182 = getelementptr inbounds %struct.val_env, %struct.val_env* %181, i32 0, i32 0
  %183 = call i32 @lock_basic_unlock(i32* %182)
  br label %184

184:                                              ; preds = %173, %141
  br label %185

185:                                              ; preds = %184, %137
  %186 = load %struct.module_env*, %struct.module_env** %10, align 8
  %187 = getelementptr inbounds %struct.module_env, %struct.module_env* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %190 = load %struct.module_env*, %struct.module_env** %10, align 8
  %191 = getelementptr inbounds %struct.module_env, %struct.module_env* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @rrset_update_sec_status(i32 %188, %struct.ub_packed_rrset_key* %189, i32 %193)
  br label %195

195:                                              ; preds = %185, %88
  %196 = load i32, i32* %18, align 4
  store i32 %196, i32* %9, align 4
  br label %197

197:                                              ; preds = %195, %67, %31
  %198 = load i32, i32* %9, align 4
  ret i32 %198
}

declare dso_local i32 @log_nametypeclass(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @rrset_check_sec_status(i32, %struct.ub_packed_rrset_key*, i32) #1

declare dso_local i32 @dnskeyset_verify_rrset(%struct.module_env*, %struct.val_env*, %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key*, i32*, i8**, i32, %struct.module_qstate*) #1

declare dso_local i32 @verbose(i32, i8*, i32) #1

declare dso_local i32 @sec_status_to_string(i32) #1

declare dso_local i32 @regional_free_all(i32) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @rrset_update_sec_status(i32, %struct.ub_packed_rrset_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

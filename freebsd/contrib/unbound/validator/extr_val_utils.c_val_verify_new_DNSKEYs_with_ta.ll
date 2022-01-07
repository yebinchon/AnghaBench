; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_verify_new_DNSKEYs_with_ta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_verify_new_DNSKEYs_with_ta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_entry_key = type { i32 }
%struct.regional = type { i32 }
%struct.module_env = type { i32* }
%struct.val_env = type { i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.module_qstate = type { i32 }

@ALGO_NEEDS_MAX = common dso_local global i32 0, align 4
@sec_status_secure = common dso_local global i32 0, align 4
@sec_status_insecure = common dso_local global i32 0, align 4
@BOGUS_KEY_TTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.key_entry_key* @val_verify_new_DNSKEYs_with_ta(%struct.regional* %0, %struct.module_env* %1, %struct.val_env* %2, %struct.ub_packed_rrset_key* %3, %struct.ub_packed_rrset_key* %4, %struct.ub_packed_rrset_key* %5, i32 %6, i8** %7, %struct.module_qstate* %8) #0 {
  %10 = alloca %struct.key_entry_key*, align 8
  %11 = alloca %struct.regional*, align 8
  %12 = alloca %struct.module_env*, align 8
  %13 = alloca %struct.val_env*, align 8
  %14 = alloca %struct.ub_packed_rrset_key*, align 8
  %15 = alloca %struct.ub_packed_rrset_key*, align 8
  %16 = alloca %struct.ub_packed_rrset_key*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8**, align 8
  %19 = alloca %struct.module_qstate*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.regional* %0, %struct.regional** %11, align 8
  store %struct.module_env* %1, %struct.module_env** %12, align 8
  store %struct.val_env* %2, %struct.val_env** %13, align 8
  store %struct.ub_packed_rrset_key* %3, %struct.ub_packed_rrset_key** %14, align 8
  store %struct.ub_packed_rrset_key* %4, %struct.ub_packed_rrset_key** %15, align 8
  store %struct.ub_packed_rrset_key* %5, %struct.ub_packed_rrset_key** %16, align 8
  store i32 %6, i32* %17, align 4
  store i8** %7, i8*** %18, align 8
  store %struct.module_qstate* %8, %struct.module_qstate** %19, align 8
  %24 = load i32, i32* @ALGO_NEEDS_MAX, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %20, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %21, align 8
  %29 = load %struct.module_env*, %struct.module_env** %12, align 8
  %30 = load %struct.val_env*, %struct.val_env** %13, align 8
  %31 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %32 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %15, align 8
  %33 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %34 = load i32, i32* %17, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %9
  br label %38

37:                                               ; preds = %9
  br label %38

38:                                               ; preds = %37, %36
  %39 = phi i32* [ %28, %36 ], [ null, %37 ]
  %40 = load i8**, i8*** %18, align 8
  %41 = load %struct.module_qstate*, %struct.module_qstate** %19, align 8
  %42 = call i32 @val_verify_DNSKEY_with_TA(%struct.module_env* %29, %struct.val_env* %30, %struct.ub_packed_rrset_key* %31, %struct.ub_packed_rrset_key* %32, %struct.ub_packed_rrset_key* %33, i32* %39, i8** %40, %struct.module_qstate* %41)
  store i32 %42, i32* %22, align 4
  %43 = load i32, i32* %22, align 4
  %44 = load i32, i32* @sec_status_secure, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %73

46:                                               ; preds = %38
  %47 = load %struct.regional*, %struct.regional** %11, align 8
  %48 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %49 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %53 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %57 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ntohs(i32 %59)
  %61 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %62 = load i32, i32* %17, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %46
  br label %66

65:                                               ; preds = %46
  br label %66

66:                                               ; preds = %65, %64
  %67 = phi i32* [ %28, %64 ], [ null, %65 ]
  %68 = load %struct.module_env*, %struct.module_env** %12, align 8
  %69 = getelementptr inbounds %struct.module_env, %struct.module_env* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.key_entry_key* @key_entry_create_rrset(%struct.regional* %47, i32 %51, i32 %55, i32 %60, %struct.ub_packed_rrset_key* %61, i32* %67, i32 %71)
  store %struct.key_entry_key* %72, %struct.key_entry_key** %10, align 8
  store i32 1, i32* %23, align 4
  br label %121

73:                                               ; preds = %38
  %74 = load i32, i32* %22, align 4
  %75 = load i32, i32* @sec_status_insecure, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %99

77:                                               ; preds = %73
  %78 = load %struct.regional*, %struct.regional** %11, align 8
  %79 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %80 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %84 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %88 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ntohs(i32 %90)
  %92 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %93 = call i32 @rrset_get_ttl(%struct.ub_packed_rrset_key* %92)
  %94 = load %struct.module_env*, %struct.module_env** %12, align 8
  %95 = getelementptr inbounds %struct.module_env, %struct.module_env* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %96, align 4
  %98 = call %struct.key_entry_key* @key_entry_create_null(%struct.regional* %78, i32 %82, i32 %86, i32 %91, i32 %93, i32 %97)
  store %struct.key_entry_key* %98, %struct.key_entry_key** %10, align 8
  store i32 1, i32* %23, align 4
  br label %121

99:                                               ; preds = %73
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.regional*, %struct.regional** %11, align 8
  %102 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %103 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %107 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %111 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ntohs(i32 %113)
  %115 = load i32, i32* @BOGUS_KEY_TTL, align 4
  %116 = load %struct.module_env*, %struct.module_env** %12, align 8
  %117 = getelementptr inbounds %struct.module_env, %struct.module_env* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %118, align 4
  %120 = call %struct.key_entry_key* @key_entry_create_bad(%struct.regional* %101, i32 %105, i32 %109, i32 %114, i32 %115, i32 %119)
  store %struct.key_entry_key* %120, %struct.key_entry_key** %10, align 8
  store i32 1, i32* %23, align 4
  br label %121

121:                                              ; preds = %100, %77, %66
  %122 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load %struct.key_entry_key*, %struct.key_entry_key** %10, align 8
  ret %struct.key_entry_key* %123
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @val_verify_DNSKEY_with_TA(%struct.module_env*, %struct.val_env*, %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key*, i32*, i8**, %struct.module_qstate*) #2

declare dso_local %struct.key_entry_key* @key_entry_create_rrset(%struct.regional*, i32, i32, i32, %struct.ub_packed_rrset_key*, i32*, i32) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local %struct.key_entry_key* @key_entry_create_null(%struct.regional*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @rrset_get_ttl(%struct.ub_packed_rrset_key*) #2

declare dso_local %struct.key_entry_key* @key_entry_create_bad(%struct.regional*, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

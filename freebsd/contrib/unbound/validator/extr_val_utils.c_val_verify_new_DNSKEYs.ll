; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_verify_new_DNSKEYs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_verify_new_DNSKEYs.c"
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
define dso_local %struct.key_entry_key* @val_verify_new_DNSKEYs(%struct.regional* %0, %struct.module_env* %1, %struct.val_env* %2, %struct.ub_packed_rrset_key* %3, %struct.ub_packed_rrset_key* %4, i32 %5, i8** %6, %struct.module_qstate* %7) #0 {
  %9 = alloca %struct.key_entry_key*, align 8
  %10 = alloca %struct.regional*, align 8
  %11 = alloca %struct.module_env*, align 8
  %12 = alloca %struct.val_env*, align 8
  %13 = alloca %struct.ub_packed_rrset_key*, align 8
  %14 = alloca %struct.ub_packed_rrset_key*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8**, align 8
  %17 = alloca %struct.module_qstate*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.regional* %0, %struct.regional** %10, align 8
  store %struct.module_env* %1, %struct.module_env** %11, align 8
  store %struct.val_env* %2, %struct.val_env** %12, align 8
  store %struct.ub_packed_rrset_key* %3, %struct.ub_packed_rrset_key** %13, align 8
  store %struct.ub_packed_rrset_key* %4, %struct.ub_packed_rrset_key** %14, align 8
  store i32 %5, i32* %15, align 4
  store i8** %6, i8*** %16, align 8
  store %struct.module_qstate* %7, %struct.module_qstate** %17, align 8
  %22 = load i32, i32* @ALGO_NEEDS_MAX, align 4
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %18, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %19, align 8
  %27 = load %struct.module_env*, %struct.module_env** %11, align 8
  %28 = load %struct.val_env*, %struct.val_env** %12, align 8
  %29 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %30 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %8
  br label %35

34:                                               ; preds = %8
  br label %35

35:                                               ; preds = %34, %33
  %36 = phi i32* [ %26, %33 ], [ null, %34 ]
  %37 = load i8**, i8*** %16, align 8
  %38 = load %struct.module_qstate*, %struct.module_qstate** %17, align 8
  %39 = call i32 @val_verify_DNSKEY_with_DS(%struct.module_env* %27, %struct.val_env* %28, %struct.ub_packed_rrset_key* %29, %struct.ub_packed_rrset_key* %30, i32* %36, i8** %37, %struct.module_qstate* %38)
  store i32 %39, i32* %20, align 4
  %40 = load i32, i32* %20, align 4
  %41 = load i32, i32* @sec_status_secure, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %70

43:                                               ; preds = %35
  %44 = load %struct.regional*, %struct.regional** %10, align 8
  %45 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %46 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %50 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %54 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ntohs(i32 %56)
  %58 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %43
  br label %63

62:                                               ; preds = %43
  br label %63

63:                                               ; preds = %62, %61
  %64 = phi i32* [ %26, %61 ], [ null, %62 ]
  %65 = load %struct.module_env*, %struct.module_env** %11, align 8
  %66 = getelementptr inbounds %struct.module_env, %struct.module_env* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.key_entry_key* @key_entry_create_rrset(%struct.regional* %44, i32 %48, i32 %52, i32 %57, %struct.ub_packed_rrset_key* %58, i32* %64, i32 %68)
  store %struct.key_entry_key* %69, %struct.key_entry_key** %9, align 8
  store i32 1, i32* %21, align 4
  br label %118

70:                                               ; preds = %35
  %71 = load i32, i32* %20, align 4
  %72 = load i32, i32* @sec_status_insecure, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %70
  %75 = load %struct.regional*, %struct.regional** %10, align 8
  %76 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %77 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %81 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %85 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ntohs(i32 %87)
  %89 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %90 = call i32 @rrset_get_ttl(%struct.ub_packed_rrset_key* %89)
  %91 = load %struct.module_env*, %struct.module_env** %11, align 8
  %92 = getelementptr inbounds %struct.module_env, %struct.module_env* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %93, align 4
  %95 = call %struct.key_entry_key* @key_entry_create_null(%struct.regional* %75, i32 %79, i32 %83, i32 %88, i32 %90, i32 %94)
  store %struct.key_entry_key* %95, %struct.key_entry_key** %9, align 8
  store i32 1, i32* %21, align 4
  br label %118

96:                                               ; preds = %70
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.regional*, %struct.regional** %10, align 8
  %99 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %100 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %104 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %108 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ntohs(i32 %110)
  %112 = load i32, i32* @BOGUS_KEY_TTL, align 4
  %113 = load %struct.module_env*, %struct.module_env** %11, align 8
  %114 = getelementptr inbounds %struct.module_env, %struct.module_env* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %115, align 4
  %117 = call %struct.key_entry_key* @key_entry_create_bad(%struct.regional* %98, i32 %102, i32 %106, i32 %111, i32 %112, i32 %116)
  store %struct.key_entry_key* %117, %struct.key_entry_key** %9, align 8
  store i32 1, i32* %21, align 4
  br label %118

118:                                              ; preds = %97, %74, %63
  %119 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %119)
  %120 = load %struct.key_entry_key*, %struct.key_entry_key** %9, align 8
  ret %struct.key_entry_key* %120
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @val_verify_DNSKEY_with_DS(%struct.module_env*, %struct.val_env*, %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key*, i32*, i8**, %struct.module_qstate*) #2

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

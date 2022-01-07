; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_kcache.c_key_cache_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_kcache.c_key_cache_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_cache = type { i32 }
%struct.key_entry_key = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.module_qstate = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key_cache_insert(%struct.key_cache* %0, %struct.key_entry_key* %1, %struct.module_qstate* %2) #0 {
  %4 = alloca %struct.key_cache*, align 8
  %5 = alloca %struct.key_entry_key*, align 8
  %6 = alloca %struct.module_qstate*, align 8
  %7 = alloca %struct.key_entry_key*, align 8
  store %struct.key_cache* %0, %struct.key_cache** %4, align 8
  store %struct.key_entry_key* %1, %struct.key_entry_key** %5, align 8
  store %struct.module_qstate* %2, %struct.module_qstate** %6, align 8
  %8 = load %struct.key_entry_key*, %struct.key_entry_key** %5, align 8
  %9 = call %struct.key_entry_key* @key_entry_copy(%struct.key_entry_key* %8)
  store %struct.key_entry_key* %9, %struct.key_entry_key** %7, align 8
  %10 = load %struct.key_entry_key*, %struct.key_entry_key** %7, align 8
  %11 = icmp ne %struct.key_entry_key* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %53

13:                                               ; preds = %3
  %14 = load %struct.key_entry_key*, %struct.key_entry_key** %7, align 8
  %15 = call i64 @key_entry_isbad(%struct.key_entry_key* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %19 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %24 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %29, 2
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load %struct.key_entry_key*, %struct.key_entry_key** %7, align 8
  %33 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %34 = call i32 @errinf_to_str_bogus(%struct.module_qstate* %33)
  %35 = call i32 @key_entry_set_reason(%struct.key_entry_key* %32, i32 %34)
  br label %36

36:                                               ; preds = %31, %22, %17, %13
  %37 = load %struct.key_entry_key*, %struct.key_entry_key** %7, align 8
  %38 = call i32 @key_entry_hash(%struct.key_entry_key* %37)
  %39 = load %struct.key_cache*, %struct.key_cache** %4, align 8
  %40 = getelementptr inbounds %struct.key_cache, %struct.key_cache* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.key_entry_key*, %struct.key_entry_key** %7, align 8
  %43 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.key_entry_key*, %struct.key_entry_key** %7, align 8
  %47 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %46, i32 0, i32 0
  %48 = load %struct.key_entry_key*, %struct.key_entry_key** %7, align 8
  %49 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @slabhash_insert(i32 %41, i32 %45, %struct.TYPE_6__* %47, i32 %51, i32* null)
  br label %53

53:                                               ; preds = %36, %12
  ret void
}

declare dso_local %struct.key_entry_key* @key_entry_copy(%struct.key_entry_key*) #1

declare dso_local i64 @key_entry_isbad(%struct.key_entry_key*) #1

declare dso_local i32 @key_entry_set_reason(%struct.key_entry_key*, i32) #1

declare dso_local i32 @errinf_to_str_bogus(%struct.module_qstate*) #1

declare dso_local i32 @key_entry_hash(%struct.key_entry_key*) #1

declare dso_local i32 @slabhash_insert(i32, i32, %struct.TYPE_6__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

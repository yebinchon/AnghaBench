; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_mark_insecure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_mark_insecure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reply_info = type { i64, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.rrset_cache = type { i32 }
%struct.module_env = type { i32* }
%struct.packed_rrset_data = type { i64 }

@sec_status_unchecked = common dso_local global i64 0, align 8
@sec_status_insecure = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @val_mark_insecure(%struct.reply_info* %0, i32* %1, %struct.rrset_cache* %2, %struct.module_env* %3) #0 {
  %5 = alloca %struct.reply_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rrset_cache*, align 8
  %8 = alloca %struct.module_env*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.packed_rrset_data*, align 8
  store %struct.reply_info* %0, %struct.reply_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.rrset_cache* %2, %struct.rrset_cache** %7, align 8
  store %struct.module_env* %3, %struct.module_env** %8, align 8
  store i64 0, i64* %9, align 8
  br label %11

11:                                               ; preds = %63, %4
  %12 = load i64, i64* %9, align 8
  %13 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %14 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %66

17:                                               ; preds = %11
  %18 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %19 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %19, align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %20, i64 %21
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %27, %struct.packed_rrset_data** %10, align 8
  %28 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %29 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @sec_status_unchecked, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %17
  %34 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %35 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %36, i64 %37
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i64 @dname_subdomain_c(i32 %42, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %33
  %47 = load i64, i64* @sec_status_insecure, align 8
  %48 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %49 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.rrset_cache*, %struct.rrset_cache** %7, align 8
  %51 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %52 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %52, align 8
  %54 = load i64, i64* %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %53, i64 %54
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load %struct.module_env*, %struct.module_env** %8, align 8
  %58 = getelementptr inbounds %struct.module_env, %struct.module_env* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @rrset_update_sec_status(%struct.rrset_cache* %50, %struct.TYPE_6__* %56, i32 %60)
  br label %62

62:                                               ; preds = %46, %33, %17
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %9, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %9, align 8
  br label %11

66:                                               ; preds = %11
  ret void
}

declare dso_local i64 @dname_subdomain_c(i32, i32*) #1

declare dso_local i32 @rrset_update_sec_status(%struct.rrset_cache*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

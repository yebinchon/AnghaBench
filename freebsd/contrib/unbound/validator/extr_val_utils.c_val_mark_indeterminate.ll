; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_mark_indeterminate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_mark_indeterminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reply_info = type { i64, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.val_anchors = type { i32 }
%struct.rrset_cache = type { i32 }
%struct.module_env = type { i32* }
%struct.packed_rrset_data = type { i64 }

@sec_status_unchecked = common dso_local global i64 0, align 8
@sec_status_indeterminate = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @val_mark_indeterminate(%struct.reply_info* %0, %struct.val_anchors* %1, %struct.rrset_cache* %2, %struct.module_env* %3) #0 {
  %5 = alloca %struct.reply_info*, align 8
  %6 = alloca %struct.val_anchors*, align 8
  %7 = alloca %struct.rrset_cache*, align 8
  %8 = alloca %struct.module_env*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.packed_rrset_data*, align 8
  store %struct.reply_info* %0, %struct.reply_info** %5, align 8
  store %struct.val_anchors* %1, %struct.val_anchors** %6, align 8
  store %struct.rrset_cache* %2, %struct.rrset_cache** %7, align 8
  store %struct.module_env* %3, %struct.module_env** %8, align 8
  store i64 0, i64* %9, align 8
  br label %11

11:                                               ; preds = %82, %4
  %12 = load i64, i64* %9, align 8
  %13 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %14 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %85

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
  br i1 %32, label %33, label %81

33:                                               ; preds = %17
  %34 = load %struct.val_anchors*, %struct.val_anchors** %6, align 8
  %35 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %36 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %37, i64 %38
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %45 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %46, i64 %47
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %54 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %55, i64 %56
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ntohs(i32 %61)
  %63 = call i64 @check_no_anchor(%struct.val_anchors* %34, i32 %43, i32 %52, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %33
  %66 = load i64, i64* @sec_status_indeterminate, align 8
  %67 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %68 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.rrset_cache*, %struct.rrset_cache** %7, align 8
  %70 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %71 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %70, i32 0, i32 1
  %72 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %71, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %72, i64 %73
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load %struct.module_env*, %struct.module_env** %8, align 8
  %77 = getelementptr inbounds %struct.module_env, %struct.module_env* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @rrset_update_sec_status(%struct.rrset_cache* %69, %struct.TYPE_6__* %75, i32 %79)
  br label %81

81:                                               ; preds = %65, %33, %17
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %9, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %9, align 8
  br label %11

85:                                               ; preds = %11
  ret void
}

declare dso_local i64 @check_no_anchor(%struct.val_anchors*, i32, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @rrset_update_sec_status(%struct.rrset_cache*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_next_unchecked.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_next_unchecked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reply_info = type { i64, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.packed_rrset_data = type { i64 }

@sec_status_unchecked = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @val_next_unchecked(%struct.reply_info* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.reply_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.packed_rrset_data*, align 8
  store %struct.reply_info* %0, %struct.reply_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = add i64 %8, 1
  store i64 %9, i64* %6, align 8
  br label %10

10:                                               ; preds = %35, %2
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %13 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %10
  %17 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %18 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %19, i64 %20
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %26, %struct.packed_rrset_data** %7, align 8
  %27 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %28 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @sec_status_unchecked, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %16
  %33 = load i64, i64* %6, align 8
  store i64 %33, i64* %3, align 8
  br label %42

34:                                               ; preds = %16
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %6, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %6, align 8
  br label %10

38:                                               ; preds = %10
  %39 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %40 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %3, align 8
  br label %42

42:                                               ; preds = %38, %32
  %43 = load i64, i64* %3, align 8
  ret i64 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

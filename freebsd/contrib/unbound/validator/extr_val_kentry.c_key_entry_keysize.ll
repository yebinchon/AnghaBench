; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_kentry.c_key_entry_keysize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_kentry.c_key_entry_keysize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_entry_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.packed_rrset_data = type { i64 }
%struct.key_entry_data = type { %struct.packed_rrset_data* }

@DNSKEY_BIT_ZSK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @key_entry_keysize(%struct.key_entry_key* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.key_entry_key*, align 8
  %4 = alloca %struct.packed_rrset_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.key_entry_key* %0, %struct.key_entry_key** %3, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.key_entry_key*, %struct.key_entry_key** %3, align 8
  %8 = call i32 @key_entry_isgood(%struct.key_entry_key* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %52

11:                                               ; preds = %1
  %12 = load %struct.key_entry_key*, %struct.key_entry_key** %3, align 8
  %13 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.key_entry_data*
  %17 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %16, i32 0, i32 0
  %18 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %17, align 8
  store %struct.packed_rrset_data* %18, %struct.packed_rrset_data** %4, align 8
  store i64 0, i64* %5, align 8
  br label %19

19:                                               ; preds = %47, %11
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %4, align 8
  %22 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %19
  %26 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @kd_get_flags(%struct.packed_rrset_data* %26, i64 %27)
  %29 = load i32, i32* @DNSKEY_BIT_ZSK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  br label %47

33:                                               ; preds = %25
  %34 = load i64, i64* %5, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @dnskey_get_keysize(%struct.packed_rrset_data* %37, i64 %38)
  %40 = load i64, i64* %6, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36, %33
  %43 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i64 @dnskey_get_keysize(%struct.packed_rrset_data* %43, i64 %44)
  store i64 %45, i64* %6, align 8
  br label %46

46:                                               ; preds = %42, %36
  br label %47

47:                                               ; preds = %46, %32
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %5, align 8
  br label %19

50:                                               ; preds = %19
  %51 = load i64, i64* %6, align 8
  store i64 %51, i64* %2, align 8
  br label %52

52:                                               ; preds = %50, %10
  %53 = load i64, i64* %2, align 8
  ret i64 %53
}

declare dso_local i32 @key_entry_isgood(%struct.key_entry_key*) #1

declare dso_local i32 @kd_get_flags(%struct.packed_rrset_data*, i64) #1

declare dso_local i64 @dnskey_get_keysize(%struct.packed_rrset_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

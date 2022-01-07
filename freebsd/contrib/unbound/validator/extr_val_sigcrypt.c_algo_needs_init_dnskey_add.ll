; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_algo_needs_init_dnskey_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_algo_needs_init_dnskey_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.algo_needs = type { i64, i32* }
%struct.ub_packed_rrset_key = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @algo_needs_init_dnskey_add(%struct.algo_needs* %0, %struct.ub_packed_rrset_key* %1, i64* %2) #0 {
  %4 = alloca %struct.algo_needs*, align 8
  %5 = alloca %struct.ub_packed_rrset_key*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.algo_needs* %0, %struct.algo_needs** %4, align 8
  store %struct.ub_packed_rrset_key* %1, %struct.ub_packed_rrset_key** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load %struct.algo_needs*, %struct.algo_needs** %4, align 8
  %12 = getelementptr inbounds %struct.algo_needs, %struct.algo_needs* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %15 = call i64 @rrset_get_count(%struct.ub_packed_rrset_key* %14)
  store i64 %15, i64* %10, align 8
  store i64 0, i64* %8, align 8
  br label %16

16:                                               ; preds = %50, %3
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %16
  %21 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i64 @dnskey_get_algo(%struct.ub_packed_rrset_key* %21, i64 %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @dnskey_algo_id_is_supported(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %50

29:                                               ; preds = %20
  %30 = load %struct.algo_needs*, %struct.algo_needs** %4, align 8
  %31 = getelementptr inbounds %struct.algo_needs, %struct.algo_needs* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %29
  %38 = load %struct.algo_needs*, %struct.algo_needs** %4, align 8
  %39 = getelementptr inbounds %struct.algo_needs, %struct.algo_needs* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 1, i32* %42, align 4
  %43 = load i64, i64* %7, align 8
  %44 = load i64*, i64** %6, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  store i64 %43, i64* %46, align 8
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %37, %29
  br label %50

50:                                               ; preds = %49, %28
  %51 = load i64, i64* %8, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %8, align 8
  br label %16

53:                                               ; preds = %16
  %54 = load i64*, i64** %6, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  store i64 0, i64* %56, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.algo_needs*, %struct.algo_needs** %4, align 8
  %59 = getelementptr inbounds %struct.algo_needs, %struct.algo_needs* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  ret void
}

declare dso_local i64 @rrset_get_count(%struct.ub_packed_rrset_key*) #1

declare dso_local i64 @dnskey_get_algo(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @dnskey_algo_id_is_supported(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

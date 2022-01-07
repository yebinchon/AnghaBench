; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_algo_needs_init_ds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_algo_needs_init_ds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.algo_needs = type { i32*, i64 }
%struct.ub_packed_rrset_key = type { i32 }

@ALGO_NEEDS_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @algo_needs_init_ds(%struct.algo_needs* %0, %struct.ub_packed_rrset_key* %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.algo_needs*, align 8
  %6 = alloca %struct.ub_packed_rrset_key*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.algo_needs* %0, %struct.algo_needs** %5, align 8
  store %struct.ub_packed_rrset_key* %1, %struct.ub_packed_rrset_key** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  store i64 0, i64* %11, align 8
  %13 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %14 = call i64 @rrset_get_count(%struct.ub_packed_rrset_key* %13)
  store i64 %14, i64* %12, align 8
  %15 = load %struct.algo_needs*, %struct.algo_needs** %5, align 8
  %16 = getelementptr inbounds %struct.algo_needs, %struct.algo_needs* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* @ALGO_NEEDS_MAX, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 8, %19
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memset(i32* %17, i32 0, i32 %21)
  store i64 0, i64* %10, align 8
  br label %23

23:                                               ; preds = %69, %4
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %12, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %72

27:                                               ; preds = %23
  %28 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @ds_get_digest_algo(%struct.ub_packed_rrset_key* %28, i64 %29)
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %69

34:                                               ; preds = %27
  %35 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @ds_get_key_algo(%struct.ub_packed_rrset_key* %35, i64 %36)
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @dnskey_algo_id_is_supported(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  br label %69

44:                                               ; preds = %34
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @log_assert(i32 %47)
  %49 = load %struct.algo_needs*, %struct.algo_needs** %5, align 8
  %50 = getelementptr inbounds %struct.algo_needs, %struct.algo_needs* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %44
  %57 = load %struct.algo_needs*, %struct.algo_needs** %5, align 8
  %58 = getelementptr inbounds %struct.algo_needs, %struct.algo_needs* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32 1, i32* %61, align 4
  %62 = load i64, i64* %9, align 8
  %63 = load i64*, i64** %8, align 8
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  store i64 %62, i64* %65, align 8
  %66 = load i64, i64* %11, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %11, align 8
  br label %68

68:                                               ; preds = %56, %44
  br label %69

69:                                               ; preds = %68, %43, %33
  %70 = load i64, i64* %10, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %10, align 8
  br label %23

72:                                               ; preds = %23
  %73 = load i64*, i64** %8, align 8
  %74 = load i64, i64* %11, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  store i64 0, i64* %75, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load %struct.algo_needs*, %struct.algo_needs** %5, align 8
  %78 = getelementptr inbounds %struct.algo_needs, %struct.algo_needs* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  ret void
}

declare dso_local i64 @rrset_get_count(%struct.ub_packed_rrset_key*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ds_get_digest_algo(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @ds_get_key_algo(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @dnskey_algo_id_is_supported(i32) #1

declare dso_local i32 @log_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

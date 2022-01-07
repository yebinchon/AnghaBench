; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_kentry.c_dnskey_get_keysize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_kentry.c_dnskey_get_keysize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_rrset_data = type { i32*, i64** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.packed_rrset_data*, i64)* @dnskey_get_keysize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dnskey_get_keysize(%struct.packed_rrset_data* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.packed_rrset_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.packed_rrset_data* %0, %struct.packed_rrset_data** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %4, align 8
  %10 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %14, 7
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %48

17:                                               ; preds = %2
  %18 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %4, align 8
  %19 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %18, i32 0, i32 1
  %20 = load i64**, i64*** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds i64*, i64** %20, i64 %21
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 5
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %4, align 8
  %28 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %27, i32 0, i32 1
  %29 = load i64**, i64*** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i64*, i64** %29, i64 %30
  %32 = load i64*, i64** %31, align 8
  %33 = bitcast i64* %32 to i8*
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  %35 = getelementptr inbounds i8, i8* %34, i64 4
  store i8* %35, i8** %6, align 8
  %36 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %4, align 8
  %37 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = sub i32 %41, 2
  %43 = sub i32 %42, 4
  store i32 %43, i32* %7, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @sldns_rr_dnskey_key_size_raw(i8* %44, i32 %45, i32 %46)
  store i64 %47, i64* %3, align 8
  br label %48

48:                                               ; preds = %17, %16
  %49 = load i64, i64* %3, align 8
  ret i64 %49
}

declare dso_local i64 @sldns_rr_dnskey_key_size_raw(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

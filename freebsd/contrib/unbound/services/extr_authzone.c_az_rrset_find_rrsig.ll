; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_rrset_find_rrsig.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_rrset_find_rrsig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_rrset_data = type { i64, i64, i64*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packed_rrset_data*, i32*, i64, i64*)* @az_rrset_find_rrsig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az_rrset_find_rrsig(%struct.packed_rrset_data* %0, i32* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.packed_rrset_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store %struct.packed_rrset_data* %0, %struct.packed_rrset_data** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %6, align 8
  %12 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %10, align 8
  br label %14

14:                                               ; preds = %49, %4
  %15 = load i64, i64* %10, align 8
  %16 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %6, align 8
  %17 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %6, align 8
  %20 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %18, %21
  %23 = icmp ult i64 %15, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %14
  %25 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %6, align 8
  %26 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %25, i32 0, i32 2
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %49

34:                                               ; preds = %24
  %35 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %6, align 8
  %36 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i64 @memcmp(i32 %40, i32* %41, i64 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load i64, i64* %10, align 8
  %47 = load i64*, i64** %9, align 8
  store i64 %46, i64* %47, align 8
  store i32 1, i32* %5, align 4
  br label %53

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %48, %33
  %50 = load i64, i64* %10, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %10, align 8
  br label %14

52:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %45
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i64 @memcmp(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

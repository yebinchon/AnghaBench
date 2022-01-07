; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_rdata_duplicate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_rdata_duplicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_rrset_data = type { i64, i64, i64*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packed_rrset_data*, i32*, i64)* @rdata_duplicate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdata_duplicate(%struct.packed_rrset_data* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.packed_rrset_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.packed_rrset_data* %0, %struct.packed_rrset_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %42, %3
  %10 = load i64, i64* %8, align 8
  %11 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %5, align 8
  %12 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %5, align 8
  %15 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %13, %16
  %18 = icmp ult i64 %10, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %9
  %20 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %5, align 8
  %21 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %20, i32 0, i32 2
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %42

29:                                               ; preds = %19
  %30 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %5, align 8
  %31 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i64 @memcmp(i32 %35, i32* %36, i64 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %46

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %28
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %8, align 8
  br label %9

45:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %40
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @memcmp(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

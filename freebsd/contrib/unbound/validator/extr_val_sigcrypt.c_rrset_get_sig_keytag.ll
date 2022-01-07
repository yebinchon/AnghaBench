; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_rrset_get_sig_keytag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_rrset_get_sig_keytag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.packed_rrset_data = type { i64, i32*, i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ub_packed_rrset_key*, i64)* @rrset_get_sig_keytag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rrset_get_sig_keytag(%struct.ub_packed_rrset_key* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ub_packed_rrset_key*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.packed_rrset_data*, align 8
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %9 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %12, %struct.packed_rrset_data** %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %15 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @log_assert(i32 %18)
  %20 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %21 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %24 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %25, %26
  %28 = getelementptr inbounds i32, i32* %22, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 20
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

32:                                               ; preds = %2
  %33 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %34 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %33, i32 0, i32 3
  %35 = load i64*, i64** %34, align 8
  %36 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %37 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = add i64 %38, %39
  %41 = getelementptr inbounds i64, i64* %35, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 2
  %44 = add nsw i64 %43, 16
  %45 = call i32 @memmove(i32* %6, i64 %44, i32 2)
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @ntohs(i32 %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %32, %31
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @memmove(i32*, i64, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_kentry.c_key_entry_create_null.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_kentry.c_key_entry_create_null.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_entry_key = type { i32 }
%struct.regional = type { i32 }
%struct.key_entry_data = type { i32*, i32*, i32, i32*, i64, i64 }

@LDNS_RR_TYPE_DNSKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.key_entry_key* @key_entry_create_null(%struct.regional* %0, i32* %1, i64 %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.key_entry_key*, align 8
  %8 = alloca %struct.regional*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.key_entry_key*, align 8
  %15 = alloca %struct.key_entry_data*, align 8
  store %struct.regional* %0, %struct.regional** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load %struct.regional*, %struct.regional** %8, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @key_entry_setup(%struct.regional* %16, i32* %17, i64 %18, i32 %19, %struct.key_entry_key** %14, %struct.key_entry_data** %15)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %6
  store %struct.key_entry_key* null, %struct.key_entry_key** %7, align 8
  br label %41

23:                                               ; preds = %6
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* %12, align 8
  %26 = add nsw i64 %24, %25
  %27 = load %struct.key_entry_data*, %struct.key_entry_data** %15, align 8
  %28 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %27, i32 0, i32 5
  store i64 %26, i64* %28, align 8
  %29 = load %struct.key_entry_data*, %struct.key_entry_data** %15, align 8
  %30 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load %struct.key_entry_data*, %struct.key_entry_data** %15, align 8
  %32 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %31, i32 0, i32 3
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* @LDNS_RR_TYPE_DNSKEY, align 4
  %34 = load %struct.key_entry_data*, %struct.key_entry_data** %15, align 8
  %35 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.key_entry_data*, %struct.key_entry_data** %15, align 8
  %37 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = load %struct.key_entry_data*, %struct.key_entry_data** %15, align 8
  %39 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  %40 = load %struct.key_entry_key*, %struct.key_entry_key** %14, align 8
  store %struct.key_entry_key* %40, %struct.key_entry_key** %7, align 8
  br label %41

41:                                               ; preds = %23, %22
  %42 = load %struct.key_entry_key*, %struct.key_entry_key** %7, align 8
  ret %struct.key_entry_key* %42
}

declare dso_local i32 @key_entry_setup(%struct.regional*, i32*, i64, i32, %struct.key_entry_key**, %struct.key_entry_data**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

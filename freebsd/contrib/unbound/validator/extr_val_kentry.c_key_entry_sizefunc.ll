; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_kentry.c_key_entry_sizefunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_kentry.c_key_entry_sizefunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_entry_key = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.key_entry_data = type { i8*, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @key_entry_sizefunc(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.key_entry_key*, align 8
  %6 = alloca %struct.key_entry_data*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.key_entry_key*
  store %struct.key_entry_key* %9, %struct.key_entry_key** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.key_entry_data*
  store %struct.key_entry_data* %11, %struct.key_entry_data** %6, align 8
  %12 = load %struct.key_entry_key*, %struct.key_entry_key** %5, align 8
  %13 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 8, %15
  store i64 %16, i64* %7, align 8
  %17 = load %struct.key_entry_key*, %struct.key_entry_key** %5, align 8
  %18 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i64 @lock_get_mem(i32* %19)
  %21 = add i64 24, %20
  %22 = load i64, i64* %7, align 8
  %23 = add i64 %22, %21
  store i64 %23, i64* %7, align 8
  %24 = load %struct.key_entry_data*, %struct.key_entry_data** %6, align 8
  %25 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load %struct.key_entry_data*, %struct.key_entry_data** %6, align 8
  %30 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @packed_rrset_sizeof(i64 %31)
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %28, %2
  %36 = load %struct.key_entry_data*, %struct.key_entry_data** %6, align 8
  %37 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.key_entry_data*, %struct.key_entry_data** %6, align 8
  %42 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strlen(i8* %43)
  %45 = add nsw i64 %44, 1
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %7, align 8
  br label %48

48:                                               ; preds = %40, %35
  %49 = load %struct.key_entry_data*, %struct.key_entry_data** %6, align 8
  %50 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load %struct.key_entry_data*, %struct.key_entry_data** %6, align 8
  %55 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = call i64 @strlen(i8* %57)
  %59 = add nsw i64 %58, 1
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %7, align 8
  br label %62

62:                                               ; preds = %53, %48
  %63 = load i64, i64* %7, align 8
  ret i64 %63
}

declare dso_local i64 @lock_get_mem(i32*) #1

declare dso_local i64 @packed_rrset_sizeof(i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

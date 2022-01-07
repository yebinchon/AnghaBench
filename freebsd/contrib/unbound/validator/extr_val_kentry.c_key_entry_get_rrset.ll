; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_kentry.c_key_entry_get_rrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_kentry.c_key_entry_get_rrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.packed_rrset_data*, %struct.ub_packed_rrset_key* }
%struct.packed_rrset_data = type { i32 }
%struct.TYPE_5__ = type { i8*, i8*, i32, i8* }
%struct.key_entry_key = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.regional = type { i32 }
%struct.key_entry_data = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ub_packed_rrset_key* @key_entry_get_rrset(%struct.key_entry_key* %0, %struct.regional* %1) #0 {
  %3 = alloca %struct.ub_packed_rrset_key*, align 8
  %4 = alloca %struct.key_entry_key*, align 8
  %5 = alloca %struct.regional*, align 8
  %6 = alloca %struct.key_entry_data*, align 8
  %7 = alloca %struct.ub_packed_rrset_key*, align 8
  %8 = alloca %struct.packed_rrset_data*, align 8
  store %struct.key_entry_key* %0, %struct.key_entry_key** %4, align 8
  store %struct.regional* %1, %struct.regional** %5, align 8
  %9 = load %struct.key_entry_key*, %struct.key_entry_key** %4, align 8
  %10 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.key_entry_data*
  store %struct.key_entry_data* %13, %struct.key_entry_data** %6, align 8
  %14 = load %struct.key_entry_data*, %struct.key_entry_data** %6, align 8
  %15 = icmp ne %struct.key_entry_data* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.key_entry_data*, %struct.key_entry_data** %6, align 8
  %18 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %2
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %3, align 8
  br label %94

22:                                               ; preds = %16
  %23 = load %struct.regional*, %struct.regional** %5, align 8
  %24 = call %struct.ub_packed_rrset_key* @regional_alloc(%struct.regional* %23, i32 48)
  store %struct.ub_packed_rrset_key* %24, %struct.ub_packed_rrset_key** %7, align 8
  %25 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %26 = icmp ne %struct.ub_packed_rrset_key* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %3, align 8
  br label %94

28:                                               ; preds = %22
  %29 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %30 = call i32 @memset(%struct.ub_packed_rrset_key* %29, i32 0, i32 48)
  %31 = load %struct.regional*, %struct.regional** %5, align 8
  %32 = load %struct.key_entry_key*, %struct.key_entry_key** %4, align 8
  %33 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.key_entry_key*, %struct.key_entry_key** %4, align 8
  %36 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @regional_alloc_init(%struct.regional* %31, i32 %34, i32 %37)
  %39 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %40 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  store i8* %38, i8** %41, align 8
  %42 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %43 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %28
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %3, align 8
  br label %94

48:                                               ; preds = %28
  %49 = load %struct.key_entry_key*, %struct.key_entry_key** %4, align 8
  %50 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %53 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 8
  %55 = load %struct.key_entry_data*, %struct.key_entry_data** %6, align 8
  %56 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @htons(i32 %57)
  %59 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %60 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store i8* %58, i8** %61, align 8
  %62 = load %struct.key_entry_key*, %struct.key_entry_key** %4, align 8
  %63 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i8* @htons(i32 %64)
  %66 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %67 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i8* %65, i8** %68, align 8
  %69 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %70 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %71 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  store %struct.ub_packed_rrset_key* %69, %struct.ub_packed_rrset_key** %72, align 8
  %73 = load %struct.regional*, %struct.regional** %5, align 8
  %74 = load %struct.key_entry_data*, %struct.key_entry_data** %6, align 8
  %75 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.key_entry_data*, %struct.key_entry_data** %6, align 8
  %78 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @packed_rrset_sizeof(i32 %79)
  %81 = call i8* @regional_alloc_init(%struct.regional* %73, i32 %76, i32 %80)
  %82 = bitcast i8* %81 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %82, %struct.packed_rrset_data** %8, align 8
  %83 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %84 = icmp ne %struct.packed_rrset_data* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %48
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %3, align 8
  br label %94

86:                                               ; preds = %48
  %87 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %88 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %89 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store %struct.packed_rrset_data* %87, %struct.packed_rrset_data** %90, align 8
  %91 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %92 = call i32 @packed_rrset_ptr_fixup(%struct.packed_rrset_data* %91)
  %93 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  store %struct.ub_packed_rrset_key* %93, %struct.ub_packed_rrset_key** %3, align 8
  br label %94

94:                                               ; preds = %86, %85, %47, %27, %21
  %95 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %3, align 8
  ret %struct.ub_packed_rrset_key* %95
}

declare dso_local %struct.ub_packed_rrset_key* @regional_alloc(%struct.regional*, i32) #1

declare dso_local i32 @memset(%struct.ub_packed_rrset_key*, i32, i32) #1

declare dso_local i8* @regional_alloc_init(%struct.regional*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @packed_rrset_sizeof(i32) #1

declare dso_local i32 @packed_rrset_ptr_fixup(%struct.packed_rrset_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

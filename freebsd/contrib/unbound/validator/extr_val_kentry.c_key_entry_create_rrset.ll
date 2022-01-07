; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_kentry.c_key_entry_create_rrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_kentry.c_key_entry_create_rrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_entry_key = type { i32 }
%struct.regional = type { i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.key_entry_data = type { %struct.packed_rrset_data*, i32*, i32, i32*, i64, i64 }
%struct.packed_rrset_data = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.key_entry_key* @key_entry_create_rrset(%struct.regional* %0, i32* %1, i64 %2, i32 %3, %struct.ub_packed_rrset_key* %4, i32* %5, i64 %6) #0 {
  %8 = alloca %struct.key_entry_key*, align 8
  %9 = alloca %struct.regional*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ub_packed_rrset_key*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.key_entry_key*, align 8
  %17 = alloca %struct.key_entry_data*, align 8
  %18 = alloca %struct.packed_rrset_data*, align 8
  store %struct.regional* %0, %struct.regional** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.ub_packed_rrset_key* %4, %struct.ub_packed_rrset_key** %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %19 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %20 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %23, %struct.packed_rrset_data** %18, align 8
  %24 = load %struct.regional*, %struct.regional** %9, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @key_entry_setup(%struct.regional* %24, i32* %25, i64 %26, i32 %27, %struct.key_entry_key** %16, %struct.key_entry_data** %17)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %7
  store %struct.key_entry_key* null, %struct.key_entry_key** %8, align 8
  br label %89

31:                                               ; preds = %7
  %32 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %18, align 8
  %33 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %15, align 8
  %36 = add nsw i64 %34, %35
  %37 = load %struct.key_entry_data*, %struct.key_entry_data** %17, align 8
  %38 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %37, i32 0, i32 5
  store i64 %36, i64* %38, align 8
  %39 = load %struct.key_entry_data*, %struct.key_entry_data** %17, align 8
  %40 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %39, i32 0, i32 4
  store i64 0, i64* %40, align 8
  %41 = load %struct.key_entry_data*, %struct.key_entry_data** %17, align 8
  %42 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %41, i32 0, i32 3
  store i32* null, i32** %42, align 8
  %43 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %44 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ntohs(i32 %46)
  %48 = load %struct.key_entry_data*, %struct.key_entry_data** %17, align 8
  %49 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.regional*, %struct.regional** %9, align 8
  %51 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %18, align 8
  %52 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %18, align 8
  %53 = call i32 @packed_rrset_sizeof(%struct.packed_rrset_data* %52)
  %54 = call i64 @regional_alloc_init(%struct.regional* %50, %struct.packed_rrset_data* %51, i32 %53)
  %55 = inttoptr i64 %54 to %struct.packed_rrset_data*
  %56 = load %struct.key_entry_data*, %struct.key_entry_data** %17, align 8
  %57 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %56, i32 0, i32 0
  store %struct.packed_rrset_data* %55, %struct.packed_rrset_data** %57, align 8
  %58 = load %struct.key_entry_data*, %struct.key_entry_data** %17, align 8
  %59 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %58, i32 0, i32 0
  %60 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %59, align 8
  %61 = icmp ne %struct.packed_rrset_data* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %31
  store %struct.key_entry_key* null, %struct.key_entry_key** %8, align 8
  br label %89

63:                                               ; preds = %31
  %64 = load i32*, i32** %14, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %80

66:                                               ; preds = %63
  %67 = load %struct.regional*, %struct.regional** %9, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = bitcast i32* %68 to i8*
  %70 = call i64 @regional_strdup(%struct.regional* %67, i8* %69)
  %71 = inttoptr i64 %70 to i32*
  %72 = load %struct.key_entry_data*, %struct.key_entry_data** %17, align 8
  %73 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %72, i32 0, i32 1
  store i32* %71, i32** %73, align 8
  %74 = load %struct.key_entry_data*, %struct.key_entry_data** %17, align 8
  %75 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %66
  store %struct.key_entry_key* null, %struct.key_entry_key** %8, align 8
  br label %89

79:                                               ; preds = %66
  br label %83

80:                                               ; preds = %63
  %81 = load %struct.key_entry_data*, %struct.key_entry_data** %17, align 8
  %82 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %81, i32 0, i32 1
  store i32* null, i32** %82, align 8
  br label %83

83:                                               ; preds = %80, %79
  %84 = load %struct.key_entry_data*, %struct.key_entry_data** %17, align 8
  %85 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %84, i32 0, i32 0
  %86 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %85, align 8
  %87 = call i32 @packed_rrset_ptr_fixup(%struct.packed_rrset_data* %86)
  %88 = load %struct.key_entry_key*, %struct.key_entry_key** %16, align 8
  store %struct.key_entry_key* %88, %struct.key_entry_key** %8, align 8
  br label %89

89:                                               ; preds = %83, %78, %62, %30
  %90 = load %struct.key_entry_key*, %struct.key_entry_key** %8, align 8
  ret %struct.key_entry_key* %90
}

declare dso_local i32 @key_entry_setup(%struct.regional*, i32*, i64, i32, %struct.key_entry_key**, %struct.key_entry_data**) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @regional_alloc_init(%struct.regional*, %struct.packed_rrset_data*, i32) #1

declare dso_local i32 @packed_rrset_sizeof(%struct.packed_rrset_data*) #1

declare dso_local i64 @regional_strdup(%struct.regional*, i8*) #1

declare dso_local i32 @packed_rrset_ptr_fixup(%struct.packed_rrset_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

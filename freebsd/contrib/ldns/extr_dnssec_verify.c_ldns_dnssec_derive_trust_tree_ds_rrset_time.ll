; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_dnssec_derive_trust_tree_ds_rrset_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_dnssec_derive_trust_tree_ds_rrset_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32* }

@LDNS_RR_TYPE_DNSKEY = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_DS = common dso_local global i64 0, align 8
@LDNS_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldns_dnssec_derive_trust_tree_ds_rrset_time(i32* %0, %struct.TYPE_4__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %11, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i64 @ldns_rr_get_type(i32* %17)
  %19 = load i64, i64* @LDNS_RR_TYPE_DNSKEY, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %91

21:                                               ; preds = %4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %91

26:                                               ; preds = %21
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %91

33:                                               ; preds = %26
  store i64 0, i64* %9, align 8
  br label %34

34:                                               ; preds = %87, %33
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i64 @ldns_rr_list_rr_count(i32* %40)
  %42 = icmp ult i64 %35, %41
  br i1 %42, label %43, label %90

43:                                               ; preds = %34
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i32* @ldns_rr_list_rr(i32* %48, i64 %49)
  store i32* %50, i32** %13, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = call i64 @ldns_rr_get_type(i32* %51)
  %53 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %86

55:                                               ; preds = %43
  store i64 0, i64* %10, align 8
  br label %56

56:                                               ; preds = %82, %55
  %57 = load i64, i64* %10, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = call i64 @ldns_rr_list_rr_count(i32* %58)
  %60 = icmp ult i64 %57, %59
  br i1 %60, label %61, label %85

61:                                               ; preds = %56
  %62 = load i32*, i32** %11, align 8
  %63 = load i64, i64* %10, align 8
  %64 = call i32* @ldns_rr_list_rr(i32* %62, i64 %63)
  store i32* %64, i32** %7, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = call i64 @ldns_rr_compare_ds(i32* %65, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %61
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32* @ldns_dnssec_derive_trust_tree_time(%struct.TYPE_5__* %72, i32* %73, i32 %74)
  store i32* %75, i32** %12, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = load i32, i32* @LDNS_STATUS_OK, align 4
  %79 = call i32 @ldns_dnssec_trust_tree_add_parent(i32* %76, i32* %77, i32* null, i32 %78)
  br label %81

80:                                               ; preds = %61
  br label %81

81:                                               ; preds = %80, %69
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %10, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %10, align 8
  br label %56

85:                                               ; preds = %56
  br label %86

86:                                               ; preds = %85, %43
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %9, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %9, align 8
  br label %34

90:                                               ; preds = %34
  br label %91

91:                                               ; preds = %90, %26, %21, %4
  ret void
}

declare dso_local i64 @ldns_rr_get_type(i32*) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32* @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i64 @ldns_rr_compare_ds(i32*, i32*) #1

declare dso_local i32* @ldns_dnssec_derive_trust_tree_time(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @ldns_dnssec_trust_tree_add_parent(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

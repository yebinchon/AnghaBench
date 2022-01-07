; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec.c_val_nsec_proves_name_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec.c_val_nsec_proves_name_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@LDNS_RR_TYPE_DNAME = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_NS = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_SOA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @val_nsec_proves_name_error(%struct.ub_packed_rrset_key* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ub_packed_rrset_key*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %10 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %14 = call i32 @nsec_get_next(%struct.ub_packed_rrset_key* %13, i32** %7, i64* %8)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %87

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @query_dname_compare(i32* %18, i32* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %87

23:                                               ; preds = %17
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i64 @dname_subdomain_c(i32* %24, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %30 = load i32, i32* @LDNS_RR_TYPE_DNAME, align 4
  %31 = call i64 @nsec_has_type(%struct.ub_packed_rrset_key* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %35 = load i32, i32* @LDNS_RR_TYPE_NS, align 4
  %36 = call i64 @nsec_has_type(%struct.ub_packed_rrset_key* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %40 = load i32, i32* @LDNS_RR_TYPE_SOA, align 4
  %41 = call i64 @nsec_has_type(%struct.ub_packed_rrset_key* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38, %28
  store i32 0, i32* %3, align 4
  br label %87

44:                                               ; preds = %38, %33, %23
  %45 = load i32*, i32** %6, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i64 @query_dname_compare(i32* %45, i32* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load i32*, i32** %5, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i64 @dname_strict_subdomain_c(i32* %50, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %87

55:                                               ; preds = %49
  br label %86

56:                                               ; preds = %44
  %57 = load i32*, i32** %6, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i64 @dname_canonical_compare(i32* %57, i32* %58)
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %56
  %62 = load i32*, i32** %6, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = call i64 @dname_canonical_compare(i32* %62, i32* %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32*, i32** %5, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i64 @dname_strict_subdomain_c(i32* %67, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 1, i32* %3, align 4
  br label %87

72:                                               ; preds = %66, %61
  br label %85

73:                                               ; preds = %56
  %74 = load i32*, i32** %6, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = call i64 @dname_canonical_compare(i32* %74, i32* %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load i32*, i32** %5, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = call i64 @dname_canonical_compare(i32* %79, i32* %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 1, i32* %3, align 4
  br label %87

84:                                               ; preds = %78, %73
  br label %85

85:                                               ; preds = %84, %72
  br label %86

86:                                               ; preds = %85, %55
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %83, %71, %54, %43, %22, %16
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @nsec_get_next(%struct.ub_packed_rrset_key*, i32**, i64*) #1

declare dso_local i64 @query_dname_compare(i32*, i32*) #1

declare dso_local i64 @dname_subdomain_c(i32*, i32*) #1

declare dso_local i64 @nsec_has_type(%struct.ub_packed_rrset_key*, i32) #1

declare dso_local i64 @dname_strict_subdomain_c(i32*, i32*) #1

declare dso_local i64 @dname_canonical_compare(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

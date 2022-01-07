; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_dnssec_derive_trust_tree_no_sig_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_dnssec_derive_trust_tree_no_sig_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32* }

@LDNS_RR_TYPE_NSEC3 = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8
@LDNS_STATUS_OK = common dso_local global i32 0, align 4
@LDNS_STATUS_DNSSEC_NSEC_RR_NOT_COVERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldns_dnssec_derive_trust_tree_no_sig_time(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = icmp ne %struct.TYPE_11__* %14, null
  br i1 %15, label %16, label %108

16:                                               ; preds = %3
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %108

23:                                               ; preds = %16
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %82

31:                                               ; preds = %23
  %32 = load i32*, i32** %8, align 8
  %33 = call i64 @ldns_rr_list_rr_count(i32* %32)
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %82

35:                                               ; preds = %31
  %36 = load i32*, i32** %8, align 8
  %37 = call i32* @ldns_rr_list_rr(i32* %36, i64 0)
  %38 = call i64 @ldns_rr_get_type(i32* %37)
  %39 = load i64, i64* @LDNS_RR_TYPE_NSEC3, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %35
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @ldns_dnssec_verify_denial_nsec3(i32 %44, i32* %45, i32 %50, i32 %53, i32 %56, i32 %59)
  store i32 %60, i32* %11, align 4
  br label %81

61:                                               ; preds = %35
  %62 = load i32*, i32** %8, align 8
  %63 = call i32* @ldns_rr_list_rr(i32* %62, i64 0)
  %64 = call i64 @ldns_rr_get_type(i32* %63)
  %65 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %61
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @ldns_dnssec_verify_denial(i32 %70, i32* %71, i32 %76)
  store i32 %77, i32* %11, align 4
  br label %80

78:                                               ; preds = %61
  %79 = load i32, i32* @LDNS_STATUS_OK, align 4
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %78, %67
  br label %81

81:                                               ; preds = %80, %41
  br label %84

82:                                               ; preds = %31, %23
  %83 = load i32, i32* @LDNS_STATUS_DNSSEC_NSEC_RR_NOT_COVERED, align 4
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %82, %81
  store i64 0, i64* %7, align 8
  br label %85

85:                                               ; preds = %104, %84
  %86 = load i64, i64* %7, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = call i64 @ldns_rr_list_rr_count(i32* %87)
  %89 = icmp ult i64 %86, %88
  br i1 %89, label %90, label %107

90:                                               ; preds = %85
  %91 = load i32*, i32** %8, align 8
  %92 = load i64, i64* %7, align 8
  %93 = call i32* @ldns_rr_list_rr(i32* %91, i64 %92)
  store i32* %93, i32** %9, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call %struct.TYPE_9__* @ldns_dnssec_derive_trust_tree_time(%struct.TYPE_11__* %96, i32* %97, i32 %98)
  store %struct.TYPE_9__* %99, %struct.TYPE_9__** %10, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @ldns_dnssec_trust_tree_add_parent(%struct.TYPE_9__* %100, %struct.TYPE_9__* %101, i32* null, i32 %102)
  br label %104

104:                                              ; preds = %90
  %105 = load i64, i64* %7, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %7, align 8
  br label %85

107:                                              ; preds = %85
  br label %108

108:                                              ; preds = %107, %16, %3
  ret void
}

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i64 @ldns_rr_get_type(i32*) #1

declare dso_local i32* @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i32 @ldns_dnssec_verify_denial_nsec3(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ldns_dnssec_verify_denial(i32, i32*, i32) #1

declare dso_local %struct.TYPE_9__* @ldns_dnssec_derive_trust_tree_time(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @ldns_dnssec_trust_tree_add_parent(%struct.TYPE_9__*, %struct.TYPE_9__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

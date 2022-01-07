; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_dnssec_trust_tree_contains_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_dnssec_trust_tree_contains_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64*, i64, %struct.TYPE_3__** }

@LDNS_STATUS_CRYPTO_NO_DNSKEY = common dso_local global i64 0, align 8
@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8
@LDNS_STATUS_DNSSEC_EXISTENCE_DENIED = common dso_local global i64 0, align 8
@LDNS_STATUS_ERR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ldns_dnssec_trust_tree_contains_keys(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i64, i64* @LDNS_STATUS_CRYPTO_NO_DNSKEY, align 8
  store i64 %10, i64* %7, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %111

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %111

16:                                               ; preds = %13
  %17 = load i32*, i32** %5, align 8
  %18 = call i64 @ldns_rr_list_rr_count(i32* %17)
  %19 = icmp ugt i64 %18, 0
  br i1 %19, label %20, label %111

20:                                               ; preds = %16
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %20
  store i64 0, i64* %6, align 8
  br label %26

26:                                               ; preds = %45, %25
  %27 = load i64, i64* %6, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i64 @ldns_rr_list_rr_count(i32* %28)
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %26
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @ldns_rr_list_rr(i32* %35, i64 %36)
  %38 = call i32 @ldns_rr_compare_ds(i64 %34, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  store i64 %43, i64* %3, align 8
  br label %115

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %6, align 8
  br label %26

48:                                               ; preds = %26
  br label %49

49:                                               ; preds = %48, %20
  store i64 0, i64* %6, align 8
  br label %50

50:                                               ; preds = %107, %49
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %110

56:                                               ; preds = %50
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %59, i64 %60
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = call i64 @ldns_dnssec_trust_tree_contains_keys(%struct.TYPE_3__* %62, i32* %63)
  store i64 %64, i64* %9, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @LDNS_STATUS_CRYPTO_NO_DNSKEY, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %106

68:                                               ; preds = %56
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @LDNS_STATUS_OK, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %68
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %7, align 8
  br label %105

84:                                               ; preds = %68
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %84
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @ldns_rr_get_type(i64 %92)
  %94 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %89
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* @LDNS_STATUS_OK, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i64, i64* @LDNS_STATUS_DNSSEC_EXISTENCE_DENIED, align 8
  store i64 %101, i64* %7, align 8
  br label %104

102:                                              ; preds = %96, %89, %84
  %103 = load i64, i64* %9, align 8
  store i64 %103, i64* %7, align 8
  br label %104

104:                                              ; preds = %102, %100
  br label %105

105:                                              ; preds = %104, %77
  br label %106

106:                                              ; preds = %105, %56
  br label %107

107:                                              ; preds = %106
  %108 = load i64, i64* %6, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %6, align 8
  br label %50

110:                                              ; preds = %50
  br label %113

111:                                              ; preds = %16, %13, %2
  %112 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %112, i64* %7, align 8
  br label %113

113:                                              ; preds = %111, %110
  %114 = load i64, i64* %7, align 8
  store i64 %114, i64* %3, align 8
  br label %115

115:                                              ; preds = %113, %41
  %116 = load i64, i64* %3, align 8
  ret i64 %116
}

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32 @ldns_rr_compare_ds(i64, i32) #1

declare dso_local i32 @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i64 @ldns_rr_get_type(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

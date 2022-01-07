; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec.c_ldns_dnssec_create_nsec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec.c_ldns_dnssec_create_nsec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_7__* }

@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_SOA = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_DS = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_RRSIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ldns_dnssec_create_nsec(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [65536 x i64], align 16
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %10, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = icmp ne %struct.TYPE_8__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %15, %3
  store i32* null, i32** %4, align 8
  br label %121

23:                                               ; preds = %18
  %24 = call i32* (...) @ldns_rr_new()
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @ldns_rr_set_type(i32* %25, i64 %26)
  %28 = load i32*, i32** %8, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = call i32 @ldns_dnssec_name_name(%struct.TYPE_8__* %29)
  %31 = call i32 @ldns_rdf_clone(i32 %30)
  %32 = call i32 @ldns_rr_set_owner(i32* %28, i32 %31)
  %33 = load i32*, i32** %8, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = call i32 @ldns_dnssec_name_name(%struct.TYPE_8__* %34)
  %36 = call i32 @ldns_rdf_clone(i32 %35)
  %37 = call i32 @ldns_rr_push_rdf(i32* %33, i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %42 = call i64 @ldns_dnssec_rrsets_contains_type(%struct.TYPE_7__* %40, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %23
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %49 = call i64 @ldns_dnssec_rrsets_contains_type(%struct.TYPE_7__* %47, i64 %48)
  %50 = icmp ne i64 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %44, %23
  %53 = phi i1 [ false, %23 ], [ %51, %44 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %12, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  store %struct.TYPE_7__* %57, %struct.TYPE_7__** %11, align 8
  br label %58

58:                                               ; preds = %99, %52
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %60 = icmp ne %struct.TYPE_7__* %59, null
  br i1 %60, label %61, label %103

61:                                               ; preds = %58
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %91, label %70

70:                                               ; preds = %64
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %91, label %76

76:                                               ; preds = %70, %61
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %99, label %79

79:                                               ; preds = %76
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %79
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %85, %70, %64
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %10, align 8
  %96 = getelementptr inbounds [65536 x i64], [65536 x i64]* %9, i64 0, i64 %95
  store i64 %94, i64* %96, align 8
  %97 = load i64, i64* %10, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %10, align 8
  br label %99

99:                                               ; preds = %91, %85, %79, %76
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  store %struct.TYPE_7__* %102, %struct.TYPE_7__** %11, align 8
  br label %58

103:                                              ; preds = %58
  %104 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %105 = load i64, i64* %10, align 8
  %106 = getelementptr inbounds [65536 x i64], [65536 x i64]* %9, i64 0, i64 %105
  store i64 %104, i64* %106, align 8
  %107 = load i64, i64* %10, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %10, align 8
  %109 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %110 = load i64, i64* %10, align 8
  %111 = getelementptr inbounds [65536 x i64], [65536 x i64]* %9, i64 0, i64 %110
  store i64 %109, i64* %111, align 8
  %112 = load i64, i64* %10, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %10, align 8
  %114 = load i32*, i32** %8, align 8
  %115 = getelementptr inbounds [65536 x i64], [65536 x i64]* %9, i64 0, i64 0
  %116 = load i64, i64* %10, align 8
  %117 = load i64, i64* %7, align 8
  %118 = call i32 @ldns_dnssec_create_nsec_bitmap(i64* %115, i64 %116, i64 %117)
  %119 = call i32 @ldns_rr_push_rdf(i32* %114, i32 %118)
  %120 = load i32*, i32** %8, align 8
  store i32* %120, i32** %4, align 8
  br label %121

121:                                              ; preds = %103, %22
  %122 = load i32*, i32** %4, align 8
  ret i32* %122
}

declare dso_local i32* @ldns_rr_new(...) #1

declare dso_local i32 @ldns_rr_set_type(i32*, i64) #1

declare dso_local i32 @ldns_rr_set_owner(i32*, i32) #1

declare dso_local i32 @ldns_rdf_clone(i32) #1

declare dso_local i32 @ldns_dnssec_name_name(%struct.TYPE_8__*) #1

declare dso_local i32 @ldns_rr_push_rdf(i32*, i32) #1

declare dso_local i64 @ldns_dnssec_rrsets_contains_type(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @ldns_dnssec_create_nsec_bitmap(i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

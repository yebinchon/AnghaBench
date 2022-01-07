; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_zone.c_ldns_dnssec_name_add_rr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_zone.c_ldns_dnssec_name_add_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32* }

@LDNS_STATUS_OK = common dso_local global i32 0, align 4
@LDNS_STATUS_ERR = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_RRSIG = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_dnssec_name_add_rr(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @LDNS_STATUS_OK, align 4
  store i32 %9, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* @LDNS_STATUS_ERR, align 4
  store i32 %16, i32* %3, align 4
  br label %92

17:                                               ; preds = %12
  %18 = load i32*, i32** %5, align 8
  %19 = call i64 @ldns_rr_get_type(i32* %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @ldns_rr_rrsig_typecovered(i32* %24)
  %26 = call i64 @ldns_rdf2rr_type(i32 %25)
  store i64 %26, i64* %8, align 8
  br label %27

27:                                               ; preds = %23, %17
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @LDNS_RR_TYPE_NSEC3, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31, %27
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  store i32* %36, i32** %38, align 8
  br label %90

39:                                               ; preds = %31
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @LDNS_RR_TYPE_NSEC3, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %43, %39
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = icmp ne %struct.TYPE_6__* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @ldns_dnssec_rrs_add_rr(%struct.TYPE_6__* %55, i32* %56)
  store i32 %57, i32* %6, align 4
  br label %67

58:                                               ; preds = %47
  %59 = call %struct.TYPE_6__* (...) @ldns_dnssec_rrs_new()
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %61, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32* %62, i32** %66, align 8
  br label %67

67:                                               ; preds = %58, %52
  br label %89

68:                                               ; preds = %43
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @ldns_dnssec_rrsets_add_rr(i64 %76, i32* %77)
  store i32 %78, i32* %6, align 4
  br label %88

79:                                               ; preds = %68
  %80 = call i64 (...) @ldns_dnssec_rrsets_new()
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @ldns_dnssec_rrsets_add_rr(i64 %85, i32* %86)
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %79, %73
  br label %89

89:                                               ; preds = %88, %67
  br label %90

90:                                               ; preds = %89, %35
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %15
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i64 @ldns_rr_get_type(i32*) #1

declare dso_local i64 @ldns_rdf2rr_type(i32) #1

declare dso_local i32 @ldns_rr_rrsig_typecovered(i32*) #1

declare dso_local i32 @ldns_dnssec_rrs_add_rr(%struct.TYPE_6__*, i32*) #1

declare dso_local %struct.TYPE_6__* @ldns_dnssec_rrs_new(...) #1

declare dso_local i32 @ldns_dnssec_rrsets_add_rr(i64, i32*) #1

declare dso_local i64 @ldns_dnssec_rrsets_new(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_update.c_ldns_update_soa_mname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_update.c_ldns_update_soa_mname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RR_TYPE_SOA = common dso_local global i64 0, align 8
@LDNS_RD = common dso_local global i32 0, align 4
@LDNS_STATUS_ERR = common dso_local global i64 0, align 8
@LDNS_STATUS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ldns_update_soa_mname(i32* %0, i32* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32* @ldns_rdf_clone(i32* %13)
  %15 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @LDNS_RD, align 4
  %18 = call i32* @ldns_pkt_query_new(i32* %14, i64 %15, i32 %16, i32 %17)
  store i32* %18, i32** %11, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %22, i64* %5, align 8
  br label %76

23:                                               ; preds = %4
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @ldns_pkt_set_random_id(i32* %24)
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = call i64 @ldns_resolver_send_pkt(i32** %12, i32* %26, i32* %27)
  %29 = load i64, i64* @LDNS_STATUS_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 @ldns_pkt_free(i32* %32)
  %34 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %34, i64* %5, align 8
  br label %76

35:                                               ; preds = %23
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @ldns_pkt_free(i32* %36)
  %38 = load i32*, i32** %12, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %41, i64* %5, align 8
  br label %76

42:                                               ; preds = %35
  %43 = load i32**, i32*** %9, align 8
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %58, %42
  %45 = load i32*, i32** %12, align 8
  %46 = call i32 @ldns_pkt_answer(i32* %45)
  %47 = call i32* @ldns_rr_list_pop_rr(i32 %46)
  store i32* %47, i32** %10, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %64

49:                                               ; preds = %44
  %50 = load i32*, i32** %10, align 8
  %51 = call i64 @ldns_rr_get_type(i32* %50)
  %52 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = load i32*, i32** %10, align 8
  %56 = call i32* @ldns_rr_rdf(i32* %55, i32 0)
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %54, %49
  br label %44

59:                                               ; preds = %54
  %60 = load i32*, i32** %10, align 8
  %61 = call i32* @ldns_rr_rdf(i32* %60, i32 0)
  %62 = call i32* @ldns_rdf_clone(i32* %61)
  %63 = load i32**, i32*** %9, align 8
  store i32* %62, i32** %63, align 8
  br label %64

64:                                               ; preds = %59, %44
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @ldns_pkt_free(i32* %65)
  %67 = load i32**, i32*** %9, align 8
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i64, i64* @LDNS_STATUS_OK, align 8
  br label %74

72:                                               ; preds = %64
  %73 = load i64, i64* @LDNS_STATUS_ERR, align 8
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i64 [ %71, %70 ], [ %73, %72 ]
  store i64 %75, i64* %5, align 8
  br label %76

76:                                               ; preds = %74, %40, %31, %21
  %77 = load i64, i64* %5, align 8
  ret i64 %77
}

declare dso_local i32* @ldns_pkt_query_new(i32*, i64, i32, i32) #1

declare dso_local i32* @ldns_rdf_clone(i32*) #1

declare dso_local i32 @ldns_pkt_set_random_id(i32*) #1

declare dso_local i64 @ldns_resolver_send_pkt(i32**, i32*, i32*) #1

declare dso_local i32 @ldns_pkt_free(i32*) #1

declare dso_local i32* @ldns_rr_list_pop_rr(i32) #1

declare dso_local i32 @ldns_pkt_answer(i32*) #1

declare dso_local i64 @ldns_rr_get_type(i32*) #1

declare dso_local i32* @ldns_rr_rdf(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_dnssec_derive_trust_tree_dnskey_rrset_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_dnssec_derive_trust_tree_dnskey_rrset_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32* }
%struct.TYPE_9__ = type { i32* }

@LDNS_RR_TYPE_DNSKEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldns_dnssec_derive_trust_tree_dnskey_rrset_time(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %12, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @ldns_rr_rrsig_keytag(i32* %20)
  %22 = call i64 @ldns_rdf2native_int16(i32 %21)
  store i64 %22, i64* %15, align 8
  store i64 0, i64* %11, align 8
  br label %23

23:                                               ; preds = %65, %5
  %24 = load i64, i64* %11, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = call i64 @ldns_rr_list_rr_count(i32* %25)
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %23
  %29 = load i32*, i32** %12, align 8
  %30 = load i64, i64* %11, align 8
  %31 = call i32* @ldns_rr_list_rr(i32* %29, i64 %30)
  store i32* %31, i32** %14, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = icmp ne i32* %32, %33
  br i1 %34, label %35, label %64

35:                                               ; preds = %28
  %36 = load i32*, i32** %14, align 8
  %37 = call i64 @ldns_rr_get_type(i32* %36)
  %38 = load i64, i64* @LDNS_RR_TYPE_DNSKEY, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %35
  %41 = load i32*, i32** %14, align 8
  %42 = call i64 @ldns_calc_keytag(i32* %41)
  %43 = load i64, i64* %15, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %40
  %46 = call %struct.TYPE_8__* (...) @ldns_dnssec_trust_tree_new()
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %13, align 8
  %47 = load i32*, i32** %14, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i32* %47, i32** %49, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i32* %50, i32** %52, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @ldns_verify_rrsig_time(i32* %53, i32* %54, i32* %55, i32 %56)
  store i32 %57, i32* %16, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %16, align 4
  %62 = call i32 @ldns_dnssec_trust_tree_add_parent(%struct.TYPE_8__* %58, %struct.TYPE_8__* %59, i32* %60, i32 %61)
  br label %63

63:                                               ; preds = %45, %40
  br label %64

64:                                               ; preds = %63, %35, %28
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %11, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %11, align 8
  br label %23

68:                                               ; preds = %23
  ret void
}

declare dso_local i64 @ldns_rdf2native_int16(i32) #1

declare dso_local i32 @ldns_rr_rrsig_keytag(i32*) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32* @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i64 @ldns_rr_get_type(i32*) #1

declare dso_local i64 @ldns_calc_keytag(i32*) #1

declare dso_local %struct.TYPE_8__* @ldns_dnssec_trust_tree_new(...) #1

declare dso_local i32 @ldns_verify_rrsig_time(i32*, i32*, i32*, i32) #1

declare dso_local i32 @ldns_dnssec_trust_tree_add_parent(%struct.TYPE_8__*, %struct.TYPE_8__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

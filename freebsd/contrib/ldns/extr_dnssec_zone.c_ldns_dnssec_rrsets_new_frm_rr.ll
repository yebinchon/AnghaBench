; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_zone.c_ldns_dnssec_rrsets_new_frm_rr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_zone.c_ldns_dnssec_rrsets_new_frm_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { i32* }

@LDNS_RR_TYPE_RRSIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32*)* @ldns_dnssec_rrsets_new_frm_rr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @ldns_dnssec_rrsets_new_frm_rr(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = call %struct.TYPE_8__* (...) @ldns_dnssec_rrsets_new()
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %3, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i64 @ldns_rr_get_type(i32* %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @ldns_rr_rrsig_typecovered(i32* %13)
  %15 = call i64 @ldns_rdf2rr_type(i32 %14)
  store i64 %15, i64* %4, align 8
  br label %17

16:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %16, %12
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %17
  %21 = call i8* (...) @ldns_dnssec_rrs_new()
  %22 = bitcast i8* %21 to %struct.TYPE_7__*
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %24, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i32* %25, i32** %29, align 8
  br label %40

30:                                               ; preds = %17
  %31 = call i8* (...) @ldns_dnssec_rrs_new()
  %32 = bitcast i8* %31 to %struct.TYPE_6__*
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %34, align 8
  %35 = load i32*, i32** %2, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32* %35, i32** %39, align 8
  br label %40

40:                                               ; preds = %30, %20
  %41 = load i64, i64* %4, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %44
}

declare dso_local %struct.TYPE_8__* @ldns_dnssec_rrsets_new(...) #1

declare dso_local i64 @ldns_rr_get_type(i32*) #1

declare dso_local i64 @ldns_rdf2rr_type(i32) #1

declare dso_local i32 @ldns_rr_rrsig_typecovered(i32*) #1

declare dso_local i8* @ldns_dnssec_rrs_new(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

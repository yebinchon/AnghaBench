; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_wire2host.c_ldns_wire2pkt_hdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_wire2host.c_ldns_wire2pkt_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_HEADER_SIZE = common dso_local global i64 0, align 8
@LDNS_STATUS_WIRE_INCOMPLETE_HEADER = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64, i64*)* @ldns_wire2pkt_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldns_wire2pkt_hdr(i32* %0, i32* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %10 = load i64*, i64** %9, align 8
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %13 = add i64 %11, %12
  %14 = load i64, i64* %8, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @LDNS_STATUS_WIRE_INCOMPLETE_HEADER, align 4
  store i32 %17, i32* %5, align 4
  br label %80

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @LDNS_ID_WIRE(i32* %20)
  %22 = call i32 @ldns_pkt_set_id(i32* %19, i32 %21)
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @LDNS_QR_WIRE(i32* %24)
  %26 = call i32 @ldns_pkt_set_qr(i32* %23, i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @LDNS_OPCODE_WIRE(i32* %28)
  %30 = call i32 @ldns_pkt_set_opcode(i32* %27, i32 %29)
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @LDNS_AA_WIRE(i32* %32)
  %34 = call i32 @ldns_pkt_set_aa(i32* %31, i32 %33)
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @LDNS_TC_WIRE(i32* %36)
  %38 = call i32 @ldns_pkt_set_tc(i32* %35, i32 %37)
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @LDNS_RD_WIRE(i32* %40)
  %42 = call i32 @ldns_pkt_set_rd(i32* %39, i32 %41)
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @LDNS_RA_WIRE(i32* %44)
  %46 = call i32 @ldns_pkt_set_ra(i32* %43, i32 %45)
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @LDNS_AD_WIRE(i32* %48)
  %50 = call i32 @ldns_pkt_set_ad(i32* %47, i32 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @LDNS_CD_WIRE(i32* %52)
  %54 = call i32 @ldns_pkt_set_cd(i32* %51, i32 %53)
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @LDNS_RCODE_WIRE(i32* %56)
  %58 = call i32 @ldns_pkt_set_rcode(i32* %55, i32 %57)
  %59 = load i32*, i32** %6, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @LDNS_QDCOUNT(i32* %60)
  %62 = call i32 @ldns_pkt_set_qdcount(i32* %59, i32 %61)
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @LDNS_ANCOUNT(i32* %64)
  %66 = call i32 @ldns_pkt_set_ancount(i32* %63, i32 %65)
  %67 = load i32*, i32** %6, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @LDNS_NSCOUNT(i32* %68)
  %70 = call i32 @ldns_pkt_set_nscount(i32* %67, i32 %69)
  %71 = load i32*, i32** %6, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @LDNS_ARCOUNT(i32* %72)
  %74 = call i32 @ldns_pkt_set_arcount(i32* %71, i32 %73)
  %75 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %76 = load i64*, i64** %9, align 8
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %77, %75
  store i64 %78, i64* %76, align 8
  %79 = load i32, i32* @LDNS_STATUS_OK, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %18, %16
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @ldns_pkt_set_id(i32*, i32) #1

declare dso_local i32 @LDNS_ID_WIRE(i32*) #1

declare dso_local i32 @ldns_pkt_set_qr(i32*, i32) #1

declare dso_local i32 @LDNS_QR_WIRE(i32*) #1

declare dso_local i32 @ldns_pkt_set_opcode(i32*, i32) #1

declare dso_local i32 @LDNS_OPCODE_WIRE(i32*) #1

declare dso_local i32 @ldns_pkt_set_aa(i32*, i32) #1

declare dso_local i32 @LDNS_AA_WIRE(i32*) #1

declare dso_local i32 @ldns_pkt_set_tc(i32*, i32) #1

declare dso_local i32 @LDNS_TC_WIRE(i32*) #1

declare dso_local i32 @ldns_pkt_set_rd(i32*, i32) #1

declare dso_local i32 @LDNS_RD_WIRE(i32*) #1

declare dso_local i32 @ldns_pkt_set_ra(i32*, i32) #1

declare dso_local i32 @LDNS_RA_WIRE(i32*) #1

declare dso_local i32 @ldns_pkt_set_ad(i32*, i32) #1

declare dso_local i32 @LDNS_AD_WIRE(i32*) #1

declare dso_local i32 @ldns_pkt_set_cd(i32*, i32) #1

declare dso_local i32 @LDNS_CD_WIRE(i32*) #1

declare dso_local i32 @ldns_pkt_set_rcode(i32*, i32) #1

declare dso_local i32 @LDNS_RCODE_WIRE(i32*) #1

declare dso_local i32 @ldns_pkt_set_qdcount(i32*, i32) #1

declare dso_local i32 @LDNS_QDCOUNT(i32*) #1

declare dso_local i32 @ldns_pkt_set_ancount(i32*, i32) #1

declare dso_local i32 @LDNS_ANCOUNT(i32*) #1

declare dso_local i32 @ldns_pkt_set_nscount(i32*, i32) #1

declare dso_local i32 @LDNS_NSCOUNT(i32*) #1

declare dso_local i32 @ldns_pkt_set_arcount(i32*, i32) #1

declare dso_local i32 @LDNS_ARCOUNT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

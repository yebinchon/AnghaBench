; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2wire.c_ldns_hdr2buffer_wire.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2wire.c_ldns_hdr2buffer_wire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @ldns_hdr2buffer_wire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldns_hdr2buffer_wire(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @ldns_buffer_reserve(i32* %7, i32 12)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %84

10:                                               ; preds = %2
  %11 = load i32*, i32** %3, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @ldns_pkt_id(i32* %12)
  %14 = call i32 @ldns_buffer_write_u16(i32* %11, i32 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @ldns_pkt_qr(i32* %15)
  %17 = shl i32 %16, 7
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @ldns_pkt_get_opcode(i32* %18)
  %20 = shl i32 %19, 3
  %21 = or i32 %17, %20
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @ldns_pkt_aa(i32* %22)
  %24 = shl i32 %23, 2
  %25 = or i32 %21, %24
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @ldns_pkt_tc(i32* %26)
  %28 = shl i32 %27, 1
  %29 = or i32 %25, %28
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @ldns_pkt_rd(i32* %30)
  %32 = or i32 %29, %31
  store i32 %32, i32* %5, align 4
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @ldns_buffer_write_u8(i32* %33, i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @ldns_pkt_ra(i32* %36)
  %38 = shl i32 %37, 7
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @ldns_pkt_ad(i32* %39)
  %41 = shl i32 %40, 5
  %42 = or i32 %38, %41
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @ldns_pkt_cd(i32* %43)
  %45 = shl i32 %44, 4
  %46 = or i32 %42, %45
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @ldns_pkt_get_rcode(i32* %47)
  %49 = or i32 %46, %48
  store i32 %49, i32* %5, align 4
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @ldns_buffer_write_u8(i32* %50, i32 %51)
  %53 = load i32*, i32** %3, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @ldns_pkt_qdcount(i32* %54)
  %56 = call i32 @ldns_buffer_write_u16(i32* %53, i32 %55)
  %57 = load i32*, i32** %3, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @ldns_pkt_ancount(i32* %58)
  %60 = call i32 @ldns_buffer_write_u16(i32* %57, i32 %59)
  %61 = load i32*, i32** %3, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @ldns_pkt_nscount(i32* %62)
  %64 = call i32 @ldns_buffer_write_u16(i32* %61, i32 %63)
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @ldns_pkt_arcount(i32* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = call i64 @ldns_pkt_tsig(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %10
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %70, %10
  %74 = load i32*, i32** %4, align 8
  %75 = call i64 @ldns_pkt_edns(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %77, %73
  %81 = load i32*, i32** %3, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @ldns_buffer_write_u16(i32* %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %2
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @ldns_buffer_status(i32* %85)
  ret i32 %86
}

declare dso_local i64 @ldns_buffer_reserve(i32*, i32) #1

declare dso_local i32 @ldns_buffer_write_u16(i32*, i32) #1

declare dso_local i32 @ldns_pkt_id(i32*) #1

declare dso_local i32 @ldns_pkt_qr(i32*) #1

declare dso_local i32 @ldns_pkt_get_opcode(i32*) #1

declare dso_local i32 @ldns_pkt_aa(i32*) #1

declare dso_local i32 @ldns_pkt_tc(i32*) #1

declare dso_local i32 @ldns_pkt_rd(i32*) #1

declare dso_local i32 @ldns_buffer_write_u8(i32*, i32) #1

declare dso_local i32 @ldns_pkt_ra(i32*) #1

declare dso_local i32 @ldns_pkt_ad(i32*) #1

declare dso_local i32 @ldns_pkt_cd(i32*) #1

declare dso_local i32 @ldns_pkt_get_rcode(i32*) #1

declare dso_local i32 @ldns_pkt_qdcount(i32*) #1

declare dso_local i32 @ldns_pkt_ancount(i32*) #1

declare dso_local i32 @ldns_pkt_nscount(i32*) #1

declare dso_local i32 @ldns_pkt_arcount(i32*) #1

declare dso_local i64 @ldns_pkt_tsig(i32*) #1

declare dso_local i64 @ldns_pkt_edns(i32*) #1

declare dso_local i32 @ldns_buffer_status(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

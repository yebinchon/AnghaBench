; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_packet.c_ldns_pkt_set_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_packet.c_ldns_pkt_set_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_QR = common dso_local global i32 0, align 4
@LDNS_AA = common dso_local global i32 0, align 4
@LDNS_RD = common dso_local global i32 0, align 4
@LDNS_TC = common dso_local global i32 0, align 4
@LDNS_CD = common dso_local global i32 0, align 4
@LDNS_RA = common dso_local global i32 0, align 4
@LDNS_AD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_pkt_set_flags(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32*, i32** %4, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %73

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @LDNS_QR, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @LDNS_QR, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @ldns_pkt_set_qr(i32* %16, i32 1)
  br label %18

18:                                               ; preds = %15, %9
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @LDNS_AA, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @LDNS_AA, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @ldns_pkt_set_aa(i32* %25, i32 1)
  br label %27

27:                                               ; preds = %24, %18
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @LDNS_RD, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @LDNS_RD, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @ldns_pkt_set_rd(i32* %34, i32 1)
  br label %36

36:                                               ; preds = %33, %27
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @LDNS_TC, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @LDNS_TC, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @ldns_pkt_set_tc(i32* %43, i32 1)
  br label %45

45:                                               ; preds = %42, %36
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @LDNS_CD, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @LDNS_CD, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @ldns_pkt_set_cd(i32* %52, i32 1)
  br label %54

54:                                               ; preds = %51, %45
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @LDNS_RA, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @LDNS_RA, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @ldns_pkt_set_ra(i32* %61, i32 1)
  br label %63

63:                                               ; preds = %60, %54
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @LDNS_AD, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @LDNS_AD, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @ldns_pkt_set_ad(i32* %70, i32 1)
  br label %72

72:                                               ; preds = %69, %63
  store i32 1, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %8
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @ldns_pkt_set_qr(i32*, i32) #1

declare dso_local i32 @ldns_pkt_set_aa(i32*, i32) #1

declare dso_local i32 @ldns_pkt_set_rd(i32*, i32) #1

declare dso_local i32 @ldns_pkt_set_tc(i32*, i32) #1

declare dso_local i32 @ldns_pkt_set_cd(i32*, i32) #1

declare dso_local i32 @ldns_pkt_set_ra(i32*, i32) #1

declare dso_local i32 @ldns_pkt_set_ad(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

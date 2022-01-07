; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_packet.c_ldns_pkt_reply_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_packet.c_ldns_pkt_reply_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_PACKET_UNKNOWN = common dso_local global i32 0, align 4
@LDNS_RCODE_NXDOMAIN = common dso_local global i64 0, align 8
@LDNS_PACKET_NXDOMAIN = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_SOA = common dso_local global i32 0, align 4
@LDNS_SECTION_AUTHORITY = common dso_local global i32 0, align 4
@LDNS_PACKET_NODATA = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_NS = common dso_local global i32 0, align 4
@LDNS_PACKET_REFERRAL = common dso_local global i32 0, align 4
@LDNS_PACKET_ANSWER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_pkt_reply_type(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @LDNS_PACKET_UNKNOWN, align 4
  store i32 %8, i32* %2, align 4
  br label %66

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @ldns_pkt_get_rcode(i32* %10)
  %12 = load i64, i64* @LDNS_RCODE_NXDOMAIN, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32, i32* @LDNS_PACKET_NXDOMAIN, align 4
  store i32 %15, i32* %2, align 4
  br label %66

16:                                               ; preds = %9
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @ldns_pkt_ancount(i32* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @ldns_pkt_arcount(i32* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @ldns_pkt_nscount(i32* %25)
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @LDNS_RR_TYPE_SOA, align 4
  %31 = load i32, i32* @LDNS_SECTION_AUTHORITY, align 4
  %32 = call i32* @ldns_pkt_rr_list_by_type(i32* %29, i32 %30, i32 %31)
  store i32* %32, i32** %4, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @ldns_rr_list_deep_free(i32* %36)
  %38 = load i32, i32* @LDNS_PACKET_NODATA, align 4
  store i32 %38, i32* %2, align 4
  br label %66

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40, %24, %20, %16
  %42 = load i32*, i32** %3, align 8
  %43 = call i64 @ldns_pkt_ancount(i32* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @ldns_pkt_nscount(i32* %46)
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* @LDNS_RR_TYPE_NS, align 4
  %52 = load i32, i32* @LDNS_SECTION_AUTHORITY, align 4
  %53 = call i32* @ldns_pkt_rr_list_by_type(i32* %50, i32 %51, i32 %52)
  store i32* %53, i32** %4, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @ldns_rr_list_deep_free(i32* %57)
  %59 = load i32, i32* @LDNS_PACKET_REFERRAL, align 4
  store i32 %59, i32* %2, align 4
  br label %66

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @ldns_rr_list_deep_free(i32* %62)
  br label %64

64:                                               ; preds = %61, %45, %41
  %65 = load i32, i32* @LDNS_PACKET_ANSWER, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %56, %35, %14, %7
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @ldns_pkt_get_rcode(i32*) #1

declare dso_local i64 @ldns_pkt_ancount(i32*) #1

declare dso_local i64 @ldns_pkt_arcount(i32*) #1

declare dso_local i32 @ldns_pkt_nscount(i32*) #1

declare dso_local i32* @ldns_pkt_rr_list_by_type(i32*, i32, i32) #1

declare dso_local i32 @ldns_rr_list_deep_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

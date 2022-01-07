; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_resolver.c_ldns_resolver_send_pkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_resolver.c_ldns_resolver_send_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ldns_resolver_send_pkt(i32** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %10 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %10, i64* %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i64 @ldns_send(i32** %7, i32* %11, i32* %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @LDNS_STATUS_OK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @ldns_pkt_free(i32* %21)
  store i32* null, i32** %7, align 8
  br label %23

23:                                               ; preds = %20, %17
  br label %74

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @ldns_resolver_usevc(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %73, label %28

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = call i64 @ldns_resolver_fallback(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %73

32:                                               ; preds = %28
  %33 = load i32*, i32** %7, align 8
  %34 = call i64 @ldns_pkt_tc(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %72

36:                                               ; preds = %32
  %37 = load i32*, i32** %6, align 8
  %38 = call i64 @ldns_pkt_edns_udp_size(i32* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @ldns_pkt_set_edns_udp_size(i32* %41, i32 4096)
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @ldns_pkt_free(i32* %43)
  store i32* null, i32** %7, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i64* @ldns_resolver_backup_rtt(i32* %45)
  store i64* %46, i64** %9, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = call i64 @ldns_send(i32** %7, i32* %47, i32* %48)
  store i64 %49, i64* %8, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i64*, i64** %9, align 8
  %52 = call i32 @ldns_resolver_restore_rtt(i32* %50, i64* %51)
  br label %53

53:                                               ; preds = %40, %36
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* @LDNS_STATUS_OK, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32*, i32** %7, align 8
  %59 = call i64 @ldns_pkt_tc(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %57, %53
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @ldns_resolver_set_usevc(i32* %62, i32 1)
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @ldns_pkt_free(i32* %64)
  %66 = load i32*, i32** %5, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = call i64 @ldns_send(i32** %7, i32* %66, i32* %67)
  store i64 %68, i64* %8, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @ldns_resolver_set_usevc(i32* %69, i32 0)
  br label %71

71:                                               ; preds = %61, %57
  br label %72

72:                                               ; preds = %71, %32
  br label %73

73:                                               ; preds = %72, %28, %24
  br label %74

74:                                               ; preds = %73, %23
  %75 = load i32**, i32*** %4, align 8
  %76 = icmp ne i32** %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32*, i32** %7, align 8
  %79 = load i32**, i32*** %4, align 8
  store i32* %78, i32** %79, align 8
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i64, i64* %8, align 8
  ret i64 %81
}

declare dso_local i64 @ldns_send(i32**, i32*, i32*) #1

declare dso_local i32 @ldns_pkt_free(i32*) #1

declare dso_local i32 @ldns_resolver_usevc(i32*) #1

declare dso_local i64 @ldns_resolver_fallback(i32*) #1

declare dso_local i64 @ldns_pkt_tc(i32*) #1

declare dso_local i64 @ldns_pkt_edns_udp_size(i32*) #1

declare dso_local i32 @ldns_pkt_set_edns_udp_size(i32*, i32) #1

declare dso_local i64* @ldns_resolver_backup_rtt(i32*) #1

declare dso_local i32 @ldns_resolver_restore_rtt(i32*, i64*) #1

declare dso_local i32 @ldns_resolver_set_usevc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_dosoa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_dosoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@o_print_pkt_server = common dso_local global i32 0, align 4
@o_recursive = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_SOA = common dso_local global i32 0, align 4
@o_rrtype = common dso_local global i32 0, align 4
@LDNS_RESOLV_INET = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_AAAA = common dso_local global i64 0, align 8
@LDNS_RESOLV_INET6 = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_A = common dso_local global i64 0, align 8
@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @dosoa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dosoa(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32* @search(i32* %18, i32* %19, i32** %12, i32 %20, i32 1)
  store i32* %21, i32** %10, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %119

24:                                               ; preds = %3
  %25 = load i32*, i32** %12, align 8
  %26 = call i32* @ldns_pkt_answer(i32* %25)
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i64 @ldns_rr_list_rr_count(i32* %27)
  store i64 %28, i64* %17, align 8
  %29 = load i64, i64* %17, align 8
  %30 = mul i64 %29, 8
  %31 = call i32** @alloca(i64 %30)
  store i32** %31, i32*** %9, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %14, align 8
  br label %32

32:                                               ; preds = %52, %24
  %33 = load i64, i64* %14, align 8
  %34 = load i64, i64* %17, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %32
  %37 = load i32*, i32** %8, align 8
  %38 = load i64, i64* %14, align 8
  %39 = call i32* @ldns_rr_list_rr(i32* %37, i64 %38)
  %40 = call i32* @ldns_rr_ns_nsdname(i32* %39)
  store i32* %40, i32** %11, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %46 = call i32* @ldns_get_rr_list_addr_by_name(i32* %43, i32* %44, i32 %45, i32 0)
  %47 = load i32**, i32*** %9, align 8
  %48 = load i64, i64* %16, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %16, align 8
  %50 = getelementptr inbounds i32*, i32** %47, i64 %48
  store i32* %46, i32** %50, align 8
  br label %51

51:                                               ; preds = %42, %36
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %14, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %14, align 8
  br label %32

55:                                               ; preds = %32
  store i32 0, i32* @o_print_pkt_server, align 4
  store i32 0, i32* @o_recursive, align 4
  %56 = load i32, i32* @LDNS_RR_TYPE_SOA, align 4
  store i32 %56, i32* @o_rrtype, align 4
  store i64 0, i64* %14, align 8
  br label %57

57:                                               ; preds = %115, %55
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* %16, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %118

61:                                               ; preds = %57
  %62 = load i32**, i32*** %9, align 8
  %63 = load i64, i64* %14, align 8
  %64 = getelementptr inbounds i32*, i32** %62, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = call i64 @ldns_rr_list_rr_count(i32* %65)
  store i64 %66, i64* %17, align 8
  store i64 0, i64* %15, align 8
  br label %67

67:                                               ; preds = %111, %61
  %68 = load i64, i64* %15, align 8
  %69 = load i64, i64* %17, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %114

71:                                               ; preds = %67
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @ldns_resolver_remove_nameservers(i32* %72)
  %74 = load i32**, i32*** %9, align 8
  %75 = load i64, i64* %14, align 8
  %76 = getelementptr inbounds i32*, i32** %74, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* %15, align 8
  %79 = call i32* @ldns_rr_list_rr(i32* %77, i64 %78)
  store i32* %79, i32** %13, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = call i64 @ldns_resolver_ip6(i32* %80)
  %82 = load i64, i64* @LDNS_RESOLV_INET, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %71
  %85 = load i32*, i32** %13, align 8
  %86 = call i64 @ldns_rr_get_type(i32* %85)
  %87 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %99, label %89

89:                                               ; preds = %84, %71
  %90 = load i32*, i32** %5, align 8
  %91 = call i64 @ldns_resolver_ip6(i32* %90)
  %92 = load i64, i64* @LDNS_RESOLV_INET6, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i32*, i32** %13, align 8
  %96 = call i64 @ldns_rr_get_type(i32* %95)
  %97 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %94, %84
  br label %111

100:                                              ; preds = %94, %89
  %101 = load i32*, i32** %5, align 8
  %102 = load i32*, i32** %13, align 8
  %103 = call i64 @ldns_resolver_push_nameserver_rr(i32* %101, i32* %102)
  %104 = load i64, i64* @LDNS_STATUS_OK, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load i32*, i32** %5, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = call i32 @doquery(i32* %107, i32* %108)
  br label %110

110:                                              ; preds = %106, %100
  br label %111

111:                                              ; preds = %110, %99
  %112 = load i64, i64* %15, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %15, align 8
  br label %67

114:                                              ; preds = %67
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %14, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %14, align 8
  br label %57

118:                                              ; preds = %57
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %118, %23
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32* @search(i32*, i32*, i32**, i32, i32) #1

declare dso_local i32* @ldns_pkt_answer(i32*) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32** @alloca(i64) #1

declare dso_local i32* @ldns_rr_ns_nsdname(i32*) #1

declare dso_local i32* @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i32* @ldns_get_rr_list_addr_by_name(i32*, i32*, i32, i32) #1

declare dso_local i32 @ldns_resolver_remove_nameservers(i32*) #1

declare dso_local i64 @ldns_resolver_ip6(i32*) #1

declare dso_local i64 @ldns_rr_get_type(i32*) #1

declare dso_local i64 @ldns_resolver_push_nameserver_rr(i32*, i32*) #1

declare dso_local i32 @doquery(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

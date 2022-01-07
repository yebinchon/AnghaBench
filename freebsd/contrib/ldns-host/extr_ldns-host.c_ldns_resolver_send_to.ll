; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_ldns_resolver_send_to.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_ldns_resolver_send_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i32 }

@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@LDNS_STATUS_ERR = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_IXFR = common dso_local global i64 0, align 8
@LDNS_SECTION_AUTHORITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32**, i32*, i32*, i64, i32, i32, i32, i32, i32)* @ldns_resolver_send_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ldns_resolver_send_to(i32** %0, i32* %1, i32* %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.timeval, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32**, align 8
  %24 = alloca i64*, align 8
  store i32** %0, i32*** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %25 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %25, i64* %19, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @ldns_resolver_nameserver_count(i32* %26)
  store i32 %27, i32* %22, align 4
  %28 = load i32*, i32** %11, align 8
  %29 = call i32** @ldns_resolver_nameservers(i32* %28)
  store i32** %29, i32*** %23, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i64* @ldns_resolver_rtt(i32* %30)
  store i64* %31, i64** %24, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load i32**, i32*** %23, align 8
  %34 = load i32, i32* %17, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = call i32 @ldns_resolver_set_nameservers(i32* %32, i32** %36)
  %38 = load i32*, i32** %11, align 8
  %39 = load i64*, i64** %24, align 8
  %40 = load i32, i32* %17, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = call i32 @ldns_resolver_set_rtt(i32* %38, i64* %42)
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @ldns_resolver_set_nameserver_count(i32* %44, i32 1)
  %46 = load i32*, i32** %12, align 8
  %47 = call i32 @ldns_rdf_clone(i32* %46)
  %48 = load i64, i64* %13, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %15, align 4
  %51 = call i32* @ldns_pkt_query_new(i32 %47, i64 %48, i32 %49, i32 %50)
  store i32* %51, i32** %20, align 8
  %52 = load i32*, i32** %20, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %9
  %55 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %55, i64* %19, align 8
  br label %117

56:                                               ; preds = %9
  %57 = call i32 @time(i32* null)
  %58 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 1
  store i32 %57, i32* %58, align 8
  %59 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load i32*, i32** %20, align 8
  %61 = bitcast %struct.timeval* %21 to { i64, i32 }*
  %62 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %61, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ldns_pkt_set_timestamp(i32* %60, i64 %63, i32 %65)
  %67 = load i32*, i32** %20, align 8
  %68 = call i32 @ldns_pkt_set_random_id(i32* %67)
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* @LDNS_RR_TYPE_IXFR, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %56
  %73 = load i32*, i32** %20, align 8
  %74 = load i32, i32* @LDNS_SECTION_AUTHORITY, align 4
  %75 = load i32*, i32** %12, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %16, align 4
  %78 = call i64 @ldns_pkt_push_rr_soa(i32* %73, i32 %74, i32* %75, i32 %76, i32 %77)
  store i64 %78, i64* %19, align 8
  %79 = load i64, i64* %19, align 8
  %80 = load i64, i64* @LDNS_STATUS_OK, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  br label %117

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83, %56
  %85 = load i32, i32* %18, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32**, i32*** %10, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = load i32*, i32** %20, align 8
  %91 = call i64 @ldns_resolver_send_pkt(i32** %88, i32* %89, i32* %90)
  store i64 %91, i64* %19, align 8
  br label %116

92:                                               ; preds = %84
  %93 = load i32*, i32** %11, align 8
  %94 = load i32*, i32** %20, align 8
  %95 = call i64 @ldns_tcp_start(i32* %93, i32* %94, i32 0)
  store i64 %95, i64* %19, align 8
  %96 = load i64, i64* %19, align 8
  %97 = load i64, i64* @LDNS_STATUS_OK, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %117

100:                                              ; preds = %92
  %101 = load i32**, i32*** %10, align 8
  %102 = load i32*, i32** %11, align 8
  %103 = call i64 @ldns_tcp_read(i32** %101, i32* %102)
  store i64 %103, i64* %19, align 8
  %104 = load i64, i64* %19, align 8
  %105 = load i64, i64* @LDNS_STATUS_OK, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %117

108:                                              ; preds = %100
  %109 = load i32**, i32*** %10, align 8
  %110 = load i32*, i32** %109, align 8
  %111 = load i32**, i32*** %23, align 8
  %112 = getelementptr inbounds i32*, i32** %111, i64 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @ldns_rdf_clone(i32* %113)
  %115 = call i32 @ldns_pkt_set_answerfrom(i32* %110, i32 %114)
  br label %116

116:                                              ; preds = %108, %87
  br label %117

117:                                              ; preds = %116, %107, %99, %82, %54
  %118 = load i32*, i32** %20, align 8
  %119 = call i32 @ldns_pkt_free(i32* %118)
  %120 = load i32*, i32** %11, align 8
  %121 = load i32**, i32*** %23, align 8
  %122 = call i32 @ldns_resolver_set_nameservers(i32* %120, i32** %121)
  %123 = load i32*, i32** %11, align 8
  %124 = load i64*, i64** %24, align 8
  %125 = call i32 @ldns_resolver_set_rtt(i32* %123, i64* %124)
  %126 = load i32*, i32** %11, align 8
  %127 = load i32, i32* %22, align 4
  %128 = call i32 @ldns_resolver_set_nameserver_count(i32* %126, i32 %127)
  %129 = load i64, i64* %19, align 8
  ret i64 %129
}

declare dso_local i32 @ldns_resolver_nameserver_count(i32*) #1

declare dso_local i32** @ldns_resolver_nameservers(i32*) #1

declare dso_local i64* @ldns_resolver_rtt(i32*) #1

declare dso_local i32 @ldns_resolver_set_nameservers(i32*, i32**) #1

declare dso_local i32 @ldns_resolver_set_rtt(i32*, i64*) #1

declare dso_local i32 @ldns_resolver_set_nameserver_count(i32*, i32) #1

declare dso_local i32* @ldns_pkt_query_new(i32, i64, i32, i32) #1

declare dso_local i32 @ldns_rdf_clone(i32*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @ldns_pkt_set_timestamp(i32*, i64, i32) #1

declare dso_local i32 @ldns_pkt_set_random_id(i32*) #1

declare dso_local i64 @ldns_pkt_push_rr_soa(i32*, i32, i32*, i32, i32) #1

declare dso_local i64 @ldns_resolver_send_pkt(i32**, i32*, i32*) #1

declare dso_local i64 @ldns_tcp_start(i32*, i32*, i32) #1

declare dso_local i64 @ldns_tcp_read(i32**, i32*) #1

declare dso_local i32 @ldns_pkt_set_answerfrom(i32*, i32) #1

declare dso_local i32 @ldns_pkt_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_dozonetransfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_dozonetransfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@o_rrtype = common dso_local global i32 0, align 4
@o_mode = common dso_local global i64 0, align 8
@M_AXFR = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_AXFR = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_IXFR = common dso_local global i32 0, align 4
@LDNS_RCODE_NOERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"; Transfer failed.\0A\00", align 1
@LDNS_RR_TYPE_SOA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"; Transfer failed. Didn't start with SOA answer.\0A\00", align 1
@M_IXFR = common dso_local global i64 0, align 8
@o_ixfr_serial = common dso_local global i64 0, align 8
@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @dozonetransfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dozonetransfer(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @o_rrtype, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i64, i64* @o_mode, align 8
  %19 = load i64, i64* @M_AXFR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @LDNS_RR_TYPE_AXFR, align 4
  br label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @LDNS_RR_TYPE_IXFR, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* @o_rrtype, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32* @search(i32* %27, i32* %28, i32** %8, i32 %29, i32 0)
  store i32* %30, i32** %10, align 8
  br label %31

31:                                               ; preds = %131, %25
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @ldns_pkt_answer(i32* %32)
  %34 = call i32* @ldns_rr_list_clone(i32 %33)
  store i32* %34, i32** %12, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @ldns_pkt_filter_answer(i32* %35, i32 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32*, i32** %10, align 8
  br label %45

43:                                               ; preds = %31
  %44 = load i32*, i32** %6, align 8
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32* [ %42, %41 ], [ %44, %43 ]
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @report(i32* %38, i32* %46, i32* %47)
  %49 = load i32*, i32** %10, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %45
  %52 = load i32*, i32** %8, align 8
  %53 = call i64 @ldns_pkt_get_rcode(i32* %52)
  %54 = load i64, i64* @LDNS_RCODE_NOERROR, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %51, %45
  %57 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @ldns_tcp_close(i32* %58)
  store i32 0, i32* %4, align 4
  br label %142

60:                                               ; preds = %51
  store i64 0, i64* %14, align 8
  br label %61

61:                                               ; preds = %121, %60
  %62 = load i64, i64* %14, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = call i64 @ldns_rr_list_rr_count(i32* %63)
  %65 = icmp ult i64 %62, %64
  br i1 %65, label %66, label %124

66:                                               ; preds = %61
  %67 = load i32*, i32** %12, align 8
  %68 = load i64, i64* %14, align 8
  %69 = call i32* @ldns_rr_list_rr(i32* %67, i64 %68)
  store i32* %69, i32** %13, align 8
  %70 = load i64, i64* %15, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %66
  %73 = load i32*, i32** %13, align 8
  %74 = call i64 @ldns_rr_get_type(i32* %73)
  %75 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @ldns_tcp_close(i32* %79)
  store i32 0, i32* %4, align 4
  br label %142

81:                                               ; preds = %72
  %82 = load i32*, i32** %13, align 8
  %83 = call i64 @ldns_rr_soa_get_serial(i32* %82)
  store i64 %83, i64* %16, align 8
  %84 = load i64, i64* @o_mode, align 8
  %85 = load i64, i64* @M_IXFR, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load i64, i64* %16, align 8
  %89 = load i64, i64* @o_ixfr_serial, align 8
  %90 = icmp sle i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @ldns_tcp_close(i32* %92)
  store i32 1, i32* %4, align 4
  br label %142

94:                                               ; preds = %87, %81
  br label %95

95:                                               ; preds = %94, %66
  %96 = load i32*, i32** %13, align 8
  %97 = call i64 @ldns_rr_get_type(i32* %96)
  %98 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %120

100:                                              ; preds = %95
  %101 = load i64, i64* %15, align 8
  %102 = icmp ult i64 %101, 2
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i64, i64* %15, align 8
  %105 = add i64 %104, 1
  br label %107

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106, %103
  %108 = phi i64 [ %105, %103 ], [ 1, %106 ]
  store i64 %108, i64* %15, align 8
  %109 = load i64, i64* %15, align 8
  %110 = icmp eq i64 %109, 2
  br i1 %110, label %111, label %119

111:                                              ; preds = %107
  %112 = load i32*, i32** %13, align 8
  %113 = call i64 @ldns_rr_soa_get_serial(i32* %112)
  %114 = load i64, i64* %16, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32*, i32** %5, align 8
  %118 = call i32 @ldns_tcp_close(i32* %117)
  store i32 1, i32* %4, align 4
  br label %142

119:                                              ; preds = %111, %107
  br label %120

120:                                              ; preds = %119, %95
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %14, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %14, align 8
  br label %61

124:                                              ; preds = %61
  %125 = load i32*, i32** %5, align 8
  %126 = call i64 @ldns_tcp_read(i32** %9, i32* %125)
  %127 = load i64, i64* @LDNS_STATUS_OK, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %142

131:                                              ; preds = %124
  %132 = load i32*, i32** %9, align 8
  %133 = load i32*, i32** %8, align 8
  %134 = call i32 @ldns_pkt_answerfrom(i32* %133)
  %135 = call i32 @ldns_rdf_clone(i32 %134)
  %136 = call i32 @ldns_pkt_set_answerfrom(i32* %132, i32 %135)
  %137 = load i32*, i32** %8, align 8
  %138 = call i32 @ldns_pkt_free(i32* %137)
  %139 = load i32*, i32** %12, align 8
  %140 = call i32 @ldns_rr_list_free(i32* %139)
  %141 = load i32*, i32** %9, align 8
  store i32* %141, i32** %8, align 8
  br label %31

142:                                              ; preds = %129, %116, %91, %77, %56
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32* @search(i32*, i32*, i32**, i32, i32) #1

declare dso_local i32* @ldns_rr_list_clone(i32) #1

declare dso_local i32 @ldns_pkt_answer(i32*) #1

declare dso_local i32 @ldns_pkt_filter_answer(i32*, i32) #1

declare dso_local i32 @report(i32*, i32*, i32*) #1

declare dso_local i64 @ldns_pkt_get_rcode(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ldns_tcp_close(i32*) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32* @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i64 @ldns_rr_get_type(i32*) #1

declare dso_local i64 @ldns_rr_soa_get_serial(i32*) #1

declare dso_local i64 @ldns_tcp_read(i32**, i32*) #1

declare dso_local i32 @ldns_pkt_set_answerfrom(i32*, i32) #1

declare dso_local i32 @ldns_rdf_clone(i32) #1

declare dso_local i32 @ldns_pkt_answerfrom(i32*) #1

declare dso_local i32 @ldns_pkt_free(i32*) #1

declare dso_local i32 @ldns_rr_list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

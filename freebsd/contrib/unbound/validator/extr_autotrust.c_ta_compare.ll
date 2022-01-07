; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_ta_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_ta_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autr_ta = type { i32, i32, i32 }

@LDNS_RR_TYPE_DNSKEY = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_DS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.autr_ta*, i64, i32*, i64)* @ta_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ta_compare(%struct.autr_ta* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.autr_ta*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.autr_ta* %0, %struct.autr_ta** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load %struct.autr_ta*, %struct.autr_ta** %6, align 8
  %11 = icmp ne %struct.autr_ta* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %110

13:                                               ; preds = %4
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store i32 -1, i32* %5, align 4
  br label %110

17:                                               ; preds = %13
  %18 = load %struct.autr_ta*, %struct.autr_ta** %6, align 8
  %19 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.autr_ta*, %struct.autr_ta** %6, align 8
  %22 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.autr_ta*, %struct.autr_ta** %6, align 8
  %25 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @sldns_wirerr_get_type(i32 %20, i32 %23, i32 %26)
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %17
  %31 = load %struct.autr_ta*, %struct.autr_ta** %6, align 8
  %32 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.autr_ta*, %struct.autr_ta** %6, align 8
  %35 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.autr_ta*, %struct.autr_ta** %6, align 8
  %38 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @sldns_wirerr_get_type(i32 %33, i32 %36, i32 %39)
  %41 = trunc i64 %40 to i32
  %42 = load i64, i64* %7, align 8
  %43 = trunc i64 %42 to i32
  %44 = sub nsw i32 %41, %43
  store i32 %44, i32* %5, align 4
  br label %110

45:                                               ; preds = %17
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @LDNS_RR_TYPE_DNSKEY, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %45
  %50 = load %struct.autr_ta*, %struct.autr_ta** %6, align 8
  %51 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.autr_ta*, %struct.autr_ta** %6, align 8
  %54 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.autr_ta*, %struct.autr_ta** %6, align 8
  %57 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @sldns_wirerr_get_rdata(i32 %52, i32 %55, i32 %58)
  %60 = load %struct.autr_ta*, %struct.autr_ta** %6, align 8
  %61 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.autr_ta*, %struct.autr_ta** %6, align 8
  %64 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.autr_ta*, %struct.autr_ta** %6, align 8
  %67 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @sldns_wirerr_get_rdatalen(i32 %62, i32 %65, i32 %68)
  %70 = load i32*, i32** %8, align 8
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @dnskey_compare_skip_revbit(i32 %59, i64 %69, i32* %70, i64 %71)
  store i32 %72, i32* %5, align 4
  br label %110

73:                                               ; preds = %45
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %105

77:                                               ; preds = %73
  %78 = load %struct.autr_ta*, %struct.autr_ta** %6, align 8
  %79 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.autr_ta*, %struct.autr_ta** %6, align 8
  %82 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.autr_ta*, %struct.autr_ta** %6, align 8
  %85 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @sldns_wirerr_get_rdatalen(i32 %80, i32 %83, i32 %86)
  %88 = load i64, i64* %9, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %77
  store i32 -1, i32* %5, align 4
  br label %110

91:                                               ; preds = %77
  %92 = load %struct.autr_ta*, %struct.autr_ta** %6, align 8
  %93 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.autr_ta*, %struct.autr_ta** %6, align 8
  %96 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.autr_ta*, %struct.autr_ta** %6, align 8
  %99 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @sldns_wirerr_get_rdata(i32 %94, i32 %97, i32 %100)
  %102 = load i32*, i32** %8, align 8
  %103 = load i64, i64* %9, align 8
  %104 = call i32 @memcmp(i32 %101, i32* %102, i64 %103)
  store i32 %104, i32* %5, align 4
  br label %110

105:                                              ; preds = %73
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106
  br label %108

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108
  store i32 -1, i32* %5, align 4
  br label %110

110:                                              ; preds = %109, %91, %90, %49, %30, %16, %12
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i64 @sldns_wirerr_get_type(i32, i32, i32) #1

declare dso_local i32 @dnskey_compare_skip_revbit(i32, i64, i32*, i64) #1

declare dso_local i32 @sldns_wirerr_get_rdata(i32, i32, i32) #1

declare dso_local i64 @sldns_wirerr_get_rdatalen(i32, i32, i32) #1

declare dso_local i32 @memcmp(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

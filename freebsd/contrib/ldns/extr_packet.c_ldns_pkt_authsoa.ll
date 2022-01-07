; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_packet.c_ldns_pkt_authsoa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_packet.c_ldns_pkt_authsoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RR_TYPE_SOA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@LDNS_RDF_TYPE_INT32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @ldns_pkt_authsoa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ldns_pkt_authsoa(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = call i32* (...) @ldns_rr_new()
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %122

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = call i32* @ldns_rdf_clone(i32* %20)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @ldns_rr_free(i32* %25)
  store i32* null, i32** %3, align 8
  br label %122

27:                                               ; preds = %19
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @ldns_rr_set_owner(i32* %28, i32* %29)
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @LDNS_RR_TYPE_SOA, align 4
  %33 = call i32 @ldns_rr_set_type(i32* %31, i32 %32)
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @ldns_rr_set_class(i32* %34, i32 %35)
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @ldns_rr_set_question(i32* %37, i32 0)
  %39 = call i64 @ldns_str2rdf_dname(i32** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %40 = load i64, i64* @LDNS_STATUS_OK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %27
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @ldns_rr_free(i32* %43)
  store i32* null, i32** %3, align 8
  br label %122

45:                                               ; preds = %27
  %46 = load i32*, i32** %6, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @ldns_rr_push_rdf(i32* %46, i32* %47)
  br label %49

49:                                               ; preds = %45
  %50 = call i64 @ldns_str2rdf_dname(i32** %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %51 = load i64, i64* @LDNS_STATUS_OK, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @ldns_rr_free(i32* %54)
  store i32* null, i32** %3, align 8
  br label %122

56:                                               ; preds = %49
  %57 = load i32*, i32** %6, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @ldns_rr_push_rdf(i32* %57, i32* %58)
  br label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @LDNS_RDF_TYPE_INT32, align 4
  %62 = call i32* @ldns_native2rdf_int32(i32 %61, i32 0)
  store i32* %62, i32** %10, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @ldns_rr_free(i32* %66)
  store i32* null, i32** %3, align 8
  br label %122

68:                                               ; preds = %60
  %69 = load i32*, i32** %6, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @ldns_rr_push_rdf(i32* %69, i32* %70)
  br label %72

72:                                               ; preds = %68
  %73 = load i32, i32* @LDNS_RDF_TYPE_INT32, align 4
  %74 = call i32* @ldns_native2rdf_int32(i32 %73, i32 0)
  store i32* %74, i32** %11, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @ldns_rr_free(i32* %78)
  store i32* null, i32** %3, align 8
  br label %122

80:                                               ; preds = %72
  %81 = load i32*, i32** %6, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = call i32 @ldns_rr_push_rdf(i32* %81, i32* %82)
  br label %84

84:                                               ; preds = %80
  %85 = load i32, i32* @LDNS_RDF_TYPE_INT32, align 4
  %86 = call i32* @ldns_native2rdf_int32(i32 %85, i32 0)
  store i32* %86, i32** %12, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @ldns_rr_free(i32* %90)
  store i32* null, i32** %3, align 8
  br label %122

92:                                               ; preds = %84
  %93 = load i32*, i32** %6, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = call i32 @ldns_rr_push_rdf(i32* %93, i32* %94)
  br label %96

96:                                               ; preds = %92
  %97 = load i32, i32* @LDNS_RDF_TYPE_INT32, align 4
  %98 = call i32* @ldns_native2rdf_int32(i32 %97, i32 0)
  store i32* %98, i32** %13, align 8
  %99 = load i32*, i32** %13, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @ldns_rr_free(i32* %102)
  store i32* null, i32** %3, align 8
  br label %122

104:                                              ; preds = %96
  %105 = load i32*, i32** %6, align 8
  %106 = load i32*, i32** %13, align 8
  %107 = call i32 @ldns_rr_push_rdf(i32* %105, i32* %106)
  br label %108

108:                                              ; preds = %104
  %109 = load i32, i32* @LDNS_RDF_TYPE_INT32, align 4
  %110 = call i32* @ldns_native2rdf_int32(i32 %109, i32 0)
  store i32* %110, i32** %14, align 8
  %111 = load i32*, i32** %14, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = load i32*, i32** %6, align 8
  %115 = call i32 @ldns_rr_free(i32* %114)
  store i32* null, i32** %3, align 8
  br label %122

116:                                              ; preds = %108
  %117 = load i32*, i32** %6, align 8
  %118 = load i32*, i32** %14, align 8
  %119 = call i32 @ldns_rr_push_rdf(i32* %117, i32* %118)
  br label %120

120:                                              ; preds = %116
  %121 = load i32*, i32** %6, align 8
  store i32* %121, i32** %3, align 8
  br label %122

122:                                              ; preds = %120, %113, %101, %89, %77, %65, %53, %42, %24, %18
  %123 = load i32*, i32** %3, align 8
  ret i32* %123
}

declare dso_local i32* @ldns_rr_new(...) #1

declare dso_local i32* @ldns_rdf_clone(i32*) #1

declare dso_local i32 @ldns_rr_free(i32*) #1

declare dso_local i32 @ldns_rr_set_owner(i32*, i32*) #1

declare dso_local i32 @ldns_rr_set_type(i32*, i32) #1

declare dso_local i32 @ldns_rr_set_class(i32*, i32) #1

declare dso_local i32 @ldns_rr_set_question(i32*, i32) #1

declare dso_local i64 @ldns_str2rdf_dname(i32**, i8*) #1

declare dso_local i32 @ldns_rr_push_rdf(i32*, i32*) #1

declare dso_local i32* @ldns_native2rdf_int32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

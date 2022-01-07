; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_zone.c_ldns_zone_glue_rr_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_zone.c_ldns_zone_glue_rr_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RR_TYPE_A = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_AAAA = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ldns_zone_glue_rr_list(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32* @ldns_zone_soa(i32* %14)
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %164

18:                                               ; preds = %1
  %19 = call i32* (...) @ldns_rr_list_new()
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %145

23:                                               ; preds = %18
  %24 = call i32* (...) @ldns_rr_list_new()
  store i32* %24, i32** %5, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %145

28:                                               ; preds = %23
  %29 = call i32* (...) @ldns_rr_list_new()
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %145

33:                                               ; preds = %28
  store i64 0, i64* %12, align 8
  br label %34

34:                                               ; preds = %82, %33
  %35 = load i64, i64* %12, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = call i64 @ldns_zone_rr_count(i32* %36)
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %39, label %85

39:                                               ; preds = %34
  %40 = load i32*, i32** %3, align 8
  %41 = call i32* @ldns_zone_rrs(i32* %40)
  %42 = load i64, i64* %12, align 8
  %43 = call i32* @ldns_rr_list_rr(i32* %41, i64 %42)
  store i32* %43, i32** %7, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i64 @ldns_rr_get_type(i32* %44)
  %46 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %39
  %49 = load i32*, i32** %7, align 8
  %50 = call i64 @ldns_rr_get_type(i32* %49)
  %51 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %48, %39
  %54 = load i32*, i32** %5, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @ldns_rr_list_push_rr(i32* %54, i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %145

59:                                               ; preds = %53
  br label %82

60:                                               ; preds = %48
  %61 = load i32*, i32** %7, align 8
  %62 = call i64 @ldns_rr_get_type(i32* %61)
  %63 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %60
  %66 = load i32*, i32** %7, align 8
  %67 = call i32* @ldns_rr_owner(i32* %66)
  %68 = load i32*, i32** %3, align 8
  %69 = call i32* @ldns_zone_soa(i32* %68)
  %70 = call i32* @ldns_rr_owner(i32* %69)
  %71 = call i64 @ldns_rdf_compare(i32* %67, i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %65
  %74 = load i32*, i32** %4, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @ldns_rr_list_push_rr(i32* %74, i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  br label %145

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %65
  br label %82

81:                                               ; preds = %60
  br label %82

82:                                               ; preds = %81, %80, %59
  %83 = load i64, i64* %12, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %12, align 8
  br label %34

85:                                               ; preds = %34
  store i64 0, i64* %12, align 8
  br label %86

86:                                               ; preds = %129, %85
  %87 = load i64, i64* %12, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = call i64 @ldns_rr_list_rr_count(i32* %88)
  %90 = icmp ult i64 %87, %89
  br i1 %90, label %91, label %132

91:                                               ; preds = %86
  %92 = load i32*, i32** %4, align 8
  %93 = load i64, i64* %12, align 8
  %94 = call i32* @ldns_rr_list_rr(i32* %92, i64 %93)
  store i32* %94, i32** %8, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = call i32* @ldns_rr_owner(i32* %95)
  store i32* %96, i32** %11, align 8
  store i64 0, i64* %13, align 8
  br label %97

97:                                               ; preds = %125, %91
  %98 = load i64, i64* %13, align 8
  %99 = load i32*, i32** %5, align 8
  %100 = call i64 @ldns_rr_list_rr_count(i32* %99)
  %101 = icmp ult i64 %98, %100
  br i1 %101, label %102, label %128

102:                                              ; preds = %97
  %103 = load i32*, i32** %5, align 8
  %104 = load i64, i64* %13, align 8
  %105 = call i32* @ldns_rr_list_rr(i32* %103, i64 %104)
  store i32* %105, i32** %9, align 8
  %106 = load i32*, i32** %9, align 8
  %107 = call i32* @ldns_rr_owner(i32* %106)
  store i32* %107, i32** %10, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = load i32*, i32** %11, align 8
  %110 = call i64 @ldns_dname_is_subdomain(i32* %108, i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %102
  %113 = load i32*, i32** %10, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = call i64 @ldns_dname_compare(i32* %113, i32* %114)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %112, %102
  %118 = load i32*, i32** %6, align 8
  %119 = load i32*, i32** %9, align 8
  %120 = call i32 @ldns_rr_list_push_rr(i32* %118, i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %117
  br label %145

123:                                              ; preds = %117
  br label %124

124:                                              ; preds = %123, %112
  br label %125

125:                                              ; preds = %124
  %126 = load i64, i64* %13, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %13, align 8
  br label %97

128:                                              ; preds = %97
  br label %129

129:                                              ; preds = %128
  %130 = load i64, i64* %12, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %12, align 8
  br label %86

132:                                              ; preds = %86
  %133 = load i32*, i32** %5, align 8
  %134 = call i32 @ldns_rr_list_free(i32* %133)
  %135 = load i32*, i32** %4, align 8
  %136 = call i32 @ldns_rr_list_free(i32* %135)
  %137 = load i32*, i32** %6, align 8
  %138 = call i64 @ldns_rr_list_rr_count(i32* %137)
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %132
  %141 = load i32*, i32** %6, align 8
  %142 = call i32 @ldns_rr_list_free(i32* %141)
  store i32* null, i32** %2, align 8
  br label %164

143:                                              ; preds = %132
  %144 = load i32*, i32** %6, align 8
  store i32* %144, i32** %2, align 8
  br label %164

145:                                              ; preds = %122, %78, %58, %32, %27, %22
  %146 = load i32*, i32** %4, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i32*, i32** %4, align 8
  %150 = call i32 @LDNS_FREE(i32* %149)
  br label %151

151:                                              ; preds = %148, %145
  %152 = load i32*, i32** %5, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i32*, i32** %5, align 8
  %156 = call i32 @ldns_rr_list_free(i32* %155)
  br label %157

157:                                              ; preds = %154, %151
  %158 = load i32*, i32** %6, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i32*, i32** %6, align 8
  %162 = call i32 @ldns_rr_list_free(i32* %161)
  br label %163

163:                                              ; preds = %160, %157
  store i32* null, i32** %2, align 8
  br label %164

164:                                              ; preds = %163, %143, %140, %17
  %165 = load i32*, i32** %2, align 8
  ret i32* %165
}

declare dso_local i32* @ldns_zone_soa(i32*) #1

declare dso_local i32* @ldns_rr_list_new(...) #1

declare dso_local i64 @ldns_zone_rr_count(i32*) #1

declare dso_local i32* @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i32* @ldns_zone_rrs(i32*) #1

declare dso_local i64 @ldns_rr_get_type(i32*) #1

declare dso_local i32 @ldns_rr_list_push_rr(i32*, i32*) #1

declare dso_local i64 @ldns_rdf_compare(i32*, i32*) #1

declare dso_local i32* @ldns_rr_owner(i32*) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i64 @ldns_dname_is_subdomain(i32*, i32*) #1

declare dso_local i64 @ldns_dname_compare(i32*, i32*) #1

declare dso_local i32 @ldns_rr_list_free(i32*) #1

declare dso_local i32 @LDNS_FREE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

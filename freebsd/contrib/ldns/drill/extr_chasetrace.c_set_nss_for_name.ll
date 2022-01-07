; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_chasetrace.c_set_nss_for_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_chasetrace.c_set_nss_for_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_5__* }

@LDNS_RR_TYPE_NS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"No referrals for name found\00", align 1
@LDNS_RR_TYPE_A = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_AAAA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Could not find the nameserver ip addr; abort\00", align 1
@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Error adding new nameservers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32)* @set_nss_for_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_nss_for_name(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %14, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i32* @ldns_rdf_clone(i32* %21)
  store i32* %22, i32** %16, align 8
  br label %23

23:                                               ; preds = %43, %5
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %16, align 8
  %26 = load i32, i32* @LDNS_RR_TYPE_NS, align 4
  %27 = call %struct.TYPE_4__* @ldns_dnssec_zone_find_rrset(i32* %24, i32* %25, i32 %26)
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %12, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32*, i32** %16, align 8
  %32 = call i32 @ldns_rdf_deep_free(i32* %31)
  br label %44

33:                                               ; preds = %23
  %34 = load i32*, i32** %16, align 8
  %35 = call i32* @ldns_dname_left_chop(i32* %34)
  store i32* %35, i32** %17, align 8
  %36 = load i32*, i32** %16, align 8
  %37 = call i32 @ldns_rdf_deep_free(i32* %36)
  %38 = load i32*, i32** %17, align 8
  store i32* %38, i32** %16, align 8
  %39 = load i32*, i32** %16, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %33
  %42 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %174

43:                                               ; preds = %33
  br label %23

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %49, %44
  %46 = load i32*, i32** %7, align 8
  %47 = call i32* @ldns_resolver_pop_nameserver(i32* %46)
  store i32* %47, i32** %18, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32*, i32** %18, align 8
  %51 = call i32 @ldns_rdf_deep_free(i32* %50)
  br label %45

52:                                               ; preds = %45
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  store %struct.TYPE_5__* %55, %struct.TYPE_5__** %13, align 8
  br label %56

56:                                               ; preds = %116, %52
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %58 = icmp ne %struct.TYPE_5__* %57, null
  br i1 %58, label %59, label %120

59:                                               ; preds = %56
  %60 = load i32*, i32** %8, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32* @ldns_rr_rdf(i32 %63, i32 0)
  %65 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %66 = call %struct.TYPE_4__* @ldns_dnssec_zone_find_rrset(i32* %60, i32* %64, i32 %65)
  store %struct.TYPE_4__* %66, %struct.TYPE_4__** %14, align 8
  %67 = icmp ne %struct.TYPE_4__* %66, null
  br i1 %67, label %68, label %87

68:                                               ; preds = %59
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  store %struct.TYPE_5__* %71, %struct.TYPE_5__** %15, align 8
  br label %72

72:                                               ; preds = %82, %68
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %74 = icmp ne %struct.TYPE_5__* %73, null
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load i32*, i32** %7, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32* @ldns_rr_rdf(i32 %79, i32 0)
  %81 = call i32 @ldns_resolver_push_nameserver(i32* %76, i32* %80)
  br label %82

82:                                               ; preds = %75
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  store %struct.TYPE_5__* %85, %struct.TYPE_5__** %15, align 8
  br label %72

86:                                               ; preds = %72
  br label %87

87:                                               ; preds = %86, %59
  %88 = load i32*, i32** %8, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32* @ldns_rr_rdf(i32 %91, i32 0)
  %93 = load i32, i32* @LDNS_RR_TYPE_AAAA, align 4
  %94 = call %struct.TYPE_4__* @ldns_dnssec_zone_find_rrset(i32* %88, i32* %92, i32 %93)
  store %struct.TYPE_4__* %94, %struct.TYPE_4__** %14, align 8
  %95 = icmp ne %struct.TYPE_4__* %94, null
  br i1 %95, label %96, label %115

96:                                               ; preds = %87
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  store %struct.TYPE_5__* %99, %struct.TYPE_5__** %15, align 8
  br label %100

100:                                              ; preds = %110, %96
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %102 = icmp ne %struct.TYPE_5__* %101, null
  br i1 %102, label %103, label %114

103:                                              ; preds = %100
  %104 = load i32*, i32** %7, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32* @ldns_rr_rdf(i32 %107, i32 0)
  %109 = call i32 @ldns_resolver_push_nameserver(i32* %104, i32* %108)
  br label %110

110:                                              ; preds = %103
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  store %struct.TYPE_5__* %113, %struct.TYPE_5__** %15, align 8
  br label %100

114:                                              ; preds = %100
  br label %115

115:                                              ; preds = %114, %87
  br label %116

116:                                              ; preds = %115
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  store %struct.TYPE_5__* %119, %struct.TYPE_5__** %13, align 8
  br label %56

120:                                              ; preds = %56
  %121 = load i32*, i32** %7, align 8
  %122 = call i64 @ldns_resolver_nameserver_count(i32* %121)
  %123 = icmp sgt i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  store i32 1, i32* %6, align 4
  br label %174

125:                                              ; preds = %120
  %126 = call i32* (...) @ldns_rr_list_new()
  store i32* %126, i32** %19, align 8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  store %struct.TYPE_5__* %129, %struct.TYPE_5__** %13, align 8
  br label %130

130:                                              ; preds = %146, %125
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %132 = icmp ne %struct.TYPE_5__* %131, null
  br i1 %132, label %133, label %150

133:                                              ; preds = %130
  %134 = load i32*, i32** %10, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32* @ldns_rr_rdf(i32 %137, i32 0)
  %139 = load i32, i32* %11, align 4
  %140 = call i32* @ldns_get_rr_list_addr_by_name(i32* %134, i32* %138, i32 %139, i32 0)
  store i32* %140, i32** %20, align 8
  %141 = load i32*, i32** %19, align 8
  %142 = load i32*, i32** %20, align 8
  %143 = call i32 @ldns_rr_list_cat(i32* %141, i32* %142)
  %144 = load i32*, i32** %20, align 8
  %145 = call i32 @ldns_rr_list_free(i32* %144)
  br label %146

146:                                              ; preds = %133
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  store %struct.TYPE_5__* %149, %struct.TYPE_5__** %13, align 8
  br label %130

150:                                              ; preds = %130
  %151 = load i32*, i32** %19, align 8
  %152 = call i64 @ldns_rr_list_rr_count(i32* %151)
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  %155 = call i32 @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %168

156:                                              ; preds = %150
  %157 = load i32*, i32** %7, align 8
  %158 = load i32*, i32** %19, align 8
  %159 = call i64 @ldns_resolver_push_nameserver_rr_list(i32* %157, i32* %158)
  %160 = load i64, i64* @LDNS_STATUS_OK, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %156
  %163 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %167

164:                                              ; preds = %156
  %165 = load i32*, i32** %19, align 8
  %166 = call i32 @ldns_rr_list_deep_free(i32* %165)
  store i32 1, i32* %6, align 4
  br label %174

167:                                              ; preds = %162
  br label %168

168:                                              ; preds = %167, %154
  %169 = load i32*, i32** %8, align 8
  %170 = load i32*, i32** %19, align 8
  %171 = call i32 @add_rr_list_to_referrals(i32* %169, i32* %170)
  %172 = load i32*, i32** %19, align 8
  %173 = call i32 @ldns_rr_list_deep_free(i32* %172)
  store i32 0, i32* %6, align 4
  br label %174

174:                                              ; preds = %168, %164, %124, %41
  %175 = load i32, i32* %6, align 4
  ret i32 %175
}

declare dso_local i32* @ldns_rdf_clone(i32*) #1

declare dso_local %struct.TYPE_4__* @ldns_dnssec_zone_find_rrset(i32*, i32*, i32) #1

declare dso_local i32 @ldns_rdf_deep_free(i32*) #1

declare dso_local i32* @ldns_dname_left_chop(i32*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32* @ldns_resolver_pop_nameserver(i32*) #1

declare dso_local i32* @ldns_rr_rdf(i32, i32) #1

declare dso_local i32 @ldns_resolver_push_nameserver(i32*, i32*) #1

declare dso_local i64 @ldns_resolver_nameserver_count(i32*) #1

declare dso_local i32* @ldns_rr_list_new(...) #1

declare dso_local i32* @ldns_get_rr_list_addr_by_name(i32*, i32*, i32, i32) #1

declare dso_local i32 @ldns_rr_list_cat(i32*, i32*) #1

declare dso_local i32 @ldns_rr_list_free(i32*) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i64 @ldns_resolver_push_nameserver_rr_list(i32*, i32*) #1

declare dso_local i32 @ldns_rr_list_deep_free(i32*) #1

declare dso_local i32 @add_rr_list_to_referrals(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

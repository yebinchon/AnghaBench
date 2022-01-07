; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_handle_cname_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_handle_cname_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32 }
%struct.iter_qstate = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32* }
%struct.dns_msg = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, %struct.ub_packed_rrset_key** }
%struct.ub_packed_rrset_key = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@LDNS_RR_TYPE_DNAME = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_CNAME = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, %struct.iter_qstate*, %struct.dns_msg*, i32**, i64*)* @handle_cname_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_cname_response(%struct.module_qstate* %0, %struct.iter_qstate* %1, %struct.dns_msg* %2, i32** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.module_qstate*, align 8
  %8 = alloca %struct.iter_qstate*, align 8
  %9 = alloca %struct.dns_msg*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ub_packed_rrset_key*, align 8
  %14 = alloca %struct.ub_packed_rrset_key*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %7, align 8
  store %struct.iter_qstate* %1, %struct.iter_qstate** %8, align 8
  store %struct.dns_msg* %2, %struct.dns_msg** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %16 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32**, i32*** %10, align 8
  store i32* %18, i32** %19, align 8
  %20 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %21 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64*, i64** %11, align 8
  store i64 %23, i64* %24, align 8
  store i64 0, i64* %12, align 8
  br label %25

25:                                               ; preds = %106, %5
  %26 = load i64, i64* %12, align 8
  %27 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %28 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %26, %31
  br i1 %32, label %33, label %109

33:                                               ; preds = %25
  %34 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %35 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %37, align 8
  %39 = load i64, i64* %12, align 8
  %40 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %38, i64 %39
  %41 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %40, align 8
  store %struct.ub_packed_rrset_key* %41, %struct.ub_packed_rrset_key** %13, align 8
  %42 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %43 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @ntohs(i32 %45)
  %47 = load i64, i64* @LDNS_RR_TYPE_DNAME, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %33
  %50 = load i32**, i32*** %10, align 8
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %53 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @dname_strict_subdomain_c(i32* %51, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %49
  %59 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %60 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %61 = call i32 @iter_find_rrset_in_prepend_answer(%struct.iter_qstate* %59, %struct.ub_packed_rrset_key* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %58
  %64 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %65 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %66 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %67 = call i32 @iter_add_prepend_answer(%struct.module_qstate* %64, %struct.iter_qstate* %65, %struct.ub_packed_rrset_key* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  store i32 0, i32* %6, align 4
  br label %166

70:                                               ; preds = %63
  br label %106

71:                                               ; preds = %58, %49, %33
  %72 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %73 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @ntohs(i32 %75)
  %77 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %105

79:                                               ; preds = %71
  %80 = load i32**, i32*** %10, align 8
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %83 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @query_dname_compare(i32* %81, i32 %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %79
  %89 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %90 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %91 = call i32 @iter_find_rrset_in_prepend_answer(%struct.iter_qstate* %89, %struct.ub_packed_rrset_key* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %88
  %94 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %95 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %96 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %97 = call i32 @iter_add_prepend_answer(%struct.module_qstate* %94, %struct.iter_qstate* %95, %struct.ub_packed_rrset_key* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %93
  store i32 0, i32* %6, align 4
  br label %166

100:                                              ; preds = %93
  %101 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %102 = load i32**, i32*** %10, align 8
  %103 = load i64*, i64** %11, align 8
  %104 = call i32 @get_cname_target(%struct.ub_packed_rrset_key* %101, i32** %102, i64* %103)
  br label %105

105:                                              ; preds = %100, %88, %79, %71
  br label %106

106:                                              ; preds = %105, %70
  %107 = load i64, i64* %12, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %12, align 8
  br label %25

109:                                              ; preds = %25
  %110 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %111 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %110, i32 0, i32 0
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %12, align 8
  br label %115

115:                                              ; preds = %162, %109
  %116 = load i64, i64* %12, align 8
  %117 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %118 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %117, i32 0, i32 0
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %123 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %122, i32 0, i32 0
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = add i64 %121, %126
  %128 = icmp ult i64 %116, %127
  br i1 %128, label %129, label %165

129:                                              ; preds = %115
  %130 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %131 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %130, i32 0, i32 0
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 2
  %134 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %133, align 8
  %135 = load i64, i64* %12, align 8
  %136 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %134, i64 %135
  %137 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %136, align 8
  store %struct.ub_packed_rrset_key* %137, %struct.ub_packed_rrset_key** %14, align 8
  %138 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %139 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @ntohs(i32 %141)
  %143 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %153, label %145

145:                                              ; preds = %129
  %146 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %147 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @ntohs(i32 %149)
  %151 = load i64, i64* @LDNS_RR_TYPE_NSEC3, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %145, %129
  %154 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %155 = load %struct.iter_qstate*, %struct.iter_qstate** %8, align 8
  %156 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %157 = call i32 @iter_add_prepend_auth(%struct.module_qstate* %154, %struct.iter_qstate* %155, %struct.ub_packed_rrset_key* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %153
  store i32 0, i32* %6, align 4
  br label %166

160:                                              ; preds = %153
  br label %161

161:                                              ; preds = %160, %145
  br label %162

162:                                              ; preds = %161
  %163 = load i64, i64* %12, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %12, align 8
  br label %115

165:                                              ; preds = %115
  store i32 1, i32* %6, align 4
  br label %166

166:                                              ; preds = %165, %159, %99, %69
  %167 = load i32, i32* %6, align 4
  ret i32 %167
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @dname_strict_subdomain_c(i32*, i32) #1

declare dso_local i32 @iter_find_rrset_in_prepend_answer(%struct.iter_qstate*, %struct.ub_packed_rrset_key*) #1

declare dso_local i32 @iter_add_prepend_answer(%struct.module_qstate*, %struct.iter_qstate*, %struct.ub_packed_rrset_key*) #1

declare dso_local i64 @query_dname_compare(i32*, i32) #1

declare dso_local i32 @get_cname_target(%struct.ub_packed_rrset_key*, i32**, i64*) #1

declare dso_local i32 @iter_add_prepend_auth(%struct.module_qstate*, %struct.iter_qstate*, %struct.ub_packed_rrset_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

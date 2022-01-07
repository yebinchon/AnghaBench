; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_ds_toolow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_ds_toolow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dns_msg = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64, %struct.ub_packed_rrset_key** }
%struct.ub_packed_rrset_key = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32* }
%struct.delegpt = type { i32* }

@LDNS_RR_TYPE_DNAME = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_CNAME = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_DS = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_SOA = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iter_ds_toolow(%struct.dns_msg* %0, %struct.delegpt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dns_msg*, align 8
  %5 = alloca %struct.delegpt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ub_packed_rrset_key*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ub_packed_rrset_key*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.dns_msg* %0, %struct.dns_msg** %4, align 8
  store %struct.delegpt* %1, %struct.delegpt** %5, align 8
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %69, %2
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %16 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %14, %19
  br i1 %20, label %21, label %72

21:                                               ; preds = %13
  %22 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %23 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %26, i64 %27
  %29 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %28, align 8
  store %struct.ub_packed_rrset_key* %29, %struct.ub_packed_rrset_key** %7, align 8
  %30 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %31 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @ntohs(i32 %33)
  %35 = load i64, i64* @LDNS_RR_TYPE_DNAME, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %21
  %38 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %39 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @ntohs(i32 %41)
  %43 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %37, %21
  %46 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %47 = call i32 @val_find_rrset_signer(%struct.ub_packed_rrset_key* %46, i32** %8, i64* %9)
  %48 = load i32*, i32** %8, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.delegpt*, %struct.delegpt** %5, align 8
  %52 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i64 @query_dname_compare(i32* %53, i32* %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %167

58:                                               ; preds = %50, %45
  store i32 1, i32* %3, align 4
  br label %167

59:                                               ; preds = %37
  %60 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %61 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @ntohs(i32 %63)
  %65 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %167

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %6, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %6, align 8
  br label %13

72:                                               ; preds = %13
  %73 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %74 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %6, align 8
  br label %78

78:                                               ; preds = %163, %72
  %79 = load i64, i64* %6, align 8
  %80 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %81 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %86 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %84, %89
  %91 = icmp ult i64 %79, %90
  br i1 %91, label %92, label %166

92:                                               ; preds = %78
  %93 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %94 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %96, align 8
  %98 = load i64, i64* %6, align 8
  %99 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %97, i64 %98
  %100 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %99, align 8
  store %struct.ub_packed_rrset_key* %100, %struct.ub_packed_rrset_key** %10, align 8
  %101 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %102 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @ntohs(i32 %104)
  %106 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %132

108:                                              ; preds = %92
  %109 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %110 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %114 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @dname_subdomain_c(i32* %112, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %108
  store i32 1, i32* %3, align 4
  br label %167

120:                                              ; preds = %108
  %121 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %122 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.delegpt*, %struct.delegpt** %5, align 8
  %126 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = call i64 @query_dname_compare(i32* %124, i32* %127)
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %120
  store i32 0, i32* %3, align 4
  br label %167

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %131, %92
  %133 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %134 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i64 @ntohs(i32 %136)
  %138 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %148, label %140

140:                                              ; preds = %132
  %141 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %142 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i64 @ntohs(i32 %144)
  %146 = load i64, i64* @LDNS_RR_TYPE_NSEC3, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %162

148:                                              ; preds = %140, %132
  %149 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %150 = call i32 @val_find_rrset_signer(%struct.ub_packed_rrset_key* %149, i32** %11, i64* %12)
  %151 = load i32*, i32** %11, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %161

153:                                              ; preds = %148
  %154 = load %struct.delegpt*, %struct.delegpt** %5, align 8
  %155 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i32*, i32** %11, align 8
  %158 = call i64 @query_dname_compare(i32* %156, i32* %157)
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %153
  store i32 0, i32* %3, align 4
  br label %167

161:                                              ; preds = %153, %148
  store i32 1, i32* %3, align 4
  br label %167

162:                                              ; preds = %140
  br label %163

163:                                              ; preds = %162
  %164 = load i64, i64* %6, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %6, align 8
  br label %78

166:                                              ; preds = %78
  store i32 1, i32* %3, align 4
  br label %167

167:                                              ; preds = %166, %161, %160, %130, %119, %67, %58, %57
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @val_find_rrset_signer(%struct.ub_packed_rrset_key*, i32**, i64*) #1

declare dso_local i64 @query_dname_compare(i32*, i32*) #1

declare dso_local i64 @dname_subdomain_c(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

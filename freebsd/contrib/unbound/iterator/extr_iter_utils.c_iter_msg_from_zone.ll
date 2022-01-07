; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_msg_from_zone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_msg_from_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dns_msg = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, %struct.ub_packed_rrset_key** }
%struct.ub_packed_rrset_key = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.delegpt = type { i32, i32, i32 }

@LDNS_RR_TYPE_SOA = common dso_local global i64 0, align 8
@RESPONSE_TYPE_REFERRAL = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@RESPONSE_TYPE_ANSWER = common dso_local global i32 0, align 4
@RESPONSE_TYPE_CNAME = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_DNSKEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iter_msg_from_zone(%struct.dns_msg* %0, %struct.delegpt* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dns_msg*, align 8
  %7 = alloca %struct.delegpt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ub_packed_rrset_key*, align 8
  %12 = alloca i32, align 4
  store %struct.dns_msg* %0, %struct.dns_msg** %6, align 8
  store %struct.delegpt* %1, %struct.delegpt** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %14 = icmp ne %struct.dns_msg* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %4
  %16 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %17 = icmp ne %struct.delegpt* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %20 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %25 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23, %18, %15, %4
  store i32 0, i32* %5, align 4
  br label %190

29:                                               ; preds = %23
  %30 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %31 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %34 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %37 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i64 @reply_find_rrset_section_an(%struct.TYPE_5__* %32, i32 %35, i32 %38, i64 %39, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %29
  %44 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %45 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %48 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %51 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %54 = load i64, i64* %9, align 8
  %55 = call i64 @reply_find_rrset_section_ns(%struct.TYPE_5__* %46, i32 %49, i32 %52, i64 %53, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %43, %29
  store i32 1, i32* %5, align 4
  br label %190

58:                                               ; preds = %43
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @RESPONSE_TYPE_REFERRAL, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %134

62:                                               ; preds = %58
  store i64 0, i64* %10, align 8
  br label %63

63:                                               ; preds = %130, %62
  %64 = load i64, i64* %10, align 8
  %65 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %66 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %71 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %69, %74
  %76 = icmp ult i64 %64, %75
  br i1 %76, label %77, label %133

77:                                               ; preds = %63
  %78 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %79 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %82, i64 %83
  %85 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %84, align 8
  store %struct.ub_packed_rrset_key* %85, %struct.ub_packed_rrset_key** %11, align 8
  %86 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %87 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @ntohs(i32 %89)
  %91 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %129

93:                                               ; preds = %77
  %94 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %95 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @ntohs(i32 %97)
  %99 = load i64, i64* %9, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %129

101:                                              ; preds = %93
  %102 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %103 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @dname_count_labels(i32 %105)
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %12, align 4
  %108 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %109 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  %112 = icmp eq i32 %107, %111
  br i1 %112, label %113, label %128

113:                                              ; preds = %101
  %114 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %115 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %120 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %123 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @dname_strict_subdomain(i32 %117, i32 %118, i32 %121, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %113
  store i32 1, i32* %5, align 4
  br label %190

128:                                              ; preds = %113, %101
  br label %129

129:                                              ; preds = %128, %93, %77
  br label %130

130:                                              ; preds = %129
  %131 = load i64, i64* %10, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %10, align 8
  br label %63

133:                                              ; preds = %63
  store i32 0, i32* %5, align 4
  br label %190

134:                                              ; preds = %58
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @RESPONSE_TYPE_ANSWER, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @RESPONSE_TYPE_CNAME, align 4
  %141 = icmp eq i32 %139, %140
  br label %142

142:                                              ; preds = %138, %134
  %143 = phi i1 [ true, %134 ], [ %141, %138 ]
  %144 = zext i1 %143 to i32
  %145 = call i32 @log_assert(i32 %144)
  %146 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %147 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %146, i32 0, i32 0
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %150 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %153 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %156 = load i64, i64* %9, align 8
  %157 = call i64 @reply_find_rrset_section_an(%struct.TYPE_5__* %148, i32 %151, i32 %154, i64 %155, i64 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %173, label %159

159:                                              ; preds = %142
  %160 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %161 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %160, i32 0, i32 0
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %164 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %167 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %170 = load i64, i64* %9, align 8
  %171 = call i64 @reply_find_rrset_section_ns(%struct.TYPE_5__* %162, i32 %165, i32 %168, i64 %169, i64 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %159, %142
  store i32 1, i32* %5, align 4
  br label %190

174:                                              ; preds = %159
  %175 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %176 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %175, i32 0, i32 0
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %176, align 8
  %178 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %179 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %182 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i64, i64* @LDNS_RR_TYPE_DNSKEY, align 8
  %185 = load i64, i64* %9, align 8
  %186 = call i64 @reply_find_rrset_section_an(%struct.TYPE_5__* %177, i32 %180, i32 %183, i64 %184, i64 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %174
  store i32 1, i32* %5, align 4
  br label %190

189:                                              ; preds = %174
  store i32 0, i32* %5, align 4
  br label %190

190:                                              ; preds = %189, %188, %173, %133, %127, %57, %28
  %191 = load i32, i32* %5, align 4
  ret i32 %191
}

declare dso_local i64 @reply_find_rrset_section_an(%struct.TYPE_5__*, i32, i32, i64, i64) #1

declare dso_local i64 @reply_find_rrset_section_ns(%struct.TYPE_5__*, i32, i32, i64, i64) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @dname_count_labels(i32) #1

declare dso_local i64 @dname_strict_subdomain(i32, i32, i32, i32) #1

declare dso_local i32 @log_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

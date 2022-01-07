; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_indicates_dnssec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_indicates_dnssec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32, i32*, i64, i32 }
%struct.delegpt = type { i32, i32, i32 }
%struct.dns_msg = type { i64 }
%struct.trust_anchor = type { i64, i64, i32 }
%struct.key_entry_key = type { i32 }

@LDNS_RR_TYPE_DS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iter_indicates_dnssec(%struct.module_env* %0, %struct.delegpt* %1, %struct.dns_msg* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.module_env*, align 8
  %7 = alloca %struct.delegpt*, align 8
  %8 = alloca %struct.dns_msg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.trust_anchor*, align 8
  %11 = alloca %struct.key_entry_key*, align 8
  store %struct.module_env* %0, %struct.module_env** %6, align 8
  store %struct.delegpt* %1, %struct.delegpt** %7, align 8
  store %struct.dns_msg* %2, %struct.dns_msg** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.module_env*, %struct.module_env** %6, align 8
  %13 = icmp ne %struct.module_env* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %4
  %15 = load %struct.module_env*, %struct.module_env** %6, align 8
  %16 = getelementptr inbounds %struct.module_env, %struct.module_env* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %21 = icmp ne %struct.delegpt* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %24 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %19, %14, %4
  store i32 0, i32* %5, align 4
  br label %151

28:                                               ; preds = %22
  %29 = load %struct.module_env*, %struct.module_env** %6, align 8
  %30 = getelementptr inbounds %struct.module_env, %struct.module_env* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %33 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %36 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %39 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call %struct.trust_anchor* @anchor_find(i32 %31, i32 %34, i32 %37, i32 %40, i32 %41)
  store %struct.trust_anchor* %42, %struct.trust_anchor** %10, align 8
  %43 = icmp ne %struct.trust_anchor* %42, null
  br i1 %43, label %44, label %62

44:                                               ; preds = %28
  %45 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %46 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %51 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %56 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %55, i32 0, i32 2
  %57 = call i32 @lock_basic_unlock(i32* %56)
  store i32 0, i32* %5, align 4
  br label %151

58:                                               ; preds = %49, %44
  %59 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %60 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %59, i32 0, i32 2
  %61 = call i32 @lock_basic_unlock(i32* %60)
  store i32 1, i32* %5, align 4
  br label %151

62:                                               ; preds = %28
  %63 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %64 = icmp ne %struct.dns_msg* %63, null
  br i1 %64, label %65, label %85

65:                                               ; preds = %62
  %66 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %67 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %65
  %71 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %72 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %75 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %78 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i64 @reply_find_rrset_section_ns(i64 %73, i32 %76, i32 %79, i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %70
  store i32 1, i32* %5, align 4
  br label %151

85:                                               ; preds = %70, %65, %62
  %86 = load %struct.module_env*, %struct.module_env** %6, align 8
  %87 = getelementptr inbounds %struct.module_env, %struct.module_env* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %150

90:                                               ; preds = %85
  %91 = load %struct.module_env*, %struct.module_env** %6, align 8
  %92 = getelementptr inbounds %struct.module_env, %struct.module_env* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %95 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %98 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.module_env*, %struct.module_env** %6, align 8
  %102 = getelementptr inbounds %struct.module_env, %struct.module_env* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.module_env*, %struct.module_env** %6, align 8
  %105 = getelementptr inbounds %struct.module_env, %struct.module_env* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %106, align 4
  %108 = call %struct.key_entry_key* @key_cache_obtain(i64 %93, i32 %96, i32 %99, i32 %100, i32 %103, i32 %107)
  store %struct.key_entry_key* %108, %struct.key_entry_key** %11, align 8
  %109 = load %struct.key_entry_key*, %struct.key_entry_key** %11, align 8
  %110 = icmp ne %struct.key_entry_key* %109, null
  br i1 %110, label %111, label %149

111:                                              ; preds = %90
  %112 = load %struct.key_entry_key*, %struct.key_entry_key** %11, align 8
  %113 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %116 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @query_dname_compare(i32 %114, i32 %117)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %144

120:                                              ; preds = %111
  %121 = load %struct.key_entry_key*, %struct.key_entry_key** %11, align 8
  %122 = call i64 @key_entry_isgood(%struct.key_entry_key* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load %struct.key_entry_key*, %struct.key_entry_key** %11, align 8
  %126 = call i64 @key_entry_isbad(%struct.key_entry_key* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %124, %120
  %129 = load %struct.module_env*, %struct.module_env** %6, align 8
  %130 = getelementptr inbounds %struct.module_env, %struct.module_env* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @regional_free_all(i32 %131)
  store i32 1, i32* %5, align 4
  br label %151

133:                                              ; preds = %124
  %134 = load %struct.key_entry_key*, %struct.key_entry_key** %11, align 8
  %135 = call i64 @key_entry_isnull(%struct.key_entry_key* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %133
  %138 = load %struct.module_env*, %struct.module_env** %6, align 8
  %139 = getelementptr inbounds %struct.module_env, %struct.module_env* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @regional_free_all(i32 %140)
  store i32 0, i32* %5, align 4
  br label %151

142:                                              ; preds = %133
  br label %143

143:                                              ; preds = %142
  br label %144

144:                                              ; preds = %143, %111
  %145 = load %struct.module_env*, %struct.module_env** %6, align 8
  %146 = getelementptr inbounds %struct.module_env, %struct.module_env* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @regional_free_all(i32 %147)
  br label %149

149:                                              ; preds = %144, %90
  br label %150

150:                                              ; preds = %149, %85
  store i32 0, i32* %5, align 4
  br label %151

151:                                              ; preds = %150, %137, %128, %84, %58, %54, %27
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local %struct.trust_anchor* @anchor_find(i32, i32, i32, i32, i32) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i64 @reply_find_rrset_section_ns(i64, i32, i32, i32, i32) #1

declare dso_local %struct.key_entry_key* @key_cache_obtain(i64, i32, i32, i32, i32, i32) #1

declare dso_local i64 @query_dname_compare(i32, i32) #1

declare dso_local i64 @key_entry_isgood(%struct.key_entry_key*) #1

declare dso_local i64 @key_entry_isbad(%struct.key_entry_key*) #1

declare dso_local i32 @regional_free_all(i32) #1

declare dso_local i64 @key_entry_isnull(%struct.key_entry_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_store_rrsets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_store_rrsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32, i32 }
%struct.reply_info = type { i64, %struct.TYPE_6__*, %struct.ub_packed_rrset_key** }
%struct.TYPE_6__ = type { %struct.ub_packed_rrset_key*, i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.regional = type { i32 }

@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_env*, %struct.reply_info*, i64, i64, i32, %struct.reply_info*, %struct.regional*)* @store_rrsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_rrsets(%struct.module_env* %0, %struct.reply_info* %1, i64 %2, i64 %3, i32 %4, %struct.reply_info* %5, %struct.regional* %6) #0 {
  %8 = alloca %struct.module_env*, align 8
  %9 = alloca %struct.reply_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.reply_info*, align 8
  %14 = alloca %struct.regional*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.ub_packed_rrset_key*, align 8
  store %struct.module_env* %0, %struct.module_env** %8, align 8
  store %struct.reply_info* %1, %struct.reply_info** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.reply_info* %5, %struct.reply_info** %13, align 8
  store %struct.regional* %6, %struct.regional** %14, align 8
  store i64 0, i64* %15, align 8
  br label %17

17:                                               ; preds = %158, %7
  %18 = load i64, i64* %15, align 8
  %19 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %20 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %161

23:                                               ; preds = %17
  %24 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %25 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %24, i32 0, i32 2
  %26 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %25, align 8
  %27 = load i64, i64* %15, align 8
  %28 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %26, i64 %27
  %29 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %28, align 8
  %30 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %31 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load i64, i64* %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store %struct.ub_packed_rrset_key* %29, %struct.ub_packed_rrset_key** %35, align 8
  %36 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %37 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %36, i32 0, i32 2
  %38 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %37, align 8
  %39 = load i64, i64* %15, align 8
  %40 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %38, i64 %39
  %41 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %40, align 8
  %42 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %45 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i64, i64* %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i32 %43, i32* %49, align 8
  %50 = load %struct.module_env*, %struct.module_env** %8, align 8
  %51 = getelementptr inbounds %struct.module_env, %struct.module_env* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %54 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i64, i64* %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %56
  %58 = load %struct.module_env*, %struct.module_env** %8, align 8
  %59 = getelementptr inbounds %struct.module_env, %struct.module_env* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %10, align 8
  %62 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %63 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load i64, i64* %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %67, align 8
  %69 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @ntohs(i32 %71)
  %73 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %23
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  br label %81

79:                                               ; preds = %75, %23
  %80 = load i64, i64* %11, align 8
  br label %81

81:                                               ; preds = %79, %78
  %82 = phi i64 [ 0, %78 ], [ %80, %79 ]
  %83 = add nsw i64 %61, %82
  %84 = call i32 @rrset_cache_update(i32 %52, %struct.TYPE_6__* %57, i32 %60, i64 %83)
  switch i32 %84, label %157 [
    i32 0, label %85
    i32 2, label %86
    i32 1, label %144
  ]

85:                                               ; preds = %81
  br label %157

86:                                               ; preds = %81
  %87 = load %struct.regional*, %struct.regional** %14, align 8
  %88 = icmp ne %struct.regional* %87, null
  br i1 %88, label %89, label %143

89:                                               ; preds = %86
  %90 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %91 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = load i64, i64* %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %95, align 8
  %97 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = call i32 @lock_rw_rdlock(i32* %98)
  %100 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %101 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %100, i32 0, i32 1
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = load i64, i64* %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %105, align 8
  %107 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %89
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %16, align 8
  br label %122

111:                                              ; preds = %89
  %112 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %113 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %112, i32 0, i32 1
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = load i64, i64* %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %117, align 8
  %119 = load %struct.regional*, %struct.regional** %14, align 8
  %120 = load i64, i64* %10, align 8
  %121 = call %struct.ub_packed_rrset_key* @packed_rrset_copy_region(%struct.ub_packed_rrset_key* %118, %struct.regional* %119, i64 %120)
  store %struct.ub_packed_rrset_key* %121, %struct.ub_packed_rrset_key** %16, align 8
  br label %122

122:                                              ; preds = %111, %110
  %123 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %124 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %123, i32 0, i32 1
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = load i64, i64* %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %128, align 8
  %130 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = call i32 @lock_rw_unlock(i32* %131)
  %133 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %134 = icmp ne %struct.ub_packed_rrset_key* %133, null
  br i1 %134, label %135, label %142

135:                                              ; preds = %122
  %136 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %137 = load %struct.reply_info*, %struct.reply_info** %13, align 8
  %138 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %137, i32 0, i32 2
  %139 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %138, align 8
  %140 = load i64, i64* %15, align 8
  %141 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %139, i64 %140
  store %struct.ub_packed_rrset_key* %136, %struct.ub_packed_rrset_key** %141, align 8
  br label %142

142:                                              ; preds = %135, %122
  br label %143

143:                                              ; preds = %142, %86
  br label %144

144:                                              ; preds = %81, %143
  %145 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %146 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %145, i32 0, i32 1
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = load i64, i64* %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %150, align 8
  %152 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %153 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %152, i32 0, i32 2
  %154 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %153, align 8
  %155 = load i64, i64* %15, align 8
  %156 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %154, i64 %155
  store %struct.ub_packed_rrset_key* %151, %struct.ub_packed_rrset_key** %156, align 8
  br label %157

157:                                              ; preds = %144, %81, %85
  br label %158

158:                                              ; preds = %157
  %159 = load i64, i64* %15, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %15, align 8
  br label %17

161:                                              ; preds = %17
  ret void
}

declare dso_local i32 @rrset_cache_update(i32, %struct.TYPE_6__*, i32, i64) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @lock_rw_rdlock(i32*) #1

declare dso_local %struct.ub_packed_rrset_key* @packed_rrset_copy_region(%struct.ub_packed_rrset_key*, %struct.regional*, i64) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

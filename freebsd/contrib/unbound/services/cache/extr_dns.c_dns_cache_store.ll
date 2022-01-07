; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_dns_cache_store.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_dns_cache_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32, i64*, i32 }
%struct.query_info = type { %struct.reply_info*, i32 }
%struct.reply_info = type { i64, i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.regional = type { i32 }
%struct.rrset_ref = type { %struct.TYPE_6__*, i32 }
%struct.packed_rrset_data = type { i32 }

@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@BIT_RA = common dso_local global i32 0, align 4
@BIT_QR = common dso_local global i32 0, align 4
@BIT_AA = common dso_local global i32 0, align 4
@BIT_CD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dns_cache_store(%struct.module_env* %0, %struct.query_info* %1, %struct.reply_info* %2, i32 %3, i64 %4, i32 %5, %struct.regional* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.module_env*, align 8
  %11 = alloca %struct.query_info*, align 8
  %12 = alloca %struct.reply_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.regional*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.reply_info*, align 8
  %19 = alloca %struct.rrset_ref, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.query_info, align 8
  %22 = alloca i32, align 4
  store %struct.module_env* %0, %struct.module_env** %10, align 8
  store %struct.query_info* %1, %struct.query_info** %11, align 8
  store %struct.reply_info* %2, %struct.reply_info** %12, align 8
  store i32 %3, i32* %13, align 4
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store %struct.regional* %6, %struct.regional** %16, align 8
  store i64 %7, i64* %17, align 8
  store %struct.reply_info* null, %struct.reply_info** %18, align 8
  %23 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %24 = load %struct.module_env*, %struct.module_env** %10, align 8
  %25 = getelementptr inbounds %struct.module_env, %struct.module_env* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.reply_info* @reply_info_copy(%struct.reply_info* %23, i32 %26, i32* null)
  store %struct.reply_info* %27, %struct.reply_info** %18, align 8
  %28 = load %struct.reply_info*, %struct.reply_info** %18, align 8
  %29 = icmp ne %struct.reply_info* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %160

31:                                               ; preds = %8
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %107

34:                                               ; preds = %31
  store i64 0, i64* %20, align 8
  br label %35

35:                                               ; preds = %101, %34
  %36 = load i64, i64* %20, align 8
  %37 = load %struct.reply_info*, %struct.reply_info** %18, align 8
  %38 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %104

41:                                               ; preds = %35
  %42 = load %struct.reply_info*, %struct.reply_info** %18, align 8
  %43 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %42, i32 0, i32 2
  %44 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %43, align 8
  %45 = load i64, i64* %20, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %44, i64 %45
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.packed_rrset_data*
  %52 = load %struct.module_env*, %struct.module_env** %10, align 8
  %53 = getelementptr inbounds %struct.module_env, %struct.module_env* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @packed_rrset_ttl_add(%struct.packed_rrset_data* %51, i64 %55)
  %57 = load %struct.reply_info*, %struct.reply_info** %18, align 8
  %58 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %57, i32 0, i32 2
  %59 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %58, align 8
  %60 = load i64, i64* %20, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %59, i64 %60
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %19, i32 0, i32 0
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %63, align 8
  %64 = load %struct.reply_info*, %struct.reply_info** %18, align 8
  %65 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %64, i32 0, i32 2
  %66 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %65, align 8
  %67 = load i64, i64* %20, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %66, i64 %67
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %19, i32 0, i32 1
  store i32 %71, i32* %72, align 8
  %73 = load %struct.module_env*, %struct.module_env** %10, align 8
  %74 = getelementptr inbounds %struct.module_env, %struct.module_env* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.module_env*, %struct.module_env** %10, align 8
  %77 = getelementptr inbounds %struct.module_env, %struct.module_env* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.module_env*, %struct.module_env** %10, align 8
  %80 = getelementptr inbounds %struct.module_env, %struct.module_env* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %19, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @ntohs(i32 %87)
  %89 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %41
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  br label %97

95:                                               ; preds = %91, %41
  %96 = load i64, i64* %14, align 8
  br label %97

97:                                               ; preds = %95, %94
  %98 = phi i64 [ 0, %94 ], [ %96, %95 ]
  %99 = add nsw i64 %82, %98
  %100 = call i32 @rrset_cache_update(i32 %75, %struct.rrset_ref* %19, i32 %78, i64 %99)
  br label %101

101:                                              ; preds = %97
  %102 = load i64, i64* %20, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %20, align 8
  br label %35

104:                                              ; preds = %35
  %105 = load %struct.reply_info*, %struct.reply_info** %18, align 8
  %106 = call i32 @free(%struct.reply_info* %105)
  store i32 1, i32* %9, align 4
  br label %160

107:                                              ; preds = %31
  %108 = load %struct.query_info*, %struct.query_info** %11, align 8
  %109 = bitcast %struct.query_info* %21 to i8*
  %110 = bitcast %struct.query_info* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %109, i8* align 8 %110, i64 16, i1 false)
  %111 = load %struct.query_info*, %struct.query_info** %11, align 8
  %112 = getelementptr inbounds %struct.query_info, %struct.query_info* %111, i32 0, i32 0
  %113 = load %struct.reply_info*, %struct.reply_info** %112, align 8
  %114 = load %struct.query_info*, %struct.query_info** %11, align 8
  %115 = getelementptr inbounds %struct.query_info, %struct.query_info* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call %struct.reply_info* @memdup(%struct.reply_info* %113, i32 %116)
  %118 = getelementptr inbounds %struct.query_info, %struct.query_info* %21, i32 0, i32 0
  store %struct.reply_info* %117, %struct.reply_info** %118, align 8
  %119 = getelementptr inbounds %struct.query_info, %struct.query_info* %21, i32 0, i32 0
  %120 = load %struct.reply_info*, %struct.reply_info** %119, align 8
  %121 = icmp ne %struct.reply_info* %120, null
  br i1 %121, label %128, label %122

122:                                              ; preds = %107
  %123 = load %struct.reply_info*, %struct.reply_info** %18, align 8
  %124 = load %struct.module_env*, %struct.module_env** %10, align 8
  %125 = getelementptr inbounds %struct.module_env, %struct.module_env* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @reply_info_parsedelete(%struct.reply_info* %123, i32 %126)
  store i32 0, i32* %9, align 4
  br label %160

128:                                              ; preds = %107
  %129 = load i32, i32* @BIT_RA, align 4
  %130 = load i32, i32* @BIT_QR, align 4
  %131 = or i32 %129, %130
  %132 = load %struct.reply_info*, %struct.reply_info** %18, align 8
  %133 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  %136 = load i32, i32* @BIT_AA, align 4
  %137 = load i32, i32* @BIT_CD, align 4
  %138 = or i32 %136, %137
  %139 = xor i32 %138, -1
  %140 = load %struct.reply_info*, %struct.reply_info** %18, align 8
  %141 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = and i32 %142, %139
  store i32 %143, i32* %141, align 8
  %144 = load i64, i64* %17, align 8
  %145 = trunc i64 %144 to i32
  %146 = call i32 @query_info_hash(%struct.query_info* %21, i32 %145)
  store i32 %146, i32* %22, align 4
  %147 = load %struct.module_env*, %struct.module_env** %10, align 8
  %148 = load i32, i32* %22, align 4
  %149 = load %struct.reply_info*, %struct.reply_info** %18, align 8
  %150 = load i64, i64* %14, align 8
  %151 = load i32, i32* %15, align 4
  %152 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %153 = load i64, i64* %17, align 8
  %154 = load %struct.regional*, %struct.regional** %16, align 8
  %155 = call i32 @dns_cache_store_msg(%struct.module_env* %147, %struct.query_info* %21, i32 %148, %struct.reply_info* %149, i64 %150, i32 %151, %struct.reply_info* %152, i64 %153, %struct.regional* %154)
  %156 = getelementptr inbounds %struct.query_info, %struct.query_info* %21, i32 0, i32 0
  %157 = load %struct.reply_info*, %struct.reply_info** %156, align 8
  %158 = call i32 @free(%struct.reply_info* %157)
  br label %159

159:                                              ; preds = %128
  store i32 1, i32* %9, align 4
  br label %160

160:                                              ; preds = %159, %122, %104, %30
  %161 = load i32, i32* %9, align 4
  ret i32 %161
}

declare dso_local %struct.reply_info* @reply_info_copy(%struct.reply_info*, i32, i32*) #1

declare dso_local i32 @packed_rrset_ttl_add(%struct.packed_rrset_data*, i64) #1

declare dso_local i32 @rrset_cache_update(i32, %struct.rrset_ref*, i32, i64) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @free(%struct.reply_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.reply_info* @memdup(%struct.reply_info*, i32) #1

declare dso_local i32 @reply_info_parsedelete(%struct.reply_info*, i32) #1

declare dso_local i32 @query_info_hash(%struct.query_info*, i32) #1

declare dso_local i32 @dns_cache_store_msg(%struct.module_env*, %struct.query_info*, i32, %struct.reply_info*, i64, i32, %struct.reply_info*, i64, %struct.regional*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

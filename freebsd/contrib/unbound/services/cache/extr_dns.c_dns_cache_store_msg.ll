; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_dns_cache_store_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_dns_cache_store_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32, i32, i32* }
%struct.query_info = type { i32 }
%struct.reply_info = type { i64, i64, %struct.TYPE_4__**, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.regional = type { i32 }
%struct.msgreply_entry = type { i32 }

@DNSCACHE_STORE_ZEROTTL = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"TTL 0: dropped msg from cache\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"store_msg: malloc failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dns_cache_store_msg(%struct.module_env* %0, %struct.query_info* %1, i32 %2, %struct.reply_info* %3, i64 %4, i32 %5, %struct.reply_info* %6, i32 %7, %struct.regional* %8) #0 {
  %10 = alloca %struct.module_env*, align 8
  %11 = alloca %struct.query_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.reply_info*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.reply_info*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.regional*, align 8
  %19 = alloca %struct.msgreply_entry*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.module_env* %0, %struct.module_env** %10, align 8
  store %struct.query_info* %1, %struct.query_info** %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.reply_info* %3, %struct.reply_info** %13, align 8
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store %struct.reply_info* %6, %struct.reply_info** %16, align 8
  store i32 %7, i32* %17, align 4
  store %struct.regional* %8, %struct.regional** %18, align 8
  %22 = load %struct.reply_info*, %struct.reply_info** %13, align 8
  %23 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %20, align 8
  store i64 0, i64* %21, align 8
  br label %25

25:                                               ; preds = %58, %9
  %26 = load i64, i64* %21, align 8
  %27 = load %struct.reply_info*, %struct.reply_info** %13, align 8
  %28 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %25
  %32 = load %struct.reply_info*, %struct.reply_info** %13, align 8
  %33 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %33, align 8
  %35 = load i64, i64* %21, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %34, i64 %35
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load %struct.reply_info*, %struct.reply_info** %13, align 8
  %39 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %38, i32 0, i32 3
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i64, i64* %21, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %43, align 8
  %44 = load %struct.reply_info*, %struct.reply_info** %13, align 8
  %45 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %45, align 8
  %47 = load i64, i64* %21, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %46, i64 %47
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.reply_info*, %struct.reply_info** %13, align 8
  %53 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %52, i32 0, i32 3
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load i64, i64* %21, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 %51, i32* %57, align 8
  br label %58

58:                                               ; preds = %31
  %59 = load i64, i64* %21, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %21, align 8
  br label %25

61:                                               ; preds = %25
  %62 = load %struct.reply_info*, %struct.reply_info** %13, align 8
  %63 = load %struct.module_env*, %struct.module_env** %10, align 8
  %64 = getelementptr inbounds %struct.module_env, %struct.module_env* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @reply_info_set_ttls(%struct.reply_info* %62, i32 %66)
  %68 = load %struct.module_env*, %struct.module_env** %10, align 8
  %69 = load %struct.reply_info*, %struct.reply_info** %13, align 8
  %70 = load %struct.module_env*, %struct.module_env** %10, align 8
  %71 = getelementptr inbounds %struct.module_env, %struct.module_env* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* %14, align 8
  %75 = load i32, i32* %15, align 4
  %76 = load %struct.reply_info*, %struct.reply_info** %16, align 8
  %77 = load %struct.regional*, %struct.regional** %18, align 8
  %78 = call i32 @store_rrsets(%struct.module_env* %68, %struct.reply_info* %69, i32 %73, i64 %74, i32 %75, %struct.reply_info* %76, %struct.regional* %77)
  %79 = load i64, i64* %20, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %61
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* @DNSCACHE_STORE_ZEROTTL, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* @VERB_ALGO, align 4
  %88 = call i32 @verbose(i32 %87, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %89 = load %struct.reply_info*, %struct.reply_info** %13, align 8
  %90 = call i32 @free(%struct.reply_info* %89)
  %91 = load %struct.module_env*, %struct.module_env** %10, align 8
  %92 = load %struct.query_info*, %struct.query_info** %11, align 8
  %93 = load i32, i32* %17, align 4
  %94 = call i32 @msg_del_servfail(%struct.module_env* %91, %struct.query_info* %92, i32 %93)
  br label %117

95:                                               ; preds = %81, %61
  %96 = load %struct.reply_info*, %struct.reply_info** %13, align 8
  %97 = call i32 @reply_info_sortref(%struct.reply_info* %96)
  %98 = load %struct.query_info*, %struct.query_info** %11, align 8
  %99 = load %struct.reply_info*, %struct.reply_info** %13, align 8
  %100 = load i32, i32* %12, align 4
  %101 = call %struct.msgreply_entry* @query_info_entrysetup(%struct.query_info* %98, %struct.reply_info* %99, i32 %100)
  store %struct.msgreply_entry* %101, %struct.msgreply_entry** %19, align 8
  %102 = icmp ne %struct.msgreply_entry* %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %95
  %104 = call i32 @log_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %117

105:                                              ; preds = %95
  %106 = load %struct.module_env*, %struct.module_env** %10, align 8
  %107 = getelementptr inbounds %struct.module_env, %struct.module_env* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.msgreply_entry*, %struct.msgreply_entry** %19, align 8
  %111 = getelementptr inbounds %struct.msgreply_entry, %struct.msgreply_entry* %110, i32 0, i32 0
  %112 = load %struct.reply_info*, %struct.reply_info** %13, align 8
  %113 = load %struct.module_env*, %struct.module_env** %10, align 8
  %114 = getelementptr inbounds %struct.module_env, %struct.module_env* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @slabhash_insert(i32 %108, i32 %109, i32* %111, %struct.reply_info* %112, i32 %115)
  br label %117

117:                                              ; preds = %105, %103, %86
  ret void
}

declare dso_local i32 @reply_info_set_ttls(%struct.reply_info*, i32) #1

declare dso_local i32 @store_rrsets(%struct.module_env*, %struct.reply_info*, i32, i64, i32, %struct.reply_info*, %struct.regional*) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @free(%struct.reply_info*) #1

declare dso_local i32 @msg_del_servfail(%struct.module_env*, %struct.query_info*, i32) #1

declare dso_local i32 @reply_info_sortref(%struct.reply_info*) #1

declare dso_local %struct.msgreply_entry* @query_info_entrysetup(%struct.query_info*, %struct.reply_info*, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @slabhash_insert(i32, i32, i32*, %struct.reply_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

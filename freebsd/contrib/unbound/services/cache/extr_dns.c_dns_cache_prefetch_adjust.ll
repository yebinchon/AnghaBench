; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_dns_cache_prefetch_adjust.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_dns_cache_prefetch_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32* }
%struct.query_info = type { i32, i32, i32, i32 }
%struct.msgreply_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.reply_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dns_cache_prefetch_adjust(%struct.module_env* %0, %struct.query_info* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.module_env*, align 8
  %7 = alloca %struct.query_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.msgreply_entry*, align 8
  %11 = alloca %struct.reply_info*, align 8
  store %struct.module_env* %0, %struct.module_env** %6, align 8
  store %struct.query_info* %1, %struct.query_info** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.module_env*, %struct.module_env** %6, align 8
  %13 = load %struct.query_info*, %struct.query_info** %7, align 8
  %14 = getelementptr inbounds %struct.query_info, %struct.query_info* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.query_info*, %struct.query_info** %7, align 8
  %17 = getelementptr inbounds %struct.query_info, %struct.query_info* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.query_info*, %struct.query_info** %7, align 8
  %20 = getelementptr inbounds %struct.query_info, %struct.query_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.query_info*, %struct.query_info** %7, align 8
  %23 = getelementptr inbounds %struct.query_info, %struct.query_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.module_env*, %struct.module_env** %6, align 8
  %27 = getelementptr inbounds %struct.module_env, %struct.module_env* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.msgreply_entry* @msg_cache_lookup(%struct.module_env* %12, i32 %15, i32 %18, i32 %21, i32 %24, i32 %25, i32 %29, i32 1)
  store %struct.msgreply_entry* %30, %struct.msgreply_entry** %10, align 8
  %31 = load %struct.msgreply_entry*, %struct.msgreply_entry** %10, align 8
  %32 = icmp ne %struct.msgreply_entry* %31, null
  br i1 %32, label %33, label %58

33:                                               ; preds = %4
  %34 = load %struct.msgreply_entry*, %struct.msgreply_entry** %10, align 8
  %35 = getelementptr inbounds %struct.msgreply_entry, %struct.msgreply_entry* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.reply_info*
  store %struct.reply_info* %38, %struct.reply_info** %11, align 8
  %39 = load %struct.reply_info*, %struct.reply_info** %11, align 8
  %40 = icmp ne %struct.reply_info* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %33
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.reply_info*, %struct.reply_info** %11, align 8
  %44 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %42
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 4
  %49 = load %struct.msgreply_entry*, %struct.msgreply_entry** %10, align 8
  %50 = getelementptr inbounds %struct.msgreply_entry, %struct.msgreply_entry* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @lock_rw_unlock(i32* %51)
  store i32 1, i32* %5, align 4
  br label %59

53:                                               ; preds = %33
  %54 = load %struct.msgreply_entry*, %struct.msgreply_entry** %10, align 8
  %55 = getelementptr inbounds %struct.msgreply_entry, %struct.msgreply_entry* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @lock_rw_unlock(i32* %56)
  br label %58

58:                                               ; preds = %53, %4
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %41
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.msgreply_entry* @msg_cache_lookup(%struct.module_env*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

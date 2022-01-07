; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_msg_cache_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_msg_cache_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msgreply_entry = type { i32 }
%struct.module_env = type { i32 }
%struct.lruhash_entry = type { i64, i32, i64 }
%struct.query_info = type { i64, i32*, i8*, i8*, i32* }
%struct.reply_info = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.msgreply_entry* @msg_cache_lookup(%struct.module_env* %0, i32* %1, i64 %2, i8* %3, i8* %4, i8* %5, i64 %6, i32 %7) #0 {
  %9 = alloca %struct.msgreply_entry*, align 8
  %10 = alloca %struct.module_env*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.lruhash_entry*, align 8
  %19 = alloca %struct.query_info, align 8
  %20 = alloca i32, align 4
  store %struct.module_env* %0, %struct.module_env** %10, align 8
  store i32* %1, i32** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %21 = load i32*, i32** %11, align 8
  %22 = getelementptr inbounds %struct.query_info, %struct.query_info* %19, i32 0, i32 4
  store i32* %21, i32** %22, align 8
  %23 = load i64, i64* %12, align 8
  %24 = getelementptr inbounds %struct.query_info, %struct.query_info* %19, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = getelementptr inbounds %struct.query_info, %struct.query_info* %19, i32 0, i32 3
  store i8* %25, i8** %26, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = getelementptr inbounds %struct.query_info, %struct.query_info* %19, i32 0, i32 2
  store i8* %27, i8** %28, align 8
  %29 = getelementptr inbounds %struct.query_info, %struct.query_info* %19, i32 0, i32 1
  store i32* null, i32** %29, align 8
  %30 = load i8*, i8** %15, align 8
  %31 = call i32 @query_info_hash(%struct.query_info* %19, i8* %30)
  store i32 %31, i32* %20, align 4
  %32 = load %struct.module_env*, %struct.module_env** %10, align 8
  %33 = getelementptr inbounds %struct.module_env, %struct.module_env* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %20, align 4
  %36 = load i32, i32* %17, align 4
  %37 = call %struct.lruhash_entry* @slabhash_lookup(i32 %34, i32 %35, %struct.query_info* %19, i32 %36)
  store %struct.lruhash_entry* %37, %struct.lruhash_entry** %18, align 8
  %38 = load %struct.lruhash_entry*, %struct.lruhash_entry** %18, align 8
  %39 = icmp ne %struct.lruhash_entry* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %8
  store %struct.msgreply_entry* null, %struct.msgreply_entry** %9, align 8
  br label %59

41:                                               ; preds = %8
  %42 = load i64, i64* %16, align 8
  %43 = load %struct.lruhash_entry*, %struct.lruhash_entry** %18, align 8
  %44 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.reply_info*
  %47 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %42, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load %struct.lruhash_entry*, %struct.lruhash_entry** %18, align 8
  %52 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %51, i32 0, i32 1
  %53 = call i32 @lock_rw_unlock(i32* %52)
  store %struct.msgreply_entry* null, %struct.msgreply_entry** %9, align 8
  br label %59

54:                                               ; preds = %41
  %55 = load %struct.lruhash_entry*, %struct.lruhash_entry** %18, align 8
  %56 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.msgreply_entry*
  store %struct.msgreply_entry* %58, %struct.msgreply_entry** %9, align 8
  br label %59

59:                                               ; preds = %54, %50, %40
  %60 = load %struct.msgreply_entry*, %struct.msgreply_entry** %9, align 8
  ret %struct.msgreply_entry* %60
}

declare dso_local i32 @query_info_hash(%struct.query_info*, i8*) #1

declare dso_local %struct.lruhash_entry* @slabhash_lookup(i32, i32, %struct.query_info*, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

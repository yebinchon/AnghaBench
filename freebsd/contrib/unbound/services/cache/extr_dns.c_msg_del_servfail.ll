; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_msg_del_servfail.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_msg_del_servfail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.query_info = type { i32, i32, i32, i32 }
%struct.msgreply_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.reply_info = type { i32 }

@LDNS_RCODE_SERVFAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_env*, %struct.query_info*, i32)* @msg_del_servfail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msg_del_servfail(%struct.module_env* %0, %struct.query_info* %1, i32 %2) #0 {
  %4 = alloca %struct.module_env*, align 8
  %5 = alloca %struct.query_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.msgreply_entry*, align 8
  store %struct.module_env* %0, %struct.module_env** %4, align 8
  store %struct.query_info* %1, %struct.query_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.module_env*, %struct.module_env** %4, align 8
  %9 = load %struct.query_info*, %struct.query_info** %5, align 8
  %10 = getelementptr inbounds %struct.query_info, %struct.query_info* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.query_info*, %struct.query_info** %5, align 8
  %13 = getelementptr inbounds %struct.query_info, %struct.query_info* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.query_info*, %struct.query_info** %5, align 8
  %16 = getelementptr inbounds %struct.query_info, %struct.query_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.query_info*, %struct.query_info** %5, align 8
  %19 = getelementptr inbounds %struct.query_info, %struct.query_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.msgreply_entry* @msg_cache_lookup(%struct.module_env* %8, i32 %11, i32 %14, i32 %17, i32 %20, i32 %21, i32 0, i32 0)
  store %struct.msgreply_entry* %22, %struct.msgreply_entry** %7, align 8
  %23 = load %struct.msgreply_entry*, %struct.msgreply_entry** %7, align 8
  %24 = icmp ne %struct.msgreply_entry* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  br label %62

26:                                               ; preds = %3
  %27 = load %struct.msgreply_entry*, %struct.msgreply_entry** %7, align 8
  %28 = getelementptr inbounds %struct.msgreply_entry, %struct.msgreply_entry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.reply_info*
  %32 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @FLAGS_GET_RCODE(i32 %33)
  %35 = load i64, i64* @LDNS_RCODE_SERVFAIL, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %26
  %38 = load %struct.msgreply_entry*, %struct.msgreply_entry** %7, align 8
  %39 = getelementptr inbounds %struct.msgreply_entry, %struct.msgreply_entry* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @lock_rw_unlock(i32* %40)
  br label %62

42:                                               ; preds = %26
  %43 = load %struct.msgreply_entry*, %struct.msgreply_entry** %7, align 8
  %44 = getelementptr inbounds %struct.msgreply_entry, %struct.msgreply_entry* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @lock_rw_unlock(i32* %45)
  %47 = load %struct.module_env*, %struct.module_env** %4, align 8
  %48 = load %struct.query_info*, %struct.query_info** %5, align 8
  %49 = getelementptr inbounds %struct.query_info, %struct.query_info* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.query_info*, %struct.query_info** %5, align 8
  %52 = getelementptr inbounds %struct.query_info, %struct.query_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.query_info*, %struct.query_info** %5, align 8
  %55 = getelementptr inbounds %struct.query_info, %struct.query_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.query_info*, %struct.query_info** %5, align 8
  %58 = getelementptr inbounds %struct.query_info, %struct.query_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @msg_cache_remove(%struct.module_env* %47, i32 %50, i32 %53, i32 %56, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %42, %37, %25
  ret void
}

declare dso_local %struct.msgreply_entry* @msg_cache_lookup(%struct.module_env*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @FLAGS_GET_RCODE(i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @msg_cache_remove(%struct.module_env*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

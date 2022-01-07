; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_dns_store.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_dns_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.query_info = type { i32 }
%struct.reply_info = type { i32 }
%struct.regional = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"out of memory: cannot store data in cache\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iter_dns_store(%struct.module_env* %0, %struct.query_info* %1, %struct.reply_info* %2, i32 %3, i32 %4, i32 %5, %struct.regional* %6, i32 %7) #0 {
  %9 = alloca %struct.module_env*, align 8
  %10 = alloca %struct.query_info*, align 8
  %11 = alloca %struct.reply_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.regional*, align 8
  %16 = alloca i32, align 4
  store %struct.module_env* %0, %struct.module_env** %9, align 8
  store %struct.query_info* %1, %struct.query_info** %10, align 8
  store %struct.reply_info* %2, %struct.reply_info** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.regional* %6, %struct.regional** %15, align 8
  store i32 %7, i32* %16, align 4
  %17 = load %struct.module_env*, %struct.module_env** %9, align 8
  %18 = load %struct.query_info*, %struct.query_info** %10, align 8
  %19 = load %struct.reply_info*, %struct.reply_info** %11, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %14, align 4
  %23 = load %struct.regional*, %struct.regional** %15, align 8
  %24 = load i32, i32* %16, align 4
  %25 = call i32 @dns_cache_store(%struct.module_env* %17, %struct.query_info* %18, %struct.reply_info* %19, i32 %20, i32 %21, i32 %22, %struct.regional* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %8
  %28 = call i32 @log_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %8
  ret void
}

declare dso_local i32 @dns_cache_store(%struct.module_env*, %struct.query_info*, %struct.reply_info*, i32, i32, i32, %struct.regional*, i32) #1

declare dso_local i32 @log_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

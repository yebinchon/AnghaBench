; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librss/extr_librss.c_rss_get_bucket_cpuset.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librss/extr_librss.c_rss_get_bucket_cpuset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rss_config = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@RSS_BUCKET_TYPE_NONE = common dso_local global i64 0, align 8
@RSS_BUCKET_TYPE_MAX = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rss_get_bucket_cpuset(%struct.rss_config* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rss_config*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.rss_config* %0, %struct.rss_config** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.rss_config*, %struct.rss_config** %6, align 8
  %15 = getelementptr inbounds %struct.rss_config, %struct.rss_config* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12, %4
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %42

20:                                               ; preds = %12
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @RSS_BUCKET_TYPE_NONE, align 8
  %23 = icmp sle i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @RSS_BUCKET_TYPE_MAX, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %20
  %29 = load i32, i32* @ENOTSUP, align 4
  store i32 %29, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %42

30:                                               ; preds = %24
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @CPU_ZERO(i32* %31)
  %33 = load %struct.rss_config*, %struct.rss_config** %6, align 8
  %34 = getelementptr inbounds %struct.rss_config, %struct.rss_config* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @CPU_SET(i32 %39, i32* %40)
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %30, %28, %18
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

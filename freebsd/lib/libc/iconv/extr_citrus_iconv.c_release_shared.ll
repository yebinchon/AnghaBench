; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_iconv.c_release_shared.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_iconv.c_release_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_iconv_shared = type { i64 }

@ci_lock = common dso_local global i32 0, align 4
@shared_num_unused = common dso_local global i64 0, align 8
@shared_unused = common dso_local global i32 0, align 4
@ci_tailq_entry = common dso_local global i32 0, align 4
@shared_max_reuse = common dso_local global i64 0, align 8
@ci_hash_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._citrus_iconv_shared*)* @release_shared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_shared(%struct._citrus_iconv_shared* noalias %0) #0 {
  %2 = alloca %struct._citrus_iconv_shared*, align 8
  store %struct._citrus_iconv_shared* %0, %struct._citrus_iconv_shared** %2, align 8
  %3 = call i32 @WLOCK(i32* @ci_lock)
  %4 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %2, align 8
  %5 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, -1
  store i64 %7, i64* %5, align 8
  %8 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %2, align 8
  %9 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %1
  %13 = load i64, i64* @shared_num_unused, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* @shared_num_unused, align 8
  %15 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %2, align 8
  %16 = load i32, i32* @ci_tailq_entry, align 4
  %17 = call i32 @TAILQ_INSERT_TAIL(i32* @shared_unused, %struct._citrus_iconv_shared* %15, i32 %16)
  br label %18

18:                                               ; preds = %22, %12
  %19 = load i64, i64* @shared_num_unused, align 8
  %20 = load i64, i64* @shared_max_reuse, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = call %struct._citrus_iconv_shared* @TAILQ_FIRST(i32* @shared_unused)
  store %struct._citrus_iconv_shared* %23, %struct._citrus_iconv_shared** %2, align 8
  %24 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %2, align 8
  %25 = load i32, i32* @ci_tailq_entry, align 4
  %26 = call i32 @TAILQ_REMOVE(i32* @shared_unused, %struct._citrus_iconv_shared* %24, i32 %25)
  %27 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %2, align 8
  %28 = load i32, i32* @ci_hash_entry, align 4
  %29 = call i32 @_CITRUS_HASH_REMOVE(%struct._citrus_iconv_shared* %27, i32 %28)
  %30 = load i64, i64* @shared_num_unused, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* @shared_num_unused, align 8
  %32 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %2, align 8
  %33 = call i32 @close_shared(%struct._citrus_iconv_shared* %32)
  br label %18

34:                                               ; preds = %18
  br label %35

35:                                               ; preds = %34, %1
  %36 = call i32 @UNLOCK(i32* @ci_lock)
  ret void
}

declare dso_local i32 @WLOCK(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct._citrus_iconv_shared*, i32) #1

declare dso_local %struct._citrus_iconv_shared* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct._citrus_iconv_shared*, i32) #1

declare dso_local i32 @_CITRUS_HASH_REMOVE(%struct._citrus_iconv_shared*, i32) #1

declare dso_local i32 @close_shared(%struct._citrus_iconv_shared*) #1

declare dso_local i32 @UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

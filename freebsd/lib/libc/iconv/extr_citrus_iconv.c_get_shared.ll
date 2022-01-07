; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_iconv.c_get_shared.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_iconv.c_get_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_iconv_shared = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@ci_lock = common dso_local global i32 0, align 4
@shared_pool = common dso_local global i32 0, align 4
@ci_hash_entry = common dso_local global i32 0, align 4
@match_func = common dso_local global i32 0, align 4
@shared_unused = common dso_local global i32 0, align 4
@ci_tailq_entry = common dso_local global i32 0, align 4
@shared_num_unused = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._citrus_iconv_shared**, i8*, i8*)* @get_shared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_shared(%struct._citrus_iconv_shared** noalias %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct._citrus_iconv_shared**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._citrus_iconv_shared*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct._citrus_iconv_shared** %0, %struct._citrus_iconv_shared*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %16 = trunc i64 %13 to i32
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @snprintf(i8* %15, i32 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %18)
  %20 = call i32 @WLOCK(i32* @ci_lock)
  %21 = call i32 @hash_func(i8* %15)
  store i32 %21, i32* %10, align 4
  %22 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %7, align 8
  %23 = load i32, i32* @ci_hash_entry, align 4
  %24 = load i32, i32* @match_func, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @_CITRUS_HASH_SEARCH(i32* @shared_pool, %struct._citrus_iconv_shared* %22, i32 %23, i32 %24, i8* %15, i32 %25)
  %27 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %7, align 8
  %28 = icmp ne %struct._citrus_iconv_shared* %27, null
  br i1 %28, label %29, label %47

29:                                               ; preds = %3
  %30 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %7, align 8
  %31 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %7, align 8
  %36 = load i32, i32* @ci_tailq_entry, align 4
  %37 = call i32 @TAILQ_REMOVE(i32* @shared_unused, %struct._citrus_iconv_shared* %35, i32 %36)
  %38 = load i32, i32* @shared_num_unused, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* @shared_num_unused, align 4
  br label %40

40:                                               ; preds = %34, %29
  %41 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %7, align 8
  %42 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %7, align 8
  %46 = load %struct._citrus_iconv_shared**, %struct._citrus_iconv_shared*** %4, align 8
  store %struct._citrus_iconv_shared* %45, %struct._citrus_iconv_shared** %46, align 8
  br label %63

47:                                               ; preds = %3
  %48 = load i8*, i8** %5, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @open_shared(%struct._citrus_iconv_shared** %7, i8* %15, i8* %48, i8* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %63

54:                                               ; preds = %47
  %55 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %7, align 8
  %56 = load i32, i32* @ci_hash_entry, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @_CITRUS_HASH_INSERT(i32* @shared_pool, %struct._citrus_iconv_shared* %55, i32 %56, i32 %57)
  %59 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %7, align 8
  %60 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  %61 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %7, align 8
  %62 = load %struct._citrus_iconv_shared**, %struct._citrus_iconv_shared*** %4, align 8
  store %struct._citrus_iconv_shared* %61, %struct._citrus_iconv_shared** %62, align 8
  br label %63

63:                                               ; preds = %54, %53, %40
  %64 = call i32 @UNLOCK(i32* @ci_lock)
  %65 = load i32, i32* %11, align 4
  %66 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %66)
  ret i32 %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @WLOCK(i32*) #2

declare dso_local i32 @hash_func(i8*) #2

declare dso_local i32 @_CITRUS_HASH_SEARCH(i32*, %struct._citrus_iconv_shared*, i32, i32, i8*, i32) #2

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct._citrus_iconv_shared*, i32) #2

declare dso_local i32 @open_shared(%struct._citrus_iconv_shared**, i8*, i8*, i8*) #2

declare dso_local i32 @_CITRUS_HASH_INSERT(i32*, %struct._citrus_iconv_shared*, i32, i32) #2

declare dso_local i32 @UNLOCK(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

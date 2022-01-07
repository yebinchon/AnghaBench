; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_memory.c_ibv_fork_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_memory.c_ibv_fork_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64, i32, i32*, i32*, i32* }

@.str = private unnamed_addr constant [21 x i8] c"RDMAV_HUGEPAGES_SAFE\00", align 1
@huge_page_enabled = common dso_local global i32 0, align 4
@mm_root = common dso_local global %struct.TYPE_3__* null, align 8
@too_late = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@_SC_PAGESIZE = common dso_local global i32 0, align 4
@page_size = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MADV_DONTFORK = common dso_local global i32 0, align 4
@MADV_DOFORK = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@IBV_BLACK = common dso_local global i32 0, align 4
@UINTPTR_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_fork_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = call i64 @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 1, i32* @huge_page_enabled, align 4
  br label %9

9:                                                ; preds = %8, %0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mm_root, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %92

13:                                               ; preds = %9
  %14 = load i64, i64* @too_late, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %1, align 4
  br label %92

18:                                               ; preds = %13
  %19 = load i32, i32* @_SC_PAGESIZE, align 4
  %20 = call i64 @sysconf(i32 %19)
  store i64 %20, i64* @page_size, align 8
  %21 = load i64, i64* @page_size, align 8
  %22 = icmp ult i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @errno, align 4
  store i32 %24, i32* %1, align 4
  br label %92

25:                                               ; preds = %18
  %26 = load i64, i64* @page_size, align 8
  %27 = load i64, i64* @page_size, align 8
  %28 = call i64 @posix_memalign(i8** %2, i64 %26, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  store i32 %31, i32* %1, align 4
  br label %92

32:                                               ; preds = %25
  %33 = load i32, i32* @huge_page_enabled, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load i8*, i8** %2, align 8
  %37 = call i64 @get_page_size(i8* %36)
  store i64 %37, i64* %5, align 8
  %38 = load i8*, i8** %2, align 8
  %39 = ptrtoint i8* %38 to i64
  %40 = load i64, i64* %5, align 8
  %41 = sub i64 %40, 1
  %42 = xor i64 %41, -1
  %43 = and i64 %39, %42
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %3, align 8
  br label %48

45:                                               ; preds = %32
  %46 = load i64, i64* @page_size, align 8
  store i64 %46, i64* %5, align 8
  %47 = load i8*, i8** %2, align 8
  store i8* %47, i8** %3, align 8
  br label %48

48:                                               ; preds = %45, %35
  %49 = load i8*, i8** %3, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i32, i32* @MADV_DONTFORK, align 4
  %52 = call i64 @madvise(i8* %49, i64 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load i8*, i8** %3, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i32, i32* @MADV_DOFORK, align 4
  %58 = call i64 @madvise(i8* %55, i64 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %54, %48
  %61 = phi i1 [ true, %48 ], [ %59, %54 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %4, align 4
  %63 = load i8*, i8** %2, align 8
  %64 = call i32 @free(i8* %63)
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @ENOSYS, align 4
  store i32 %68, i32* %1, align 4
  br label %92

69:                                               ; preds = %60
  %70 = call %struct.TYPE_3__* @malloc(i32 56)
  store %struct.TYPE_3__* %70, %struct.TYPE_3__** @mm_root, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mm_root, align 8
  %72 = icmp ne %struct.TYPE_3__* %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* @ENOMEM, align 4
  store i32 %74, i32* %1, align 4
  br label %92

75:                                               ; preds = %69
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mm_root, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 6
  store i32* null, i32** %77, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mm_root, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 5
  store i32* null, i32** %79, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mm_root, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 4
  store i32* null, i32** %81, align 8
  %82 = load i32, i32* @IBV_BLACK, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mm_root, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mm_root, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  %87 = load i32, i32* @UINTPTR_MAX, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mm_root, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mm_root, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  store i32 0, i32* %1, align 4
  br label %92

92:                                               ; preds = %75, %73, %67, %30, %23, %16, %12
  %93 = load i32, i32* %1, align 4
  ret i32 %93
}

declare dso_local i64 @getenv(i8*) #1

declare dso_local i64 @sysconf(i32) #1

declare dso_local i64 @posix_memalign(i8**, i64, i64) #1

declare dso_local i64 @get_page_size(i8*) #1

declare dso_local i64 @madvise(i8*, i64, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_3__* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_pages.c_os_pages_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_pages.c_os_pages_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@os_page = common dso_local global i32 0, align 4
@os_overcommits = common dso_local global i64 0, align 8
@PAGES_PROT_COMMIT = common dso_local global i32 0, align 4
@PAGES_PROT_DECOMMIT = common dso_local global i32 0, align 4
@mmap_flags = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@MEM_COMMIT = common dso_local global i32 0, align 4
@MEM_RESERVE = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i64, i32*)* @os_pages_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @os_pages_map(i8* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @os_page, align 4
  %13 = call i8* @ALIGNMENT_ADDR2BASE(i8* %11, i32 %12)
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i64, i64* %6, align 8
  %19 = load i32, i32* @os_page, align 4
  %20 = call i64 @ALIGNMENT_CEILING(i64 %18, i32 %19)
  %21 = load i64, i64* %6, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i64, i64* @os_overcommits, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32*, i32** %8, align 8
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %31, %4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @PAGES_PROT_COMMIT, align 4
  br label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @PAGES_PROT_DECOMMIT, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %10, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @mmap_flags, align 4
  %47 = call i8* @mmap(i8* %43, i64 %44, i32 %45, i32 %46, i32 -1, i32 0)
  store i8* %47, i8** %9, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = icmp ne i8* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i8*, i8** %9, align 8
  %53 = load i8*, i8** @MAP_FAILED, align 8
  %54 = icmp eq i8* %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  store i8* null, i8** %9, align 8
  br label %68

56:                                               ; preds = %41
  %57 = load i8*, i8** %5, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i8*, i8** %9, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = icmp ne i8* %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i8*, i8** %9, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @os_pages_unmap(i8* %64, i64 %65)
  store i8* null, i8** %9, align 8
  br label %67

67:                                               ; preds = %63, %59, %56
  br label %68

68:                                               ; preds = %67, %55
  %69 = load i8*, i8** %9, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %87, label %71

71:                                               ; preds = %68
  %72 = load i8*, i8** %5, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = icmp ne i8* %75, %76
  br i1 %77, label %87, label %78

78:                                               ; preds = %74, %71
  %79 = load i8*, i8** %5, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i8*, i8** %9, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = icmp eq i8* %82, %83
  br label %85

85:                                               ; preds = %81, %78
  %86 = phi i1 [ false, %78 ], [ %84, %81 ]
  br label %87

87:                                               ; preds = %85, %74, %68
  %88 = phi i1 [ true, %74 ], [ true, %68 ], [ %86, %85 ]
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load i8*, i8** %9, align 8
  ret i8* %91
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @ALIGNMENT_ADDR2BASE(i8*, i32) #1

declare dso_local i64 @ALIGNMENT_CEILING(i64, i32) #1

declare dso_local i8* @mmap(i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @os_pages_unmap(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

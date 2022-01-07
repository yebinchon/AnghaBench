; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_match_path_exclusion.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_match_path_exclusion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_match = type { i32 }
%struct.match = type { i32 }

@PATHMATCH_NO_ANCHOR_START = common dso_local global i32 0, align 4
@PATHMATCH_NO_ANCHOR_END = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_match*, %struct.match*, i32, i8*)* @match_path_exclusion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_path_exclusion(%struct.archive_match* %0, %struct.match* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_match*, align 8
  %7 = alloca %struct.match*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  store %struct.archive_match* %0, %struct.archive_match** %6, align 8
  store %struct.match* %1, %struct.match** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* @PATHMATCH_NO_ANCHOR_START, align 4
  %15 = load i32, i32* @PATHMATCH_NO_ANCHOR_END, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %4
  %20 = load %struct.archive_match*, %struct.archive_match** %6, align 8
  %21 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %20, i32 0, i32 0
  %22 = load %struct.match*, %struct.match** %7, align 8
  %23 = getelementptr inbounds %struct.match, %struct.match* %22, i32 0, i32 0
  %24 = call i32 @archive_mstring_get_mbs(i32* %21, i32* %23, i8** %12)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load i8*, i8** %12, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @archive_pathmatch(i8* %28, i8* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %56

32:                                               ; preds = %19
  br label %48

33:                                               ; preds = %4
  %34 = load %struct.archive_match*, %struct.archive_match** %6, align 8
  %35 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %34, i32 0, i32 0
  %36 = load %struct.match*, %struct.match** %7, align 8
  %37 = getelementptr inbounds %struct.match, %struct.match* %36, i32 0, i32 0
  %38 = call i32 @archive_mstring_get_wcs(i32* %35, i32* %37, i32** %13)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load i32*, i32** %13, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @archive_pathmatch_w(i32* %42, i32* %44, i32 %45)
  store i32 %46, i32* %5, align 4
  br label %56

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47, %32
  %49 = load i64, i64* @errno, align 8
  %50 = load i64, i64* @ENOMEM, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.archive_match*, %struct.archive_match** %6, align 8
  %54 = call i32 @error_nomem(%struct.archive_match* %53)
  store i32 %54, i32* %5, align 4
  br label %56

55:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %52, %41, %27
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @archive_mstring_get_mbs(i32*, i32*, i8**) #1

declare dso_local i32 @archive_pathmatch(i8*, i8*, i32) #1

declare dso_local i32 @archive_mstring_get_wcs(i32*, i32*, i32**) #1

declare dso_local i32 @archive_pathmatch_w(i32*, i32*, i32) #1

declare dso_local i32 @error_nomem(%struct.archive_match*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

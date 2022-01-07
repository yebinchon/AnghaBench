; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_match_path_inclusion.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_match_path_inclusion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_match = type { i32, i64 }
%struct.match = type { i32 }

@PATHMATCH_NO_ANCHOR_END = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_match*, %struct.match*, i32, i8*)* @match_path_inclusion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_path_inclusion(%struct.archive_match* %0, %struct.match* %1, i32 %2, i8* %3) #0 {
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
  %14 = load %struct.archive_match*, %struct.archive_match** %6, align 8
  %15 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @PATHMATCH_NO_ANCHOR_END, align 4
  br label %21

20:                                               ; preds = %4
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load %struct.archive_match*, %struct.archive_match** %6, align 8
  %27 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %26, i32 0, i32 0
  %28 = load %struct.match*, %struct.match** %7, align 8
  %29 = getelementptr inbounds %struct.match, %struct.match* %28, i32 0, i32 0
  %30 = call i32 @archive_mstring_get_mbs(i32* %27, i32* %29, i8** %12)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load i8*, i8** %12, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @archive_pathmatch(i8* %34, i8* %35, i32 %36)
  store i32 %37, i32* %5, align 4
  br label %62

38:                                               ; preds = %25
  br label %54

39:                                               ; preds = %21
  %40 = load %struct.archive_match*, %struct.archive_match** %6, align 8
  %41 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %40, i32 0, i32 0
  %42 = load %struct.match*, %struct.match** %7, align 8
  %43 = getelementptr inbounds %struct.match, %struct.match* %42, i32 0, i32 0
  %44 = call i32 @archive_mstring_get_wcs(i32* %41, i32* %43, i32** %13)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load i32*, i32** %13, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = bitcast i8* %49 to i32*
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @archive_pathmatch_w(i32* %48, i32* %50, i32 %51)
  store i32 %52, i32* %5, align 4
  br label %62

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53, %38
  %55 = load i64, i64* @errno, align 8
  %56 = load i64, i64* @ENOMEM, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load %struct.archive_match*, %struct.archive_match** %6, align 8
  %60 = call i32 @error_nomem(%struct.archive_match* %59)
  store i32 %60, i32* %5, align 4
  br label %62

61:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %58, %47, %33
  %63 = load i32, i32* %5, align 4
  ret i32 %63
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

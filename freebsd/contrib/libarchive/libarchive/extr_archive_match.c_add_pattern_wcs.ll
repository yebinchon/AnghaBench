; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_add_pattern_wcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_add_pattern_wcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_match = type { i32 }
%struct.match_list = type { i32 }
%struct.match = type { i32 }

@PATTERN_IS_SET = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_match*, %struct.match_list*, i32*)* @add_pattern_wcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_pattern_wcs(%struct.archive_match* %0, %struct.match_list* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_match*, align 8
  %6 = alloca %struct.match_list*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.match*, align 8
  %9 = alloca i64, align 8
  store %struct.archive_match* %0, %struct.archive_match** %5, align 8
  store %struct.match_list* %1, %struct.match_list** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = call %struct.match* @calloc(i32 1, i32 4)
  store %struct.match* %10, %struct.match** %8, align 8
  %11 = load %struct.match*, %struct.match** %8, align 8
  %12 = icmp eq %struct.match* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %15 = call i32 @error_nomem(%struct.archive_match* %14)
  store i32 %15, i32* %4, align 4
  br label %46

16:                                               ; preds = %3
  %17 = load i32*, i32** %7, align 8
  %18 = call i64 @wcslen(i32* %17)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load i32*, i32** %7, align 8
  %23 = load i64, i64* %9, align 8
  %24 = sub i64 %23, 1
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 47
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i64, i64* %9, align 8
  %30 = add i64 %29, -1
  store i64 %30, i64* %9, align 8
  br label %31

31:                                               ; preds = %28, %21, %16
  %32 = load %struct.match*, %struct.match** %8, align 8
  %33 = getelementptr inbounds %struct.match, %struct.match* %32, i32 0, i32 0
  %34 = load i32*, i32** %7, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @archive_mstring_copy_wcs_len(i32* %33, i32* %34, i64 %35)
  %37 = load %struct.match_list*, %struct.match_list** %6, align 8
  %38 = load %struct.match*, %struct.match** %8, align 8
  %39 = call i32 @match_list_add(%struct.match_list* %37, %struct.match* %38)
  %40 = load i32, i32* @PATTERN_IS_SET, align 4
  %41 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %42 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %31, %13
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.match* @calloc(i32, i32) #1

declare dso_local i32 @error_nomem(%struct.archive_match*) #1

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i32 @archive_mstring_copy_wcs_len(i32*, i32*, i64) #1

declare dso_local i32 @match_list_add(%struct.match_list*, %struct.match*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

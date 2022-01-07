; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_parse_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_parse_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.archive_entry = type { i32 }
%struct.mtree = type { i32 }
%struct.mtree_entry = type { %struct.mtree_option* }
%struct.mtree_option = type { %struct.mtree_option* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@MTREE_HAS_TYPE = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Missing type keyword in mtree specification\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.archive_entry*, %struct.mtree*, %struct.mtree_entry*, i32*)* @parse_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_line(%struct.archive_read* %0, %struct.archive_entry* %1, %struct.mtree* %2, %struct.mtree_entry* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive_read*, align 8
  %8 = alloca %struct.archive_entry*, align 8
  %9 = alloca %struct.mtree*, align 8
  %10 = alloca %struct.mtree_entry*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mtree_option*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %7, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %8, align 8
  store %struct.mtree* %2, %struct.mtree** %9, align 8
  store %struct.mtree_entry* %3, %struct.mtree_entry** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %15, i32* %13, align 4
  %16 = load %struct.mtree_entry*, %struct.mtree_entry** %10, align 8
  %17 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %16, i32 0, i32 0
  %18 = load %struct.mtree_option*, %struct.mtree_option** %17, align 8
  store %struct.mtree_option* %18, %struct.mtree_option** %12, align 8
  br label %19

19:                                               ; preds = %35, %5
  %20 = load %struct.mtree_option*, %struct.mtree_option** %12, align 8
  %21 = icmp ne %struct.mtree_option* %20, null
  br i1 %21, label %22, label %39

22:                                               ; preds = %19
  %23 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %24 = load %struct.mtree*, %struct.mtree** %9, align 8
  %25 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %26 = load %struct.mtree_option*, %struct.mtree_option** %12, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = call i32 @parse_keyword(%struct.archive_read* %23, %struct.mtree* %24, %struct.archive_entry* %25, %struct.mtree_option* %26, i32* %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %32, %22
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.mtree_option*, %struct.mtree_option** %12, align 8
  %37 = getelementptr inbounds %struct.mtree_option, %struct.mtree_option* %36, i32 0, i32 0
  %38 = load %struct.mtree_option*, %struct.mtree_option** %37, align 8
  store %struct.mtree_option* %38, %struct.mtree_option** %12, align 8
  br label %19

39:                                               ; preds = %19
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @ARCHIVE_OK, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MTREE_HAS_TYPE, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %51 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %50, i32 0, i32 0
  %52 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %53 = call i32 @archive_set_error(i32* %51, i32 %52, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %54, i32* %6, align 4
  br label %57

55:                                               ; preds = %43, %39
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %55, %49
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @parse_keyword(%struct.archive_read*, %struct.mtree*, %struct.archive_entry*, %struct.mtree_option*, i32*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

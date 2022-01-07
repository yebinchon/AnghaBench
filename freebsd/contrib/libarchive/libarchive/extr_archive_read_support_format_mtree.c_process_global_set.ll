; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_process_global_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_process_global_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.mtree_option = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c" \09\0D\0A\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.mtree_option**, i8*)* @process_global_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_global_set(%struct.archive_read* %0, %struct.mtree_option** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read*, align 8
  %6 = alloca %struct.mtree_option**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %5, align 8
  store %struct.mtree_option** %1, %struct.mtree_option*** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 4
  store i8* %13, i8** %7, align 8
  br label %14

14:                                               ; preds = %70, %3
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @strspn(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %15, i64 %18
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %25, i32* %4, align 4
  br label %72

26:                                               ; preds = %14
  %27 = load i8*, i8** %8, align 8
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @strcspn(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i8* @strchr(i8* %33, i8 signext 61)
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ugt i8* %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %26
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  store i64 %43, i64* %10, align 8
  br label %50

44:                                               ; preds = %26
  %45 = load i8*, i8** %9, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %44, %38
  %51 = load %struct.mtree_option**, %struct.mtree_option*** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @remove_option(%struct.mtree_option** %51, i8* %52, i64 %53)
  %55 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %56 = load %struct.mtree_option**, %struct.mtree_option*** %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  %64 = call i32 @add_option(%struct.archive_read* %55, %struct.mtree_option** %56, i8* %57, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @ARCHIVE_OK, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %50
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %4, align 4
  br label %72

70:                                               ; preds = %50
  %71 = load i8*, i8** %8, align 8
  store i8* %71, i8** %7, align 8
  br label %14

72:                                               ; preds = %68, %24
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @remove_option(%struct.mtree_option**, i8*, i64) #1

declare dso_local i32 @add_option(%struct.archive_read*, %struct.mtree_option**, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

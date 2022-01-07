; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_process_global_unset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_process_global_unset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.mtree_option = type { i32 }

@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"/unset shall not contain `='\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" \09\0D\0A\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.mtree_option**, i8*)* @process_global_unset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_global_unset(%struct.archive_read* %0, %struct.mtree_option** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read*, align 8
  %6 = alloca %struct.mtree_option**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %5, align 8
  store %struct.mtree_option** %1, %struct.mtree_option*** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 6
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32* @strchr(i8* %12, i8 signext 61)
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %17 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %16, i32 0, i32 0
  %18 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %19 = call i32 @archive_set_error(i32* %17, i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %20, i32* %4, align 4
  br label %58

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %54, %21
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @strspn(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %33, i32* %4, align 4
  br label %58

34:                                               ; preds = %22
  %35 = load i8*, i8** %8, align 8
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i64 @strcspn(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp eq i64 %38, 3
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load i8*, i8** %7, align 8
  %42 = call i64 @strncmp(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.mtree_option**, %struct.mtree_option*** %6, align 8
  %46 = load %struct.mtree_option*, %struct.mtree_option** %45, align 8
  %47 = call i32 @free_options(%struct.mtree_option* %46)
  %48 = load %struct.mtree_option**, %struct.mtree_option*** %6, align 8
  store %struct.mtree_option* null, %struct.mtree_option** %48, align 8
  br label %54

49:                                               ; preds = %40, %34
  %50 = load %struct.mtree_option**, %struct.mtree_option*** %6, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @remove_option(%struct.mtree_option** %50, i8* %51, i64 %52)
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i64, i64* %9, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 %55
  store i8* %57, i8** %7, align 8
  br label %22

58:                                               ; preds = %32, %15
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @free_options(%struct.mtree_option*) #1

declare dso_local i32 @remove_option(%struct.mtree_option**, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

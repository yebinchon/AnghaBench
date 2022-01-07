; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_add_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_add_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.mtree_option = type { i8*, %struct.mtree_option* }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Can't allocate memory\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.mtree_option**, i8*, i64)* @add_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_option(%struct.archive_read* %0, %struct.mtree_option** %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca %struct.mtree_option**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mtree_option*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store %struct.mtree_option** %1, %struct.mtree_option*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = call i8* @malloc(i64 16)
  %12 = bitcast i8* %11 to %struct.mtree_option*
  store %struct.mtree_option* %12, %struct.mtree_option** %10, align 8
  %13 = icmp eq %struct.mtree_option* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %16 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %15, i32 0, i32 0
  %17 = load i32, i32* @errno, align 4
  %18 = call i32 @archive_set_error(i32* %16, i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %19, i32* %5, align 4
  br label %54

20:                                               ; preds = %4
  %21 = load i64, i64* %9, align 8
  %22 = add i64 %21, 1
  %23 = call i8* @malloc(i64 %22)
  %24 = load %struct.mtree_option*, %struct.mtree_option** %10, align 8
  %25 = getelementptr inbounds %struct.mtree_option, %struct.mtree_option* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = icmp eq i8* %23, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.mtree_option*, %struct.mtree_option** %10, align 8
  %29 = call i32 @free(%struct.mtree_option* %28)
  %30 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %31 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %30, i32 0, i32 0
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 @archive_set_error(i32* %31, i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %34, i32* %5, align 4
  br label %54

35:                                               ; preds = %20
  %36 = load %struct.mtree_option*, %struct.mtree_option** %10, align 8
  %37 = getelementptr inbounds %struct.mtree_option, %struct.mtree_option* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @memcpy(i8* %38, i8* %39, i64 %40)
  %42 = load %struct.mtree_option*, %struct.mtree_option** %10, align 8
  %43 = getelementptr inbounds %struct.mtree_option, %struct.mtree_option* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8 0, i8* %46, align 1
  %47 = load %struct.mtree_option**, %struct.mtree_option*** %7, align 8
  %48 = load %struct.mtree_option*, %struct.mtree_option** %47, align 8
  %49 = load %struct.mtree_option*, %struct.mtree_option** %10, align 8
  %50 = getelementptr inbounds %struct.mtree_option, %struct.mtree_option* %49, i32 0, i32 1
  store %struct.mtree_option* %48, %struct.mtree_option** %50, align 8
  %51 = load %struct.mtree_option*, %struct.mtree_option** %10, align 8
  %52 = load %struct.mtree_option**, %struct.mtree_option*** %7, align 8
  store %struct.mtree_option* %51, %struct.mtree_option** %52, align 8
  %53 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %35, %27, %14
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @free(%struct.mtree_option*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

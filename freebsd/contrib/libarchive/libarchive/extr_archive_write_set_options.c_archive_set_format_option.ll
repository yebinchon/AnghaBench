; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_options.c_archive_set_format_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_options.c_archive_set_format_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write = type { i32 (%struct.archive_write*, i8*, i8*)*, i32* }

@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, i8*, i8*, i8*)* @archive_set_format_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_set_format_option(%struct.archive* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.archive_write*, align 8
  store %struct.archive* %0, %struct.archive** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.archive*, %struct.archive** %6, align 8
  %12 = bitcast %struct.archive* %11 to %struct.archive_write*
  store %struct.archive_write* %12, %struct.archive_write** %10, align 8
  %13 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %14 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %4
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @ARCHIVE_FAILED, align 4
  br label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @ARCHIVE_WARN, align 4
  %24 = sub nsw i32 %23, 1
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi i32 [ %21, %20 ], [ %24, %22 ]
  store i32 %26, i32* %5, align 4
  br label %55

27:                                               ; preds = %4
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %33 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @strcmp(i8* %31, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @ARCHIVE_WARN, align 4
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %55

40:                                               ; preds = %30, %27
  %41 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %42 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %41, i32 0, i32 0
  %43 = load i32 (%struct.archive_write*, i8*, i8*)*, i32 (%struct.archive_write*, i8*, i8*)** %42, align 8
  %44 = icmp eq i32 (%struct.archive_write*, i8*, i8*)* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %46, i32* %5, align 4
  br label %55

47:                                               ; preds = %40
  %48 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %49 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %48, i32 0, i32 0
  %50 = load i32 (%struct.archive_write*, i8*, i8*)*, i32 (%struct.archive_write*, i8*, i8*)** %49, align 8
  %51 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 %50(%struct.archive_write* %51, i8* %52, i8* %53)
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %47, %45, %37, %25
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i64 @strcmp(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

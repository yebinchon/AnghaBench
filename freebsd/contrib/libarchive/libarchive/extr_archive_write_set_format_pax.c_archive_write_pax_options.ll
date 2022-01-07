; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_archive_write_pax_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_archive_write_pax_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, i64 }
%struct.pax = type { i32, i32* }

@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"hdrcharset\00", align 1
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"pax: hdrcharset option needs a character-set name\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"BINARY\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"pax: invalid charset name\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, i8*, i8*)* @archive_write_pax_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_pax_options(%struct.archive_write* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_write*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pax*, align 8
  %9 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %11 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.pax*
  store %struct.pax* %13, %struct.pax** %8, align 8
  %14 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %72

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21, %18
  %28 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %29 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %28, i32 0, i32 0
  %30 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %31 = call i32 @archive_set_error(i32* %29, i32 %30, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %70

32:                                               ; preds = %21
  %33 = load i8*, i8** %7, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36, %32
  %41 = load %struct.pax*, %struct.pax** %8, align 8
  %42 = getelementptr inbounds %struct.pax, %struct.pax* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %43, i32* %9, align 4
  br label %69

44:                                               ; preds = %36
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %50 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %49, i32 0, i32 0
  %51 = call i32* @archive_string_conversion_to_charset(i32* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %52 = load %struct.pax*, %struct.pax** %8, align 8
  %53 = getelementptr inbounds %struct.pax, %struct.pax* %52, i32 0, i32 1
  store i32* %51, i32** %53, align 8
  %54 = load %struct.pax*, %struct.pax** %8, align 8
  %55 = getelementptr inbounds %struct.pax, %struct.pax* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %59, i32* %9, align 4
  br label %62

60:                                               ; preds = %48
  %61 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %60, %58
  br label %68

63:                                               ; preds = %44
  %64 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %65 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %64, i32 0, i32 0
  %66 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %67 = call i32 @archive_set_error(i32* %65, i32 %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %68

68:                                               ; preds = %63, %62
  br label %69

69:                                               ; preds = %68, %40
  br label %70

70:                                               ; preds = %69, %27
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %4, align 4
  br label %74

72:                                               ; preds = %3
  %73 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32* @archive_string_conversion_to_charset(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

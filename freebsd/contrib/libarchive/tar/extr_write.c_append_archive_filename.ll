; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_write.c_append_archive_filename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_write.c_append_archive_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdtar = type { i32, i32, i32* }
%struct.archive = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"mtree:checkfs\00", align 1
@passphrase_callback = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Error reading archive %s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsdtar*, %struct.archive*, i8*)* @append_archive_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_archive_filename(%struct.bsdtar* %0, %struct.archive* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bsdtar*, align 8
  %6 = alloca %struct.archive*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.archive*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.bsdtar* %0, %struct.bsdtar** %5, align 8
  store %struct.archive* %1, %struct.archive** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i8* null, i8** %9, align 8
  br label %16

16:                                               ; preds = %15, %3
  %17 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %17, %struct.archive** %8, align 8
  %18 = load %struct.archive*, %struct.archive** %8, align 8
  %19 = call i32 @archive_read_support_format_all(%struct.archive* %18)
  %20 = load %struct.archive*, %struct.archive** %8, align 8
  %21 = call i32 @archive_read_support_filter_all(%struct.archive* %20)
  %22 = load %struct.bsdtar*, %struct.bsdtar** %5, align 8
  %23 = load %struct.archive*, %struct.archive** %8, align 8
  %24 = call i32 @set_reader_options(%struct.bsdtar* %22, %struct.archive* %23)
  %25 = load %struct.archive*, %struct.archive** %8, align 8
  %26 = call i32 @archive_read_set_options(%struct.archive* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.bsdtar*, %struct.bsdtar** %5, align 8
  %28 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %16
  %32 = load %struct.archive*, %struct.archive** %6, align 8
  %33 = load %struct.bsdtar*, %struct.bsdtar** %5, align 8
  %34 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @archive_read_add_passphrase(%struct.archive* %32, i32* %35)
  store i32 %36, i32* %10, align 4
  br label %41

37:                                               ; preds = %16
  %38 = load %struct.archive*, %struct.archive** %8, align 8
  %39 = load %struct.bsdtar*, %struct.bsdtar** %5, align 8
  %40 = call i32 @archive_read_set_passphrase_callback(%struct.archive* %38, %struct.bsdtar* %39, i32* @passphrase_callback)
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %37, %31
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @ARCHIVE_OK, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.archive*, %struct.archive** %6, align 8
  %47 = call i32 @archive_error_string(%struct.archive* %46)
  %48 = call i32 @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %45, %41
  %50 = load %struct.archive*, %struct.archive** %8, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load %struct.bsdtar*, %struct.bsdtar** %5, align 8
  %53 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @archive_read_open_filename(%struct.archive* %50, i8* %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %49
  %58 = load %struct.archive*, %struct.archive** %8, align 8
  %59 = call i32 @archive_error_string(%struct.archive* %58)
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 (i32, i8*, i8*, ...) @lafe_warnc(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %61)
  %63 = load %struct.bsdtar*, %struct.bsdtar** %5, align 8
  %64 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  store i32 0, i32* %4, align 4
  br label %84

65:                                               ; preds = %49
  %66 = load %struct.bsdtar*, %struct.bsdtar** %5, align 8
  %67 = load %struct.archive*, %struct.archive** %6, align 8
  %68 = load %struct.archive*, %struct.archive** %8, align 8
  %69 = call i32 @append_archive(%struct.bsdtar* %66, %struct.archive* %67, %struct.archive* %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @ARCHIVE_OK, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %65
  %74 = load i8*, i8** %7, align 8
  %75 = load %struct.archive*, %struct.archive** %8, align 8
  %76 = call i32 @archive_error_string(%struct.archive* %75)
  %77 = call i32 (i32, i8*, i8*, ...) @lafe_warnc(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %74, i32 %76)
  %78 = load %struct.bsdtar*, %struct.bsdtar** %5, align 8
  %79 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  br label %80

80:                                               ; preds = %73, %65
  %81 = load %struct.archive*, %struct.archive** %8, align 8
  %82 = call i32 @archive_read_free(%struct.archive* %81)
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %80, %57
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @set_reader_options(%struct.bsdtar*, %struct.archive*) #1

declare dso_local i32 @archive_read_set_options(%struct.archive*, i8*) #1

declare dso_local i32 @archive_read_add_passphrase(%struct.archive*, i32*) #1

declare dso_local i32 @archive_read_set_passphrase_callback(%struct.archive*, %struct.bsdtar*, i32*) #1

declare dso_local i32 @lafe_errc(i32, i32, i8*, i32) #1

declare dso_local i32 @archive_error_string(%struct.archive*) #1

declare dso_local i64 @archive_read_open_filename(%struct.archive*, i8*, i32) #1

declare dso_local i32 @lafe_warnc(i32, i8*, i8*, ...) #1

declare dso_local i32 @append_archive(%struct.bsdtar*, %struct.archive*, %struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_extract2.c_copy_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_extract2.c_copy_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read_extract = type { i32, i32 (i32)* }
%struct.archive_read = type { i32 }

@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, %struct.archive*)* @copy_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_data(%struct.archive* %0, %struct.archive* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive*, align 8
  %5 = alloca %struct.archive*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.archive_read_extract*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %4, align 8
  store %struct.archive* %1, %struct.archive** %5, align 8
  %11 = load %struct.archive*, %struct.archive** %4, align 8
  %12 = bitcast %struct.archive* %11 to %struct.archive_read*
  %13 = call %struct.archive_read_extract* @__archive_read_get_extract(%struct.archive_read* %12)
  store %struct.archive_read_extract* %13, %struct.archive_read_extract** %8, align 8
  %14 = load %struct.archive_read_extract*, %struct.archive_read_extract** %8, align 8
  %15 = icmp eq %struct.archive_read_extract* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %17, i32* %3, align 4
  br label %71

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %70, %18
  %20 = load %struct.archive*, %struct.archive** %4, align 8
  %21 = call i32 @archive_read_data_block(%struct.archive* %20, i8** %7, i64* %9, i32* %6)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @ARCHIVE_EOF, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %26, i32* %3, align 4
  br label %71

27:                                               ; preds = %19
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @ARCHIVE_OK, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %3, align 4
  br label %71

33:                                               ; preds = %27
  %34 = load %struct.archive*, %struct.archive** %5, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @archive_write_data_block(%struct.archive* %34, i8* %35, i64 %36, i32 %37)
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @ARCHIVE_WARN, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %43, %33
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @ARCHIVE_OK, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load %struct.archive*, %struct.archive** %4, align 8
  %51 = load %struct.archive*, %struct.archive** %5, align 8
  %52 = call i32 @archive_errno(%struct.archive* %51)
  %53 = load %struct.archive*, %struct.archive** %5, align 8
  %54 = call i32 @archive_error_string(%struct.archive* %53)
  %55 = call i32 @archive_set_error(%struct.archive* %50, i32 %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %3, align 4
  br label %71

57:                                               ; preds = %45
  %58 = load %struct.archive_read_extract*, %struct.archive_read_extract** %8, align 8
  %59 = getelementptr inbounds %struct.archive_read_extract, %struct.archive_read_extract* %58, i32 0, i32 1
  %60 = load i32 (i32)*, i32 (i32)** %59, align 8
  %61 = icmp ne i32 (i32)* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load %struct.archive_read_extract*, %struct.archive_read_extract** %8, align 8
  %64 = getelementptr inbounds %struct.archive_read_extract, %struct.archive_read_extract* %63, i32 0, i32 1
  %65 = load i32 (i32)*, i32 (i32)** %64, align 8
  %66 = load %struct.archive_read_extract*, %struct.archive_read_extract** %8, align 8
  %67 = getelementptr inbounds %struct.archive_read_extract, %struct.archive_read_extract* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 %65(i32 %68)
  br label %70

70:                                               ; preds = %62, %57
  br label %19

71:                                               ; preds = %49, %31, %25, %16
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.archive_read_extract* @__archive_read_get_extract(%struct.archive_read*) #1

declare dso_local i32 @archive_read_data_block(%struct.archive*, i8**, i64*, i32*) #1

declare dso_local i64 @archive_write_data_block(%struct.archive*, i8*, i64, i32) #1

declare dso_local i32 @archive_set_error(%struct.archive*, i32, i8*, i32) #1

declare dso_local i32 @archive_errno(%struct.archive*) #1

declare dso_local i32 @archive_error_string(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

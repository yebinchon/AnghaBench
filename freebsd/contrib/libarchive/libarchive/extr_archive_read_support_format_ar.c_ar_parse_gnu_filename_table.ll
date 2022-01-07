; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_ar.c_ar_parse_gnu_filename_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_ar.c_ar_parse_gnu_filename_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ar = type { i64, i8* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid string table\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @ar_parse_gnu_filename_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar_parse_gnu_filename_table(%struct.archive_read* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca %struct.ar*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  %7 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %8 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ar*
  store %struct.ar* %12, %struct.ar** %4, align 8
  %13 = load %struct.ar*, %struct.ar** %4, align 8
  %14 = getelementptr inbounds %struct.ar, %struct.ar* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load %struct.ar*, %struct.ar** %4, align 8
  %17 = getelementptr inbounds %struct.ar, %struct.ar* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %5, align 8
  br label %19

19:                                               ; preds = %44, %1
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.ar*, %struct.ar** %4, align 8
  %22 = getelementptr inbounds %struct.ar, %struct.ar* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = getelementptr inbounds i8, i8* %25, i64 -1
  %27 = icmp ult i8* %20, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %19
  %29 = load i8*, i8** %5, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 47
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %5, align 8
  store i8 0, i8* %34, align 1
  %36 = load i8*, i8** %5, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 10
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %74

41:                                               ; preds = %33
  %42 = load i8*, i8** %5, align 8
  store i8 0, i8* %42, align 1
  br label %43

43:                                               ; preds = %41, %28
  br label %44

44:                                               ; preds = %43
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %5, align 8
  br label %19

47:                                               ; preds = %19
  %48 = load i8*, i8** %5, align 8
  %49 = load %struct.ar*, %struct.ar** %4, align 8
  %50 = getelementptr inbounds %struct.ar, %struct.ar* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = icmp ne i8* %48, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %47
  %56 = load i8*, i8** %5, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 10
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i8*, i8** %5, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 96
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %74

66:                                               ; preds = %60, %55, %47
  %67 = load %struct.ar*, %struct.ar** %4, align 8
  %68 = getelementptr inbounds %struct.ar, %struct.ar* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = sub i64 %70, 1
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  store i8 0, i8* %72, align 1
  %73 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %73, i32* %2, align 4
  br label %86

74:                                               ; preds = %65, %40
  %75 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %76 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %75, i32 0, i32 0
  %77 = load i32, i32* @EINVAL, align 4
  %78 = call i32 @archive_set_error(i32* %76, i32 %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %79 = load %struct.ar*, %struct.ar** %4, align 8
  %80 = getelementptr inbounds %struct.ar, %struct.ar* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @free(i8* %81)
  %83 = load %struct.ar*, %struct.ar** %4, align 8
  %84 = getelementptr inbounds %struct.ar, %struct.ar* %83, i32 0, i32 1
  store i8* null, i8** %84, align 8
  %85 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %74, %66
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lha_skip_sfx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lha_skip_sfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }

@H_SIZE = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Couldn't find out LHa header\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @lha_skip_sfx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lha_skip_sfx(%struct.archive_read* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  store i32 4096, i32* %10, align 4
  br label %11

11:                                               ; preds = %62, %25, %1
  %12 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %13 = load i32, i32* %10, align 4
  %14 = call i8* @__archive_read_ahead(%struct.archive_read* %12, i32 %13, i32* %9)
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = load i32, i32* %10, align 4
  %19 = ashr i32 %18, 1
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @H_SIZE, align 4
  %22 = add nsw i32 %21, 3
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %71

25:                                               ; preds = %17
  br label %11

26:                                               ; preds = %11
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @H_SIZE, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %71

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8
  store i8* %32, i8** %5, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8* %36, i8** %6, align 8
  br label %37

37:                                               ; preds = %58, %31
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* @H_SIZE, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8*, i8** %6, align 8
  %43 = icmp ult i8* %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %37
  %45 = load i8*, i8** %5, align 8
  %46 = call i64 @lha_check_header_format(i8* %45)
  store i64 %46, i64* %7, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load i8*, i8** %5, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = ptrtoint i8* %49 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  store i64 %53, i64* %8, align 8
  %54 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @__archive_read_consume(%struct.archive_read* %54, i64 %55)
  %57 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %57, i32* %2, align 4
  br label %77

58:                                               ; preds = %44
  %59 = load i64, i64* %7, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 %59
  store i8* %61, i8** %5, align 8
  br label %37

62:                                               ; preds = %37
  %63 = load i8*, i8** %5, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  store i64 %67, i64* %8, align 8
  %68 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @__archive_read_consume(%struct.archive_read* %68, i64 %69)
  br label %11

71:                                               ; preds = %30, %24
  %72 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %73 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %72, i32 0, i32 0
  %74 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %75 = call i32 @archive_set_error(i32* %73, i32 %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %71, %48
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i64 @lha_check_header_format(i8*) #1

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i64) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

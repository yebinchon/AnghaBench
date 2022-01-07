; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_cab_skip_sfx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_cab_skip_sfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }

@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Couldn't find out CAB header\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @cab_skip_sfx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cab_skip_sfx(%struct.archive_read* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  store i32 4096, i32* %8, align 4
  br label %11

11:                                               ; preds = %59, %28, %1
  %12 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i8* @__archive_read_ahead(%struct.archive_read* %12, i32 %13, i32* %7)
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load i32, i32* %8, align 4
  %19 = ashr i32 %18, 1
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 128
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %24 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %23, i32 0, i32 0
  %25 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %26 = call i32 @archive_set_error(i32* %24, i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %27, i32* %2, align 4
  br label %68

28:                                               ; preds = %17
  br label %11

29:                                               ; preds = %11
  %30 = load i8*, i8** %9, align 8
  store i8* %30, i8** %4, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  store i8* %34, i8** %5, align 8
  br label %35

35:                                               ; preds = %54, %29
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 8
  %38 = load i8*, i8** %5, align 8
  %39 = icmp ult i8* %37, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %35
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @find_cab_magic(i8* %41)
  store i32 %42, i32* %10, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load i8*, i8** %4, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  store i64 %49, i64* %6, align 8
  %50 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @__archive_read_consume(%struct.archive_read* %50, i64 %51)
  %53 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %53, i32* %2, align 4
  br label %68

54:                                               ; preds = %40
  %55 = load i32, i32* %10, align 4
  %56 = load i8*, i8** %4, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %4, align 8
  br label %35

59:                                               ; preds = %35
  %60 = load i8*, i8** %4, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  store i64 %64, i64* %6, align 8
  %65 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @__archive_read_consume(%struct.archive_read* %65, i64 %66)
  br label %11

68:                                               ; preds = %44, %22
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @find_cab_magic(i8*) #1

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

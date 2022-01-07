; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cpio.c_find_newc_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cpio.c_find_newc_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }

@newc_header_size = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"07070\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Skipped %d bytes before finding valid header\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @find_newc_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_newc_header(%struct.archive_read* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %101, %1
  %11 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %12 = load i32, i32* @newc_header_size, align 4
  %13 = call i8* @__archive_read_ahead(%struct.archive_read* %11, i32 %12, i32* %9)
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %17, i32* %2, align 4
  br label %113

18:                                               ; preds = %10
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @memcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %24, i32 5)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %18
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 5
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 49
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 5
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 50
  br i1 %38, label %39, label %46

39:                                               ; preds = %33, %27
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* @newc_header_size, align 4
  %42 = call i64 @is_hex(i8* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %45, i32* %2, align 4
  br label %113

46:                                               ; preds = %39, %33, %18
  br label %47

47:                                               ; preds = %100, %46
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* @newc_header_size, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8*, i8** %6, align 8
  %53 = icmp ule i8* %51, %52
  br i1 %53, label %54, label %101

54:                                               ; preds = %47
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 5
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  switch i32 %58, label %97 [
    i32 49, label %59
    i32 50, label %59
    i32 48, label %94
  ]

59:                                               ; preds = %54, %54
  %60 = load i8*, i8** %5, align 8
  %61 = call i64 @memcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %60, i32 5)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %91

63:                                               ; preds = %59
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* @newc_header_size, align 4
  %66 = call i64 @is_hex(i8* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %63
  %69 = load i8*, i8** %5, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  store i64 %73, i64* %7, align 8
  %74 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @__archive_read_consume(%struct.archive_read* %74, i64 %75)
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %8, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %8, align 8
  %80 = load i64, i64* %8, align 8
  %81 = icmp ugt i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %68
  %83 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %84 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %83, i32 0, i32 0
  %85 = load i64, i64* %8, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i32 @archive_set_error(i32* %84, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %88, i32* %2, align 4
  br label %113

89:                                               ; preds = %68
  %90 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %90, i32* %2, align 4
  br label %113

91:                                               ; preds = %63, %59
  %92 = load i8*, i8** %5, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 2
  store i8* %93, i8** %5, align 8
  br label %100

94:                                               ; preds = %54
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %5, align 8
  br label %100

97:                                               ; preds = %54
  %98 = load i8*, i8** %5, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 6
  store i8* %99, i8** %5, align 8
  br label %100

100:                                              ; preds = %97, %94, %91
  br label %47

101:                                              ; preds = %47
  %102 = load i8*, i8** %5, align 8
  %103 = load i8*, i8** %4, align 8
  %104 = ptrtoint i8* %102 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  store i64 %106, i64* %7, align 8
  %107 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %108 = load i64, i64* %7, align 8
  %109 = call i32 @__archive_read_consume(%struct.archive_read* %107, i64 %108)
  %110 = load i64, i64* %7, align 8
  %111 = load i64, i64* %8, align 8
  %112 = add i64 %111, %110
  store i64 %112, i64* %8, align 8
  br label %10

113:                                              ; preds = %89, %82, %44, %16
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @is_hex(i8*, i32) #1

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i64) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

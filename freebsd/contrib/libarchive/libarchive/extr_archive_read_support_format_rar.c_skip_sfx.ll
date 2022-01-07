; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_skip_sfx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_skip_sfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }

@RAR_SIGNATURE = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Couldn't find out RAR header\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @skip_sfx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skip_sfx(%struct.archive_read* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  store i64 0, i64* %8, align 8
  store i64 4096, i64* %10, align 8
  br label %11

11:                                               ; preds = %61, %28, %1
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %10, align 8
  %14 = add i64 %12, %13
  %15 = icmp ule i64 %14, 131072
  br i1 %15, label %16, label %73

16:                                               ; preds = %11
  %17 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %18 = load i64, i64* %10, align 8
  %19 = call i8* @__archive_read_ahead(%struct.archive_read* %17, i64 %18, i64* %9)
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load i64, i64* %10, align 8
  %24 = lshr i64 %23, 1
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp ult i64 %25, 64
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %74

28:                                               ; preds = %22
  br label %11

29:                                               ; preds = %16
  %30 = load i64, i64* %9, align 8
  %31 = icmp ult i64 %30, 64
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %74

33:                                               ; preds = %29
  %34 = load i8*, i8** %4, align 8
  store i8* %34, i8** %5, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %6, align 8
  br label %38

38:                                               ; preds = %58, %33
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 7
  %41 = load i8*, i8** %6, align 8
  %42 = icmp ult i8* %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %38
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* @RAR_SIGNATURE, align 4
  %46 = call i64 @memcmp(i8* %44, i32 %45, i32 7)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load i8*, i8** %5, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = ptrtoint i8* %49 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  store i64 %53, i64* %7, align 8
  %54 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @__archive_read_consume(%struct.archive_read* %54, i64 %55)
  %57 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %57, i32* %2, align 4
  br label %80

58:                                               ; preds = %43
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 16
  store i8* %60, i8** %5, align 8
  br label %38

61:                                               ; preds = %38
  %62 = load i8*, i8** %5, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  store i64 %66, i64* %7, align 8
  %67 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @__archive_read_consume(%struct.archive_read* %67, i64 %68)
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %8, align 8
  br label %11

73:                                               ; preds = %11
  br label %74

74:                                               ; preds = %73, %32, %27
  %75 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %76 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %75, i32 0, i32 0
  %77 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %78 = call i32 @archive_set_error(i32* %76, i32 %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %74, %48
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i64, i64*) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i64) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

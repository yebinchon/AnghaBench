; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_ar.c_archive_write_ar_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_ar.c_archive_write_ar_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, i64 }
%struct.ar_w = type { i64, i64, i32, i8* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"More than one string tables exist\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Can't allocate strtab buffer\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, i8*, i64)* @archive_write_ar_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_ar_data(%struct.archive_write* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_write*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ar_w*, align 8
  %9 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %11 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ar_w*
  store %struct.ar_w* %13, %struct.ar_w** %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.ar_w*, %struct.ar_w** %8, align 8
  %16 = getelementptr inbounds %struct.ar_w, %struct.ar_w* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ugt i64 %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.ar_w*, %struct.ar_w** %8, align 8
  %21 = getelementptr inbounds %struct.ar_w, %struct.ar_w* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %19, %3
  %24 = load %struct.ar_w*, %struct.ar_w** %8, align 8
  %25 = getelementptr inbounds %struct.ar_w, %struct.ar_w* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %70

28:                                               ; preds = %23
  %29 = load %struct.ar_w*, %struct.ar_w** %8, align 8
  %30 = getelementptr inbounds %struct.ar_w, %struct.ar_w* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %35 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %34, i32 0, i32 0
  %36 = load i32, i32* @EINVAL, align 4
  %37 = call i32 @archive_set_error(i32* %35, i32 %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %38, i32* %4, align 4
  br label %88

39:                                               ; preds = %28
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, 1
  %42 = call i64 @malloc(i64 %41)
  %43 = inttoptr i64 %42 to i8*
  %44 = load %struct.ar_w*, %struct.ar_w** %8, align 8
  %45 = getelementptr inbounds %struct.ar_w, %struct.ar_w* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load %struct.ar_w*, %struct.ar_w** %8, align 8
  %47 = getelementptr inbounds %struct.ar_w, %struct.ar_w* %46, i32 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %39
  %51 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %52 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %51, i32 0, i32 0
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = call i32 @archive_set_error(i32* %52, i32 %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %55, i32* %4, align 4
  br label %88

56:                                               ; preds = %39
  %57 = load %struct.ar_w*, %struct.ar_w** %8, align 8
  %58 = getelementptr inbounds %struct.ar_w, %struct.ar_w* %57, i32 0, i32 3
  %59 = load i8*, i8** %58, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @memcpy(i8* %59, i8* %60, i64 %61)
  %63 = load %struct.ar_w*, %struct.ar_w** %8, align 8
  %64 = getelementptr inbounds %struct.ar_w, %struct.ar_w* %63, i32 0, i32 3
  %65 = load i8*, i8** %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8 0, i8* %67, align 1
  %68 = load %struct.ar_w*, %struct.ar_w** %8, align 8
  %69 = getelementptr inbounds %struct.ar_w, %struct.ar_w* %68, i32 0, i32 2
  store i32 1, i32* %69, align 8
  br label %70

70:                                               ; preds = %56, %23
  %71 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @__archive_write_output(%struct.archive_write* %71, i8* %72, i64 %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @ARCHIVE_OK, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %4, align 4
  br label %88

80:                                               ; preds = %70
  %81 = load i64, i64* %7, align 8
  %82 = load %struct.ar_w*, %struct.ar_w** %8, align 8
  %83 = getelementptr inbounds %struct.ar_w, %struct.ar_w* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sub i64 %84, %81
  store i64 %85, i64* %83, align 8
  %86 = load i64, i64* %7, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %80, %78, %50, %33
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @__archive_write_output(%struct.archive_write*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

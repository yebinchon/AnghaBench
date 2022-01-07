; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_wb_write_to_temp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_wb_write_to_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i64 }
%struct.iso9660 = type { i64 }

@LOGICAL_BLOCK_SIZE = common dso_local global i64 0, align 8
@ARCHIVE_OK = common dso_local global i64 0, align 8
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, i8*, i64)* @wb_write_to_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wb_write_to_temp(%struct.archive_write* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_write*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iso9660*, align 8
  %11 = alloca i64, align 8
  store %struct.archive_write* %0, %struct.archive_write** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i64, i64* %7, align 8
  store i64 %13, i64* %9, align 8
  %14 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %15 = call i64 @wb_remaining(%struct.archive_write* %14)
  %16 = call i64 (...) @wb_buffmax()
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %58

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = icmp ugt i64 %19, 16384
  br i1 %20, label %21, label %58

21:                                               ; preds = %18
  %22 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %23 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.iso9660*
  store %struct.iso9660* %25, %struct.iso9660** %10, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @LOGICAL_BLOCK_SIZE, align 8
  %28 = urem i64 %26, %27
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %9, align 8
  %31 = sub i64 %29, %30
  %32 = load %struct.iso9660*, %struct.iso9660** %10, align 8
  %33 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, %31
  store i64 %35, i64* %33, align 8
  %36 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %9, align 8
  %40 = sub i64 %38, %39
  %41 = call i64 @write_to_temp(%struct.archive_write* %36, i8* %37, i64 %40)
  %42 = load i64, i64* @ARCHIVE_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %21
  %45 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %45, i32* %4, align 4
  br label %94

46:                                               ; preds = %21
  %47 = load i64, i64* %9, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i64, i64* @ARCHIVE_OK, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %4, align 4
  br label %94

52:                                               ; preds = %46
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %9, align 8
  %55 = sub i64 %53, %54
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 %55
  store i8* %57, i8** %8, align 8
  br label %58

58:                                               ; preds = %52, %18, %3
  br label %59

59:                                               ; preds = %84, %58
  %60 = load i64, i64* %9, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %91

62:                                               ; preds = %59
  %63 = load i64, i64* %9, align 8
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %66 = call i64 @wb_remaining(%struct.archive_write* %65)
  %67 = icmp ugt i64 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %70 = call i64 @wb_remaining(%struct.archive_write* %69)
  store i64 %70, i64* %11, align 8
  br label %71

71:                                               ; preds = %68, %62
  %72 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %73 = call i32 @wb_buffptr(%struct.archive_write* %72)
  %74 = load i8*, i8** %8, align 8
  %75 = load i64, i64* %11, align 8
  %76 = call i32 @memcpy(i32 %73, i8* %74, i64 %75)
  %77 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %78 = load i64, i64* %11, align 8
  %79 = call i64 @wb_consume(%struct.archive_write* %77, i64 %78)
  %80 = load i64, i64* @ARCHIVE_OK, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %83, i32* %4, align 4
  br label %94

84:                                               ; preds = %71
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* %9, align 8
  %87 = sub i64 %86, %85
  store i64 %87, i64* %9, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 %88
  store i8* %90, i8** %8, align 8
  br label %59

91:                                               ; preds = %59
  %92 = load i64, i64* @ARCHIVE_OK, align 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %91, %82, %49, %44
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i64 @wb_remaining(%struct.archive_write*) #1

declare dso_local i64 @wb_buffmax(...) #1

declare dso_local i64 @write_to_temp(%struct.archive_write*, i8*, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @wb_buffptr(%struct.archive_write*) #1

declare dso_local i64 @wb_consume(%struct.archive_write*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cpio.c_is_afio_large.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cpio.c_is_afio_large.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@afiol_header_size = common dso_local global i64 0, align 8
@afiol_ino_m_offset = common dso_local global i64 0, align 8
@afiol_mtime_n_offset = common dso_local global i64 0, align 8
@afiol_xsize_s_offset = common dso_local global i64 0, align 8
@afiol_filesize_c_offset = common dso_local global i64 0, align 8
@afiol_dev_offset = common dso_local global i32 0, align 4
@afiol_mode_offset = common dso_local global i32 0, align 4
@afiol_namesize_offset = common dso_local global i32 0, align 4
@afiol_filesize_offset = common dso_local global i32 0, align 4
@afiol_filesize_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @is_afio_large to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_afio_large(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @afiol_header_size, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %88

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = load i64, i64* @afiol_ino_m_offset, align 8
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 109
  br i1 %16, label %38, label %17

17:                                               ; preds = %10
  %18 = load i8*, i8** %4, align 8
  %19 = load i64, i64* @afiol_mtime_n_offset, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 110
  br i1 %23, label %38, label %24

24:                                               ; preds = %17
  %25 = load i8*, i8** %4, align 8
  %26 = load i64, i64* @afiol_xsize_s_offset, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 115
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = load i8*, i8** %4, align 8
  %33 = load i64, i64* @afiol_filesize_c_offset, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 58
  br i1 %37, label %38, label %39

38:                                               ; preds = %31, %24, %17, %10
  store i32 0, i32* %3, align 4
  br label %88

39:                                               ; preds = %31
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* @afiol_dev_offset, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i64, i64* @afiol_ino_m_offset, align 8
  %45 = load i32, i32* @afiol_dev_offset, align 4
  %46 = sext i32 %45 to i64
  %47 = sub i64 %44, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @is_hex(i8* %43, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %88

52:                                               ; preds = %39
  %53 = load i8*, i8** %4, align 8
  %54 = load i32, i32* @afiol_mode_offset, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i64, i64* @afiol_mtime_n_offset, align 8
  %58 = load i32, i32* @afiol_mode_offset, align 4
  %59 = sext i32 %58 to i64
  %60 = sub i64 %57, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @is_hex(i8* %56, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %88

65:                                               ; preds = %52
  %66 = load i8*, i8** %4, align 8
  %67 = load i32, i32* @afiol_namesize_offset, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i64, i64* @afiol_xsize_s_offset, align 8
  %71 = load i32, i32* @afiol_namesize_offset, align 4
  %72 = sext i32 %71 to i64
  %73 = sub i64 %70, %72
  %74 = trunc i64 %73 to i32
  %75 = call i32 @is_hex(i8* %69, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %88

78:                                               ; preds = %65
  %79 = load i8*, i8** %4, align 8
  %80 = load i32, i32* @afiol_filesize_offset, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i32, i32* @afiol_filesize_size, align 4
  %84 = call i32 @is_hex(i8* %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %88

87:                                               ; preds = %78
  store i32 1, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %86, %77, %64, %51, %38, %9
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @is_hex(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

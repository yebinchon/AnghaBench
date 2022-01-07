; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_lzx_translation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_lzx_translation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzx_stream = type { %struct.lzx_dec* }
%struct.lzx_dec = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lzx_stream*, i8*, i64, i64)* @lzx_translation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lzx_translation(%struct.lzx_stream* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.lzx_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.lzx_dec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.lzx_stream* %0, %struct.lzx_stream** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load %struct.lzx_stream*, %struct.lzx_stream** %5, align 8
  %17 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %16, i32 0, i32 0
  %18 = load %struct.lzx_dec*, %struct.lzx_dec** %17, align 8
  store %struct.lzx_dec* %18, %struct.lzx_dec** %9, align 8
  %19 = load %struct.lzx_dec*, %struct.lzx_dec** %9, align 8
  %20 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i64, i64* %7, align 8
  %25 = icmp ule i64 %24, 10
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %4
  br label %92

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = getelementptr inbounds i8, i8* %31, i64 -10
  store i8* %32, i8** %11, align 8
  br label %33

33:                                               ; preds = %89, %27
  %34 = load i8*, i8** %10, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = icmp ult i8* %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i8*, i8** %10, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = trunc i64 %43 to i32
  %45 = call i8* @memchr(i8* %38, i32 232, i32 %44)
  store i8* %45, i8** %10, align 8
  %46 = icmp ne i8* %45, null
  br label %47

47:                                               ; preds = %37, %33
  %48 = phi i1 [ false, %33 ], [ %46, %37 ]
  br i1 %48, label %49, label %92

49:                                               ; preds = %47
  %50 = load i8*, i8** %10, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %12, align 8
  %57 = add nsw i64 %55, %56
  store i64 %57, i64* %13, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = call i64 @archive_le32dec(i8* %59)
  store i64 %60, i64* %15, align 8
  %61 = load i64, i64* %15, align 8
  %62 = load i64, i64* %13, align 8
  %63 = sub nsw i64 0, %62
  %64 = icmp sge i64 %61, %63
  br i1 %64, label %65, label %89

65:                                               ; preds = %49
  %66 = load i64, i64* %15, align 8
  %67 = load %struct.lzx_dec*, %struct.lzx_dec** %9, align 8
  %68 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %66, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %65
  %72 = load i64, i64* %15, align 8
  %73 = icmp sge i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i64, i64* %15, align 8
  %76 = load i64, i64* %13, align 8
  %77 = sub nsw i64 %75, %76
  store i64 %77, i64* %14, align 8
  br label %84

78:                                               ; preds = %71
  %79 = load i64, i64* %15, align 8
  %80 = load %struct.lzx_dec*, %struct.lzx_dec** %9, align 8
  %81 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %79, %82
  store i64 %83, i64* %14, align 8
  br label %84

84:                                               ; preds = %78, %74
  %85 = load i8*, i8** %10, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i64, i64* %14, align 8
  %88 = call i32 @archive_le32enc(i8* %86, i64 %87)
  br label %89

89:                                               ; preds = %84, %65, %49
  %90 = load i8*, i8** %10, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 5
  store i8* %91, i8** %10, align 8
  br label %33

92:                                               ; preds = %26, %47
  ret void
}

declare dso_local i8* @memchr(i8*, i32, i32) #1

declare dso_local i64 @archive_le32dec(i8*) #1

declare dso_local i32 @archive_le32enc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

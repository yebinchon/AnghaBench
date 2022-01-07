; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_warc.c__warc_rdlen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_warc.c__warc_rdlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_warc_rdlen._key = internal constant [18 x i8] c"\0D\0AContent-Length:\00", align 16
@errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @_warc_rdlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_warc_rdlen(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* null, i8** %8, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i8* @xmemmem(i8* %10, i64 %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @_warc_rdlen._key, i64 0, i64 0), i32 17)
  store i8* %12, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %71

15:                                               ; preds = %2
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 17
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8*, i8** %6, align 8
  %23 = ptrtoint i8* %21 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  %26 = trunc i64 %25 to i32
  %27 = call i8* @_warc_find_eol(i8* %18, i32 %26)
  store i8* %27, i8** %7, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %71

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %49, %30
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ult i8* %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load i8*, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 32
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load i8*, i8** %6, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 9
  br label %45

45:                                               ; preds = %40, %35
  %46 = phi i1 [ true, %35 ], [ %44, %40 ]
  br label %47

47:                                               ; preds = %45, %31
  %48 = phi i1 [ false, %31 ], [ %46, %45 ]
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %6, align 8
  br label %31

52:                                               ; preds = %47
  %53 = load i8*, i8** %6, align 8
  %54 = load i8, i8* %53, align 1
  %55 = call i32 @isdigit(i8 zeroext %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  store i32 -1, i32* %3, align 4
  br label %71

58:                                               ; preds = %52
  store i64 0, i64* @errno, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i64 @strtol(i8* %59, i8** %8, i32 10)
  store i64 %60, i64* %9, align 8
  %61 = load i64, i64* @errno, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = load i8*, i8** %8, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = icmp ne i8* %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %58
  store i32 -1, i32* %3, align 4
  br label %71

68:                                               ; preds = %63
  %69 = load i64, i64* %9, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %68, %67, %57, %29, %14
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i8* @xmemmem(i8*, i64, i8*, i32) #1

declare dso_local i8* @_warc_find_eol(i8*, i32) #1

declare dso_local i32 @isdigit(i8 zeroext) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

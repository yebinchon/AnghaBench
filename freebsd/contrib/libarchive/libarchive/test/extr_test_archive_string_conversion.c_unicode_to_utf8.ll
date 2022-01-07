; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_string_conversion.c_unicode_to_utf8.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_string_conversion.c_unicode_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @unicode_to_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unicode_to_utf8(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp sle i32 %7, 127
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = trunc i32 %10 to i8
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %3, align 8
  store i8 %11, i8* %12, align 1
  br label %85

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp sle i32 %15, 2047
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = ashr i32 %18, 6
  %20 = and i32 %19, 31
  %21 = or i32 192, %20
  %22 = trunc i32 %21 to i8
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %3, align 8
  store i8 %22, i8* %23, align 1
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 63
  %27 = or i32 128, %26
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %3, align 8
  store i8 %28, i8* %29, align 1
  br label %84

31:                                               ; preds = %14
  %32 = load i32, i32* %4, align 4
  %33 = icmp sle i32 %32, 65535
  br i1 %33, label %34, label %55

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = ashr i32 %35, 12
  %37 = and i32 %36, 15
  %38 = or i32 224, %37
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %3, align 8
  store i8 %39, i8* %40, align 1
  %42 = load i32, i32* %4, align 4
  %43 = ashr i32 %42, 6
  %44 = and i32 %43, 63
  %45 = or i32 128, %44
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %3, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %3, align 8
  store i8 %46, i8* %47, align 1
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, 63
  %51 = or i32 128, %50
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %3, align 8
  store i8 %52, i8* %53, align 1
  br label %83

55:                                               ; preds = %31
  %56 = load i32, i32* %4, align 4
  %57 = ashr i32 %56, 18
  %58 = and i32 %57, 7
  %59 = or i32 240, %58
  %60 = trunc i32 %59 to i8
  %61 = load i8*, i8** %3, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %3, align 8
  store i8 %60, i8* %61, align 1
  %63 = load i32, i32* %4, align 4
  %64 = ashr i32 %63, 12
  %65 = and i32 %64, 63
  %66 = or i32 128, %65
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %3, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %3, align 8
  store i8 %67, i8* %68, align 1
  %70 = load i32, i32* %4, align 4
  %71 = ashr i32 %70, 6
  %72 = and i32 %71, 63
  %73 = or i32 128, %72
  %74 = trunc i32 %73 to i8
  %75 = load i8*, i8** %3, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %3, align 8
  store i8 %74, i8* %75, align 1
  %77 = load i32, i32* %4, align 4
  %78 = and i32 %77, 63
  %79 = or i32 128, %78
  %80 = trunc i32 %79 to i8
  %81 = load i8*, i8** %3, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %3, align 8
  store i8 %80, i8* %81, align 1
  br label %83

83:                                               ; preds = %55, %34
  br label %84

84:                                               ; preds = %83, %17
  br label %85

85:                                               ; preds = %84, %9
  %86 = load i8*, i8** %3, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = ptrtoint i8* %86 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = trunc i64 %90 to i32
  ret i32 %91
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

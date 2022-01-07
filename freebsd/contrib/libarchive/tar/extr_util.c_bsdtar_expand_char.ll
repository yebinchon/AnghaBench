; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_util.c_bsdtar_expand_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_util.c_bsdtar_expand_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%03o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8)* @bsdtar_expand_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bsdtar_expand_char(i8* %0, i64 %1, i8 signext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8 %2, i8* %6, align 1
  %8 = load i64, i64* %5, align 8
  store i64 %8, i64* %7, align 8
  %9 = load i8, i8* %6, align 1
  %10 = call i64 @isprint(i8 zeroext %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load i8, i8* %6, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 92
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load i8, i8* %6, align 1
  %18 = load i8*, i8** %4, align 8
  %19 = load i64, i64* %7, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %7, align 8
  %21 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8 %17, i8* %21, align 1
  br label %80

22:                                               ; preds = %12, %3
  %23 = load i8*, i8** %4, align 8
  %24 = load i64, i64* %7, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %7, align 8
  %26 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8 92, i8* %26, align 1
  %27 = load i8, i8* %6, align 1
  %28 = sext i8 %27 to i32
  switch i32 %28, label %69 [
    i32 7, label %29
    i32 8, label %34
    i32 12, label %39
    i32 10, label %44
    i32 13, label %49
    i32 9, label %54
    i32 11, label %59
    i32 92, label %64
  ]

29:                                               ; preds = %22
  %30 = load i8*, i8** %4, align 8
  %31 = load i64, i64* %7, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %7, align 8
  %33 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8 97, i8* %33, align 1
  br label %79

34:                                               ; preds = %22
  %35 = load i8*, i8** %4, align 8
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %7, align 8
  %38 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8 98, i8* %38, align 1
  br label %79

39:                                               ; preds = %22
  %40 = load i8*, i8** %4, align 8
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %7, align 8
  %43 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8 102, i8* %43, align 1
  br label %79

44:                                               ; preds = %22
  %45 = load i8*, i8** %4, align 8
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %7, align 8
  %48 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8 110, i8* %48, align 1
  br label %79

49:                                               ; preds = %22
  %50 = load i8*, i8** %4, align 8
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %7, align 8
  %53 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8 114, i8* %53, align 1
  br label %79

54:                                               ; preds = %22
  %55 = load i8*, i8** %4, align 8
  %56 = load i64, i64* %7, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %7, align 8
  %58 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8 116, i8* %58, align 1
  br label %79

59:                                               ; preds = %22
  %60 = load i8*, i8** %4, align 8
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %7, align 8
  %63 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8 118, i8* %63, align 1
  br label %79

64:                                               ; preds = %22
  %65 = load i8*, i8** %4, align 8
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %7, align 8
  %68 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8 92, i8* %68, align 1
  br label %79

69:                                               ; preds = %22
  %70 = load i8*, i8** %4, align 8
  %71 = load i64, i64* %7, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load i8, i8* %6, align 1
  %74 = sext i8 %73 to i32
  %75 = and i32 255, %74
  %76 = call i32 @sprintf(i8* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i64, i64* %7, align 8
  %78 = add i64 %77, 3
  store i64 %78, i64* %7, align 8
  br label %79

79:                                               ; preds = %69, %64, %59, %54, %49, %44, %39, %34, %29
  br label %80

80:                                               ; preds = %79, %16
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* %5, align 8
  %83 = sub i64 %81, %82
  ret i64 %83
}

declare dso_local i64 @isprint(i8 zeroext) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

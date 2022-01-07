; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libugidfw/extr_ugidfw.c_bsde_parse_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libugidfw/extr_ugidfw.c_bsde_parse_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBO_TYPE_REG = common dso_local global i32 0, align 4
@MBO_TYPE_DIR = common dso_local global i32 0, align 4
@MBO_TYPE_BLK = common dso_local global i32 0, align 4
@MBO_TYPE_CHR = common dso_local global i32 0, align 4
@MBO_TYPE_LNK = common dso_local global i32 0, align 4
@MBO_TYPE_SOCK = common dso_local global i32 0, align 4
@MBO_TYPE_FIFO = common dso_local global i32 0, align 4
@MBO_ALL_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unknown type code: %c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i64, i8*)* @bsde_parse_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsde_parse_type(i8* %0, i32* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i32*, i32** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %74, %4
  %13 = load i32, i32* %10, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %77

17:                                               ; preds = %12
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  switch i32 %23, label %64 [
    i32 114, label %24
    i32 45, label %24
    i32 100, label %29
    i32 98, label %34
    i32 99, label %39
    i32 108, label %44
    i32 115, label %49
    i32 112, label %54
    i32 97, label %59
  ]

24:                                               ; preds = %17, %17
  %25 = load i32, i32* @MBO_TYPE_REG, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %25
  store i32 %28, i32* %26, align 4
  br label %73

29:                                               ; preds = %17
  %30 = load i32, i32* @MBO_TYPE_DIR, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %30
  store i32 %33, i32* %31, align 4
  br label %73

34:                                               ; preds = %17
  %35 = load i32, i32* @MBO_TYPE_BLK, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  br label %73

39:                                               ; preds = %17
  %40 = load i32, i32* @MBO_TYPE_CHR, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 4
  br label %73

44:                                               ; preds = %17
  %45 = load i32, i32* @MBO_TYPE_LNK, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 4
  br label %73

49:                                               ; preds = %17
  %50 = load i32, i32* @MBO_TYPE_SOCK, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 4
  br label %73

54:                                               ; preds = %17
  %55 = load i32, i32* @MBO_TYPE_FIFO, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %73

59:                                               ; preds = %17
  %60 = load i32, i32* @MBO_ALL_TYPE, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 4
  br label %73

64:                                               ; preds = %17
  %65 = load i8*, i8** %9, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = call i32 @snprintf(i8* %65, i64 %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8 signext %71)
  store i32 -1, i32* %5, align 4
  br label %78

73:                                               ; preds = %59, %54, %49, %44, %39, %34, %29, %24
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %12

77:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %64
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lha_crc16_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lha_crc16_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lha_crc16_init.crc16init = internal global i32 0, align 4
@crc16tbl = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @lha_crc16_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lha_crc16_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @lha_crc16_init.crc16init, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %74

7:                                                ; preds = %0
  store i32 1, i32* @lha_crc16_init.crc16init, align 4
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %34, %7
  %9 = load i32, i32* %1, align 4
  %10 = icmp ult i32 %9, 256
  br i1 %10, label %11, label %37

11:                                               ; preds = %8
  %12 = load i32, i32* %1, align 4
  store i32 %12, i32* %3, align 4
  store i32 8, i32* %2, align 4
  br label %13

13:                                               ; preds = %23, %11
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = ashr i32 %17, 1
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 1
  %21 = mul nsw i32 %20, 40961
  %22 = xor i32 %18, %21
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %2, align 4
  %25 = add i32 %24, -1
  store i32 %25, i32* %2, align 4
  br label %13

26:                                               ; preds = %13
  %27 = load i32, i32* %3, align 4
  %28 = load i32**, i32*** @crc16tbl, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %1, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %27, i32* %33, align 4
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %1, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %1, align 4
  br label %8

37:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %71, %37
  %39 = load i32, i32* %1, align 4
  %40 = icmp ult i32 %39, 256
  br i1 %40, label %41, label %74

41:                                               ; preds = %38
  %42 = load i32**, i32*** @crc16tbl, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %1, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 8
  %50 = load i32**, i32*** @crc16tbl, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32**, i32*** @crc16tbl, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %1, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 255
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %52, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = xor i32 %49, %63
  %65 = load i32**, i32*** @crc16tbl, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %1, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %64, i32* %70, align 4
  br label %71

71:                                               ; preds = %41
  %72 = load i32, i32* %1, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %1, align 4
  br label %38

74:                                               ; preds = %6, %38
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

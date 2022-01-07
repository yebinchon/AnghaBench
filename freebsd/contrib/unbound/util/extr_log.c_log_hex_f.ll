; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_log.c_log_hex_f.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_log.c_log_hex_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s[%u]\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s[%u:%u] %.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i64)* @log_hex_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_hex_f(i32 %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [1025 x i8], align 16
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %11, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  store i64 512, i64* %14, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load i32, i32* %5, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %8, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 (i32, i8*, i8*, i32, ...) @verbose(i32 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %22, i32 %24)
  br label %96

26:                                               ; preds = %4
  store i64 0, i64* %9, align 8
  br label %27

27:                                               ; preds = %93, %26
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %96

31:                                               ; preds = %27
  store i64 256, i64* %15, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = sub i64 %32, %33
  %35 = icmp ult i64 %34, 256
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = sub i64 %37, %38
  store i64 %39, i64* %15, align 8
  br label %40

40:                                               ; preds = %36, %31
  store i64 0, i64* %10, align 8
  br label %41

41:                                               ; preds = %75, %40
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %15, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %78

45:                                               ; preds = %41
  %46 = load i8*, i8** %12, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %10, align 8
  %50 = add i64 %48, %49
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %46, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = load i64, i64* %10, align 8
  %58 = mul i64 %57, 2
  %59 = getelementptr inbounds [1025 x i8], [1025 x i8]* %13, i64 0, i64 %58
  store i8 %56, i8* %59, align 1
  %60 = load i8*, i8** %12, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = add i64 %62, %63
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 15
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %60, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = load i64, i64* %10, align 8
  %72 = mul i64 %71, 2
  %73 = add i64 %72, 1
  %74 = getelementptr inbounds [1025 x i8], [1025 x i8]* %13, i64 0, i64 %73
  store i8 %70, i8* %74, align 1
  br label %75

75:                                               ; preds = %45
  %76 = load i64, i64* %10, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %10, align 8
  br label %41

78:                                               ; preds = %41
  %79 = load i64, i64* %15, align 8
  %80 = mul i64 %79, 2
  %81 = getelementptr inbounds [1025 x i8], [1025 x i8]* %13, i64 0, i64 %80
  store i8 0, i8* %81, align 1
  %82 = load i32, i32* %5, align 4
  %83 = load i8*, i8** %6, align 8
  %84 = load i64, i64* %8, align 8
  %85 = trunc i64 %84 to i32
  %86 = load i64, i64* %9, align 8
  %87 = trunc i64 %86 to i32
  %88 = load i64, i64* %15, align 8
  %89 = trunc i64 %88 to i32
  %90 = mul nsw i32 %89, 2
  %91 = getelementptr inbounds [1025 x i8], [1025 x i8]* %13, i64 0, i64 0
  %92 = call i32 (i32, i8*, i8*, i32, ...) @verbose(i32 %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %83, i32 %85, i32 %87, i32 %90, i8* %91)
  br label %93

93:                                               ; preds = %78
  %94 = load i64, i64* %9, align 8
  %95 = add i64 %94, 256
  store i64 %95, i64* %9, align 8
  br label %27

96:                                               ; preds = %20, %27
  ret void
}

declare dso_local i32 @verbose(i32, i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

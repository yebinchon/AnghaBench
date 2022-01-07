; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lmem.c_luaM_growaux_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lmem.c_luaM_growaux_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"too many %s (limit is %d)\00", align 1
@MINSIZEARRAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @luaM_growaux_(i32* %0, i8* %1, i32* %2, i64 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %11, align 4
  %18 = sdiv i32 %17, 2
  %19 = icmp sge i32 %16, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %6
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32*, i32** %7, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @luaG_runerror(i32* %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %14, align 4
  br label %42

32:                                               ; preds = %6
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, 2
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @MINSIZEARRAY, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @MINSIZEARRAY, align 4
  store i32 %40, i32* %14, align 4
  br label %41

41:                                               ; preds = %39, %32
  br label %42

42:                                               ; preds = %41, %30
  %43 = load i32*, i32** %7, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i64, i64* %10, align 8
  %49 = call i8* @luaM_reallocv(i32* %43, i8* %44, i32 %46, i32 %47, i64 %48)
  store i8* %49, i8** %13, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i8*, i8** %13, align 8
  ret i8* %52
}

declare dso_local i32 @luaG_runerror(i32*, i8*, i8*, i32) #1

declare dso_local i8* @luaM_reallocv(i32*, i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

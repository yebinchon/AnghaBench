; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_pmon_makeb64.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_pmon_makeb64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gdb_stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Fast encoding bitcount must be a multiple of 12bits: %dbit%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"Fast encoding cannot process more than 36bits at the moment: %dbits\0A\00", align 1
@encoding = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32, i32*)* @pmon_makeb64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmon_makeb64(i64 %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* %8, align 4
  %12 = sdiv i32 %11, 6
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = srem i32 %13, 12
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load i32, i32* @gdb_stderr, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 1
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %23 = call i32 (i32, i8*, i32, ...) @fprintf_unfiltered(i32 %17, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %18, i8* %22)
  store i32 0, i32* %5, align 4
  br label %84

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = icmp sgt i32 %25, 36
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* @gdb_stderr, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 (i32, i8*, i32, ...) @fprintf_unfiltered(i32 %28, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  store i32 0, i32* %5, align 4
  br label %84

31:                                               ; preds = %24
  %32 = load i32*, i32** %9, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %64

34:                                               ; preds = %31
  %35 = load i32, i32* %8, align 4
  switch i32 %35, label %63 [
    i32 36, label %36
    i32 24, label %45
    i32 12, label %54
  ]

36:                                               ; preds = %34
  %37 = load i64, i64* %6, align 8
  %38 = lshr i64 %37, 24
  %39 = and i64 %38, 4095
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 %42, %39
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  br label %45

45:                                               ; preds = %34, %36
  %46 = load i64, i64* %6, align 8
  %47 = lshr i64 %46, 12
  %48 = and i64 %47, 4095
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %51, %48
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 4
  br label %54

54:                                               ; preds = %34, %45
  %55 = load i64, i64* %6, align 8
  %56 = lshr i64 %55, 0
  %57 = and i64 %56, 4095
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, %57
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  br label %63

63:                                               ; preds = %54, %34
  br label %64

64:                                               ; preds = %63, %31
  br label %65

65:                                               ; preds = %79, %64
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 %66, 6
  store i32 %67, i32* %8, align 4
  %68 = load i32*, i32** @encoding, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load i32, i32* %8, align 4
  %71 = zext i32 %70 to i64
  %72 = lshr i64 %69, %71
  %73 = and i64 %72, 63
  %74 = getelementptr inbounds i32, i32* %68, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %7, align 8
  store i8 %76, i8* %77, align 1
  br label %79

79:                                               ; preds = %65
  %80 = load i32, i32* %8, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %65, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %82, %27, %16
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

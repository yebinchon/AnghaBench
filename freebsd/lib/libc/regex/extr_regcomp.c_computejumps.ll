; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_regcomp.c_computejumps.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_regcomp.c_computejumps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i64 }
%struct.re_guts = type { i32*, i32, i64* }

@NC_MAX = common dso_local global i32 0, align 4
@CHAR_MIN = common dso_local global i64 0, align 8
@CHAR_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, %struct.re_guts*)* @computejumps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @computejumps(%struct.parse* %0, %struct.re_guts* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca %struct.re_guts*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %3, align 8
  store %struct.re_guts* %1, %struct.re_guts** %4, align 8
  %7 = load %struct.parse*, %struct.parse** %3, align 8
  %8 = getelementptr inbounds %struct.parse, %struct.parse* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %86

12:                                               ; preds = %2
  %13 = load i32, i32* @NC_MAX, align 4
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = call i64 @malloc(i32 %17)
  %19 = inttoptr i64 %18 to i32*
  %20 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %21 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  %22 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %23 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %12
  br label %86

27:                                               ; preds = %12
  %28 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %29 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @CHAR_MIN, align 8
  %32 = sub i64 0, %31
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %35 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %34, i32 0, i32 0
  store i32* %33, i32** %35, align 8
  %36 = load i64, i64* @CHAR_MIN, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %53, %27
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @CHAR_MAX, align 4
  %41 = add nsw i32 %40, 1
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %45 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %48 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %46, i32* %52, align 4
  br label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %38

56:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %83, %56
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %60 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %57
  %64 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %65 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sub nsw i32 %66, %67
  %69 = sub nsw i32 %68, 1
  %70 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %71 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %74 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %73, i32 0, i32 2
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %72, i64 %81
  store i32 %69, i32* %82, align 4
  br label %83

83:                                               ; preds = %63
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %57

86:                                               ; preds = %11, %26, %57
  ret void
}

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

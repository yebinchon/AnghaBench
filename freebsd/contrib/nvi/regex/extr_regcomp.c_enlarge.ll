; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_enlarge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_enlarge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i64, i32*, i32* }

@MEMLIMIT = common dso_local global i64 0, align 8
@REG_ESPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse*, i64)* @enlarge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enlarge(%struct.parse* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.parse*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.parse* %0, %struct.parse** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.parse*, %struct.parse** %4, align 8
  %10 = getelementptr inbounds %struct.parse, %struct.parse* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %68

15:                                               ; preds = %2
  %16 = load %struct.parse*, %struct.parse** %4, align 8
  %17 = getelementptr inbounds %struct.parse, %struct.parse* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.parse*, %struct.parse** %4, align 8
  %21 = getelementptr inbounds %struct.parse, %struct.parse* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.parse*, %struct.parse** %4, align 8
  %23 = call i64 @MEMSIZE(%struct.parse* %22)
  %24 = load i64, i64* @MEMLIMIT, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %58

27:                                               ; preds = %15
  %28 = load %struct.parse*, %struct.parse** %4, align 8
  %29 = getelementptr inbounds %struct.parse, %struct.parse* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.parse*, %struct.parse** %4, align 8
  %32 = getelementptr inbounds %struct.parse, %struct.parse* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = call i8* @realloc(i32* %30, i32 %35)
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** %6, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %58

41:                                               ; preds = %27
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.parse*, %struct.parse** %4, align 8
  %44 = getelementptr inbounds %struct.parse, %struct.parse* %43, i32 0, i32 2
  store i32* %42, i32** %44, align 8
  %45 = load %struct.parse*, %struct.parse** %4, align 8
  %46 = getelementptr inbounds %struct.parse, %struct.parse* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.parse*, %struct.parse** %4, align 8
  %49 = getelementptr inbounds %struct.parse, %struct.parse* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = mul i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = call i8* @realloc(i32* %47, i32 %52)
  %54 = bitcast i8* %53 to i32*
  store i32* %54, i32** %7, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %57, %40, %26
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.parse*, %struct.parse** %4, align 8
  %61 = getelementptr inbounds %struct.parse, %struct.parse* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* @REG_ESPACE, align 4
  %63 = call i32 @SETERROR(i32 %62)
  store i32 0, i32* %3, align 4
  br label %68

64:                                               ; preds = %41
  %65 = load i32*, i32** %7, align 8
  %66 = load %struct.parse*, %struct.parse** %4, align 8
  %67 = getelementptr inbounds %struct.parse, %struct.parse* %66, i32 0, i32 1
  store i32* %65, i32** %67, align 8
  store i32 1, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %58, %14
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @MEMSIZE(%struct.parse*) #1

declare dso_local i8* @realloc(i32*, i32) #1

declare dso_local i32 @SETERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_printf-pos.c___grow_type_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_printf-pos.c___grow_type_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typetable = type { i32*, i32, i32 }

@NL_ARGMAX = common dso_local global i32 0, align 4
@STATIC_ARG_TBL_SIZE = common dso_local global i32 0, align 4
@T_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.typetable*)* @__grow_type_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__grow_type_table(%struct.typetable* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.typetable*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.typetable* %0, %struct.typetable** %3, align 8
  %9 = load %struct.typetable*, %struct.typetable** %3, align 8
  %10 = getelementptr inbounds %struct.typetable, %struct.typetable* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %4, align 8
  %12 = load %struct.typetable*, %struct.typetable** %3, align 8
  %13 = getelementptr inbounds %struct.typetable, %struct.typetable* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.typetable*, %struct.typetable** %3, align 8
  %16 = getelementptr inbounds %struct.typetable, %struct.typetable* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NL_ARGMAX, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %85

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = mul nsw i32 %22, 2
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.typetable*, %struct.typetable** %3, align 8
  %26 = getelementptr inbounds %struct.typetable, %struct.typetable* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load %struct.typetable*, %struct.typetable** %3, align 8
  %32 = getelementptr inbounds %struct.typetable, %struct.typetable* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %30, %21
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @STATIC_ARG_TBL_SIZE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = call i32* @malloc(i32 %43)
  store i32* %44, i32** %6, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 -1, i32* %2, align 4
  br label %85

47:                                               ; preds = %39
  %48 = load i32*, i32** %4, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = call i32 @bcopy(i32* %48, i32* %49, i32 %53)
  br label %63

55:                                               ; preds = %35
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32* @reallocarray(i32* %56, i32 %57, i32 4)
  store i32* %58, i32** %6, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 -1, i32* %2, align 4
  br label %85

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %47
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %75, %63
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load i32, i32* @T_UNUSED, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %70, i32* %74, align 4
  br label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %65

78:                                               ; preds = %65
  %79 = load i32*, i32** %6, align 8
  %80 = load %struct.typetable*, %struct.typetable** %3, align 8
  %81 = getelementptr inbounds %struct.typetable, %struct.typetable* %80, i32 0, i32 0
  store i32* %79, i32** %81, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.typetable*, %struct.typetable** %3, align 8
  %84 = getelementptr inbounds %struct.typetable, %struct.typetable* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %78, %61, %46, %20
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32* @reallocarray(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

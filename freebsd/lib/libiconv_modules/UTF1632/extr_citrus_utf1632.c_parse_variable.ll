; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/UTF1632/extr_citrus_utf1632.c_parse_variable.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/UTF1632/extr_citrus_utf1632.c_parse_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@big = common dso_local global i32 0, align 4
@_ENDIAN_BIG = common dso_local global i32 0, align 4
@little = common dso_local global i32 0, align 4
@_ENDIAN_LITTLE = common dso_local global i32 0, align 4
@internal = common dso_local global i32 0, align 4
@_ENDIAN_INTERNAL = common dso_local global i32 0, align 4
@swapped = common dso_local global i32 0, align 4
@_ENDIAN_SWAPPED = common dso_local global i32 0, align 4
@force = common dso_local global i32 0, align 4
@_MODE_FORCE_ENDIAN = common dso_local global i32 0, align 4
@utf32 = common dso_local global i32 0, align 4
@_MODE_UTF32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i64)* @parse_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_variable(%struct.TYPE_3__* noalias %0, i8* noalias %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %5, align 8
  store i8* %8, i8** %7, align 8
  br label %9

9:                                                ; preds = %56, %3
  %10 = load i64, i64* %6, align 8
  %11 = icmp ugt i64 %10, 0
  br i1 %11, label %12, label %61

12:                                               ; preds = %9
  %13 = load i8*, i8** %7, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  switch i32 %15, label %56 [
    i32 66, label %16
    i32 98, label %16
    i32 76, label %22
    i32 108, label %22
    i32 105, label %28
    i32 73, label %28
    i32 115, label %34
    i32 83, label %34
    i32 70, label %40
    i32 102, label %40
    i32 85, label %48
    i32 117, label %48
  ]

16:                                               ; preds = %12, %12
  %17 = load i32, i32* @big, align 4
  %18 = load i32, i32* @_ENDIAN_BIG, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = call i32 @MATCH(i32 %17, i32 %18)
  br label %56

22:                                               ; preds = %12, %12
  %23 = load i32, i32* @little, align 4
  %24 = load i32, i32* @_ENDIAN_LITTLE, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = call i32 @MATCH(i32 %23, i32 %24)
  br label %56

28:                                               ; preds = %12, %12
  %29 = load i32, i32* @internal, align 4
  %30 = load i32, i32* @_ENDIAN_INTERNAL, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = call i32 @MATCH(i32 %29, i32 %30)
  br label %56

34:                                               ; preds = %12, %12
  %35 = load i32, i32* @swapped, align 4
  %36 = load i32, i32* @_ENDIAN_SWAPPED, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = call i32 @MATCH(i32 %35, i32 %36)
  br label %56

40:                                               ; preds = %12, %12
  %41 = load i32, i32* @force, align 4
  %42 = load i32, i32* @_MODE_FORCE_ENDIAN, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = call i32 @MATCH(i32 %41, i32 %46)
  br label %56

48:                                               ; preds = %12, %12
  %49 = load i32, i32* @utf32, align 4
  %50 = load i32, i32* @_MODE_UTF32, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = call i32 @MATCH(i32 %49, i32 %54)
  br label %56

56:                                               ; preds = %12, %48, %40, %34, %28, %22, %16
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %7, align 8
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, -1
  store i64 %60, i64* %6, align 8
  br label %9

61:                                               ; preds = %9
  ret void
}

declare dso_local i32 @MATCH(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

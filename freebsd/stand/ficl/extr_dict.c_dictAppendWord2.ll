; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_dict.c_dictAppendWord2.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_dict.c_dictAppendWord2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8, i8*, i64, i32, i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }

@TRUE = common dso_local global i32 0, align 4
@FW_SMUDGE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @dictAppendWord2(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @SI_COUNT(i32 %12)
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %9, align 8
  %15 = load i32, i32* @TRUE, align 4
  %16 = call i32 @ficlLockDictionary(i32 %15)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i8* @dictCopyName(%struct.TYPE_8__* %17, i32 %18)
  store i8* %19, i8** %10, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %11, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @hashHashCode(i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @FW_SMUDGE, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i64, i64* %9, align 8
  %40 = trunc i64 %39 to i8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  store i8 %40, i8* %42, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @FW_SMUDGE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = call i32 @dictUnsmudge(%struct.TYPE_8__* %56)
  br label %58

58:                                               ; preds = %55, %4
  %59 = load i32, i32* @FALSE, align 4
  %60 = call i32 @ficlLockDictionary(i32 %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  ret %struct.TYPE_7__* %61
}

declare dso_local i32 @SI_COUNT(i32) #1

declare dso_local i32 @ficlLockDictionary(i32) #1

declare dso_local i8* @dictCopyName(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @hashHashCode(i32) #1

declare dso_local i32 @dictUnsmudge(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

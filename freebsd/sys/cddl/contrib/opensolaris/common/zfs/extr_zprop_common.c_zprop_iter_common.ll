; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/zfs/extr_zprop_common.c_zprop_iter_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/zfs/extr_zprop_common.c_zprop_iter_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }

@ZPROP_CONT = common dso_local global i32 0, align 4
@zprop_compare = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zprop_iter_common(i32 (i32, i8*)* %0, i8* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32 (i32, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca %struct.TYPE_7__**, align 8
  store i32 (i32, i8*)* %0, i32 (i32, i8*)** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call %struct.TYPE_7__* @zprop_get_proptable(i32 %19)
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %17, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @zprop_get_numprops(i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = call %struct.TYPE_7__** @malloc(i32 %27)
  store %struct.TYPE_7__** %28, %struct.TYPE_7__*** %18, align 8
  %29 = icmp eq %struct.TYPE_7__** %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = load i32, i32* @ZPROP_CONT, align 4
  store i32 %31, i32* %6, align 4
  br label %105

32:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %46, %32
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i64 %40
  %42 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %18, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %42, i64 %44
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %45, align 8
  br label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %13, align 4
  br label %33

49:                                               ; preds = %33
  %50 = load i64, i64* %10, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %18, align 8
  %54 = bitcast %struct.TYPE_7__** %53 to i8*
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @zprop_compare, align 4
  %57 = call i32 @qsort(i8* %54, i32 %55, i32 8, i32 %56)
  br label %58

58:                                               ; preds = %52, %49
  %59 = load i32, i32* @ZPROP_CONT, align 4
  store i32 %59, i32* %16, align 4
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %98, %58
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %101

64:                                               ; preds = %60
  %65 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %18, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %65, i64 %67
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %64
  %74 = load i64, i64* %9, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %97

76:                                               ; preds = %73, %64
  %77 = load i32 (i32, i8*)*, i32 (i32, i8*)** %7, align 8
  %78 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %18, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %78, i64 %80
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 %77(i32 %84, i8* %85)
  %87 = load i32, i32* @ZPROP_CONT, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %76
  %90 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %18, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %90, i64 %92
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %16, align 4
  br label %101

97:                                               ; preds = %76, %73
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %12, align 4
  br label %60

101:                                              ; preds = %89, %60
  %102 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %18, align 8
  %103 = call i32 @free(%struct.TYPE_7__** %102)
  %104 = load i32, i32* %16, align 4
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %101, %30
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local %struct.TYPE_7__* @zprop_get_proptable(i32) #1

declare dso_local i32 @zprop_get_numprops(i32) #1

declare dso_local %struct.TYPE_7__** @malloc(i32) #1

declare dso_local i32 @qsort(i8*, i32, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_7__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

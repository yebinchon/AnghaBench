; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/recno/extr_rec_get.c___rec_vmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/recno/extr_rec_get.c___rec_vmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64, i64 }
%struct.TYPE_7__ = type { i32*, i32 }

@R_EOF = common dso_local global i32 0, align 4
@RET_SPECIAL = common dso_local global i32 0, align 4
@RET_SUCCESS = common dso_local global i64 0, align 8
@RET_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rec_vmap(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %7, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %8, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %10, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %9, align 8
  br label %25

25:                                               ; preds = %76, %2
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %79

29:                                               ; preds = %25
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = icmp uge i32* %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = load i32, i32* @R_EOF, align 4
  %36 = call i32 @F_SET(%struct.TYPE_8__* %34, i32 %35)
  %37 = load i32, i32* @RET_SPECIAL, align 4
  store i32 %37, i32* %3, align 4
  br label %86

38:                                               ; preds = %29
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32* %39, i32** %40, align 8
  br label %41

41:                                               ; preds = %53, %38
  %42 = load i32*, i32** %7, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = icmp ult i32* %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %47, %48
  br label %50

50:                                               ; preds = %45, %41
  %51 = phi i1 [ false, %41 ], [ %49, %45 ]
  br i1 %51, label %52, label %56

52:                                               ; preds = %50
  br label %53

53:                                               ; preds = %52
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %7, align 8
  br label %41

56:                                               ; preds = %50
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = ptrtoint i32* %57 to i64
  %61 = ptrtoint i32* %59 to i64
  %62 = sub i64 %60, %61
  %63 = sdiv exact i64 %62, 4
  %64 = trunc i64 %63 to i32
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i32 %64, i32* %65, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i64 @__rec_iput(%struct.TYPE_8__* %66, i64 %67, %struct.TYPE_7__* %6, i32 0)
  %69 = load i64, i64* @RET_SUCCESS, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %56
  %72 = load i32, i32* @RET_ERROR, align 4
  store i32 %72, i32* %3, align 4
  br label %86

73:                                               ; preds = %56
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %7, align 8
  br label %76

76:                                               ; preds = %73
  %77 = load i64, i64* %9, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %9, align 8
  br label %25

79:                                               ; preds = %25
  %80 = load i32*, i32** %7, align 8
  %81 = ptrtoint i32* %80 to i64
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  %84 = load i64, i64* @RET_SUCCESS, align 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %79, %71, %33
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @F_SET(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @__rec_iput(%struct.TYPE_8__*, i64, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

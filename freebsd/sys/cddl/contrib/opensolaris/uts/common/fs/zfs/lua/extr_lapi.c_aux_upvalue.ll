; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lapi.c_aux_upvalue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lapi.c_aux_upvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32*, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_11__**, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i32**, i32**)* @aux_upvalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @aux_upvalue(i32 %0, i32 %1, i32** %2, i32** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32** %3, i32*** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @ttype(i32 %14)
  switch i32 %15, label %102 [
    i32 129, label %16
    i32 128, label %44
  ]

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.TYPE_11__* @clCvalue(i32 %17)
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp sle i32 1, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sle i32 %22, %25
  br i1 %26, label %28, label %27

27:                                               ; preds = %21, %16
  store i8* null, i8** %5, align 8
  br label %103

28:                                               ; preds = %21
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32**, i32*** %8, align 8
  store i32* %35, i32** %36, align 8
  %37 = load i32**, i32*** %9, align 8
  %38 = icmp ne i32** %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %41 = call i32* @obj2gco(%struct.TYPE_11__* %40)
  %42 = load i32**, i32*** %9, align 8
  store i32* %41, i32** %42, align 8
  br label %43

43:                                               ; preds = %39, %28
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %103

44:                                               ; preds = %4
  %45 = load i32, i32* %6, align 4
  %46 = call %struct.TYPE_10__* @clLvalue(i32 %45)
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %11, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %13, align 8
  %50 = load i32, i32* %7, align 4
  %51 = icmp sle i32 1, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sle i32 %53, %56
  br i1 %57, label %59, label %58

58:                                               ; preds = %52, %44
  store i8* null, i8** %5, align 8
  br label %103

59:                                               ; preds = %52
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %62, i64 %65
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32**, i32*** %8, align 8
  store i32* %69, i32** %70, align 8
  %71 = load i32**, i32*** %9, align 8
  %72 = icmp ne i32** %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %59
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %76, i64 %79
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = call i32* @obj2gco(%struct.TYPE_11__* %81)
  %83 = load i32**, i32*** %9, align 8
  store i32* %82, i32** %83, align 8
  br label %84

84:                                               ; preds = %73, %59
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  store i32* %93, i32** %12, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %84
  br label %100

97:                                               ; preds = %84
  %98 = load i32*, i32** %12, align 8
  %99 = call i8* @getstr(i32* %98)
  br label %100

100:                                              ; preds = %97, %96
  %101 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %96 ], [ %99, %97 ]
  store i8* %101, i8** %5, align 8
  br label %103

102:                                              ; preds = %4
  store i8* null, i8** %5, align 8
  br label %103

103:                                              ; preds = %102, %100, %58, %43, %27
  %104 = load i8*, i8** %5, align 8
  ret i8* %104
}

declare dso_local i32 @ttype(i32) #1

declare dso_local %struct.TYPE_11__* @clCvalue(i32) #1

declare dso_local i32* @obj2gco(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__* @clLvalue(i32) #1

declare dso_local i8* @getstr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

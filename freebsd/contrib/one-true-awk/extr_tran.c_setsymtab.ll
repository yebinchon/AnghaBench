; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_tran.c_setsymtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_tran.c_setsymtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i8*, i8*, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__** }

@.str = private unnamed_addr constant [43 x i8] c"setsymtab found %p: n=%s s=\22%s\22 f=%g t=%o\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"out of space for symbol table at %s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CUNK = common dso_local global i32 0, align 4
@OCELL = common dso_local global i32 0, align 4
@FULLTAB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"setsymtab set %p: n=%s s=\22%s\22 f=%g t=%o\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @setsymtab(i8* %0, i8* %1, i32 %2, i32 %3, %struct.TYPE_9__* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %42

16:                                               ; preds = %5
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %19 = call %struct.TYPE_8__* @lookup(i8* %17, %struct.TYPE_9__* %18)
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %13, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %21, label %42

21:                                               ; preds = %16
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %23 = bitcast %struct.TYPE_8__* %22 to i8*
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @NN(i8* %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @NN(i8* %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = zext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @dprintf(i8* %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %6, align 8
  br label %134

42:                                               ; preds = %16, %5
  %43 = call i64 @malloc(i32 40)
  %44 = inttoptr i64 %43 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %13, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %46 = icmp eq %struct.TYPE_8__* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @FATAL(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i8*, i8** %7, align 8
  %52 = call i8* @tostring(i8* %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i8*, i8** %8, align 8
  %59 = call i8* @tostring(i8* %58)
  br label %62

60:                                               ; preds = %50
  %61 = call i8* @tostring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %57
  %63 = phi i8* [ %59, %57 ], [ %61, %60 ]
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @CUNK, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @OCELL, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @FULLTAB, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %85, %88
  %90 = icmp sgt i32 %84, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %62
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %93 = call i32 @rehash(%struct.TYPE_9__* %92)
  br label %94

94:                                               ; preds = %91, %62
  %95 = load i8*, i8** %7, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @hash(i8* %95, i32 %98)
  store i32 %99, i32* %12, align 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %101, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %102, i64 %104
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 4
  store %struct.TYPE_8__* %106, %struct.TYPE_8__** %108, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %111, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %112, i64 %114
  store %struct.TYPE_8__* %109, %struct.TYPE_8__** %115, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %117 = bitcast %struct.TYPE_8__* %116 to i8*
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 3
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = zext i32 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  %132 = call i32 @dprintf(i8* %131)
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %133, %struct.TYPE_8__** %6, align 8
  br label %134

134:                                              ; preds = %94, %21
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  ret %struct.TYPE_8__* %135
}

declare dso_local %struct.TYPE_8__* @lookup(i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i32 @NN(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @FATAL(i8*, i8*) #1

declare dso_local i8* @tostring(i8*) #1

declare dso_local i32 @rehash(%struct.TYPE_9__*) #1

declare dso_local i32 @hash(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslerror.c_AslInitEnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslerror.c_AslInitEnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32, i32, i32*, i32*, %struct.TYPE_9__*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@ASL_FILE_SOURCE_OUTPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__**, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_9__*)* @AslInitEnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AslInitEnode(%struct.TYPE_9__** %0, i32 %1, i32 %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9, %struct.TYPE_9__* %10) #0 {
  %12 = alloca %struct.TYPE_9__**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_9__*, align 8
  %23 = alloca %struct.TYPE_9__*, align 8
  %24 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i8* %6, i8** %18, align 8
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %22, align 8
  %25 = call i8* @UtLocalCalloc(i32 80)
  %26 = bitcast i8* %25 to %struct.TYPE_9__*
  %27 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %27, align 8
  %28 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %23, align 8
  %30 = load i32, i32* %13, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 11
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 10
  store i32 %33, i32* %35, align 8
  %36 = load i8*, i8** %15, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 9
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %16, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 8
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %17, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 7
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %18, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 6
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 5
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %50, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 4
  store i32* null, i32** %52, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 3
  store i32* null, i32** %54, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i8* null, i8** %56, align 8
  %57 = load i8*, i8** %20, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %71

59:                                               ; preds = %11
  %60 = load i8*, i8** %20, align 8
  %61 = call i32 @strlen(i8* %60)
  %62 = add nsw i32 %61, 1
  %63 = call i32* @UtLocalCacheCalloc(i32 %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 4
  store i32* %63, i32** %65, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 4
  %68 = load i32*, i32** %67, align 8
  %69 = load i8*, i8** %20, align 8
  %70 = call i32 @strcpy(i32* %68, i8* %69)
  br label %71

71:                                               ; preds = %59, %11
  %72 = load i8*, i8** %21, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  %75 = load i8*, i8** %21, align 8
  %76 = call i32 @strlen(i8* %75)
  %77 = add nsw i32 %76, 1
  %78 = call i8* @UtLocalCalloc(i32 %77)
  %79 = bitcast i8* %78 to i32*
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 3
  store i32* %79, i32** %81, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = load i8*, i8** %21, align 8
  %86 = call i32 @strcpy(i32* %84, i8* %85)
  br label %87

87:                                               ; preds = %74, %71
  %88 = load i8*, i8** %19, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %120

90:                                               ; preds = %87
  %91 = load i8*, i8** %19, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  %94 = load i8*, i8** %19, align 8
  %95 = call i32 @strlen(i8* %94)
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %100, 6
  br i1 %101, label %102, label %105

102:                                              ; preds = %90
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  store i32 6, i32* %104, align 8
  br label %105

105:                                              ; preds = %102, %90
  %106 = call %struct.TYPE_8__* (...) @FlGetCurrentFileNode()
  store %struct.TYPE_8__* %106, %struct.TYPE_8__** %24, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %108 = icmp ne %struct.TYPE_8__* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  br label %120

110:                                              ; preds = %105
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = load i64, i64* @ASL_FILE_SOURCE_OUTPUT, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 4
  br label %120

120:                                              ; preds = %109, %110, %87
  ret void
}

declare dso_local i8* @UtLocalCalloc(i32) #1

declare dso_local i32* @UtLocalCacheCalloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32*, i8*) #1

declare dso_local %struct.TYPE_8__* @FlGetCurrentFileNode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

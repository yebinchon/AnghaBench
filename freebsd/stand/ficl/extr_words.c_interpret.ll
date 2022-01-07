; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_interpret.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_interpret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_24__** }
%struct.TYPE_24__ = type { i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_23__ = type { i64 }

@VM_OUTOFTEXT = common dso_local global i32 0, align 4
@FICL_MAX_PARSE_STEPS = common dso_local global i32 0, align 4
@parseStepParen = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"%.*s not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*)* @interpret to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interpret(%struct.TYPE_25__* %0) #0 {
  %2 = alloca %struct.TYPE_25__*, align 8
  %3 = alloca %struct.TYPE_23__, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_23__, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i64 (%struct.TYPE_25__*, i64)*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %2, align 8
  %9 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %10 = call i32 @assert(%struct.TYPE_25__* %9)
  %11 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  store %struct.TYPE_26__* %13, %struct.TYPE_26__** %5, align 8
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %15 = call i64 @vmGetWord0(%struct.TYPE_25__* %14)
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = bitcast %struct.TYPE_23__* %3 to i8*
  %18 = bitcast %struct.TYPE_23__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 8, i1 false)
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %24 = load i32, i32* @VM_OUTOFTEXT, align 4
  %25 = call i32 @vmThrow(%struct.TYPE_25__* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %1
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @ficlParseWord(%struct.TYPE_25__* %27, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %109

33:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %96, %33
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @FICL_MAX_PARSE_STEPS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %99

38:                                               ; preds = %34
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %41, i64 %43
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %44, align 8
  store %struct.TYPE_24__* %45, %struct.TYPE_24__** %7, align 8
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %47 = icmp eq %struct.TYPE_24__* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %99

49:                                               ; preds = %38
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @parseStepParen, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %49
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i64 (%struct.TYPE_25__*, i64)*
  store i64 (%struct.TYPE_25__*, i64)* %61, i64 (%struct.TYPE_25__*, i64)** %8, align 8
  %62 = load i64 (%struct.TYPE_25__*, i64)*, i64 (%struct.TYPE_25__*, i64)** %8, align 8
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i64 %62(%struct.TYPE_25__* %63, i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  br label %109

69:                                               ; preds = %55
  br label %95

70:                                               ; preds = %49
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @SI_PTR(i64 %75)
  %77 = call i32 @stackPushPtr(i32 %73, i32 %76)
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @SI_COUNT(i64 %82)
  %84 = call i32 @stackPushUNS(i32 %80, i32 %83)
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %87 = call i32 @ficlExecXT(%struct.TYPE_25__* %85, %struct.TYPE_24__* %86)
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @stackPopINT(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %70
  br label %109

94:                                               ; preds = %70
  br label %95

95:                                               ; preds = %94, %69
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %34

99:                                               ; preds = %48, %34
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @SI_COUNT(i64 %101)
  store i32 %102, i32* %4, align 4
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %104 = load i32, i32* %4, align 4
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @SI_PTR(i64 %106)
  %108 = call i32 @vmThrowErr(%struct.TYPE_25__* %103, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %107)
  br label %109

109:                                              ; preds = %99, %93, %68, %32
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_25__*) #1

declare dso_local i64 @vmGetWord0(%struct.TYPE_25__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vmThrow(%struct.TYPE_25__*, i32) #1

declare dso_local i64 @ficlParseWord(%struct.TYPE_25__*, i64) #1

declare dso_local i32 @stackPushPtr(i32, i32) #1

declare dso_local i32 @SI_PTR(i64) #1

declare dso_local i32 @stackPushUNS(i32, i32) #1

declare dso_local i32 @SI_COUNT(i64) #1

declare dso_local i32 @ficlExecXT(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i64 @stackPopINT(i32) #1

declare dso_local i32 @vmThrowErr(%struct.TYPE_25__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

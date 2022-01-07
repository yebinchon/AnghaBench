; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_prefix.c_ficlParsePrefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_prefix.c_ficlParsePrefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_17__**, i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_17__*, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }

@list_name = common dso_local global i32 0, align 4
@FICL_FALSE = common dso_local global i32 0, align 4
@FICL_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ficlParsePrefix(%struct.TYPE_18__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 0
  store i64 %1, i64* %10, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @list_name, align 4
  %15 = call %struct.TYPE_17__* @ficlLookup(i32 %13, i32 %14)
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %8, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %17 = icmp ne %struct.TYPE_17__* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @FICL_FALSE, align 4
  store i32 %19, i32* %3, align 4
  br label %87

20:                                               ; preds = %2
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %27, %struct.TYPE_19__** %7, align 8
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %82, %20
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %85

35:                                               ; preds = %28
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %38, i64 %40
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  store %struct.TYPE_17__* %42, %struct.TYPE_17__** %8, align 8
  br label %43

43:                                               ; preds = %77, %35
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %45 = icmp ne %struct.TYPE_17__* %44, null
  br i1 %45, label %46, label %81

46:                                               ; preds = %43
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %9, align 4
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @SI_PTR(i64 %51)
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @strincmp(i32 %52, i32 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %77, label %59

59:                                               ; preds = %46
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %62, %64
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %65, %69
  %71 = call i32 @vmSetTibIndex(%struct.TYPE_18__* %60, i64 %70)
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %74 = call i32 @vmExecute(%struct.TYPE_18__* %72, %struct.TYPE_17__* %73)
  %75 = load i64, i64* @FICL_TRUE, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %3, align 4
  br label %87

77:                                               ; preds = %46
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %79, align 8
  store %struct.TYPE_17__* %80, %struct.TYPE_17__** %8, align 8
  br label %43

81:                                               ; preds = %43
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %28

85:                                               ; preds = %28
  %86 = load i32, i32* @FICL_FALSE, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %59, %18
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.TYPE_17__* @ficlLookup(i32, i32) #1

declare dso_local i32 @strincmp(i32, i32, i32) #1

declare dso_local i32 @SI_PTR(i64) #1

declare dso_local i32 @vmSetTibIndex(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @vmExecute(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslanalyze.c_ApCheckForGpeNameConflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslanalyze.c_ApCheckForGpeNameConflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i64, %struct.TYPE_6__* }

@ACPI_NAMESEG_SIZE = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i64 0, align 8
@PARSEOP_METHOD = common dso_local global i64 0, align 8
@PARSEOP_NAME = common dso_local global i64 0, align 8
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_GPE_NAME_CONFLICT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ApCheckForGpeNameConflict(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %9 = load i32, i32* @ACPI_NAMESEG_SIZE, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* @ACPI_NAMESEG_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @ACPI_MOVE_32_TO_32(i8* %13, i8* %20)
  %22 = load i32, i32* @ACPI_NAMESEG_SIZE, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %13, i64 %23
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds i8, i8* %13, i64 0
  %26 = load i8, i8* %25, align 16
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 95
  br i1 %28, label %39, label %29

29:                                               ; preds = %1
  %30 = getelementptr inbounds i8, i8* %13, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 76
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = getelementptr inbounds i8, i8* %13, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 69
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %1
  store i32 1, i32* %8, align 4
  br label %98

40:                                               ; preds = %34, %29
  %41 = getelementptr inbounds i8, i8* %13, i64 2
  %42 = call i64 @strtoul(i8* %41, i32* null, i32 16)
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @ACPI_UINT32_MAX, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 1, i32* %8, align 4
  br label %98

47:                                               ; preds = %40
  %48 = call i32 @ACPI_MOVE_32_TO_32(i8* %16, i8* %13)
  %49 = getelementptr inbounds i8, i8* %13, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 76
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 69, i8* %54, align 1
  br label %57

55:                                               ; preds = %47
  %56 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 76, i8* %56, align 1
  br label %57

57:                                               ; preds = %55, %53
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  store %struct.TYPE_6__* %61, %struct.TYPE_6__** %3, align 8
  br label %62

62:                                               ; preds = %92, %57
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = icmp ne %struct.TYPE_6__* %63, null
  br i1 %64, label %65, label %97

65:                                               ; preds = %62
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @PARSEOP_METHOD, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %79, label %72

72:                                               ; preds = %65
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PARSEOP_NAME, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %72, %65
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @ACPI_COMPARE_NAMESEG(i8* %16, i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load i32, i32* @ASL_ERROR, align 4
  %88 = load i32, i32* @ASL_MSG_GPE_NAME_CONFLICT, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %90 = call i32 @AslError(i32 %87, i32 %88, %struct.TYPE_6__* %89, i8* %13)
  store i32 1, i32* %8, align 4
  br label %98

91:                                               ; preds = %79
  br label %92

92:                                               ; preds = %91, %72
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  store %struct.TYPE_6__* %96, %struct.TYPE_6__** %3, align 8
  br label %62

97:                                               ; preds = %62
  store i32 1, i32* %8, align 4
  br label %98

98:                                               ; preds = %97, %86, %46, %39
  %99 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %99)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ACPI_MOVE_32_TO_32(i8*, i8*) #2

declare dso_local i64 @strtoul(i8*, i32*, i32) #2

declare dso_local i64 @ACPI_COMPARE_NAMESEG(i8*, i8*) #2

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_6__*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtfield.c_DtCompileInteger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtfield.c_DtCompileInteger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@ASL_MSG_COMPILER_INTERNAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid internal Byte length\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@DT_NON_ZERO = common dso_local global i32 0, align 4
@ASL_WARNING = common dso_local global i32 0, align 4
@ASL_MSG_RESERVED_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Must be one, setting to one\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Must be zero, setting to zero\00", align 1
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_ZERO_VALUE = common dso_local global i32 0, align 4
@AslGbl_MsgBuffer = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"%8.8X%8.8X - max %u bytes\00", align 1
@ASL_MSG_INTEGER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DtCompileInteger(i32* %0, %struct.TYPE_6__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sgt i32 %12, 8
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14, %4
  %18 = load i32, i32* @ASL_MSG_COMPILER_INTERNAL, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = call i32 @DtFatal(i32 %18, %struct.TYPE_6__* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %95

21:                                               ; preds = %14
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = call i32 @DtResolveIntegerExpression(%struct.TYPE_6__* %22, i32* %9)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i64 @ACPI_FAILURE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %95

28:                                               ; preds = %21
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @strcmp(i32 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %58, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @DT_NON_ZERO, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* @ASL_WARNING, align 4
  %44 = load i32, i32* @ASL_MSG_RESERVED_VALUE, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = call i32 @DtError(i32 %43, i32 %44, %struct.TYPE_6__* %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %47

47:                                               ; preds = %42, %39
  br label %57

48:                                               ; preds = %34
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i32, i32* @ASL_WARNING, align 4
  %53 = load i32, i32* @ASL_MSG_RESERVED_VALUE, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = call i32 @DtError(i32 %52, i32 %53, %struct.TYPE_6__* %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %51, %48
  br label %57

57:                                               ; preds = %56, %47
  br label %72

58:                                               ; preds = %28
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @DT_NON_ZERO, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32, i32* @ASL_ERROR, align 4
  %68 = load i32, i32* @ASL_MSG_ZERO_VALUE, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %70 = call i32 @DtError(i32 %67, i32 %68, %struct.TYPE_6__* %69, i8* null)
  br label %71

71:                                               ; preds = %66, %63, %58
  br label %72

72:                                               ; preds = %71, %57
  %73 = load i32, i32* %7, align 4
  %74 = mul nsw i32 %73, 8
  %75 = sub nsw i32 64, %74
  %76 = ashr i32 -1, %75
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %72
  %81 = load i8*, i8** @AslGbl_MsgBuffer, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @ACPI_FORMAT_UINT64(i32 %82)
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @sprintf(i8* %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load i32, i32* @ASL_ERROR, align 4
  %87 = load i32, i32* @ASL_MSG_INTEGER_SIZE, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %89 = load i8*, i8** @AslGbl_MsgBuffer, align 8
  %90 = call i32 @DtError(i32 %86, i32 %87, %struct.TYPE_6__* %88, i8* %89)
  br label %91

91:                                               ; preds = %80, %72
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @memcpy(i32* %92, i32* %9, i32 %93)
  br label %95

95:                                               ; preds = %91, %27, %17
  ret void
}

declare dso_local i32 @DtFatal(i32, %struct.TYPE_6__*, i8*) #1

declare dso_local i32 @DtResolveIntegerExpression(%struct.TYPE_6__*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @DtError(i32, i32, %struct.TYPE_6__*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

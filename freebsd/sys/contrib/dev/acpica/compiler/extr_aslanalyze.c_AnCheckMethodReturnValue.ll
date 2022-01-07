; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslanalyze.c_AnCheckMethodReturnValue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslanalyze.c_AnCheckMethodReturnValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }

@OP_METHOD_NO_RETVAL = common dso_local global i32 0, align 4
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_NO_RETVAL = common dso_local global i32 0, align 4
@OP_METHOD_SOME_NO_RETVAL = common dso_local global i32 0, align 4
@ASL_WARNING = common dso_local global i32 0, align 4
@ASL_MSG_SOME_NO_RETVAL = common dso_local global i32 0, align 4
@AslGbl_StringBuffer = common dso_local global i8* null, align 8
@AslGbl_StringBuffer2 = common dso_local global i8* null, align 8
@AslGbl_MsgBuffer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Method returns [%s], %s operator requires [%s]\00", align 1
@ASL_MSG_INVALID_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AnCheckMethodReturnValue(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, %struct.TYPE_10__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %12, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %18 = icmp ne %struct.TYPE_12__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  br label %87

20:                                               ; preds = %5
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %11, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @OP_METHOD_NO_RETVAL, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %20
  %32 = load i32, i32* @ASL_ERROR, align 4
  %33 = load i32, i32* @ASL_MSG_NO_RETVAL, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @AslError(i32 %32, i32 %33, %struct.TYPE_10__* %34, i32 %38)
  br label %87

40:                                               ; preds = %20
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @OP_METHOD_SOME_NO_RETVAL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %40
  %49 = load i32, i32* @ASL_WARNING, align 4
  %50 = load i32, i32* @ASL_MSG_SOME_NO_RETVAL, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @AslError(i32 %49, i32 %50, %struct.TYPE_10__* %51, i32 %55)
  br label %86

57:                                               ; preds = %40
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %85, label %62

62:                                               ; preds = %57
  %63 = load i8*, i8** @AslGbl_StringBuffer, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @AnFormatBtype(i8* %63, i32 %64)
  %66 = load i8*, i8** @AslGbl_StringBuffer2, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @AnFormatBtype(i8* %66, i32 %67)
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %62
  %72 = load i32, i32* @AslGbl_MsgBuffer, align 4
  %73 = load i8*, i8** @AslGbl_StringBuffer, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i8*, i8** @AslGbl_StringBuffer2, align 8
  %78 = call i32 @sprintf(i32 %72, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %73, i8* %76, i8* %77)
  %79 = load i32, i32* @ASL_ERROR, align 4
  %80 = load i32, i32* @ASL_MSG_INVALID_TYPE, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %82 = load i32, i32* @AslGbl_MsgBuffer, align 4
  %83 = call i32 @AslError(i32 %79, i32 %80, %struct.TYPE_10__* %81, i32 %82)
  br label %84

84:                                               ; preds = %71, %62
  br label %85

85:                                               ; preds = %84, %57
  br label %86

86:                                               ; preds = %85, %48
  br label %87

87:                                               ; preds = %19, %86, %31
  ret void
}

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @AnFormatBtype(i8*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtsubtable.c_DtGetSubtableLength.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtsubtable.c_DtGetSubtableLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i8*, i32 }

@ACPI_DMT_EXTRA_TEXT = common dso_local global i32 0, align 4
@AslGbl_MsgBuffer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Found NULL field - Field name \22%s\22 needed\00", align 1
@ASL_MSG_COMPILER_INTERNAL = common dso_local global i32 0, align 4
@ASL_EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DtGetSubtableLength(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %57, %2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %60

14:                                               ; preds = %9
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ACPI_DMT_EXTRA_TEXT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %57

21:                                               ; preds = %14
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = icmp ne %struct.TYPE_7__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  br label %62

25:                                               ; preds = %21
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = call i64 @DtGetFieldLength(%struct.TYPE_7__* %26, %struct.TYPE_8__* %27)
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %6, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %39 [
    i32 130, label %36
    i32 129, label %37
    i32 128, label %38
  ]

36:                                               ; preds = %25
  store i64 5, i64* %7, align 8
  br label %40

37:                                               ; preds = %25
  store i64 9, i64* %7, align 8
  br label %40

38:                                               ; preds = %25
  store i64 10, i64* %7, align 8
  br label %40

39:                                               ; preds = %25
  store i64 1, i64* %7, align 8
  br label %40

40:                                               ; preds = %39, %38, %37, %36
  store i64 0, i64* %8, align 8
  br label %41

41:                                               ; preds = %53, %40
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = icmp ne %struct.TYPE_7__* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  br label %62

49:                                               ; preds = %45
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %4, align 8
  br label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %8, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %8, align 8
  br label %41

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %56, %20
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 1
  store %struct.TYPE_8__* %59, %struct.TYPE_8__** %5, align 8
  br label %9

60:                                               ; preds = %9
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %76

62:                                               ; preds = %48, %24
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = icmp ne %struct.TYPE_7__* %63, null
  br i1 %64, label %74, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* @AslGbl_MsgBuffer, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @sprintf(i32 %66, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %69)
  %71 = load i32, i32* @ASL_MSG_COMPILER_INTERNAL, align 4
  %72 = load i32, i32* @AslGbl_MsgBuffer, align 4
  %73 = call i32 @DtFatal(i32 %71, i32* null, i32 %72)
  br label %74

74:                                               ; preds = %65, %62
  %75 = load i32, i32* @ASL_EOF, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %60
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @DtGetFieldLength(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

declare dso_local i32 @DtFatal(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

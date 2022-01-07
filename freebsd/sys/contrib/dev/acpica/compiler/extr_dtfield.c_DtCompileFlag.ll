; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtfield.c_DtCompileFlag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtfield.c_DtCompileFlag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@ASL_MSG_COMPILER_INTERNAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid flag opcode\00", align 1
@AslGbl_MsgBuffer = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Maximum %u bit\00", align 1
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_FLAG_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DtCompileFlag(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @AcpiUtImplicitStrtoul64(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %30 [
    i32 144, label %17
    i32 143, label %17
    i32 142, label %17
    i32 141, label %17
    i32 140, label %17
    i32 139, label %17
    i32 138, label %17
    i32 137, label %17
    i32 136, label %21
    i32 135, label %22
    i32 133, label %23
    i32 132, label %24
    i32 131, label %25
    i32 129, label %26
    i32 128, label %27
    i32 130, label %28
    i32 134, label %29
  ]

17:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %34

21:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  store i32 2, i32* %8, align 4
  br label %34

22:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  store i32 2, i32* %8, align 4
  br label %34

23:                                               ; preds = %3
  store i32 2, i32* %9, align 4
  store i32 2, i32* %8, align 4
  br label %34

24:                                               ; preds = %3
  store i32 4, i32* %9, align 4
  store i32 2, i32* %8, align 4
  br label %34

25:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  store i32 4, i32* %8, align 4
  br label %34

26:                                               ; preds = %3
  store i32 4, i32* %9, align 4
  store i32 4, i32* %8, align 4
  br label %34

27:                                               ; preds = %3
  store i32 8, i32* %9, align 4
  store i32 4, i32* %8, align 4
  br label %34

28:                                               ; preds = %3
  store i32 12, i32* %9, align 4
  store i32 4, i32* %8, align 4
  br label %34

29:                                               ; preds = %3
  store i32 16, i32* %9, align 4
  store i32 16, i32* %8, align 4
  br label %34

30:                                               ; preds = %3
  %31 = load i32, i32* @ASL_MSG_COMPILER_INTERNAL, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = call i32 @DtFatal(i32 %31, %struct.TYPE_7__* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %17
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 1, %36
  %38 = icmp sge i32 %35, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load i32, i32* @AslGbl_MsgBuffer, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @sprintf(i32 %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @ASL_ERROR, align 4
  %44 = load i32, i32* @ASL_MSG_FLAG_VALUE, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = load i32, i32* @AslGbl_MsgBuffer, align 4
  %47 = call i32 @DtError(i32 %43, i32 %44, %struct.TYPE_7__* %45, i32 %46)
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %39, %34
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %9, align 4
  %51 = shl i32 %49, %50
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 4
  ret void
}

declare dso_local i32 @AcpiUtImplicitStrtoul64(i32) #1

declare dso_local i32 @DtFatal(i32, %struct.TYPE_7__*, i8*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @DtError(i32, i32, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

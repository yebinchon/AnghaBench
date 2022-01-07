; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtutils.c_DtGetFieldLength.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtutils.c_DtGetFieldLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

@AslGbl_MsgBuffer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"Expected \22%s\22\00", align 1
@ASL_MSG_COMPILER_INTERNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid table opcode\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DtGetFieldLength(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %73 [
    i32 180, label %11
    i32 179, label %11
    i32 178, label %11
    i32 177, label %11
    i32 176, label %11
    i32 175, label %11
    i32 174, label %11
    i32 173, label %11
    i32 172, label %11
    i32 171, label %11
    i32 169, label %11
    i32 168, label %11
    i32 167, label %11
    i32 165, label %11
    i32 164, label %11
    i32 166, label %11
    i32 170, label %11
    i32 155, label %11
    i32 182, label %11
    i32 130, label %12
    i32 189, label %12
    i32 141, label %12
    i32 197, label %12
    i32 156, label %12
    i32 162, label %12
    i32 153, label %12
    i32 148, label %12
    i32 146, label %12
    i32 145, label %12
    i32 143, label %12
    i32 140, label %12
    i32 196, label %12
    i32 159, label %12
    i32 181, label %12
    i32 186, label %12
    i32 185, label %12
    i32 184, label %12
    i32 183, label %12
    i32 187, label %12
    i32 137, label %13
    i32 188, label %13
    i32 161, label %13
    i32 158, label %13
    i32 149, label %13
    i32 147, label %13
    i32 136, label %14
    i32 135, label %15
    i32 152, label %15
    i32 142, label %15
    i32 154, label %15
    i32 138, label %15
    i32 134, label %16
    i32 133, label %17
    i32 151, label %17
    i32 132, label %18
    i32 191, label %18
    i32 131, label %19
    i32 150, label %19
    i32 139, label %20
    i32 163, label %39
    i32 160, label %40
    i32 157, label %41
    i32 190, label %42
    i32 144, label %42
    i32 195, label %60
    i32 194, label %61
    i32 192, label %62
    i32 128, label %62
    i32 193, label %63
    i32 129, label %64
  ]

11:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  store i32 0, i32* %6, align 4
  br label %77

12:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  store i32 1, i32* %6, align 4
  br label %77

13:                                               ; preds = %2, %2, %2, %2, %2, %2
  store i32 2, i32* %6, align 4
  br label %77

14:                                               ; preds = %2
  store i32 3, i32* %6, align 4
  br label %77

15:                                               ; preds = %2, %2, %2, %2, %2
  store i32 4, i32* %6, align 4
  br label %77

16:                                               ; preds = %2
  store i32 5, i32* %6, align 4
  br label %77

17:                                               ; preds = %2, %2
  store i32 6, i32* %6, align 4
  br label %77

18:                                               ; preds = %2, %2
  store i32 7, i32* %6, align 4
  br label %77

19:                                               ; preds = %2, %2
  store i32 8, i32* %6, align 4
  br label %77

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = call i8* @DtGetFieldValue(i32* %21)
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %38

29:                                               ; preds = %20
  %30 = load i8*, i8** @AslGbl_MsgBuffer, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* @ASL_MSG_COMPILER_INTERNAL, align 4
  %36 = load i8*, i8** @AslGbl_MsgBuffer, align 8
  %37 = call i32 @DtFatal(i32 %35, i32* null, i8* %36)
  store i32 0, i32* %3, align 4
  br label %79

38:                                               ; preds = %25
  br label %77

39:                                               ; preds = %2
  store i32 4, i32* %6, align 4
  br label %77

40:                                               ; preds = %2
  store i32 4, i32* %6, align 4
  br label %77

41:                                               ; preds = %2
  store i32 4, i32* %6, align 4
  br label %77

42:                                               ; preds = %2, %2
  %43 = load i32*, i32** %4, align 8
  %44 = call i8* @DtGetFieldValue(i32* %43)
  store i8* %44, i8** %7, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @DtGetBufferLength(i8* %48)
  store i32 %49, i32* %6, align 4
  br label %59

50:                                               ; preds = %42
  %51 = load i8*, i8** @AslGbl_MsgBuffer, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @sprintf(i8* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %54)
  %56 = load i32, i32* @ASL_MSG_COMPILER_INTERNAL, align 4
  %57 = load i8*, i8** @AslGbl_MsgBuffer, align 8
  %58 = call i32 @DtFatal(i32 %56, i32* null, i8* %57)
  store i32 0, i32* %3, align 4
  br label %79

59:                                               ; preds = %47
  br label %77

60:                                               ; preds = %2
  store i32 10, i32* %6, align 4
  br label %77

61:                                               ; preds = %2
  store i32 12, i32* %6, align 4
  br label %77

62:                                               ; preds = %2, %2
  store i32 16, i32* %6, align 4
  br label %77

63:                                               ; preds = %2
  store i32 128, i32* %6, align 4
  br label %77

64:                                               ; preds = %2
  %65 = load i32*, i32** %4, align 8
  %66 = call i8* @DtGetFieldValue(i32* %65)
  store i8* %66, i8** %7, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %6, align 4
  br label %77

73:                                               ; preds = %2
  %74 = load i32, i32* @ASL_MSG_COMPILER_INTERNAL, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @DtFatal(i32 %74, i32* %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %79

77:                                               ; preds = %64, %63, %62, %61, %60, %59, %41, %40, %39, %38, %19, %18, %17, %16, %15, %14, %13, %12, %11
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %73, %50, %29
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i8* @DtGetFieldValue(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @DtFatal(i32, i32*, i8*) #1

declare dso_local i32 @DtGetBufferLength(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

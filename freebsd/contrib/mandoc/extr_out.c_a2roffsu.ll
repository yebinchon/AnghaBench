; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_out.c_a2roffsu.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_out.c_a2roffsu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roffsu = type { i32, i32 }

@SCALE_MAX = common dso_local global i32 0, align 4
@SCALE_BU = common dso_local global i32 0, align 4
@SCALE_CM = common dso_local global i32 0, align 4
@SCALE_IN = common dso_local global i32 0, align 4
@SCALE_FS = common dso_local global i32 0, align 4
@SCALE_MM = common dso_local global i32 0, align 4
@SCALE_EM = common dso_local global i32 0, align 4
@SCALE_EN = common dso_local global i32 0, align 4
@SCALE_PC = common dso_local global i32 0, align 4
@SCALE_PT = common dso_local global i32 0, align 4
@SCALE_VS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @a2roffsu(i8* %0, %struct.roffsu* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.roffsu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.roffsu* %1, %struct.roffsu** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @SCALE_MAX, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @SCALE_BU, align 4
  br label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = load %struct.roffsu*, %struct.roffsu** %6, align 8
  %19 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strtod(i8* %20, i8** %8)
  %22 = load %struct.roffsu*, %struct.roffsu** %6, align 8
  %23 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = icmp eq i8* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  store i8* null, i8** %4, align 8
  br label %86

28:                                               ; preds = %16
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %8, align 8
  %31 = load i8, i8* %29, align 1
  %32 = sext i8 %31 to i32
  switch i32 %32, label %73 [
    i32 99, label %33
    i32 105, label %37
    i32 102, label %41
    i32 77, label %45
    i32 109, label %49
    i32 110, label %53
    i32 80, label %57
    i32 112, label %61
    i32 117, label %65
    i32 118, label %69
  ]

33:                                               ; preds = %28
  %34 = load i32, i32* @SCALE_CM, align 4
  %35 = load %struct.roffsu*, %struct.roffsu** %6, align 8
  %36 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %84

37:                                               ; preds = %28
  %38 = load i32, i32* @SCALE_IN, align 4
  %39 = load %struct.roffsu*, %struct.roffsu** %6, align 8
  %40 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %84

41:                                               ; preds = %28
  %42 = load i32, i32* @SCALE_FS, align 4
  %43 = load %struct.roffsu*, %struct.roffsu** %6, align 8
  %44 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %84

45:                                               ; preds = %28
  %46 = load i32, i32* @SCALE_MM, align 4
  %47 = load %struct.roffsu*, %struct.roffsu** %6, align 8
  %48 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %84

49:                                               ; preds = %28
  %50 = load i32, i32* @SCALE_EM, align 4
  %51 = load %struct.roffsu*, %struct.roffsu** %6, align 8
  %52 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %84

53:                                               ; preds = %28
  %54 = load i32, i32* @SCALE_EN, align 4
  %55 = load %struct.roffsu*, %struct.roffsu** %6, align 8
  %56 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %84

57:                                               ; preds = %28
  %58 = load i32, i32* @SCALE_PC, align 4
  %59 = load %struct.roffsu*, %struct.roffsu** %6, align 8
  %60 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %84

61:                                               ; preds = %28
  %62 = load i32, i32* @SCALE_PT, align 4
  %63 = load %struct.roffsu*, %struct.roffsu** %6, align 8
  %64 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %84

65:                                               ; preds = %28
  %66 = load i32, i32* @SCALE_BU, align 4
  %67 = load %struct.roffsu*, %struct.roffsu** %6, align 8
  %68 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %84

69:                                               ; preds = %28
  %70 = load i32, i32* @SCALE_VS, align 4
  %71 = load %struct.roffsu*, %struct.roffsu** %6, align 8
  %72 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br label %84

73:                                               ; preds = %28
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 -1
  store i8* %75, i8** %8, align 8
  %76 = load i32, i32* @SCALE_MAX, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i8* null, i8** %4, align 8
  br label %86

80:                                               ; preds = %73
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.roffsu*, %struct.roffsu** %6, align 8
  %83 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %80, %69, %65, %61, %57, %53, %49, %45, %41, %37, %33
  %85 = load i8*, i8** %8, align 8
  store i8* %85, i8** %4, align 8
  br label %86

86:                                               ; preds = %84, %79, %27
  %87 = load i8*, i8** %4, align 8
  ret i8* %87
}

declare dso_local i32 @strtod(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

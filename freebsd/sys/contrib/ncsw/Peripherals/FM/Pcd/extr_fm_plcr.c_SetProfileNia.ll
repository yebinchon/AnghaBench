; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_plcr.c_SetProfileNia.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_plcr.c_SetProfileNia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@FM_PCD_PLCR_NIA_VALID = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_SELECTION = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@FM_PCD_KG_NUM_OF_SCHEMES = common dso_local global i32 0, align 4
@E_NOT_IN_RANGE = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid direct scheme.\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Policer Profile may point only to a scheme that is always direct.\00", align 1
@NIA_ENG_KG = common dso_local global i32 0, align 4
@NIA_KG_DIRECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Next profile must be a shared profile\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Invalid profile \00", align 1
@NIA_ENG_PLCR = common dso_local global i32 0, align 4
@NIA_PLCR_ABSOLUTE = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_4__*, i32*)* @SetProfileNia to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetProfileNia(i32* %0, i32 %1, %struct.TYPE_4__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* @FM_PCD_PLCR_NIA_VALID, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %110 [
    i32 132, label %15
    i32 129, label %35
    i32 128, label %78
  ]

15:                                               ; preds = %4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %29 [
    i32 131, label %19
    i32 130, label %24
  ]

19:                                               ; preds = %15
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @GET_NIA_BMI_AC_DISCARD_FRAME(i32* %20)
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %9, align 4
  br label %34

24:                                               ; preds = %15
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @GET_NIA_BMI_AC_ENQ_FRAME(i32* %25)
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %9, align 4
  br label %34

29:                                               ; preds = %15
  %30 = load i32, i32* @MAJOR, align 4
  %31 = load i32, i32* @E_INVALID_SELECTION, align 4
  %32 = load i8*, i8** @NO_MSG, align 8
  %33 = call i32 @RETURN_ERROR(i32 %30, i32 %31, i8* %32)
  br label %34

34:                                               ; preds = %29, %24, %19
  br label %115

35:                                               ; preds = %4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @FmPcdKgGetSchemeId(i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @FmPcdKgGetRelativeSchemeId(i32* %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @FM_PCD_KG_NUM_OF_SCHEMES, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %35
  %47 = load i32, i32* @MAJOR, align 4
  %48 = load i32, i32* @E_NOT_IN_RANGE, align 4
  %49 = load i8*, i8** @NO_MSG, align 8
  %50 = call i32 @RETURN_ERROR(i32 %47, i32 %48, i8* %49)
  br label %51

51:                                               ; preds = %46, %35
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @FmPcdKgIsSchemeValidSw(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* @MAJOR, align 4
  %59 = load i32, i32* @E_INVALID_STATE, align 4
  %60 = call i32 @RETURN_ERROR(i32 %58, i32 %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %57, %51
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @KgIsSchemeAlwaysDirect(i32* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @MAJOR, align 4
  %68 = load i32, i32* @E_INVALID_STATE, align 4
  %69 = call i32 @RETURN_ERROR(i32 %67, i32 %68, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %66, %61
  %71 = load i32, i32* @NIA_ENG_KG, align 4
  %72 = load i32, i32* @NIA_KG_DIRECT, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %12, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* %9, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %9, align 4
  br label %115

78:                                               ; preds = %4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to %struct.TYPE_5__*
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %10, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @IsProfileShared(i32* %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %78
  %90 = load i32, i32* @MAJOR, align 4
  %91 = load i32, i32* @E_INVALID_STATE, align 4
  %92 = call i32 @RETURN_ERROR(i32 %90, i32 %91, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %93

93:                                               ; preds = %89, %78
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @FmPcdPlcrIsProfileValid(i32* %94, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* @MAJOR, align 4
  %100 = load i32, i32* @E_INVALID_STATE, align 4
  %101 = call i32 @RETURN_ERROR(i32 %99, i32 %100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %102

102:                                              ; preds = %98, %93
  %103 = load i32, i32* @NIA_ENG_PLCR, align 4
  %104 = load i32, i32* @NIA_PLCR_ABSOLUTE, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* %10, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* %9, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %9, align 4
  br label %115

110:                                              ; preds = %4
  %111 = load i32, i32* @MAJOR, align 4
  %112 = load i32, i32* @E_INVALID_SELECTION, align 4
  %113 = load i8*, i8** @NO_MSG, align 8
  %114 = call i32 @RETURN_ERROR(i32 %111, i32 %112, i8* %113)
  br label %115

115:                                              ; preds = %110, %102, %70, %34
  %116 = load i32, i32* %9, align 4
  %117 = load i32*, i32** %8, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i32, i32* @E_OK, align 4
  ret i32 %118
}

declare dso_local i32 @GET_NIA_BMI_AC_DISCARD_FRAME(i32*) #1

declare dso_local i32 @GET_NIA_BMI_AC_ENQ_FRAME(i32*) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i32 @FmPcdKgGetSchemeId(i32) #1

declare dso_local i32 @FmPcdKgGetRelativeSchemeId(i32*, i32) #1

declare dso_local i32 @FmPcdKgIsSchemeValidSw(i32) #1

declare dso_local i32 @KgIsSchemeAlwaysDirect(i32*, i32) #1

declare dso_local i32 @IsProfileShared(i32*, i32) #1

declare dso_local i32 @FmPcdPlcrIsProfileValid(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

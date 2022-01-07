; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_configuration_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_configuration_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_configuration = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"psk\00", align 1
@DPP_AKM_PSK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"sae\00", align 1
@DPP_AKM_SAE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"psk-sae\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"psk+sae\00", align 1
@DPP_AKM_PSK_SAE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"sae-dpp\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"dpp+sae\00", align 1
@DPP_AKM_SAE_DPP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"psk-sae-dpp\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"dpp+psk+sae\00", align 1
@DPP_AKM_PSK_SAE_DPP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"dpp\00", align 1
@DPP_AKM_DPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dpp_configuration* @dpp_configuration_alloc(i8* %0) #0 {
  %2 = alloca %struct.dpp_configuration*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dpp_configuration*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = call %struct.dpp_configuration* @os_zalloc(i32 4)
  store %struct.dpp_configuration* %7, %struct.dpp_configuration** %4, align 8
  %8 = load %struct.dpp_configuration*, %struct.dpp_configuration** %4, align 8
  %9 = icmp ne %struct.dpp_configuration* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %102

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i8* @os_strchr(i8* %12, i8 signext 32)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = ptrtoint i8* %17 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  store i64 %21, i64* %6, align 8
  br label %25

22:                                               ; preds = %11
  %23 = load i8*, i8** %3, align 8
  %24 = call i64 @os_strlen(i8* %23)
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %22, %16
  %26 = load i8*, i8** %3, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @bin_str_eq(i8* %26, i64 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @DPP_AKM_PSK, align 4
  %32 = load %struct.dpp_configuration*, %struct.dpp_configuration** %4, align 8
  %33 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %100

34:                                               ; preds = %25
  %35 = load i8*, i8** %3, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i64 @bin_str_eq(i8* %35, i64 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @DPP_AKM_SAE, align 4
  %41 = load %struct.dpp_configuration*, %struct.dpp_configuration** %4, align 8
  %42 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %99

43:                                               ; preds = %34
  %44 = load i8*, i8** %3, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @bin_str_eq(i8* %44, i64 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %3, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i64 @bin_str_eq(i8* %49, i64 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48, %43
  %54 = load i32, i32* @DPP_AKM_PSK_SAE, align 4
  %55 = load %struct.dpp_configuration*, %struct.dpp_configuration** %4, align 8
  %56 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %98

57:                                               ; preds = %48
  %58 = load i8*, i8** %3, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i64 @bin_str_eq(i8* %58, i64 %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i8*, i8** %3, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i64 @bin_str_eq(i8* %63, i64 %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62, %57
  %68 = load i32, i32* @DPP_AKM_SAE_DPP, align 4
  %69 = load %struct.dpp_configuration*, %struct.dpp_configuration** %4, align 8
  %70 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  br label %97

71:                                               ; preds = %62
  %72 = load i8*, i8** %3, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i64 @bin_str_eq(i8* %72, i64 %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load i8*, i8** %3, align 8
  %78 = load i64, i64* %6, align 8
  %79 = call i64 @bin_str_eq(i8* %77, i64 %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76, %71
  %82 = load i32, i32* @DPP_AKM_PSK_SAE_DPP, align 4
  %83 = load %struct.dpp_configuration*, %struct.dpp_configuration** %4, align 8
  %84 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  br label %96

85:                                               ; preds = %76
  %86 = load i8*, i8** %3, align 8
  %87 = load i64, i64* %6, align 8
  %88 = call i64 @bin_str_eq(i8* %86, i64 %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32, i32* @DPP_AKM_DPP, align 4
  %92 = load %struct.dpp_configuration*, %struct.dpp_configuration** %4, align 8
  %93 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  br label %95

94:                                               ; preds = %85
  br label %102

95:                                               ; preds = %90
  br label %96

96:                                               ; preds = %95, %81
  br label %97

97:                                               ; preds = %96, %67
  br label %98

98:                                               ; preds = %97, %53
  br label %99

99:                                               ; preds = %98, %39
  br label %100

100:                                              ; preds = %99, %30
  %101 = load %struct.dpp_configuration*, %struct.dpp_configuration** %4, align 8
  store %struct.dpp_configuration* %101, %struct.dpp_configuration** %2, align 8
  br label %105

102:                                              ; preds = %94, %10
  %103 = load %struct.dpp_configuration*, %struct.dpp_configuration** %4, align 8
  %104 = call i32 @dpp_configuration_free(%struct.dpp_configuration* %103)
  store %struct.dpp_configuration* null, %struct.dpp_configuration** %2, align 8
  br label %105

105:                                              ; preds = %102, %100
  %106 = load %struct.dpp_configuration*, %struct.dpp_configuration** %2, align 8
  ret %struct.dpp_configuration* %106
}

declare dso_local %struct.dpp_configuration* @os_zalloc(i32) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i64 @bin_str_eq(i8*, i64, i8*) #1

declare dso_local i32 @dpp_configuration_free(%struct.dpp_configuration*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

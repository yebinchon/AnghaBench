; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_read_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tncc_data = type { %struct.tnc_if_imc* }
%struct.tnc_if_imc = type { %struct.tnc_if_imc* }

@TNC_CONFIG_FILE = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"TNC: Could not open TNC configuration file '%s'\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"IMC \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tncc_data*)* @tncc_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tncc_read_config(%struct.tncc_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tncc_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tnc_if_imc*, align 8
  %10 = alloca %struct.tnc_if_imc*, align 8
  %11 = alloca i32, align 4
  store %struct.tncc_data* %0, %struct.tncc_data** %3, align 8
  store %struct.tnc_if_imc* null, %struct.tnc_if_imc** %10, align 8
  %12 = load i32, i32* @TNC_CONFIG_FILE, align 4
  %13 = call i8* @os_readfile(i32 %12, i64* %8)
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @MSG_ERROR, align 4
  %18 = load i32, i32* @TNC_CONFIG_FILE, align 4
  %19 = call i32 @wpa_printf(i32 %17, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 -1, i32* %2, align 4
  br label %89

20:                                               ; preds = %1
  %21 = load i8*, i8** %4, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %4, align 8
  store i8* %24, i8** %6, align 8
  br label %25

25:                                               ; preds = %83, %20
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ult i8* %26, %27
  br i1 %28, label %29, label %86

29:                                               ; preds = %25
  %30 = load i8*, i8** %6, align 8
  store i8* %30, i8** %7, align 8
  br label %31

31:                                               ; preds = %47, %29
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 10
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i8*, i8** %7, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 13
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = icmp ult i8* %42, %43
  br label %45

45:                                               ; preds = %41, %36, %31
  %46 = phi i1 [ false, %36 ], [ false, %31 ], [ %44, %41 ]
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %7, align 8
  br label %31

50:                                               ; preds = %45
  %51 = load i8*, i8** %7, align 8
  store i8 0, i8* %51, align 1
  %52 = load i8*, i8** %6, align 8
  %53 = call i64 @os_strncmp(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %82

55:                                               ; preds = %50
  store i32 0, i32* %11, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 4
  %58 = load i8*, i8** %7, align 8
  %59 = call %struct.tnc_if_imc* @tncc_parse_imc(i8* %57, i8* %58, i32* %11)
  store %struct.tnc_if_imc* %59, %struct.tnc_if_imc** %9, align 8
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @os_free(i8* %63)
  store i32 -1, i32* %2, align 4
  br label %89

65:                                               ; preds = %55
  %66 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %9, align 8
  %67 = icmp ne %struct.tnc_if_imc* %66, null
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %10, align 8
  %70 = icmp eq %struct.tnc_if_imc* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %9, align 8
  %73 = load %struct.tncc_data*, %struct.tncc_data** %3, align 8
  %74 = getelementptr inbounds %struct.tncc_data, %struct.tncc_data* %73, i32 0, i32 0
  store %struct.tnc_if_imc* %72, %struct.tnc_if_imc** %74, align 8
  br label %79

75:                                               ; preds = %68
  %76 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %9, align 8
  %77 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %10, align 8
  %78 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %77, i32 0, i32 0
  store %struct.tnc_if_imc* %76, %struct.tnc_if_imc** %78, align 8
  br label %79

79:                                               ; preds = %75, %71
  %80 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %9, align 8
  store %struct.tnc_if_imc* %80, %struct.tnc_if_imc** %10, align 8
  br label %81

81:                                               ; preds = %79, %65
  br label %82

82:                                               ; preds = %81, %50
  br label %83

83:                                               ; preds = %82
  %84 = load i8*, i8** %7, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  store i8* %85, i8** %6, align 8
  br label %25

86:                                               ; preds = %25
  %87 = load i8*, i8** %4, align 8
  %88 = call i32 @os_free(i8* %87)
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %86, %62, %16
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i8* @os_readfile(i32, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local %struct.tnc_if_imc* @tncc_parse_imc(i8*, i8*, i32*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

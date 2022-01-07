; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hlr_auc_gw.c_aka_auts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hlr_auc_gw.c_aka_auts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.milenage_parameters = type { i32, i32, i32 }

@EAP_AKA_AUTS_LEN = common dso_local global i32 0, align 4
@EAP_AKA_RAND_LEN = common dso_local global i32 0, align 4
@stdout_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"AKA-AUTS: IMSI=%s AUTS=%s RAND=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Could not parse AUTS/RAND\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Unknown IMSI: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"AKA-AUTS: Incorrect MAC-S\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"AKA-AUTS: Re-synchronized: SQN=%02x%02x%02x%02x%02x%02x\0A\00", align 1
@sqn_changes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @aka_auts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aka_auts(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [6 x i32], align 16
  %14 = alloca %struct.milenage_parameters*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i32, i32* @EAP_AKA_AUTS_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i32, i32* @EAP_AKA_RAND_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  store i8 0, i8* %24, align 1
  %25 = load i8*, i8** %5, align 8
  %26 = call i8* @strchr(i8* %25, i8 signext 32)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %104

30:                                               ; preds = %3
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %8, align 8
  store i8 0, i8* %31, align 1
  %33 = load i8*, i8** %8, align 8
  %34 = call i8* @strchr(i8* %33, i8 signext 32)
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %104

38:                                               ; preds = %30
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %9, align 8
  store i8 0, i8* %39, align 1
  %41 = load i64, i64* @stdout_debug, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %44, i8* %45, i8* %46)
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* @EAP_AKA_AUTS_LEN, align 4
  %51 = call i64 @hexstr2bin(i8* %49, i32* %19, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* @EAP_AKA_RAND_LEN, align 4
  %56 = call i64 @hexstr2bin(i8* %54, i32* %22, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53, %48
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %104

60:                                               ; preds = %53
  %61 = load i8*, i8** %5, align 8
  %62 = call %struct.milenage_parameters* @get_milenage(i8* %61)
  store %struct.milenage_parameters* %62, %struct.milenage_parameters** %14, align 8
  %63 = load %struct.milenage_parameters*, %struct.milenage_parameters** %14, align 8
  %64 = icmp eq %struct.milenage_parameters* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %104

68:                                               ; preds = %60
  %69 = load %struct.milenage_parameters*, %struct.milenage_parameters** %14, align 8
  %70 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.milenage_parameters*, %struct.milenage_parameters** %14, align 8
  %73 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %76 = call i64 @milenage_auts(i32 %71, i32 %74, i32* %22, i32* %19, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %103

80:                                               ; preds = %68
  %81 = load %struct.milenage_parameters*, %struct.milenage_parameters** %14, align 8
  %82 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %85 = call i32 @memcpy(i32 %83, i32* %84, i32 6)
  %86 = load i64, i64* @stdout_debug, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %80
  %89 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %90 = load i32, i32* %89, align 16
  %91 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 2
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 3
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 4
  %98 = load i32, i32* %97, align 16
  %99 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 5
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %90, i32 %92, i32 %94, i32 %96, i32 %98, i32 %100)
  br label %102

102:                                              ; preds = %88, %80
  store i32 1, i32* @sqn_changes, align 4
  br label %103

103:                                              ; preds = %102, %78
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %104

104:                                              ; preds = %103, %65, %58, %37, %29
  %105 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @hexstr2bin(i8*, i32*, i32) #2

declare dso_local %struct.milenage_parameters* @get_milenage(i8*) #2

declare dso_local i64 @milenage_auts(i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

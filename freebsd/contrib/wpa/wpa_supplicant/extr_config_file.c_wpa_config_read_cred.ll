; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config_file.c_wpa_config_read_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config_file.c_wpa_config_read_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_cred = type { i32, i32 }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Line: %d - start of a new cred block\00", align 1
@DEFAULT_USER_SELECTED_SIM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Line %d: Invalid cred line '%s'.\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Line %d: invalid quotation '%s'.\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Line %d: cred block was not terminated properly.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpa_cred* (i32*, i32*, i32)* @wpa_config_read_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpa_cred* @wpa_config_read_cred(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.wpa_cred*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_cred*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [256 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @MSG_MSGDUMP, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call %struct.wpa_cred* @os_zalloc(i32 8)
  store %struct.wpa_cred* %18, %struct.wpa_cred** %8, align 8
  %19 = load %struct.wpa_cred*, %struct.wpa_cred** %8, align 8
  %20 = icmp eq %struct.wpa_cred* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store %struct.wpa_cred* null, %struct.wpa_cred** %4, align 8
  br label %104

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.wpa_cred*, %struct.wpa_cred** %8, align 8
  %25 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @DEFAULT_USER_SELECTED_SIM, align 4
  %27 = load %struct.wpa_cred*, %struct.wpa_cred** %8, align 8
  %28 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %85, %65, %45, %22
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i64 @wpa_config_get_line(i8* %30, i32 256, i32* %31, i32* %32, i8** %12)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %86

35:                                               ; preds = %29
  %36 = load i8*, i8** %12, align 8
  %37 = call i64 @os_strcmp(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 1, i32* %10, align 4
  br label %86

40:                                               ; preds = %35
  %41 = load i8*, i8** %12, align 8
  %42 = call i8* @os_strchr(i8* %41, i8 signext 61)
  store i8* %42, i8** %13, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load i32, i32* @MSG_ERROR, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %12, align 8
  %50 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %48, i8* %49)
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %29

53:                                               ; preds = %40
  %54 = load i8*, i8** %13, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %13, align 8
  store i8 0, i8* %54, align 1
  %56 = load i8*, i8** %13, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 34
  br i1 %59, label %60, label %74

60:                                               ; preds = %53
  %61 = load i8*, i8** %13, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = call i8* @os_strchr(i8* %62, i8 signext 34)
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load i32, i32* @MSG_ERROR, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %13, align 8
  %70 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %68, i8* %69)
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %29

73:                                               ; preds = %60
  br label %74

74:                                               ; preds = %73, %53
  %75 = load %struct.wpa_cred*, %struct.wpa_cred** %8, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @wpa_config_set_cred(%struct.wpa_cred* %75, i8* %76, i8* %77, i32 %79)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %82, %74
  br label %29

86:                                               ; preds = %39, %29
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* @MSG_ERROR, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %90, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %89, %86
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load %struct.wpa_cred*, %struct.wpa_cred** %8, align 8
  %101 = call i32 @wpa_config_free_cred(%struct.wpa_cred* %100)
  store %struct.wpa_cred* null, %struct.wpa_cred** %8, align 8
  br label %102

102:                                              ; preds = %99, %96
  %103 = load %struct.wpa_cred*, %struct.wpa_cred** %8, align 8
  store %struct.wpa_cred* %103, %struct.wpa_cred** %4, align 8
  br label %104

104:                                              ; preds = %102, %21
  %105 = load %struct.wpa_cred*, %struct.wpa_cred** %4, align 8
  ret %struct.wpa_cred* %105
}

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

declare dso_local %struct.wpa_cred* @os_zalloc(i32) #1

declare dso_local i64 @wpa_config_get_line(i8*, i32, i32*, i32*, i8**) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i64 @wpa_config_set_cred(%struct.wpa_cred*, i8*, i8*, i32) #1

declare dso_local i32 @wpa_config_free_cred(%struct.wpa_cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

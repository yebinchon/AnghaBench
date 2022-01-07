; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_set_cred_roaming_consortiums.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_set_cred_roaming_consortiums.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_cred = type { i32, i32, i32 }

@MAX_ROAMING_CONS = common dso_local global i32 0, align 4
@MAX_ROAMING_CONS_OI_LEN = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Invalid roaming_consortiums entry: %s\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Too many roaming_consortiums OIs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_cred*, i8*)* @wpa_config_set_cred_roaming_consortiums to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_config_set_cred_roaming_consortiums(%struct.wpa_cred* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_cred*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.wpa_cred* %0, %struct.wpa_cred** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i32, i32* @MAX_ROAMING_CONS, align 4
  %16 = zext i32 %15 to i64
  %17 = load i32, i32* @MAX_ROAMING_CONS_OI_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = mul nuw i64 %16, %18
  %21 = alloca i32, i64 %20, align 16
  store i64 %16, i64* %7, align 8
  store i64 %18, i64* %8, align 8
  %22 = load i32, i32* @MAX_ROAMING_CONS, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i64, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %25 = bitcast i32* %21 to i64*
  %26 = mul nuw i64 %16, %18
  %27 = mul nuw i64 4, %26
  %28 = trunc i64 %27 to i32
  %29 = call i32 @os_memset(i64* %25, i32 0, i32 %28)
  %30 = mul nuw i64 8, %23
  %31 = trunc i64 %30 to i32
  %32 = call i32 @os_memset(i64* %24, i32 0, i32 %31)
  %33 = load i8*, i8** %5, align 8
  store i8* %33, i8** %11, align 8
  br label %34

34:                                               ; preds = %101, %2
  %35 = load i8*, i8** %11, align 8
  %36 = call i8* @os_strchr(i8* %35, i8 signext 44)
  store i8* %36, i8** %12, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i8*, i8** %12, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  br label %48

45:                                               ; preds = %34
  %46 = load i8*, i8** %11, align 8
  %47 = call i64 @os_strlen(i8* %46)
  br label %48

48:                                               ; preds = %45, %39
  %49 = phi i64 [ %44, %39 ], [ %47, %45 ]
  store i64 %49, i64* %13, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i64, i64* %13, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %104

56:                                               ; preds = %52, %48
  %57 = load i64, i64* %13, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %79, label %59

59:                                               ; preds = %56
  %60 = load i64, i64* %13, align 8
  %61 = and i64 %60, 1
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %79, label %63

63:                                               ; preds = %59
  %64 = load i64, i64* %13, align 8
  %65 = udiv i64 %64, 2
  %66 = load i32, i32* @MAX_ROAMING_CONS_OI_LEN, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp ugt i64 %65, %67
  br i1 %68, label %79, label %69

69:                                               ; preds = %63
  %70 = load i8*, i8** %11, align 8
  %71 = load i32, i32* %10, align 4
  %72 = zext i32 %71 to i64
  %73 = mul nsw i64 %72, %18
  %74 = getelementptr inbounds i32, i32* %21, i64 %73
  %75 = load i64, i64* %13, align 8
  %76 = udiv i64 %75, 2
  %77 = call i64 @hexstr2bin(i8* %70, i32* %74, i64 %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %69, %63, %59, %56
  %80 = load i32, i32* @MSG_INFO, align 4
  %81 = load i8*, i8** %11, align 8
  %82 = call i32 (i32, i8*, ...) @wpa_printf(i32 %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %81)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %122

83:                                               ; preds = %69
  %84 = load i64, i64* %13, align 8
  %85 = udiv i64 %84, 2
  %86 = load i32, i32* %10, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %24, i64 %87
  store i64 %85, i64* %88, align 8
  %89 = load i32, i32* %10, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %10, align 4
  %91 = load i8*, i8** %12, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %83
  br label %104

94:                                               ; preds = %83
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @MAX_ROAMING_CONS, align 4
  %97 = icmp uge i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i32, i32* @MSG_INFO, align 4
  %100 = call i32 (i32, i8*, ...) @wpa_printf(i32 %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %122

101:                                              ; preds = %94
  %102 = load i8*, i8** %12, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  store i8* %103, i8** %11, align 8
  br label %34

104:                                              ; preds = %93, %55
  %105 = load %struct.wpa_cred*, %struct.wpa_cred** %4, align 8
  %106 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = bitcast i32* %21 to i64*
  %109 = mul nuw i64 %16, %18
  %110 = mul nuw i64 4, %109
  %111 = trunc i64 %110 to i32
  %112 = call i32 @os_memcpy(i32 %107, i64* %108, i32 %111)
  %113 = load %struct.wpa_cred*, %struct.wpa_cred** %4, align 8
  %114 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = mul nuw i64 8, %23
  %117 = trunc i64 %116 to i32
  %118 = call i32 @os_memcpy(i32 %115, i64* %24, i32 %117)
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.wpa_cred*, %struct.wpa_cred** %4, align 8
  %121 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %122

122:                                              ; preds = %104, %98, %79
  %123 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %123)
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_memset(i64*, i32, i32) #2

declare dso_local i8* @os_strchr(i8*, i8 signext) #2

declare dso_local i64 @os_strlen(i8*) #2

declare dso_local i64 @hexstr2bin(i8*, i32*, i64) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32 @os_memcpy(i32, i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

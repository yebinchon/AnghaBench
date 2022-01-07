; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_eapol_test.c_add_extra_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_eapol_test.c_add_extra_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_msg = type { i32 }
%struct.extra_radius_attr = type { i32, i8*, i32 }

@RADIUS_MAX_ATTR_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Invalid extra attribute hexstring\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Incorrect extra attribute syntax specification\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Could not add attribute %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radius_msg*, %struct.extra_radius_attr*)* @add_extra_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_extra_attr(%struct.radius_msg* %0, %struct.extra_radius_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radius_msg*, align 8
  %5 = alloca %struct.extra_radius_attr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.radius_msg* %0, %struct.radius_msg** %4, align 8
  store %struct.extra_radius_attr* %1, %struct.extra_radius_attr** %5, align 8
  %12 = load i64, i64* @RADIUS_MAX_ATTR_LEN, align 8
  %13 = add i64 %12, 1
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load %struct.extra_radius_attr*, %struct.extra_radius_attr** %5, align 8
  %17 = getelementptr inbounds %struct.extra_radius_attr, %struct.extra_radius_attr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %77 [
    i32 115, label %19
    i32 110, label %26
    i32 120, label %28
    i32 100, label %70
  ]

19:                                               ; preds = %2
  %20 = trunc i64 %13 to i32
  %21 = load %struct.extra_radius_attr*, %struct.extra_radius_attr** %5, align 8
  %22 = getelementptr inbounds %struct.extra_radius_attr, %struct.extra_radius_attr* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @os_snprintf(i8* %15, i32 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = call i64 @os_strlen(i8* %15)
  store i64 %25, i64* %6, align 8
  br label %79

26:                                               ; preds = %2
  %27 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 0, i8* %27, align 16
  store i64 1, i64* %6, align 8
  br label %79

28:                                               ; preds = %2
  %29 = load %struct.extra_radius_attr*, %struct.extra_radius_attr** %5, align 8
  %30 = getelementptr inbounds %struct.extra_radius_attr, %struct.extra_radius_attr* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 48
  br i1 %36, label %37, label %46

37:                                               ; preds = %28
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 120
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  store i8* %45, i8** %7, align 8
  br label %46

46:                                               ; preds = %43, %37, %28
  %47 = load i8*, i8** %7, align 8
  %48 = call i64 @os_strlen(i8* %47)
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = and i64 %49, 1
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %46
  %53 = load i64, i64* %6, align 8
  %54 = udiv i64 %53, 2
  %55 = load i64, i64* @RADIUS_MAX_ATTR_LEN, align 8
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52, %46
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %94

59:                                               ; preds = %52
  %60 = load i64, i64* %6, align 8
  %61 = udiv i64 %60, 2
  store i64 %61, i64* %6, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = bitcast i8* %15 to i32*
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @hexstr2bin(i8* %62, i32* %63, i64 %64)
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %94

69:                                               ; preds = %59
  br label %79

70:                                               ; preds = %2
  %71 = load %struct.extra_radius_attr*, %struct.extra_radius_attr** %5, align 8
  %72 = getelementptr inbounds %struct.extra_radius_attr, %struct.extra_radius_attr* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @atoi(i8* %73)
  %75 = call i32 @htonl(i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = call i32 @os_memcpy(i8* %15, i32* %8, i32 4)
  store i64 4, i64* %6, align 8
  br label %79

77:                                               ; preds = %2
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %94

79:                                               ; preds = %70, %69, %26, %19
  %80 = load %struct.radius_msg*, %struct.radius_msg** %4, align 8
  %81 = load %struct.extra_radius_attr*, %struct.extra_radius_attr** %5, align 8
  %82 = getelementptr inbounds %struct.extra_radius_attr, %struct.extra_radius_attr* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = bitcast i8* %15 to i32*
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @radius_msg_add_attr(%struct.radius_msg* %80, i32 %83, i32* %84, i64 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %79
  %89 = load %struct.extra_radius_attr*, %struct.extra_radius_attr** %5, align 8
  %90 = getelementptr inbounds %struct.extra_radius_attr, %struct.extra_radius_attr* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %94

93:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %94

94:                                               ; preds = %93, %88, %77, %67, %57
  %95 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i64 @os_strlen(i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @hexstr2bin(i8*, i32*, i64) #2

declare dso_local i32 @htonl(i32) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @os_memcpy(i8*, i32*, i32) #2

declare dso_local i32 @radius_msg_add_attr(%struct.radius_msg*, i32, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_fsaccess.c_is_ntfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_fsaccess.c_is_ntfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"NTFS\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_ntfs(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [255 x i8], align 16
  %5 = alloca [20 x i8], align 16
  %6 = alloca [256 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [1024 x i8], align 16
  store i8* %0, i8** %3, align 8
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %11 = icmp ne i8* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @REQUIRE(i32 %12)
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %16 = call i64 @isc_file_absolutepath(i8* %14, i8* %15, i32 1024)
  %17 = load i64, i64* @ISC_R_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %2, align 4
  br label %89

21:                                               ; preds = %1
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %23 = load i8, i8* %22, align 16
  %24 = call i64 @isalpha(i8 signext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %21
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 58
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 2
  %33 = load i8, i8* %32, align 2
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 92
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 2
  %38 = load i8, i8* %37, align 2
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 47
  br i1 %40, label %41, label %46

41:                                               ; preds = %36, %31
  %42 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 0
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %44 = call i32 @strncpy(i8* %42, i8* %43, i32 3)
  %45 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 3
  store i8 0, i8* %45, align 1
  br label %78

46:                                               ; preds = %36, %26, %21
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %48 = load i8, i8* %47, align 16
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 92
  br i1 %50, label %51, label %75

51:                                               ; preds = %46
  %52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 92
  br i1 %55, label %56, label %75

56:                                               ; preds = %51
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %58 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %59 = call i32 @strcpy(i8* %57, i8* %58)
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %61 = call i8* @strtok(i8* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %61, i8** %7, align 8
  %62 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %62, i8** %8, align 8
  %63 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 0
  %64 = call i32 @strcpy(i8* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %65 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 0
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @strcat(i8* %65, i8* %66)
  %68 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 0
  %69 = call i32 @strcat(i8* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %70 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 0
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @strcat(i8* %70, i8* %71)
  %73 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 0
  %74 = call i32 @strcat(i8* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %77

75:                                               ; preds = %51, %46
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %2, align 4
  br label %89

77:                                               ; preds = %56
  br label %78

78:                                               ; preds = %77, %41
  %79 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 0
  %80 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %81 = call i32 @GetVolumeInformation(i8* %79, i32* null, i32 0, i32* null, i32 0, i32* null, i8* %80, i32 20)
  %82 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %83 = call i64 @strcmp(i8* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* @TRUE, align 4
  store i32 %86, i32* %2, align 4
  br label %89

87:                                               ; preds = %78
  %88 = load i32, i32* @FALSE, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %85, %75, %19
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i64 @isc_file_absolutepath(i8*, i8*, i32) #1

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @GetVolumeInformation(i8*, i32*, i32, i32*, i32, i32*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

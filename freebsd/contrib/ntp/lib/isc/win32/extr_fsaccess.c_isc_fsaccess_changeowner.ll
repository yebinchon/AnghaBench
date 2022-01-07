; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_fsaccess.c_isc_fsaccess_changeowner.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_fsaccess.c_isc_fsaccess_changeowner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@ISC_R_SUCCESS = common dso_local global i32 0, align 4
@SECURITY_DESCRIPTOR_REVISION = common dso_local global i32 0, align 4
@ISC_R_NOPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Administrators\00", align 1
@OWNER_SECURITY_INFORMATION = common dso_local global i32 0, align 4
@GROUP_SECURITY_INFORMATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_fsaccess_changeowner(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [500 x i32], align 16
  %8 = alloca [500 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [100 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = ptrtoint [500 x i32]* %7 to i32
  store i32 %16, i32* %9, align 4
  store i32 2000, i32* %10, align 4
  store i32 100, i32* %12, align 4
  %17 = ptrtoint [500 x i32]* %8 to i32
  store i32 %17, i32* %14, align 4
  store i32 2000, i32* %15, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @is_ntfs(i8* %18)
  %20 = load i64, i64* @FALSE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %23, i32* %3, align 4
  br label %70

24:                                               ; preds = %2
  %25 = load i32, i32* @SECURITY_DESCRIPTOR_REVISION, align 4
  %26 = call i32 @InitializeSecurityDescriptor(i32* %6, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @ISC_R_NOPERM, align 4
  store i32 %29, i32* %3, align 4
  br label %70

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %9, align 4
  %33 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %34 = call i32 @LookupAccountName(i32 0, i8* %31, i32 %32, i32* %10, i8* %33, i32* %12, i32* %13)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @ISC_R_NOPERM, align 4
  store i32 %37, i32* %3, align 4
  br label %70

38:                                               ; preds = %30
  store i32 100, i32* %12, align 4
  %39 = load i32, i32* %14, align 4
  %40 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %41 = call i32 @LookupAccountName(i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %39, i32* %15, i8* %40, i32* %12, i32* %13)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @ISC_R_NOPERM, align 4
  store i32 %44, i32* %3, align 4
  br label %70

45:                                               ; preds = %38
  %46 = load i32, i32* %9, align 4
  %47 = load i64, i64* @FALSE, align 8
  %48 = call i32 @SetSecurityDescriptorOwner(i32* %6, i32 %46, i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @ISC_R_NOPERM, align 4
  store i32 %51, i32* %3, align 4
  br label %70

52:                                               ; preds = %45
  %53 = load i32, i32* %14, align 4
  %54 = load i64, i64* @FALSE, align 8
  %55 = call i32 @SetSecurityDescriptorGroup(i32* %6, i32 %53, i64 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @ISC_R_NOPERM, align 4
  store i32 %58, i32* %3, align 4
  br label %70

59:                                               ; preds = %52
  %60 = load i8*, i8** %4, align 8
  %61 = load i32, i32* @OWNER_SECURITY_INFORMATION, align 4
  %62 = load i32, i32* @GROUP_SECURITY_INFORMATION, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @SetFileSecurity(i8* %60, i32 %63, i32* %6)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* @ISC_R_NOPERM, align 4
  store i32 %67, i32* %3, align 4
  br label %70

68:                                               ; preds = %59
  %69 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %66, %57, %50, %43, %36, %28, %22
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @is_ntfs(i8*) #1

declare dso_local i32 @InitializeSecurityDescriptor(i32*, i32) #1

declare dso_local i32 @LookupAccountName(i32, i8*, i32, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @SetSecurityDescriptorOwner(i32*, i32, i64) #1

declare dso_local i32 @SetSecurityDescriptorGroup(i32*, i32, i64) #1

declare dso_local i32 @SetFileSecurity(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_strerror.c_GetCryptErrorMessage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_strerror.c_GetCryptErrorMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"The dwFlags parameter has an illegal value.\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"The Registry entry for the key container could not be opened and may not exist.\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"The pszContainer or pszProvider parameter is set to an illegal value.\00", align 1
@.str.3 = private unnamed_addr constant [108 x i8] c"The value of the dwProvType parameter is out of range. All provider types must be from 1 to 999, inclusive.\00", align 1
@.str.4 = private unnamed_addr constant [117 x i8] c"The provider DLL signature did not verify correctly. Either the DLL or the digital signature has been tampered with.\00", align 1
@.str.5 = private unnamed_addr constant [80 x i8] c"The dwFlags parameter is CRYPT_NEWKEYSET, but the key container already exists.\00", align 1
@.str.6 = private unnamed_addr constant [199 x i8] c"The Registry entry for the pszContainer key container was found (in the HKEY_CURRENT_USER window), but is corrupt. See the section System Administration for  etails about CryptoAPI's Registry usage.\00", align 1
@.str.7 = private unnamed_addr constant [106 x i8] c"No Registry entry exists in the HKEY_CURRENT_USER window for the key container specified by pszContainer.\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"The CSP ran out of memory during the operation.\00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"The provider DLL file does not exist or is not on the current path.\00", align 1
@.str.10 = private unnamed_addr constant [252 x i8] c"The Registry entry for the provider type specified by dwProvType is corrupt. This error may relate to either the user default CSP list or the machine default CSP list. See the section System Administration for details about CryptoAPI's Registry usage.\00", align 1
@.str.11 = private unnamed_addr constant [181 x i8] c"The provider type specified by dwProvType does not match the provider type found in the Registry. Note that this error can only occur when pszProvider specifies an actual CSP name.\00", align 1
@.str.12 = private unnamed_addr constant [72 x i8] c"No Registry entry exists for the provider type specified by dwProvType.\00", align 1
@.str.13 = private unnamed_addr constant [110 x i8] c"The provider DLL file could not be loaded, and may not exist. If it exists, then the file is not a valid DLL.\00", align 1
@.str.14 = private unnamed_addr constant [86 x i8] c"An error occurred while loading the DLL file image, prior to verifying its signature.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @GetCryptErrorMessage(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %20 [
    i32 142, label %5
    i32 141, label %6
    i32 140, label %7
    i32 139, label %8
    i32 138, label %9
    i32 137, label %10
    i32 136, label %11
    i32 135, label %12
    i32 134, label %13
    i32 132, label %14
    i32 131, label %15
    i32 129, label %16
    i32 130, label %17
    i32 133, label %18
    i32 128, label %19
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %21

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %21

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %21

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %21

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %21

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %21

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([199 x i8], [199 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %21

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %21

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %21

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %21

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([252 x i8], [252 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %21

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([181 x i8], [181 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %21

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %21

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %21

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %21

20:                                               ; preds = %1
  store i8* null, i8** %3, align 8
  br label %21

21:                                               ; preds = %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %22 = load i8*, i8** %3, align 8
  ret i8* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

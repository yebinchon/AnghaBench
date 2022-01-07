; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_akm_from_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_akm_from_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"psk\00", align 1
@DPP_AKM_PSK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"sae\00", align 1
@DPP_AKM_SAE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"psk+sae\00", align 1
@DPP_AKM_PSK_SAE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"dpp\00", align 1
@DPP_AKM_DPP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"dpp+sae\00", align 1
@DPP_AKM_SAE_DPP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"dpp+psk+sae\00", align 1
@DPP_AKM_PSK_SAE_DPP = common dso_local global i32 0, align 4
@DPP_AKM_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dpp_akm_from_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_akm_from_str(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @os_strcmp(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @DPP_AKM_PSK, align 4
  store i32 %8, i32* %2, align 4
  br label %41

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @os_strcmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @DPP_AKM_SAE, align 4
  store i32 %14, i32* %2, align 4
  br label %41

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @os_strcmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @DPP_AKM_PSK_SAE, align 4
  store i32 %20, i32* %2, align 4
  br label %41

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @os_strcmp(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @DPP_AKM_DPP, align 4
  store i32 %26, i32* %2, align 4
  br label %41

27:                                               ; preds = %21
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @os_strcmp(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @DPP_AKM_SAE_DPP, align 4
  store i32 %32, i32* %2, align 4
  br label %41

33:                                               ; preds = %27
  %34 = load i8*, i8** %3, align 8
  %35 = call i64 @os_strcmp(i8* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @DPP_AKM_PSK_SAE_DPP, align 4
  store i32 %38, i32* %2, align 4
  br label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @DPP_AKM_UNKNOWN, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %37, %31, %25, %19, %13, %7
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @os_strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

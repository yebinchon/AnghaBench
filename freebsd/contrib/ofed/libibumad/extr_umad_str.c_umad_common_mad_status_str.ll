; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibumad/extr_umad_str.c_umad_common_mad_status_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibumad/extr_umad_str.c_umad_common_mad_status_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UMAD_STATUS_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Busy\00", align 1
@UMAD_STATUS_REDIRECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Redirection required\00", align 1
@UMAD_STATUS_INVALID_FIELD_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Bad Version\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Method not supported\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Method/Attribute combo not supported\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Invalid attribute/modifier field\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Success\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @umad_common_mad_status_str(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @be16toh(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @UMAD_STATUS_BUSY, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %27

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @UMAD_STATUS_REDIRECT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %27

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @UMAD_STATUS_INVALID_FIELD_MASK, align 4
  %21 = and i32 %19, %20
  switch i32 %21, label %26 [
    i32 130, label %22
    i32 128, label %23
    i32 131, label %24
    i32 129, label %25
  ]

22:                                               ; preds = %18
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %27

23:                                               ; preds = %18
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %27

24:                                               ; preds = %18
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %27

25:                                               ; preds = %18
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %27

26:                                               ; preds = %18
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %27

27:                                               ; preds = %26, %25, %24, %23, %22, %17, %11
  %28 = load i8*, i8** %2, align 8
  ret i8* %28
}

declare dso_local i32 @be16toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

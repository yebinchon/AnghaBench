; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_packed_rrset.c_sec_status_to_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_packed_rrset.c_sec_status_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"sec_status_unchecked\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"sec_status_bogus\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"sec_status_indeterminate\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"sec_status_insecure\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"sec_status_secure_sentinel_fail\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"sec_status_secure\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"unknown_sec_status_value\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sec_status_to_string(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %11 [
    i32 128, label %5
    i32 133, label %6
    i32 132, label %7
    i32 131, label %8
    i32 129, label %9
    i32 130, label %10
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %12

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %12

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %12

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %12

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %12

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %12

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %12

12:                                               ; preds = %11, %10, %9, %8, %7, %6, %5
  %13 = load i8*, i8** %2, align 8
  ret i8* %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

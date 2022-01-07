; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openpam/bin/pamtest/extr_pamtest.c_pt_set_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openpam/bin/pamtest/extr_pamtest.c_pt_set_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"setting %s to %s\00", align 1
@pam_item_name = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"setting %s\00", align 1
@pamh = common dso_local global i32 0, align 4
@PAM_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"pam_set_item(%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pt_set_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_set_item(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %15 [
    i32 131, label %7
    i32 129, label %7
    i32 138, label %7
    i32 135, label %7
    i32 130, label %7
    i32 133, label %7
    i32 132, label %7
    i32 128, label %7
    i32 137, label %7
    i32 134, label %7
    i32 136, label %7
  ]

7:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %8 = load i32*, i32** @pam_item_name, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 (i8*, i32, ...) @pt_verbose(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %12, i8* %13)
  br label %22

15:                                               ; preds = %2
  %16 = load i32*, i32** @pam_item_name, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, i32, ...) @pt_verbose(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %15, %7
  %23 = load i32, i32* @pamh, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @pam_set_item(i32 %23, i32 %24, i8* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @PAM_SUCCESS, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = load i32*, i32** @pam_item_name, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pt_error(i32 %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %29, %22
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @pt_verbose(i8*, i32, ...) #1

declare dso_local i32 @pam_set_item(i32, i32, i8*) #1

declare dso_local i32 @pt_error(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

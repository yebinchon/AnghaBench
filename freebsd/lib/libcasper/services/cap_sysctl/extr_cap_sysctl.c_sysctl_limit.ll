; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_sysctl/extr_cap_sysctl.c_sysctl_limit.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_sysctl/extr_cap_sysctl.c_sysctl_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@NV_TYPE_NVLIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOTCAPABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @sysctl_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysctl_limit(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* null, i8** %8, align 8
  br label %11

11:                                               ; preds = %41, %2
  %12 = load i32*, i32** %5, align 8
  %13 = call i8* @nvlist_next(i32* %12, i32* %10, i8** %8)
  store i8* %13, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @NV_TYPE_NVLIST, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %15
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %3, align 4
  br label %43

25:                                               ; preds = %19
  %26 = load i8*, i8** %8, align 8
  %27 = call i32* @cnvlist_get_nvlist(i8* %26)
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @sysctl_valid(i32* %28, i32 1)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %3, align 4
  br label %43

34:                                               ; preds = %25
  %35 = load i32*, i32** %4, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @sysctl_allowed(i32* %35, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @ENOTCAPABLE, align 4
  store i32 %40, i32* %3, align 4
  br label %43

41:                                               ; preds = %34
  br label %11

42:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %39, %32, %23
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i8* @nvlist_next(i32*, i32*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @cnvlist_get_nvlist(i8*) #1

declare dso_local i32 @sysctl_valid(i32*, i32) #1

declare dso_local i32 @sysctl_allowed(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

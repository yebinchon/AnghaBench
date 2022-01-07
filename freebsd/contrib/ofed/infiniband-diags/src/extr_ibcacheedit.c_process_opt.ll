; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibcacheedit.c_process_opt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibcacheedit.c_process_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@switchguid_before = common dso_local global i32 0, align 4
@switchguid_after = common dso_local global i32 0, align 4
@switchguid_flag = common dso_local global i32 0, align 4
@caguid_before = common dso_local global i32 0, align 4
@caguid_after = common dso_local global i32 0, align 4
@caguid_flag = common dso_local global i32 0, align 4
@sysimgguid_before = common dso_local global i32 0, align 4
@sysimgguid_after = common dso_local global i32 0, align 4
@sysimgguid_flag = common dso_local global i32 0, align 4
@portguid_nodeguid = common dso_local global i32 0, align 4
@portguid_before = common dso_local global i32 0, align 4
@portguid_after = common dso_local global i32 0, align 4
@portguid_flag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @process_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_opt(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %41 [
    i32 1, label %9
    i32 2, label %17
    i32 3, label %25
    i32 4, label %33
  ]

9:                                                ; preds = %3
  %10 = load i8*, i8** %7, align 8
  %11 = call i32 @parse_beforeafter(i8* %10, i32* @switchguid_before, i32* @switchguid_after)
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 -1, i32* %4, align 4
  br label %43

14:                                               ; preds = %9
  %15 = load i32, i32* @switchguid_flag, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @switchguid_flag, align 4
  br label %42

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @parse_beforeafter(i8* %18, i32* @caguid_before, i32* @caguid_after)
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %43

22:                                               ; preds = %17
  %23 = load i32, i32* @caguid_flag, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @caguid_flag, align 4
  br label %42

25:                                               ; preds = %3
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @parse_beforeafter(i8* %26, i32* @sysimgguid_before, i32* @sysimgguid_after)
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 -1, i32* %4, align 4
  br label %43

30:                                               ; preds = %25
  %31 = load i32, i32* @sysimgguid_flag, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @sysimgguid_flag, align 4
  br label %42

33:                                               ; preds = %3
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @parse_guidbeforeafter(i8* %34, i32* @portguid_nodeguid, i32* @portguid_before, i32* @portguid_after)
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 -1, i32* %4, align 4
  br label %43

38:                                               ; preds = %33
  %39 = load i32, i32* @portguid_flag, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @portguid_flag, align 4
  br label %42

41:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %43

42:                                               ; preds = %38, %30, %22, %14
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %41, %37, %29, %21, %13
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @parse_beforeafter(i8*, i32*, i32*) #1

declare dso_local i32 @parse_guidbeforeafter(i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

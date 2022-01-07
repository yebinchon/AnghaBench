; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_grp/extr_cap_grp.c_grp_allowed_cmds.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_grp/extr_cap_grp.c_grp_allowed_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NV_TYPE_NULL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOTCAPABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @grp_allowed_cmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grp_allowed_cmds(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* null, i8** %7, align 8
  br label %9

9:                                                ; preds = %26, %2
  %10 = load i32*, i32** %5, align 8
  %11 = call i8* @nvlist_next(i32* %10, i32* %8, i8** %7)
  store i8* %11, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @NV_TYPE_NULL, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %28

19:                                               ; preds = %13
  %20 = load i32*, i32** %4, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @grp_allowed_cmd(i32* %20, i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOTCAPABLE, align 4
  store i32 %25, i32* %3, align 4
  br label %28

26:                                               ; preds = %19
  br label %9

27:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %24, %17
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i8* @nvlist_next(i32*, i32*, i8**) #1

declare dso_local i32 @grp_allowed_cmd(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

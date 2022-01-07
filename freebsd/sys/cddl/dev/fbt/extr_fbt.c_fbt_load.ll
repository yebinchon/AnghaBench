; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/fbt/extr_fbt.c_fbt_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/fbt/extr_fbt.c_fbt_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fbt_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"dtrace/fbt\00", align 1
@fbt_cdev = common dso_local global i32 0, align 4
@fbt_probetab_size = common dso_local global i32 0, align 4
@FBT_PROBETAB_SIZE = common dso_local global i32 0, align 4
@fbt_probetab_mask = common dso_local global i32 0, align 4
@M_FBT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@fbt_probetab = common dso_local global i32 0, align 4
@fbt_doubletrap = common dso_local global i32 0, align 4
@dtrace_doubletrap_func = common dso_local global i32 0, align 4
@fbt_invop = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"fbt\00", align 1
@fbt_attr = common dso_local global i32 0, align 4
@DTRACE_PRIV_USER = common dso_local global i32 0, align 4
@fbt_pops = common dso_local global i32 0, align 4
@fbt_id = common dso_local global i32 0, align 4
@fbt_linker_file_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fbt_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbt_load(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @UID_ROOT, align 4
  %4 = load i32, i32* @GID_WHEEL, align 4
  %5 = call i32 @make_dev(i32* @fbt_cdevsw, i32 0, i32 %3, i32 %4, i32 384, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %5, i32* @fbt_cdev, align 4
  %6 = load i32, i32* @fbt_probetab_size, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @FBT_PROBETAB_SIZE, align 4
  store i32 %9, i32* @fbt_probetab_size, align 4
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i32, i32* @fbt_probetab_size, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* @fbt_probetab_mask, align 4
  %13 = load i32, i32* @fbt_probetab_size, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 8
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @M_FBT, align 4
  %18 = load i32, i32* @M_WAITOK, align 4
  %19 = load i32, i32* @M_ZERO, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @malloc(i32 %16, i32 %17, i32 %20)
  store i32 %21, i32* @fbt_probetab, align 4
  %22 = load i32, i32* @fbt_doubletrap, align 4
  store i32 %22, i32* @dtrace_doubletrap_func, align 4
  %23 = load i32, i32* @fbt_invop, align 4
  %24 = call i32 @dtrace_invop_add(i32 %23)
  %25 = load i32, i32* @DTRACE_PRIV_USER, align 4
  %26 = call i64 @dtrace_register(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* @fbt_attr, i32 %25, i32* null, i32* @fbt_pops, i32* null, i32* @fbt_id)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %10
  br label %32

29:                                               ; preds = %10
  %30 = load i32, i32* @fbt_linker_file_cb, align 4
  %31 = call i32 @linker_file_foreach(i32 %30, i32* null)
  br label %32

32:                                               ; preds = %29, %28
  ret void
}

declare dso_local i32 @make_dev(i32*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @dtrace_invop_add(i32) #1

declare dso_local i64 @dtrace_register(i8*, i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @linker_file_foreach(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

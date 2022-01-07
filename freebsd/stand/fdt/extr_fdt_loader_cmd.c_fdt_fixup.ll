; ModuleID = '/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_fdt_fixup.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_fdt_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"fdt_fixup()\0A\00", align 1
@fdtp = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"chosen\00", align 1
@FDT_ERR_NOTFOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"fixup-applied\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @fdt_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdt_fixup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @debugf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %4 = load i32*, i32** @fdtp, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = call i64 (...) @fdt_setup_fdtp()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store i32 0, i32* %1, align 4
  br label %32

10:                                               ; preds = %6, %0
  %11 = load i32*, i32** @fdtp, align 8
  %12 = call i32 @fdt_subnode_offset(i32* %11, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* @FDT_ERR_NOTFOUND, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32*, i32** @fdtp, align 8
  %18 = call i32 @fdt_add_subnode(i32* %17, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %16, %10
  %20 = load i32*, i32** @fdtp, align 8
  %21 = load i32, i32* %2, align 4
  %22 = call i64 @fdt_getprop(i32* %20, i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 1, i32* %1, align 4
  br label %32

25:                                               ; preds = %19
  %26 = call i32 (...) @fdt_platform_fixups()
  %27 = load i32*, i32** @fdtp, align 8
  %28 = call i32 @fdt_subnode_offset(i32* %27, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %28, i32* %2, align 4
  %29 = load i32*, i32** @fdtp, align 8
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @fdt_setprop(i32* %29, i32 %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 0)
  store i32 1, i32* %1, align 4
  br label %32

32:                                               ; preds = %25, %24, %9
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i32 @debugf(i8*) #1

declare dso_local i64 @fdt_setup_fdtp(...) #1

declare dso_local i32 @fdt_subnode_offset(i32*, i32, i8*) #1

declare dso_local i32 @fdt_add_subnode(i32*, i32, i8*) #1

declare dso_local i64 @fdt_getprop(i32*, i32, i8*, i32*) #1

declare dso_local i32 @fdt_platform_fixups(...) #1

declare dso_local i32 @fdt_setprop(i32*, i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

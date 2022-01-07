; ModuleID = '/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_fdt_cmd_mknode.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_fdt_cmd_mknode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@command_errbuf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"no node name specified\00", align 1
@CMD_ERROR = common dso_local global i32 0, align 4
@fdtp = common dso_local global i32 0, align 4
@FDT_ERR_NOSPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Device tree blob is too small!\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Could not add node!\0A\00", align 1
@CMD_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @fdt_cmd_mknode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdt_cmd_mknode(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %10, 2
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 2
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %8, align 8
  br label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @command_errbuf, align 4
  %18 = call i32 @sprintf(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @CMD_ERROR, align 4
  store i32 %19, i32* %3, align 4
  br label %47

20:                                               ; preds = %12
  %21 = call i64 @fdt_extract_nameloc(i8** %8, i8** %9, i32* %6)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @CMD_ERROR, align 4
  store i32 %24, i32* %3, align 4
  br label %47

25:                                               ; preds = %20
  %26 = load i32, i32* @fdtp, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @fdt_add_subnode(i32 %26, i32 %27, i8* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @FDT_ERR_NOSPACE, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @command_errbuf, align 4
  %39 = call i32 @sprintf(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @command_errbuf, align 4
  %42 = call i32 @sprintf(i32 %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* @CMD_ERROR, align 4
  store i32 %44, i32* %3, align 4
  br label %47

45:                                               ; preds = %25
  %46 = load i32, i32* @CMD_OK, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %43, %23, %16
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i64 @fdt_extract_nameloc(i8**, i8**, i32*) #1

declare dso_local i32 @fdt_add_subnode(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

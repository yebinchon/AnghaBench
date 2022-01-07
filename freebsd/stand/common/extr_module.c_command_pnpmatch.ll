; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_command_pnpmatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_command_pnpmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pnp_verbose_flag = common dso_local global i32 0, align 4
@pnp_dump_flag = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@optreset = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"vd\00", align 1
@CMD_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Matched module: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"No module matches %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @command_pnpmatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command_pnpmatch(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* @pnp_verbose_flag, align 4
  store i32 0, i32* @pnp_dump_flag, align 4
  store i32 1, i32* @optind, align 4
  store i32 1, i32* @optreset, align 4
  br label %8

8:                                                ; preds = %20, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @getopt(i32 %9, i8** %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %7, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %18 [
    i32 118, label %15
    i32 100, label %16
    i32 63, label %17
  ]

15:                                               ; preds = %13
  store i32 1, i32* @pnp_verbose_flag, align 4
  br label %20

16:                                               ; preds = %13
  store i32 1, i32* @pnp_dump_flag, align 4
  br label %20

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %13, %17
  %19 = load i32, i32* @CMD_OK, align 4
  store i32 %19, i32* %3, align 4
  br label %56

20:                                               ; preds = %16, %15
  br label %8

21:                                               ; preds = %8
  %22 = load i32, i32* @optind, align 4
  %23 = sub nsw i32 %22, 1
  %24 = load i8**, i8*** %5, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i8*, i8** %24, i64 %25
  store i8** %26, i8*** %5, align 8
  %27 = load i32, i32* @optind, align 4
  %28 = sub nsw i32 %27, 1
  %29 = load i32, i32* %4, align 4
  %30 = sub nsw i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 2
  %36 = load i8*, i8** %35, align 8
  %37 = call i8* @mod_searchmodule_pnpinfo(i8* %33, i8* %36)
  store i8* %37, i8** %6, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %21
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  br label %54

43:                                               ; preds = %21
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %48, %43
  br label %54

54:                                               ; preds = %53, %40
  %55 = load i32, i32* @CMD_OK, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %18
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @mod_searchmodule_pnpinfo(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

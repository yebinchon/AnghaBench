; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_zfs_cmd.c_command_lszfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_zfs_cmd.c_command_lszfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"a single dataset must be supplied\00", align 1
@command_errmsg = common dso_local global i8* null, align 8
@CMD_ERROR = common dso_local global i32 0, align 4
@CMD_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @command_lszfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command_lszfs(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8** @command_errmsg, align 8
  %10 = load i32, i32* @CMD_ERROR, align 4
  store i32 %10, i32* %3, align 4
  br label %24

11:                                               ; preds = %2
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @zfs_list(i8* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i32, i32* %6, align 4
  %20 = call i8* @strerror(i32 %19)
  store i8* %20, i8** @command_errmsg, align 8
  %21 = load i32, i32* @CMD_ERROR, align 4
  store i32 %21, i32* %3, align 4
  br label %24

22:                                               ; preds = %11
  %23 = load i32, i32* @CMD_OK, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %22, %18, %9
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @zfs_list(i8*) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

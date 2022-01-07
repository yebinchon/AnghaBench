; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_zfs_cmd.c_command_reloadbe.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_zfs_cmd.c_command_reloadbe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"wrong number of arguments\00", align 1
@command_errmsg = common dso_local global i8* null, align 8
@CMD_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"zfs_be_root\00", align 1
@CMD_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @command_reloadbe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command_reloadbe(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp sgt i32 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8** @command_errmsg, align 8
  %11 = load i32, i32* @CMD_ERROR, align 4
  store i32 %11, i32* %3, align 4
  br label %38

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @zfs_bootenv(i8* %18)
  store i32 %19, i32* %6, align 4
  br label %29

20:                                               ; preds = %12
  %21 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @CMD_OK, align 4
  store i32 %25, i32* %3, align 4
  br label %38

26:                                               ; preds = %20
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @zfs_bootenv(i8* %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %26, %15
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = call i8* @strerror(i32 %33)
  store i8* %34, i8** @command_errmsg, align 8
  %35 = load i32, i32* @CMD_ERROR, align 4
  store i32 %35, i32* %3, align 4
  br label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @CMD_OK, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %32, %24, %10
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @zfs_bootenv(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

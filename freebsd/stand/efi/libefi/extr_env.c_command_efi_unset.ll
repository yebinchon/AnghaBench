; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_env.c_command_efi_unset.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_env.c_command_efi_unset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*, i32*, i32, i32, i32*)* }

@.str = private unnamed_addr constant [20 x i8] c"efi-unset uuid var\0A\00", align 1
@CMD_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Invalid uuid %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"would unset %s %s \0A\00", align 1
@CMD_OK = common dso_local global i32 0, align 4
@RS = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @command_efi_unset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command_efi_unset(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [128 x i32], align 16
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 3
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @CMD_ERROR, align 4
  store i32 %14, i32* %3, align 4
  br label %39

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %6, align 8
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 2
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @efi_name_to_guid(i8* %22, i32* %9)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* @CMD_ERROR, align 4
  store i32 %28, i32* %3, align 4
  br label %39

29:                                               ; preds = %15
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 0
  %32 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 0
  %33 = call i32 @nitems(i32* %32)
  %34 = call i32 @cpy8to16(i8* %30, i32* %31, i32 %33)
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %35, i8* %36)
  %38 = load i32, i32* @CMD_OK, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %29, %25, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @efi_name_to_guid(i8*, i32*) #1

declare dso_local i32 @cpy8to16(i8*, i32*, i32) #1

declare dso_local i32 @nitems(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

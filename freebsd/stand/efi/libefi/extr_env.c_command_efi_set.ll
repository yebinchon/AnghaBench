; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_env.c_command_efi_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_env.c_command_efi_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*, i32*, i32, i64, i8*)* }

@.str = private unnamed_addr constant [28 x i8] c"efi-set uuid var new-value\0A\00", align 1
@CMD_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Invalid uuid %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"would set %s %s = %s\0A\00", align 1
@CMD_OK = common dso_local global i32 0, align 4
@EFI_VARIABLE_BOOTSERVICE_ACCESS = common dso_local global i32 0, align 4
@EFI_VARIABLE_NON_VOLATILE = common dso_local global i32 0, align 4
@EFI_VARIABLE_RUNTIME_ACCESS = common dso_local global i32 0, align 4
@RS = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @command_efi_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command_efi_set(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [128 x i32], align 16
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 4
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @CMD_ERROR, align 4
  store i32 %15, i32* %3, align 4
  br label %44

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %6, align 8
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 2
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %7, align 8
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 3
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @efi_name_to_guid(i8* %26, i32* %10)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %16
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* @CMD_ERROR, align 4
  store i32 %32, i32* %3, align 4
  br label %44

33:                                               ; preds = %16
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 0
  %36 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 0
  %37 = call i32 @nitems(i32* %36)
  %38 = call i32 @cpy8to16(i8* %34, i32* %35, i32 %37)
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %39, i8* %40, i8* %41)
  %43 = load i32, i32* @CMD_OK, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %33, %29, %13
  %45 = load i32, i32* %3, align 4
  ret i32 %45
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

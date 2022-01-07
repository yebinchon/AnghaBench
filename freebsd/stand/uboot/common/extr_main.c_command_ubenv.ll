; ModuleID = '/home/carl/AnghaBench/freebsd/stand/uboot/common/extr_main.c_command_ubenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/uboot/common/extr_main.c_command_ubenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UBENV_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"import\00", align 1
@UBENV_IMPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@UBENV_SHOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"usage: 'ubenv <import|show> [var ...]\00", align 1
@command_errmsg = common dso_local global i8* null, align 8
@CMD_ERROR = common dso_local global i32 0, align 4
@CMD_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @command_ubenv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command_ubenv(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @UBENV_UNKNOWN, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @strcasecmp(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @UBENV_IMPORT, align 4
  store i32 %19, i32* %6, align 4
  br label %29

20:                                               ; preds = %12
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strcasecmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @UBENV_SHOW, align 4
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %26, %20
  br label %29

29:                                               ; preds = %28, %18
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @UBENV_UNKNOWN, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8** @command_errmsg, align 8
  %35 = load i32, i32* @CMD_ERROR, align 4
  store i32 %35, i32* %3, align 4
  br label %69

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  %38 = icmp sgt i32 %37, 2
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  store i32 2, i32* %8, align 4
  br label %40

40:                                               ; preds = %52, %39
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = load i8**, i8*** %5, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @handle_uboot_env_var(i32 %45, i8* %50)
  br label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %40

55:                                               ; preds = %40
  br label %67

56:                                               ; preds = %36
  store i8* null, i8** %7, align 8
  br label %57

57:                                               ; preds = %62, %56
  %58 = load i8*, i8** %7, align 8
  %59 = call i8* @ub_env_enum(i8* %58)
  store i8* %59, i8** %7, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %66

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @handle_uboot_env_var(i32 %63, i8* %64)
  br label %57

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66, %55
  %68 = load i32, i32* @CMD_OK, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %34
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @handle_uboot_env_var(i32, i8*) #1

declare dso_local i8* @ub_env_enum(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

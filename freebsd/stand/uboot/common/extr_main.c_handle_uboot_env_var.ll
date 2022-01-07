; ModuleID = '/home/carl/AnghaBench/freebsd/stand/uboot/common/extr_main.c_handle_uboot_env_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/uboot/common/extr_main.c_handle_uboot_env_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UBENV_IMPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"name cannot start with '=': '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"uboot.\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"empty variable name\0A\00", align 1
@UBENV_SHOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"uboot.%s is not set\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"uboot.%s=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @handle_uboot_env_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_uboot_env_var(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @UBENV_IMPORT, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %50

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strcspn(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  br label %95

20:                                               ; preds = %12
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %30 = call i32 @strcpy(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %31 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @strncat(i8* %31, i8* %32, i32 121)
  br label %49

34:                                               ; preds = %20
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @MIN(i32 %35, i32 127)
  store i32 %36, i32* %8, align 4
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @strncpy(i8* %37, i8* %38, i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 %42
  store i8 0, i8* %43, align 1
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  store i8* %48, i8** %4, align 8
  br label %49

49:                                               ; preds = %34, %28
  br label %50

50:                                               ; preds = %49, %2
  %51 = load i8*, i8** %4, align 8
  %52 = call i64 @strncmp(i8* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 6
  store i8* %56, i8** %4, align 8
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %95

65:                                               ; preds = %57
  %66 = load i8*, i8** %4, align 8
  %67 = call i8* @ub_env_get(i8* %66)
  store i8* %67, i8** %6, align 8
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @UBENV_SHOW, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %65
  %72 = load i8*, i8** %6, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %75)
  br label %81

77:                                               ; preds = %71
  %78 = load i8*, i8** %4, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %78, i8* %79)
  br label %81

81:                                               ; preds = %77, %74
  br label %95

82:                                               ; preds = %65
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @UBENV_IMPORT, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = load i8*, i8** %6, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @setenv(i8* %90, i8* %91, i32 1)
  br label %93

93:                                               ; preds = %89, %86
  br label %94

94:                                               ; preds = %93, %82
  br label %95

95:                                               ; preds = %17, %63, %94, %81
  ret void
}

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strncat(i8*, i8*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @ub_env_get(i8*) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

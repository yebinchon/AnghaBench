; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslerror.c_AslDisableException.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslerror.c_AslDisableException.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"\22%s\22 is not a valid warning/remark/error ID\0A\00", align 1
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AslGbl_DisabledMessagesIndex = common dso_local global i32 0, align 4
@ASL_MAX_DISABLED_MESSAGES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Too many messages have been disabled (max %d)\0A\00", align 1
@AE_LIMIT = common dso_local global i32 0, align 4
@AslGbl_DisabledMessages = common dso_local global i32* null, align 8
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AslDisableException(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i64 @strtoul(i8* %5, i32* null, i32 0)
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 2000
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 6999
  br i1 %12, label %13, label %17

13:                                               ; preds = %10, %1
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %16, i32* %2, align 4
  br label %34

17:                                               ; preds = %10
  %18 = load i32, i32* @AslGbl_DisabledMessagesIndex, align 4
  %19 = load i32, i32* @ASL_MAX_DISABLED_MESSAGES, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* @ASL_MAX_DISABLED_MESSAGES, align 4
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @AE_LIMIT, align 4
  store i32 %24, i32* %2, align 4
  br label %34

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = load i32*, i32** @AslGbl_DisabledMessages, align 8
  %28 = load i32, i32* @AslGbl_DisabledMessagesIndex, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* @AslGbl_DisabledMessagesIndex, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @AslGbl_DisabledMessagesIndex, align 4
  %33 = load i32, i32* @AE_OK, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %25, %21, %13
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

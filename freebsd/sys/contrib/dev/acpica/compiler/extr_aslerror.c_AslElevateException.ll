; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslerror.c_AslElevateException.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslerror.c_AslElevateException.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"\22%s\22 is not a valid warning/remark/erro ID\0A\00", align 1
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AslGbl_ElevatedMessagesIndex = common dso_local global i64 0, align 8
@ASL_MAX_ELEVATED_MESSAGES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"Too many messages have been registered as elevated (max %d)\0A\00", align 1
@ASL_MAX_DISABLED_MESSAGES = common dso_local global i32 0, align 4
@AE_LIMIT = common dso_local global i32 0, align 4
@AslGbl_ElevatedMessages = common dso_local global i32* null, align 8
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AslElevateException(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i64 @strtoul(i8* %5, i32* null, i32 0)
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp sgt i32 %8, 6999
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %13, i32* %2, align 4
  br label %30

14:                                               ; preds = %1
  %15 = load i64, i64* @AslGbl_ElevatedMessagesIndex, align 8
  %16 = load i64, i64* @ASL_MAX_ELEVATED_MESSAGES, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* @ASL_MAX_DISABLED_MESSAGES, align 4
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @AE_LIMIT, align 4
  store i32 %21, i32* %2, align 4
  br label %30

22:                                               ; preds = %14
  %23 = load i32, i32* %4, align 4
  %24 = load i32*, i32** @AslGbl_ElevatedMessages, align 8
  %25 = load i64, i64* @AslGbl_ElevatedMessagesIndex, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 %23, i32* %26, align 4
  %27 = load i64, i64* @AslGbl_ElevatedMessagesIndex, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* @AslGbl_ElevatedMessagesIndex, align 8
  %29 = load i32, i32* @AE_OK, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %22, %18, %10
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

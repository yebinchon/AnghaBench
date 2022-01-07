; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_commands.c_command_more.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_commands.c_command_more.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"*** FILE %s BEGIN ***\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"*** FILE %s END ***\0A\00", align 1
@CMD_OK = common dso_local global i32 0, align 4
@CMD_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @command_more to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command_more(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [80 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = call i32 (...) @pager_open()
  store i32 1, i32* %6, align 4
  br label %10

10:                                               ; preds = %51, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi i1 [ false, %10 ], [ %16, %14 ]
  br i1 %18, label %19, label %54

19:                                               ; preds = %17
  %20 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %21 = load i8**, i8*** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @snprintf(i8* %20, i32 80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %28 = call i32 @pager_output(i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %54

31:                                               ; preds = %19
  %32 = load i8**, i8*** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @page_file(i8* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %42 = load i8**, i8*** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @snprintf(i8* %41, i32 80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  %48 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %49 = call i32 @pager_output(i8* %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %40, %31
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %10

54:                                               ; preds = %30, %17
  %55 = call i32 (...) @pager_close()
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @CMD_OK, align 4
  store i32 %59, i32* %3, align 4
  br label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @CMD_ERROR, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @pager_open(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @pager_output(i8*) #1

declare dso_local i32 @page_file(i8*) #1

declare dso_local i32 @pager_close(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

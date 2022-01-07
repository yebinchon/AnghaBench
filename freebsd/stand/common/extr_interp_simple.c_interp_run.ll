; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_interp_simple.c_interp_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_interp_simple.c_interp_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"parse error\0A\00", align 1
@CMD_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@command_errmsg = common dso_local global i8* null, align 8
@CMD_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @interp_run(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @parse(i32* %4, i8*** %5, i8* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @CMD_ERROR, align 4
  store i32 %11, i32* %2, align 4
  br label %30

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i64 @interp_builtin_cmd(i32 %13, i8** %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i8*, i8** @command_errmsg, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %20, i8* %21)
  %23 = load i8**, i8*** %5, align 8
  %24 = call i32 @free(i8** %23)
  %25 = load i32, i32* @CMD_ERROR, align 4
  store i32 %25, i32* %2, align 4
  br label %30

26:                                               ; preds = %12
  %27 = load i8**, i8*** %5, align 8
  %28 = call i32 @free(i8** %27)
  %29 = load i32, i32* @CMD_OK, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %26, %17, %9
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @parse(i32*, i8***, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @interp_builtin_cmd(i32, i8**) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

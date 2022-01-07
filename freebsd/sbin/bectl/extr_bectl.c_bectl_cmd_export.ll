; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl.c_bectl_cmd_export.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl.c_bectl_cmd_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"bectl export: missing boot environment name\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"bectl export: extra arguments provided\0A\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"bectl export: must redirect output\0A\00", align 1
@EX_USAGE = common dso_local global i32 0, align 4
@be = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @bectl_cmd_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bectl_cmd_export(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @usage(i32 0)
  store i32 %12, i32* %3, align 4
  br label %36

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 2
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @usage(i32 0)
  store i32 %19, i32* %3, align 4
  br label %36

20:                                               ; preds = %13
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %6, align 8
  %24 = load i32, i32* @STDOUT_FILENO, align 4
  %25 = call i64 @isatty(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @EX_USAGE, align 4
  store i32 %30, i32* %3, align 4
  br label %36

31:                                               ; preds = %20
  %32 = load i32, i32* @be, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* @STDOUT_FILENO, align 4
  %35 = call i32 @be_export(i32 %32, i8* %33, i32 %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %31, %27, %16, %9
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @be_export(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

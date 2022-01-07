; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_syslog/extr_cap_syslog.c_openlog.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_syslog/extr_cap_syslog.c_openlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"openlog\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ident\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"logopt\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"facility\00", align 1
@LOG_PERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cap_openlog(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i32* @nvlist_create(i32 0)
  store i32* %10, i32** %9, align 8
  %11 = load i32*, i32** %9, align 8
  %12 = call i32 @nvlist_add_string(i32* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32*, i32** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @nvlist_add_string(i32* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %15, %4
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @nvlist_add_number(i32* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @nvlist_add_number(i32* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @LOG_PERROR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* @STDERR_FILENO, align 4
  %33 = call i32 @nvlist_add_descriptor(i32* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %30, %19
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i32* @cap_xfer_nvlist(i32* %35, i32* %36)
  store i32* %37, i32** %9, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %44

41:                                               ; preds = %34
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @nvlist_destroy(i32* %42)
  br label %44

44:                                               ; preds = %41, %40
  ret void
}

declare dso_local i32* @nvlist_create(i32) #1

declare dso_local i32 @nvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @nvlist_add_number(i32*, i8*, i32) #1

declare dso_local i32 @nvlist_add_descriptor(i32*, i8*, i32) #1

declare dso_local i32* @cap_xfer_nvlist(i32*, i32*) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

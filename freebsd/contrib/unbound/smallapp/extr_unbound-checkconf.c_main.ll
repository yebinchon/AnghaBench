; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-checkconf.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-checkconf.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIGFILE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"unbound-checkconf\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fho:\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i8* null, i8** %9, align 8
  %11 = load i8*, i8** @CONFIGFILE, align 8
  store i8* %11, i8** %10, align 8
  %12 = call i32 @log_ident_set(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @log_init(i32* null, i32 0, i32* null)
  %14 = call i32 (...) @checklock_start()
  br label %15

15:                                               ; preds = %28, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %18, i32* %6, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %26 [
    i32 102, label %22
    i32 111, label %23
    i32 63, label %25
    i32 104, label %25
  ]

22:                                               ; preds = %20
  store i32 1, i32* %7, align 4
  br label %28

23:                                               ; preds = %20
  %24 = load i8*, i8** @optarg, align 8
  store i8* %24, i8** %9, align 8
  br label %28

25:                                               ; preds = %20, %20
  br label %26

26:                                               ; preds = %20, %25
  %27 = call i32 (...) @usage()
  br label %28

28:                                               ; preds = %26, %23, %22
  br label %15

29:                                               ; preds = %15
  %30 = load i64, i64* @optind, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %4, align 4
  %35 = load i64, i64* @optind, align 8
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 %35
  store i8** %37, i8*** %5, align 8
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %29
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 (...) @usage()
  br label %45

45:                                               ; preds = %43, %40, %29
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %8, align 8
  br label %54

52:                                               ; preds = %45
  %53 = load i8*, i8** %10, align 8
  store i8* %53, i8** %8, align 8
  br label %54

54:                                               ; preds = %52, %48
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @checkconf(i8* %55, i8* %56, i32 %57)
  %59 = call i32 (...) @checklock_stop()
  ret i32 0
}

declare dso_local i32 @log_ident_set(i8*) #1

declare dso_local i32 @log_init(i32*, i32, i32*) #1

declare dso_local i32 @checklock_start(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @checkconf(i8*, i8*, i32) #1

declare dso_local i32 @checklock_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/devfs/extr_rule.c_rule_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/devfs/extr_rule.c_rule_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32 (i32, i8**)*, i32* }

@.str = private unnamed_addr constant [11 x i8] c"devfs rule\00", align 1
@optind = common dso_local global i32 0, align 4
@optreset = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"s:\00", align 1
@optarg = common dso_local global i32 0, align 4
@in_rsnum = common dso_local global i32 0, align 4
@ctbl_rule = common dso_local global %struct.cmd* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"unknown command: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rule_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i32 @setprogname(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @optind, align 4
  store i32 1, i32* @optreset, align 4
  br label %9

9:                                                ; preds = %21, %2
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @getopt(i32 %10, i8** %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %12, i32* %7, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %19 [
    i32 115, label %16
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @optarg, align 4
  %18 = call i32 @eatonum(i32 %17)
  store i32 %18, i32* @in_rsnum, align 4
  br label %21

19:                                               ; preds = %14
  %20 = call i32 (...) @usage()
  br label %21

21:                                               ; preds = %19, %16
  br label %9

22:                                               ; preds = %9
  %23 = load i32, i32* @optind, align 4
  %24 = load i32, i32* %4, align 4
  %25 = sub nsw i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @optind, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8*, i8** %27, i64 %28
  store i8** %29, i8*** %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = call i32 (...) @usage()
  br label %34

34:                                               ; preds = %32, %22
  %35 = load %struct.cmd*, %struct.cmd** @ctbl_rule, align 8
  store %struct.cmd* %35, %struct.cmd** %6, align 8
  br label %36

36:                                               ; preds = %59, %34
  %37 = load %struct.cmd*, %struct.cmd** %6, align 8
  %38 = getelementptr inbounds %struct.cmd, %struct.cmd* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %62

41:                                               ; preds = %36
  %42 = load %struct.cmd*, %struct.cmd** %6, align 8
  %43 = getelementptr inbounds %struct.cmd, %struct.cmd* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @strcmp(i32* %44, i8* %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %41
  %51 = load %struct.cmd*, %struct.cmd** %6, align 8
  %52 = getelementptr inbounds %struct.cmd, %struct.cmd* %51, i32 0, i32 0
  %53 = load i32 (i32, i8**)*, i32 (i32, i8**)** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load i8**, i8*** %5, align 8
  %56 = call i32 %53(i32 %54, i8** %55)
  %57 = call i32 @exit(i32 %56) #3
  unreachable

58:                                               ; preds = %41
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.cmd*, %struct.cmd** %6, align 8
  %61 = getelementptr inbounds %struct.cmd, %struct.cmd* %60, i32 1
  store %struct.cmd* %61, %struct.cmd** %6, align 8
  br label %36

62:                                               ; preds = %36
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %65)
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @setprogname(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @eatonum(i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @errx(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/smbutil/extr_smbutil.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/smbutil/extr_smbutil.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commands = type { i32, i32 (i32, i8**)* }

@.str = private unnamed_addr constant [3 x i8] c"hv\00", align 1
@EOF = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"invalid option %c\00", align 1
@optind = common dso_local global i32 0, align 4
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"unknown command %s\00", align 1
@CMDFL_NO_KMOD = common dso_local global i32 0, align 4
@optreset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.commands*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (...) @help()
  br label %13

13:                                               ; preds = %11, %2
  br label %14

14:                                               ; preds = %29, %13
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @getopt(i32 %15, i8** %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @EOF, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %25 [
    i32 104, label %22
    i32 118, label %24
  ]

22:                                               ; preds = %20
  %23 = call i32 (...) @help()
  br label %24

24:                                               ; preds = %20, %22
  store i32 1, i32* @verbose, align 4
  br label %29

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = call i32 (...) @help()
  br label %29

29:                                               ; preds = %25, %24
  br label %14

30:                                               ; preds = %14
  %31 = load i32, i32* @optind, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 (...) @help()
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i8**, i8*** %5, align 8
  %38 = load i32, i32* @optind, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %7, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call %struct.commands* @lookupcmd(i8* %42)
  store %struct.commands* %43, %struct.commands** %6, align 8
  %44 = load %struct.commands*, %struct.commands** %6, align 8
  %45 = icmp eq %struct.commands* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load i32, i32* @EX_DATAERR, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @errx(i32 %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %46, %36
  %51 = load %struct.commands*, %struct.commands** %6, align 8
  %52 = getelementptr inbounds %struct.commands, %struct.commands* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @CMDFL_NO_KMOD, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = call i64 (...) @smb_lib_init()
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 @exit(i32 1) #3
  unreachable

62:                                               ; preds = %57, %50
  %63 = load i32, i32* @optind, align 4
  %64 = load i32, i32* %4, align 4
  %65 = sub nsw i32 %64, %63
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* @optind, align 4
  %67 = load i8**, i8*** %5, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8*, i8** %67, i64 %68
  store i8** %69, i8*** %5, align 8
  store i32 1, i32* @optreset, align 4
  store i32 1, i32* @optind, align 4
  %70 = load %struct.commands*, %struct.commands** %6, align 8
  %71 = getelementptr inbounds %struct.commands, %struct.commands* %70, i32 0, i32 1
  %72 = load i32 (i32, i8**)*, i32 (i32, i8**)** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = load i8**, i8*** %5, align 8
  %75 = call i32 %72(i32 %73, i8** %74)
  ret i32 %75
}

declare dso_local i32 @help(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local %struct.commands* @lookupcmd(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i64 @smb_lib_init(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

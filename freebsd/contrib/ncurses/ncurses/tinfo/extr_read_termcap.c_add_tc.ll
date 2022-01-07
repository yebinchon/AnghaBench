; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_read_termcap.c_add_tc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_read_termcap.c_add_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NCURSES_PATHSEP = common dso_local global i8 0, align 1
@MAXPATHS = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@TRACE_DATABASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Adding termpath %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i32)* @add_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_tc(i8** %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = load i8, i8* @NCURSES_PATHSEP, align 1
  %10 = call i8* @strchr(i8* %8, i8 signext %9)
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i8*, i8** %7, align 8
  store i8 0, i8* %14, align 1
  br label %15

15:                                               ; preds = %13, %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @MAXPATHS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* @R_OK, align 4
  %22 = call i64 @_nc_access(i8* %20, i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load i8*, i8** %5, align 8
  %26 = load i8**, i8*** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8*, i8** %26, i64 %29
  store i8* %25, i8** %30, align 8
  %31 = load i32, i32* @TRACE_DATABASE, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @TR(i32 %31, i8* %32)
  br label %34

34:                                               ; preds = %24, %19, %15
  %35 = load i8**, i8*** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  store i8* null, i8** %38, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i8, i8* @NCURSES_PATHSEP, align 1
  %43 = load i8*, i8** %7, align 8
  store i8 %42, i8* %43, align 1
  br label %44

44:                                               ; preds = %41, %34
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @_nc_access(i8*, i32) #1

declare dso_local i32 @TR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_lcd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_lcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@code = common dso_local global i32 0, align 4
@localhome = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"usage: %s [local-directory]\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Can't chdir `%s'\00", align 1
@localcwd = common dso_local global i8* null, align 8
@ttyout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Local directory now: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Unable to determine local directory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lcd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 -1, i32* @code, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %3, align 4
  %11 = load i8*, i8** @localhome, align 8
  %12 = load i8**, i8*** %4, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  store i8* %11, i8** %13, align 8
  br label %14

14:                                               ; preds = %8, %2
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i8**, i8*** %4, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @UPRINTF(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %53

22:                                               ; preds = %14
  %23 = load i8**, i8*** %4, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @globulize(i8* %25)
  store i8* %26, i8** %5, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %53

29:                                               ; preds = %22
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @chdir(i8* %30)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  br label %50

36:                                               ; preds = %29
  %37 = call i32 (...) @updatelocalcwd()
  %38 = load i8*, i8** @localcwd, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32, i32* @ttyout, align 4
  %44 = load i8*, i8** @localcwd, align 8
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  store i32 0, i32* @code, align 4
  br label %49

46:                                               ; preds = %36
  %47 = load i32, i32* @ttyout, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %42
  br label %50

50:                                               ; preds = %49, %33
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @free(i8* %51)
  br label %53

53:                                               ; preds = %50, %28, %17
  ret void
}

declare dso_local i32 @UPRINTF(i8*, i8*) #1

declare dso_local i8* @globulize(i8*) #1

declare dso_local i32 @chdir(i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @updatelocalcwd(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_cmds.c_lcd.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_cmds.c_lcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MaxPathLen = common dso_local global i32 0, align 4
@home = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"usage: %s local-directory\0A\00", align 1
@code = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"local: %s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Local directory now %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"getwd: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lcd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %8 = load i32, i32* @MaxPathLen, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %3, align 4
  %17 = load i8*, i8** @home, align 8
  %18 = load i8**, i8*** %4, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  store i8* %17, i8** %19, align 8
  br label %20

20:                                               ; preds = %14, %2
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 2
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i8**, i8*** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %26)
  store i32 -1, i32* @code, align 4
  store i32 1, i32* %7, align 4
  br label %54

28:                                               ; preds = %20
  %29 = load i8**, i8*** %4, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = call i32 @globulize(i8** %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 -1, i32* @code, align 4
  store i32 1, i32* %7, align 4
  br label %54

34:                                               ; preds = %28
  %35 = load i8**, i8*** %4, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @chdir(i8* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i8**, i8*** %4, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @warn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  store i32 -1, i32* @code, align 4
  store i32 1, i32* %7, align 4
  br label %54

45:                                               ; preds = %34
  %46 = trunc i64 %9 to i32
  %47 = call i32* @getcwd(i8* %11, i32 %46)
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %11)
  br label %53

51:                                               ; preds = %45
  %52 = call i32 @warnx(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %11)
  br label %53

53:                                               ; preds = %51, %49
  store i32 0, i32* @code, align 4
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %53, %40, %33, %23
  %55 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %7, align 4
  switch i32 %56, label %58 [
    i32 0, label %57
    i32 1, label %57
  ]

57:                                               ; preds = %54, %54
  ret void

58:                                               ; preds = %54
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @globulize(i8**) #2

declare dso_local i64 @chdir(i8*) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i32* @getcwd(i8*, i32) #2

declare dso_local i32 @warnx(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

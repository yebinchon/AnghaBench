; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_statfilecmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_statfilecmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LINE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"/bin/ls -la -- %s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"status of %s:\00", align 1
@EOF = common dso_local global i32 0, align 4
@stdout = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"control connection\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"End of Status\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @statfilecmd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @LINE_MAX, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = trunc i64 %9 to i32
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @snprintf(i8* %11, i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = call i32* @ftpd_popen(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 0)
  store i32* %15, i32** %3, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @lreply(i32 211, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %47, %1
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @getc(i32* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @EOF, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %26, label %47

26:                                               ; preds = %23
  %27 = load i32*, i32** @stdout, align 8
  %28 = call i64 @ferror(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = call i32 @perror_reply(i32 421, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @ftpd_pclose(i32* %32)
  %34 = call i32 @dologout(i32 1)
  br label %35

35:                                               ; preds = %30, %26
  %36 = load i32*, i32** %3, align 8
  %37 = call i64 @ferror(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i8*, i8** %2, align 8
  %41 = call i32 @perror_reply(i32 551, i8* %40)
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @ftpd_pclose(i32* %42)
  store i32 1, i32* %7, align 4
  br label %55

44:                                               ; preds = %35
  %45 = load i32*, i32** @stdout, align 8
  %46 = call i32 @putc(i32 13, i32* %45)
  br label %47

47:                                               ; preds = %44, %23
  %48 = load i32, i32* %4, align 4
  %49 = load i32*, i32** @stdout, align 8
  %50 = call i32 @putc(i32 %48, i32* %49)
  br label %18

51:                                               ; preds = %18
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @ftpd_pclose(i32* %52)
  %54 = call i32 @reply(i32 211, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %51, %39
  %56 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i32, i32* %7, align 4
  switch i32 %57, label %59 [
    i32 0, label %58
    i32 1, label %58
  ]

58:                                               ; preds = %55, %55
  ret void

59:                                               ; preds = %55
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32* @ftpd_popen(i8*, i8*, i32, i32) #2

declare dso_local i32 @lreply(i32, i8*, i8*) #2

declare dso_local i32 @getc(i32*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32 @perror_reply(i32, i8*) #2

declare dso_local i32 @ftpd_pclose(i32*) #2

declare dso_local i32 @dologout(i32) #2

declare dso_local i32 @putc(i32, i32*) #2

declare dso_local i32 @reply(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

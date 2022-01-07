; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_parse_getput_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_parse_getput_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optreset = external dso_local global i32, align 4
@optind = external dso_local global i32, align 4
@opterr = external dso_local global i32, align 4
@.str = private unnamed_addr constant [7 x i8] c"afPpRr\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: Invalid flag -%c\00", align 1
@optopt = external dso_local global i32, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32*, i32*, i32*, i32*)* @parse_getput_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_getput_flags(i8* %0, i8** %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 1, i32* @optreset, align 4
  store i32 1, i32* @optind, align 4
  store i32 0, i32* @opterr, align 4
  %17 = load i32*, i32** %14, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32*, i32** %15, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32*, i32** %13, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32*, i32** %12, align 8
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %40, %7
  %22 = load i32, i32* %11, align 4
  %23 = load i8**, i8*** %10, align 8
  %24 = call i32 (i32, i8**, i8*, ...) bitcast (i32 (...)* @getopt to i32 (i32, i8**, i8*, ...)*)(i32 %22, i8** %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %16, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load i32, i32* %16, align 4
  switch i32 %27, label %36 [
    i32 97, label %28
    i32 102, label %30
    i32 112, label %32
    i32 80, label %32
    i32 114, label %34
    i32 82, label %34
  ]

28:                                               ; preds = %26
  %29 = load i32*, i32** %12, align 8
  store i32 1, i32* %29, align 4
  br label %40

30:                                               ; preds = %26
  %31 = load i32*, i32** %13, align 8
  store i32 1, i32* %31, align 4
  br label %40

32:                                               ; preds = %26, %26
  %33 = load i32*, i32** %14, align 8
  store i32 1, i32* %33, align 4
  br label %40

34:                                               ; preds = %26, %26
  %35 = load i32*, i32** %15, align 8
  store i32 1, i32* %35, align 4
  br label %40

36:                                               ; preds = %26
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* @optopt, align 4
  %39 = call i32 (i8*, i8*, i32, ...) bitcast (i32 (...)* @error to i32 (i8*, i8*, i32, ...)*)(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %37, i32 %38)
  store i32 -1, i32* %8, align 4
  br label %43

40:                                               ; preds = %34, %32, %30, %28
  br label %21

41:                                               ; preds = %21
  %42 = load i32, i32* @optind, align 4
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %41, %36
  %44 = load i32, i32* %8, align 4
  ret i32 %44
}

declare dso_local i32 @getopt(...) #1

declare dso_local i32 @error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

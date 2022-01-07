; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_parse_no_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_parse_no_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optreset = external dso_local global i32, align 4
@optind = external dso_local global i32, align 4
@opterr = external dso_local global i32, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: Invalid flag -%c\00", align 1
@optopt = external dso_local global i32, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32)* @parse_no_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_no_flags(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1, i32* @optreset, align 4
  store i32 1, i32* @optind, align 4
  store i32 0, i32* @opterr, align 4
  br label %9

9:                                                ; preds = %3
  %10 = load i32, i32* %7, align 4
  %11 = load i8**, i8*** %6, align 8
  %12 = call i32 (i32, i8**, i8*, ...) bitcast (i32 (...)* @getopt to i32 (i32, i8**, i8*, ...)*)(i32 %10, i8** %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %8, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %16 [
  ]

16:                                               ; preds = %14
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* @optopt, align 4
  %19 = call i32 (i8*, i8*, i32, ...) bitcast (i32 (...)* @error to i32 (i8*, i8*, i32, ...)*)(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %17, i32 %18)
  store i32 -1, i32* %4, align 4
  br label %22

20:                                               ; preds = %9
  %21 = load i32, i32* @optind, align 4
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @getopt(...) #1

declare dso_local i32 @error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

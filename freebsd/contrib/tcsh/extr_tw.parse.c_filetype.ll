; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.parse.c_filetype.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.parse.c_filetype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@S_IXUSR = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@STRlistlinks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8*, i8*)* @filetype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @filetype(i8* %0, i8* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %40

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @nostat(i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i8 32, i8* %3, align 1
  br label %41

16:                                               ; preds = %11
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* @Strspl(i8* %17, i8* %18)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i8* @short2str(i8* %20)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @xfree(i8* %22)
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @lstat(i8* %24, %struct.stat* %8)
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %39

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @S_IXUSR, align 4
  %31 = load i32, i32* @S_IXGRP, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @S_IXOTH, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %29, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i8 42, i8* %3, align 1
  br label %41

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %16
  br label %40

40:                                               ; preds = %39, %2
  store i8 32, i8* %3, align 1
  br label %41

41:                                               ; preds = %40, %37, %15
  %42 = load i8, i8* %3, align 1
  ret i8 %42
}

declare dso_local i64 @nostat(i8*) #1

declare dso_local i8* @Strspl(i8*, i8*) #1

declare dso_local i8* @short2str(i8*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

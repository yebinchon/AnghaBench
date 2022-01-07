; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_ismode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_ismode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARCHIVE_ENTRY_ACL_READ = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_WRITE = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_EXECUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*)* @ismode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ismode(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp uge i8* %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %8, align 8
  %15 = load i32*, i32** %7, align 8
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %42, %13
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ult i8* %17, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %16
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %8, align 8
  %23 = load i8, i8* %21, align 1
  %24 = sext i8 %23 to i32
  switch i32 %24, label %41 [
    i32 114, label %25
    i32 82, label %25
    i32 119, label %30
    i32 87, label %30
    i32 120, label %35
    i32 88, label %35
    i32 45, label %40
  ]

25:                                               ; preds = %20, %20
  %26 = load i32, i32* @ARCHIVE_ENTRY_ACL_READ, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %26
  store i32 %29, i32* %27, align 4
  br label %42

30:                                               ; preds = %20, %20
  %31 = load i32, i32* @ARCHIVE_ENTRY_ACL_WRITE, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 4
  br label %42

35:                                               ; preds = %20, %20
  %36 = load i32, i32* @ARCHIVE_ENTRY_ACL_EXECUTE, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 4
  br label %42

40:                                               ; preds = %20
  br label %42

41:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %44

42:                                               ; preds = %40, %35, %30, %25
  br label %16

43:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %41, %12
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

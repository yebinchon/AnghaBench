; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_ismode_w.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_ismode_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARCHIVE_ENTRY_ACL_READ = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_WRITE = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_EXECUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @ismode_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ismode_w(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp uge i32* %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %7, align 8
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %41, %13
  %17 = load i32*, i32** %8, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ult i32* %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %8, align 8
  %23 = load i32, i32* %21, align 4
  switch i32 %23, label %40 [
    i32 114, label %24
    i32 82, label %24
    i32 119, label %29
    i32 87, label %29
    i32 120, label %34
    i32 88, label %34
    i32 45, label %39
  ]

24:                                               ; preds = %20, %20
  %25 = load i32, i32* @ARCHIVE_ENTRY_ACL_READ, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %25
  store i32 %28, i32* %26, align 4
  br label %41

29:                                               ; preds = %20, %20
  %30 = load i32, i32* @ARCHIVE_ENTRY_ACL_WRITE, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %30
  store i32 %33, i32* %31, align 4
  br label %41

34:                                               ; preds = %20, %20
  %35 = load i32, i32* @ARCHIVE_ENTRY_ACL_EXECUTE, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  br label %41

39:                                               ; preds = %20
  br label %41

40:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %43

41:                                               ; preds = %39, %34, %29, %24
  br label %16

42:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %40, %12
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

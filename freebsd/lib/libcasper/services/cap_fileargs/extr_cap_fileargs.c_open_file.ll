; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_fileargs/extr_cap_fileargs.c_open_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_fileargs/extr_cap_fileargs.c_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@capflags = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@capmode = common dso_local global i32 0, align 4
@caprightsp = common dso_local global i32* null, align 8
@errno = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @open_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i32, i32* @capflags, align 4
  %7 = load i32, i32* @O_CREAT, align 4
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* @capflags, align 4
  %13 = call i32 (i8*, i32, ...) @open(i8* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  br label %19

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* @capflags, align 4
  %17 = load i32, i32* @capmode, align 4
  %18 = call i32 (i8*, i32, ...) @open(i8* %15, i32 %16, i32 %17)
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %14, %10
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  br label %43

23:                                               ; preds = %19
  %24 = load i32*, i32** @caprightsp, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = load i32*, i32** @caprightsp, align 8
  %29 = call i64 @cap_rights_limit(i32 %27, i32* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load i32, i32* @errno, align 4
  %33 = load i32, i32* @ENOSYS, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32, i32* @errno, align 4
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @close(i32 %37)
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %43

40:                                               ; preds = %31, %26
  br label %41

41:                                               ; preds = %40, %23
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %35, %22
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i64 @cap_rights_limit(i32, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

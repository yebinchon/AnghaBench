; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libauditd/extr_auditd_lib.c_open_trail.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libauditd/extr_auditd_lib.c_open_trail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @open_trail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_trail(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* @O_RDONLY, align 4
  %11 = load i32, i32* @O_CREAT, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @S_IRUSR, align 4
  %14 = call i32 @open(i8* %9, i32 %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %49

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @fchown(i32 %19, i32 -1, i32 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @S_IRUSR, align 4
  %26 = load i32, i32* @S_IRGRP, align 4
  %27 = or i32 %25, %26
  %28 = call i64 @fchmod(i32 %24, i32 %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23, %18
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @close(i32 %31)
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @unlink(i8* %33)
  store i32 -1, i32* %4, align 4
  br label %49

35:                                               ; preds = %23
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @close(i32 %36)
  %38 = load i8*, i8** %5, align 8
  %39 = call i64 @auditctl(i8* %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load i32, i32* @errno, align 4
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @unlink(i8* %44)
  store i32 -1, i32* %4, align 4
  br label %49

46:                                               ; preds = %35
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @auditdist_link(i8* %47)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %46, %41, %30, %17
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @fchown(i32, i32, i32) #1

declare dso_local i64 @fchmod(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i64 @auditctl(i8*) #1

declare dso_local i32 @auditdist_link(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

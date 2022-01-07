; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_pw_util.c_pw_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_pw_util.c_pw_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@initialized = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@editpid = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGCONT = common dso_local global i32 0, align 4
@tempname = common dso_local global i8* null, align 8
@lockfd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pw_fini() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @initialized, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %36

6:                                                ; preds = %0
  store i64 0, i64* @initialized, align 8
  %7 = load i32, i32* @errno, align 4
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* @editpid, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = load i32, i32* @editpid, align 4
  %12 = load i32, i32* @SIGTERM, align 4
  %13 = call i32 @kill(i32 %11, i32 %12)
  %14 = load i32, i32* @editpid, align 4
  %15 = load i32, i32* @SIGCONT, align 4
  %16 = call i32 @kill(i32 %14, i32 %15)
  %17 = load i32, i32* @editpid, align 4
  %18 = call i32 @waitpid(i32 %17, i32* %2, i32 0)
  store i32 -1, i32* @editpid, align 4
  br label %19

19:                                               ; preds = %10, %6
  %20 = load i8*, i8** @tempname, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i8*, i8** @tempname, align 8
  %26 = call i32 @unlink(i8* %25)
  %27 = load i8*, i8** @tempname, align 8
  store i8 0, i8* %27, align 1
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32, i32* @lockfd, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @lockfd, align 4
  %33 = call i32 @close(i32 %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %1, align 4
  store i32 %35, i32* @errno, align 4
  br label %36

36:                                               ; preds = %34, %5
  ret void
}

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

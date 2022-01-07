; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_death_single.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_death_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@death_single.death_sigs = internal constant [2 x i32] [i32 128, i32 129], align 4
@_PATH_CONSOLE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i64 0, align 8
@single_user = common dso_local global i32 0, align 4
@clang = common dso_local global i64 0, align 8
@DEATH_WATCH = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"some processes would not die; ps axl advised\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @death_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @death_single() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @_PATH_CONSOLE, align 4
  %5 = call i32 @revoke(i32 %4)
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %48, %0
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %51

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* @death_single.death_sigs, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @kill(i32 -1, i32 %13)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %22

16:                                               ; preds = %9
  %17 = load i64, i64* @errno, align 8
  %18 = load i64, i64* @ESRCH, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @single_user, align 4
  store i32 %21, i32* %1, align 4
  br label %54

22:                                               ; preds = %16, %9
  store i64 0, i64* @clang, align 8
  %23 = load i32, i32* @DEATH_WATCH, align 4
  %24 = call i32 @alarm(i32 %23)
  br label %25

25:                                               ; preds = %39, %22
  %26 = call i32 @waitpid(i32 -1, i32* null, i32 0)
  store i32 %26, i32* %3, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @collect_child(i32 %29)
  br label %31

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* @clang, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i64, i64* @errno, align 8
  %37 = load i64, i64* @ECHILD, align 8
  %38 = icmp ne i64 %36, %37
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi i1 [ false, %32 ], [ %38, %35 ]
  br i1 %40, label %25, label %41

41:                                               ; preds = %39
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @ECHILD, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @single_user, align 4
  store i32 %46, i32* %1, align 4
  br label %54

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %2, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %2, align 4
  br label %6

51:                                               ; preds = %6
  %52 = call i32 @warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @single_user, align 4
  store i32 %53, i32* %1, align 4
  br label %54

54:                                               ; preds = %51, %45, %20
  %55 = load i32, i32* %1, align 4
  ret i32 %55
}

declare dso_local i32 @revoke(i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @collect_child(i32) #1

declare dso_local i32 @warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

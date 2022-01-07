; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_control.c_getacqsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_control.c_getacqsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QSZ_CONTROL_ENTRY = common dso_local global i32 0, align 4
@USE_DEFAULT_QSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@AQ_MAXHIGH = common dso_local global i32 0, align 4
@mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getacqsize(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = call i32 (...) @setac_locked()
  %7 = load i32, i32* @QSZ_CONTROL_ENTRY, align 4
  %8 = call i64 @getstrfromtype_locked(i32 %7, i8** %4)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -2, i32* %2, align 4
  br label %53

11:                                               ; preds = %1
  %12 = load i8*, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @USE_DEFAULT_QSZ, align 4
  %16 = load i32*, i32** %3, align 8
  store i32 %15, i32* %16, align 4
  store i32 0, i32* %2, align 4
  br label %53

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %30, %17
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 32
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** %4, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 9
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi i1 [ true, %18 ], [ %27, %23 ]
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %4, align 8
  br label %18

33:                                               ; preds = %28
  %34 = load i8*, i8** %4, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @sscanf(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %53

41:                                               ; preds = %33
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @AQ_MAXHIGH, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45, %41
  store i32* null, i32** %3, align 8
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %53

52:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %50, %39, %14, %10
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @setac_locked(...) #1

declare dso_local i64 @getstrfromtype_locked(i32, i8**) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

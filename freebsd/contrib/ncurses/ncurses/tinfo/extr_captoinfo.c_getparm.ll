; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_captoinfo.c_getparm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_captoinfo.c_getparm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@seenr = common dso_local global i64 0, align 8
@dp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@onstack = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"string may not be optimal\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%Pa\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%ga\00", align 1
@seenn = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"%{96}%^\00", align 1
@seenm = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"%{127}%^\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @getparm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getparm(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* @seenr, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 2, i32* %3, align 4
  br label %16

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %15

15:                                               ; preds = %14, %11
  br label %16

16:                                               ; preds = %15, %10
  br label %17

17:                                               ; preds = %16, %2
  br label %18

18:                                               ; preds = %22, %17
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %4, align 4
  %21 = icmp ne i32 %19, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i32, i32* @dp, align 4
  %24 = call i32 @save_string(i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* @dp, align 4
  %25 = load i32, i32* @dp, align 4
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 48, %26
  %28 = call i32 @save_char(i32 %25, i32 %27)
  store i32 %28, i32* @dp, align 4
  br label %18

29:                                               ; preds = %18
  %30 = load i32, i32* @onstack, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = call i32 @_nc_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @dp, align 4
  %39 = call i32 @save_string(i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %39, i32* @dp, align 4
  br label %40

40:                                               ; preds = %44, %36
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %4, align 4
  %43 = icmp ne i32 %41, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @dp, align 4
  %46 = call i32 @save_string(i32 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32 %46, i32* @dp, align 4
  br label %40

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %33
  br label %73

49:                                               ; preds = %29
  %50 = load i32, i32* @onstack, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call i32 (...) @push()
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i32, i32* %3, align 4
  store i32 %55, i32* @onstack, align 4
  %56 = load i64, i64* @seenn, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, i32* %3, align 4
  %60 = icmp slt i32 %59, 3
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* @dp, align 4
  %63 = call i32 @save_string(i32 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 %63, i32* @dp, align 4
  br label %64

64:                                               ; preds = %61, %58, %54
  %65 = load i64, i64* @seenm, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32, i32* %3, align 4
  %69 = icmp slt i32 %68, 3
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* @dp, align 4
  %72 = call i32 @save_string(i32 %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 %72, i32* @dp, align 4
  br label %73

73:                                               ; preds = %48, %70, %67, %64
  ret void
}

declare dso_local i32 @save_string(i32, i8*) #1

declare dso_local i32 @save_char(i32, i32) #1

declare dso_local i32 @_nc_warning(i8*) #1

declare dso_local i32 @push(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

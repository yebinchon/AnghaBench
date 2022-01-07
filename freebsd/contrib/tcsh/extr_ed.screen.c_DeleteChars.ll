; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.screen.c_DeleteChars.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.screen.c_DeleteChars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T_CanDel = common dso_local global i32 0, align 4
@TermH = common dso_local global i32 0, align 4
@T_DC = common dso_local global i32 0, align 4
@T_dc = common dso_local global i32 0, align 4
@PUTPURE = common dso_local global i32 0, align 4
@T_dm = common dso_local global i32 0, align 4
@T_ed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DeleteChars(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sle i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %70

6:                                                ; preds = %1
  %7 = load i32, i32* @T_CanDel, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = call i32 (...) @flush()
  br label %70

11:                                               ; preds = %6
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @TermH, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %70

16:                                               ; preds = %11
  %17 = load i32, i32* @T_DC, align 4
  %18 = call i64 @GoodStr(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load i32, i32* %2, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @T_dc, align 4
  %25 = call i64 @GoodStr(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %23, %20
  %28 = load i32, i32* @T_DC, align 4
  %29 = call i32 @Str(i32 %28)
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @tgoto(i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @PUTPURE, align 4
  %35 = call i32 @tputs(i32 %32, i32 %33, i32 %34)
  br label %70

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36, %16
  %38 = load i32, i32* @T_dm, align 4
  %39 = call i64 @GoodStr(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32, i32* @T_dm, align 4
  %43 = call i32 @Str(i32 %42)
  %44 = load i32, i32* @PUTPURE, align 4
  %45 = call i32 @tputs(i32 %43, i32 1, i32 %44)
  br label %46

46:                                               ; preds = %41, %37
  %47 = load i32, i32* @T_dc, align 4
  %48 = call i64 @GoodStr(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %55, %50
  %52 = load i32, i32* %2, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %2, align 4
  %54 = icmp ne i32 %52, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32, i32* @T_dc, align 4
  %57 = call i32 @Str(i32 %56)
  %58 = load i32, i32* @PUTPURE, align 4
  %59 = call i32 @tputs(i32 %57, i32 1, i32 %58)
  br label %51

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %46
  %62 = load i32, i32* @T_ed, align 4
  %63 = call i64 @GoodStr(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i32, i32* @T_ed, align 4
  %67 = call i32 @Str(i32 %66)
  %68 = load i32, i32* @PUTPURE, align 4
  %69 = call i32 @tputs(i32 %67, i32 1, i32 %68)
  br label %70

70:                                               ; preds = %5, %9, %15, %27, %65, %61
  ret void
}

declare dso_local i32 @flush(...) #1

declare dso_local i64 @GoodStr(i32) #1

declare dso_local i32 @tputs(i32, i32, i32) #1

declare dso_local i32 @tgoto(i32, i32, i32) #1

declare dso_local i32 @Str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

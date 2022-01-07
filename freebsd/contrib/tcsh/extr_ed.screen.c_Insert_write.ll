; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.screen.c_Insert_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.screen.c_Insert_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T_CanIns = common dso_local global i32 0, align 4
@TermH = common dso_local global i32 0, align 4
@T_IC = common dso_local global i32 0, align 4
@T_ic = common dso_local global i32 0, align 4
@PUTPURE = common dso_local global i32 0, align 4
@T_im = common dso_local global i32 0, align 4
@T_ei = common dso_local global i32 0, align 4
@T_ip = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Insert_write(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sle i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %98

8:                                                ; preds = %2
  %9 = load i32, i32* @T_CanIns, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = call i32 (...) @flush()
  br label %98

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @TermH, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %98

18:                                               ; preds = %13
  %19 = load i32, i32* @T_IC, align 4
  %20 = call i64 @GoodStr(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @T_ic, align 4
  %27 = call i64 @GoodStr(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %25, %22
  %30 = load i32, i32* @T_IC, align 4
  %31 = call i32 @Str(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @tgoto(i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @PUTPURE, align 4
  %37 = call i32 @tputs(i32 %34, i32 %35, i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @so_write(i32* %38, i32 %39)
  br label %98

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41, %18
  %43 = load i32, i32* @T_im, align 4
  %44 = call i64 @GoodStr(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %42
  %47 = load i32, i32* @T_ei, align 4
  %48 = call i64 @GoodStr(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %46
  %51 = load i32, i32* @T_im, align 4
  %52 = call i32 @Str(i32 %51)
  %53 = load i32, i32* @PUTPURE, align 4
  %54 = call i32 @tputs(i32 %52, i32 1, i32 %53)
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @so_write(i32* %55, i32 %56)
  %58 = load i32, i32* @T_ip, align 4
  %59 = call i64 @GoodStr(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %50
  %62 = load i32, i32* @T_ip, align 4
  %63 = call i32 @Str(i32 %62)
  %64 = load i32, i32* @PUTPURE, align 4
  %65 = call i32 @tputs(i32 %63, i32 1, i32 %64)
  br label %66

66:                                               ; preds = %61, %50
  %67 = load i32, i32* @T_ei, align 4
  %68 = call i32 @Str(i32 %67)
  %69 = load i32, i32* @PUTPURE, align 4
  %70 = call i32 @tputs(i32 %68, i32 1, i32 %69)
  br label %98

71:                                               ; preds = %46, %42
  br label %72

72:                                               ; preds = %94, %71
  %73 = load i32, i32* @T_ic, align 4
  %74 = call i64 @GoodStr(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i32, i32* @T_ic, align 4
  %78 = call i32 @Str(i32 %77)
  %79 = load i32, i32* @PUTPURE, align 4
  %80 = call i32 @tputs(i32 %78, i32 1, i32 %79)
  br label %81

81:                                               ; preds = %76, %72
  %82 = load i32*, i32** %3, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %3, align 8
  %84 = call i32 @so_write(i32* %82, i32 1)
  %85 = load i32, i32* @T_ip, align 4
  %86 = call i64 @GoodStr(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load i32, i32* @T_ip, align 4
  %90 = call i32 @Str(i32 %89)
  %91 = load i32, i32* @PUTPURE, align 4
  %92 = call i32 @tputs(i32 %90, i32 1, i32 %91)
  br label %93

93:                                               ; preds = %88, %81
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %4, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %72, label %98

98:                                               ; preds = %7, %11, %17, %29, %66, %94
  ret void
}

declare dso_local i32 @flush(...) #1

declare dso_local i64 @GoodStr(i32) #1

declare dso_local i32 @tputs(i32, i32, i32) #1

declare dso_local i32 @tgoto(i32, i32, i32) #1

declare dso_local i32 @Str(i32) #1

declare dso_local i32 @so_write(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

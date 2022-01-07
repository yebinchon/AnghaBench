; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.nls.c_NLSClassify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.nls.c_NLSClassify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NLSCLASS_ILLEGAL = common dso_local global i32 0, align 4
@NLSCLASS_ILLEGAL2 = common dso_local global i32 0, align 4
@CHAR = common dso_local global i32 0, align 4
@NLSCLASS_NL = common dso_local global i32 0, align 4
@NLSCLASS_TAB = common dso_local global i32 0, align 4
@NLSCLASS_CTRL = common dso_local global i32 0, align 4
@INVALID_BYTE = common dso_local global i32 0, align 4
@NLSCLASS_ILLEGAL3 = common dso_local global i32 0, align 4
@NLSCLASS_ILLEGAL4 = common dso_local global i32 0, align 4
@NLSCLASS_ILLEGAL5 = common dso_local global i32 0, align 4
@QUOTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NLSClassify(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, 128
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @NLSCLASS_ILLEGAL, align 4
  store i32 %13, i32* %4, align 4
  br label %82

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = icmp sge i32 %18, 65536
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @NLSCLASS_ILLEGAL2, align 4
  store i32 %21, i32* %4, align 4
  br label %82

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22, %14
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @Iscntrl(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @CHAR, align 4
  %30 = and i32 %28, %29
  %31 = icmp slt i32 %30, 256
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 10
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @NLSCLASS_NL, align 4
  store i32 %36, i32* %4, align 4
  br label %82

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 9
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @NLSCLASS_TAB, align 4
  store i32 %41, i32* %4, align 4
  br label %82

42:                                               ; preds = %37
  %43 = load i32, i32* @NLSCLASS_CTRL, align 4
  store i32 %43, i32* %4, align 4
  br label %82

44:                                               ; preds = %27, %23
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @NLSWidth(i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load i32, i32* %8, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %82

54:                                               ; preds = %49
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  br label %82

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %58, %44
  %60 = load i32, i32* %8, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @Iscntrl(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @CHAR, align 4
  %69 = and i32 %67, %68
  %70 = icmp slt i32 %69, 256
  br i1 %70, label %71, label %78

71:                                               ; preds = %66, %59
  %72 = load i32, i32* %5, align 4
  %73 = call i64 @Isprint(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %75, %66, %62
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %4, align 4
  br label %82

80:                                               ; preds = %75, %71
  %81 = load i32, i32* @NLSCLASS_ILLEGAL, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %78, %57, %52, %42, %40, %35, %20, %12
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i64 @Iscntrl(i32) #1

declare dso_local i32 @NLSWidth(i32) #1

declare dso_local i64 @Isprint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

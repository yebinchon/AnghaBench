; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.print.c_xputchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.print.c_xputchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATTRIBUTES = common dso_local global i32 0, align 4
@TRIM = common dso_local global i32 0, align 4
@CHAR = common dso_local global i32 0, align 4
@QUOTE = common dso_local global i32 0, align 4
@output_raw = common dso_local global i32 0, align 4
@MB_CUR_MAX = common dso_local global i32 0, align 4
@xlate_cr = common dso_local global i64 0, align 8
@haderr = common dso_local global i64 0, align 8
@didfds = common dso_local global i64 0, align 8
@is2atty = common dso_local global i64 0, align 8
@isdiagatty = common dso_local global i64 0, align 8
@is1atty = common dso_local global i64 0, align 8
@isoutatty = common dso_local global i64 0, align 8
@lbuffed = common dso_local global i64 0, align 8
@STRcolorcat = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xputchar(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @ATTRIBUTES, align 4
  %6 = and i32 %4, %5
  %7 = load i32, i32* @TRIM, align 4
  %8 = and i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @CHAR, align 4
  %10 = load i32, i32* @QUOTE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* %2, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* @output_raw, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %93, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @QUOTE, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %93

21:                                               ; preds = %16
  %22 = load i32, i32* %2, align 4
  %23 = call i64 @iscntrl(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @ASC(i32 %26)
  %28 = icmp slt i32 %27, 128
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @MB_CUR_MAX, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %58

32:                                               ; preds = %29, %25
  %33 = load i32, i32* %2, align 4
  %34 = icmp ne i32 %33, 9
  br i1 %34, label %35, label %57

35:                                               ; preds = %32
  %36 = load i32, i32* %2, align 4
  %37 = icmp ne i32 %36, 10
  br i1 %37, label %38, label %57

38:                                               ; preds = %35
  %39 = load i64, i64* @xlate_cr, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %2, align 4
  %43 = icmp ne i32 %42, 13
  br i1 %43, label %44, label %57

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %3, align 4
  %46 = or i32 94, %45
  call void @xputchar(i32 %46)
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @CTL_ESC(i32 127)
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 63, i32* %2, align 4
  br label %56

51:                                               ; preds = %44
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @ASC(i32 %52)
  %54 = or i32 %53, 64
  %55 = call i32 @CTL_ESC(i32 %54)
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %51, %50
  br label %57

57:                                               ; preds = %56, %41, %35, %32
  br label %88

58:                                               ; preds = %29, %21
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @isprint(i32 %59) #3
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %87, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @ASC(i32 %63)
  %65 = icmp slt i32 %64, 128
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* @MB_CUR_MAX, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %87

69:                                               ; preds = %66, %62
  %70 = load i32, i32* %3, align 4
  %71 = or i32 92, %70
  call void @xputchar(i32 %71)
  %72 = load i32, i32* %2, align 4
  %73 = ashr i32 %72, 6
  %74 = and i32 %73, 7
  %75 = add nsw i32 %74, 48
  %76 = load i32, i32* %3, align 4
  %77 = or i32 %75, %76
  call void @xputchar(i32 %77)
  %78 = load i32, i32* %2, align 4
  %79 = ashr i32 %78, 3
  %80 = and i32 %79, 7
  %81 = add nsw i32 %80, 48
  %82 = load i32, i32* %3, align 4
  %83 = or i32 %81, %82
  call void @xputchar(i32 %83)
  %84 = load i32, i32* %2, align 4
  %85 = and i32 %84, 7
  %86 = add nsw i32 %85, 48
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %69, %66, %58
  br label %88

88:                                               ; preds = %87, %57
  %89 = load i32, i32* %2, align 4
  %90 = load i32, i32* %3, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @putraw(i32 %91)
  br label %125

93:                                               ; preds = %16, %1
  %94 = load i32, i32* @TRIM, align 4
  %95 = load i32, i32* %2, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %2, align 4
  %97 = load i64, i64* @haderr, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %93
  %100 = load i64, i64* @didfds, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i64, i64* @is2atty, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %117, label %122

105:                                              ; preds = %99
  %106 = load i64, i64* @isdiagatty, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %117, label %122

108:                                              ; preds = %93
  %109 = load i64, i64* @didfds, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i64, i64* @is1atty, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %117, label %122

114:                                              ; preds = %108
  %115 = load i64, i64* @isoutatty, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114, %111, %105, %102
  %118 = load i32, i32* %2, align 4
  %119 = load i32, i32* %3, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @SetAttributes(i32 %120)
  br label %122

122:                                              ; preds = %117, %114, %111, %105, %102
  %123 = load i32, i32* %2, align 4
  %124 = call i32 @putpure(i32 %123)
  br label %125

125:                                              ; preds = %122, %88
  %126 = load i64, i64* @lbuffed, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load i32, i32* %2, align 4
  %130 = load i32, i32* @CHAR, align 4
  %131 = and i32 %129, %130
  %132 = icmp eq i32 %131, 10
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = call i32 (...) @flush()
  br label %135

135:                                              ; preds = %133, %128, %125
  ret void
}

declare dso_local i64 @iscntrl(i32) #1

declare dso_local i32 @ASC(i32) #1

declare dso_local i32 @CTL_ESC(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isprint(i32) #2

declare dso_local i32 @putraw(i32) #1

declare dso_local i32 @SetAttributes(i32) #1

declare dso_local i32 @putpure(i32) #1

declare dso_local i32 @flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

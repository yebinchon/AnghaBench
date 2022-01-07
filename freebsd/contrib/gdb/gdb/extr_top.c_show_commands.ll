; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_top.c_show_commands.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_top.c_show_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@show_commands.num = internal global i32 0, align 4
@history_size = common dso_local global i32 0, align 4
@history_base = common dso_local global i32 0, align 4
@Hist_print = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%5d  %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_commands(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @history_size, align 4
  store i32 %7, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %21, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @history_size, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = load i32, i32* @history_base, align 4
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %13, %14
  %16 = call %struct.TYPE_2__* @history_get(i32 %15)
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %6, align 4
  br label %24

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %8

24:                                               ; preds = %18, %8
  %25 = load i8*, i8** %3, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 43
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %48

40:                                               ; preds = %33, %27
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 @parse_and_eval_long(i8* %41)
  %43 = load i32, i32* @history_base, align 4
  %44 = sub nsw i32 %42, %43
  %45 = load i32, i32* @Hist_print, align 4
  %46 = sdiv i32 %45, 2
  %47 = sub nsw i32 %44, %46
  store i32 %47, i32* @show_commands.num, align 4
  br label %48

48:                                               ; preds = %40, %39
  br label %53

49:                                               ; preds = %24
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @Hist_print, align 4
  %52 = sub nsw i32 %50, %51
  store i32 %52, i32* @show_commands.num, align 4
  br label %53

53:                                               ; preds = %49, %48
  %54 = load i32, i32* @show_commands.num, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 0, i32* @show_commands.num, align 4
  br label %57

57:                                               ; preds = %56, %53
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @show_commands.num, align 4
  %60 = sub nsw i32 %58, %59
  %61 = load i32, i32* @Hist_print, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @Hist_print, align 4
  %66 = sub nsw i32 %64, %65
  store i32 %66, i32* @show_commands.num, align 4
  %67 = load i32, i32* @show_commands.num, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 0, i32* @show_commands.num, align 4
  br label %70

70:                                               ; preds = %69, %63
  br label %71

71:                                               ; preds = %70, %57
  %72 = load i32, i32* @show_commands.num, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %96, %71
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @show_commands.num, align 4
  %76 = load i32, i32* @Hist_print, align 4
  %77 = add nsw i32 %75, %76
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %80, %81
  br label %83

83:                                               ; preds = %79, %73
  %84 = phi i1 [ false, %73 ], [ %82, %79 ]
  br i1 %84, label %85, label %99

85:                                               ; preds = %83
  %86 = load i32, i32* @history_base, align 4
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i32, i32* @history_base, align 4
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %89, %90
  %92 = call %struct.TYPE_2__* @history_get(i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @printf_filtered(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %94)
  br label %96

96:                                               ; preds = %85
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %73

99:                                               ; preds = %83
  %100 = load i32, i32* @Hist_print, align 4
  %101 = load i32, i32* @show_commands.num, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* @show_commands.num, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %99
  %106 = load i8*, i8** %3, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load i8*, i8** %3, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 0
  store i8 43, i8* %110, align 1
  %111 = load i8*, i8** %3, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  store i8 0, i8* %112, align 1
  br label %113

113:                                              ; preds = %108, %105, %99
  ret void
}

declare dso_local %struct.TYPE_2__* @history_get(i32) #1

declare dso_local i32 @parse_and_eval_long(i8*) #1

declare dso_local i32 @printf_filtered(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

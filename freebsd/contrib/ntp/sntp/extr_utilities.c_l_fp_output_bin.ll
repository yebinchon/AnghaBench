; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_utilities.c_l_fp_output_bin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_utilities.c_l_fp_output_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HLINE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%i: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l_fp_output_bin(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i8*, i8** @HLINE, align 8
  %11 = call i32 (i32*, i8*, ...) @fprintf(i32* %9, i8* %10)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %58, %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %61

15:                                               ; preds = %12
  %16 = load i32*, i32** %3, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i16
  store i16 %22, i16* %7, align 2
  %23 = load i16, i16* %7, align 2
  %24 = add i16 %23, 1
  store i16 %24, i16* %7, align 2
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 7, i32* %6, align 4
  br label %28

28:                                               ; preds = %52, %15
  %29 = load i32, i32* %6, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @pow(i32 2, i32 %32)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load i16, i16* %7, align 2
  %36 = sext i16 %35 to i32
  %37 = load i32, i32* %8, align 4
  %38 = sub nsw i32 %36, %37
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %31
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 (i32*, i8*, ...) @fprintf(i32* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* %8, align 4
  %44 = load i16, i16* %7, align 2
  %45 = sext i16 %44 to i32
  %46 = sub nsw i32 %45, %43
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %7, align 2
  br label %51

48:                                               ; preds = %31
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 (i32*, i8*, ...) @fprintf(i32* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %40
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %6, align 4
  br label %28

55:                                               ; preds = %28
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 (i32*, i8*, ...) @fprintf(i32* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %12

61:                                               ; preds = %12
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 (i32*, i8*, ...) @fprintf(i32* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i32*, i32** %4, align 8
  %65 = load i8*, i8** @HLINE, align 8
  %66 = call i32 (i32*, i8*, ...) @fprintf(i32* %64, i8* %65)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @pow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

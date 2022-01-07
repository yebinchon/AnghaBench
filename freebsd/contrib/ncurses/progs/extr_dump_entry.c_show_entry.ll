; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_dump_entry.c_show_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_dump_entry.c_show_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8* }

@outbuf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@outform = common dso_local global i64 0, align 8
@F_TERMCAP = common dso_local global i64 0, align 8
@F_TCONVERR = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @show_entry() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @outbuf, i32 0, i32 0), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %91

7:                                                ; preds = %0
  %8 = load i64, i64* @outform, align 8
  %9 = load i64, i64* @F_TERMCAP, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load i64, i64* @outform, align 8
  %13 = load i64, i64* @F_TCONVERR, align 8
  %14 = icmp ne i64 %12, %13
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi i1 [ false, %7 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 44, i32 58
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %2, align 1
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @outbuf, i32 0, i32 0), align 8
  %24 = trunc i64 %23 to i32
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %84, %15
  %27 = load i32, i32* %3, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %87

29:                                               ; preds = %26
  %30 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @outbuf, i32 0, i32 1), align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %4, align 1
  %35 = load i8, i8* %4, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %83

39:                                               ; preds = %29
  %40 = load i8, i8* %4, align 1
  %41 = call i32 @UChar(i8 signext %40)
  %42 = call i64 @isspace(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  store i64 %46, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @outbuf, i32 0, i32 0), align 8
  br label %82

47:                                               ; preds = %39
  %48 = load i32, i32* %1, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = load i8, i8* %4, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 92
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  store i64 %56, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @outbuf, i32 0, i32 0), align 8
  br label %81

57:                                               ; preds = %50, %47
  %58 = load i8, i8* %4, align 1
  %59 = sext i8 %58 to i32
  %60 = load i8, i8* %2, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %57
  %64 = load i32, i32* %3, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %63
  %67 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @outbuf, i32 0, i32 1), align 8
  %68 = load i32, i32* %3, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 92
  br i1 %74, label %75, label %79

75:                                               ; preds = %66, %63
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  store i64 %78, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @outbuf, i32 0, i32 0), align 8
  br label %80

79:                                               ; preds = %66, %57
  br label %87

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80, %54
  br label %82

82:                                               ; preds = %81, %44
  br label %83

83:                                               ; preds = %82, %38
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %3, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %3, align 4
  br label %26

87:                                               ; preds = %79, %26
  %88 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @outbuf, i32 0, i32 1), align 8
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @outbuf, i32 0, i32 0), align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8 0, i8* %90, align 1
  br label %91

91:                                               ; preds = %87, %0
  %92 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @outbuf, i32 0, i32 1), align 8
  %93 = load i32, i32* @stdout, align 4
  %94 = call i32 @fputs(i8* %92, i32 %93)
  %95 = call i32 @putchar(i8 signext 10)
  %96 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @outbuf, i32 0, i32 0), align 8
  %97 = trunc i64 %96 to i32
  ret i32 %97
}

declare dso_local i64 @isspace(i32) #1

declare dso_local i32 @UChar(i8 signext) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

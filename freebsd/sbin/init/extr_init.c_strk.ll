; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_strk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_strk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@strk.t = internal global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @strk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @strk(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** @strk.t, align 8
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i8*, i8** @strk.t, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  store i8* null, i8** %2, align 8
  br label %92

14:                                               ; preds = %10
  %15 = load i8*, i8** @strk.t, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %26, %14
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 32
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 9
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i1 [ true, %18 ], [ %23, %21 ]
  br i1 %25, label %26, label %31

26:                                               ; preds = %24
  %27 = load i8*, i8** @strk.t, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** @strk.t, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  store i32 %30, i32* %5, align 4
  br label %18

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store i8* null, i8** @strk.t, align 8
  store i8* null, i8** %2, align 8
  br label %92

35:                                               ; preds = %31
  %36 = load i8*, i8** @strk.t, align 8
  store i8* %36, i8** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 39
  br i1 %38, label %39, label %66

39:                                               ; preds = %35
  %40 = load i8*, i8** @strk.t, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** @strk.t, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  store i32 %43, i32* %5, align 4
  %44 = load i8*, i8** @strk.t, align 8
  store i8* %44, i8** %4, align 8
  br label %45

45:                                               ; preds = %53, %39
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 39
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi i1 [ false, %45 ], [ %50, %48 ]
  br i1 %52, label %53, label %58

53:                                               ; preds = %51
  %54 = load i8*, i8** @strk.t, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** @strk.t, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  store i32 %57, i32* %5, align 4
  br label %45

58:                                               ; preds = %51
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  store i8* null, i8** @strk.t, align 8
  store i8* null, i8** %4, align 8
  br label %65

62:                                               ; preds = %58
  %63 = load i8*, i8** @strk.t, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** @strk.t, align 8
  store i8 0, i8* %63, align 1
  br label %65

65:                                               ; preds = %62, %61
  br label %90

66:                                               ; preds = %35
  br label %67

67:                                               ; preds = %78, %66
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 32
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 9
  br label %76

76:                                               ; preds = %73, %70, %67
  %77 = phi i1 [ false, %70 ], [ false, %67 ], [ %75, %73 ]
  br i1 %77, label %78, label %83

78:                                               ; preds = %76
  %79 = load i8*, i8** @strk.t, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** @strk.t, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  store i32 %82, i32* %5, align 4
  br label %67

83:                                               ; preds = %76
  %84 = load i8*, i8** @strk.t, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** @strk.t, align 8
  store i8 0, i8* %84, align 1
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  store i8* null, i8** @strk.t, align 8
  br label %89

89:                                               ; preds = %88, %83
  br label %90

90:                                               ; preds = %89, %65
  %91 = load i8*, i8** %4, align 8
  store i8* %91, i8** %2, align 8
  br label %92

92:                                               ; preds = %90, %34, %13
  %93 = load i8*, i8** %2, align 8
  ret i8* %93
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libdpv/extr_dialog_util.c_dialog_prompt_lastline.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libdpv/extr_dialog_util.c_dialog_prompt_lastline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@use_dialog = common dso_local global i64 0, align 8
@use_libdialog = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dialog_prompt_lastline(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  store i64 %9, i64* %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %82

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %3, align 8
  br label %82

20:                                               ; preds = %13
  %21 = load i8*, i8** %4, align 8
  store i8* %21, i8** %8, align 8
  store i8* %21, i8** %7, align 8
  br label %22

22:                                               ; preds = %77, %53, %20
  %23 = load i8*, i8** %8, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %80

27:                                               ; preds = %22
  %28 = load i64, i64* @use_dialog, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* @use_libdialog, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %30, %27
  %34 = load i8*, i8** %8, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load i64, i64* @use_libdialog, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i64, i64* %6, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41, %38
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  store i8* %46, i8** %7, align 8
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i64, i64* @FALSE, align 8
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %47, %33
  br label %50

50:                                               ; preds = %49, %30
  %51 = load i64, i64* @use_libdialog, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %8, align 8
  br label %22

56:                                               ; preds = %50
  %57 = load i8*, i8** %8, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 92
  br i1 %60, label %61, label %77

61:                                               ; preds = %56
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %8, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 110
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i64, i64* @TRUE, align 8
  store i64 %74, i64* %6, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  store i8* %76, i8** %7, align 8
  br label %77

77:                                               ; preds = %73, %67, %61, %56
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %8, align 8
  br label %22

80:                                               ; preds = %22
  %81 = load i8*, i8** %7, align 8
  store i8* %81, i8** %3, align 8
  br label %82

82:                                               ; preds = %80, %18, %12
  %83 = load i8*, i8** %3, align 8
  ret i8* %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_edit.c_esc_seq_to_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_edit.c_esc_seq_to_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EDIT_KEY_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"\0DUnknown escape sequence '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @esc_seq_to_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esc_seq_to_key(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %9 = load i32, i32* @EDIT_KEY_NONE, align 4
  store i32 %9, i32* %8, align 4
  store i8 0, i8* %4, align 1
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %5, align 8
  br label %11

11:                                               ; preds = %18, %1
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %4, align 1
  br label %18

18:                                               ; preds = %15
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %5, align 8
  br label %11

21:                                               ; preds = %11
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp sge i32 %25, 48
  br i1 %26, label %27, label %46

27:                                               ; preds = %21
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sle i32 %31, 57
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = call i32 @atoi(i8* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = call i8* @os_strchr(i8* %37, i8 signext 59)
  store i8* %38, i8** %5, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = call i32 @atoi(i8* %43)
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %41, %33
  br label %46

46:                                               ; preds = %45, %27, %21
  %47 = load i8*, i8** %3, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 91
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i8, i8* %4, align 1
  %56 = call i32 @esc_seq_to_key1(i32 %53, i32 %54, i8 signext %55)
  store i32 %56, i32* %8, align 4
  br label %69

57:                                               ; preds = %46
  %58 = load i8*, i8** %3, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 79
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i8, i8* %4, align 1
  %67 = call i32 @esc_seq_to_key2(i32 %64, i32 %65, i8 signext %66)
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %63, %57
  br label %69

69:                                               ; preds = %68, %52
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @EDIT_KEY_NONE, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %2, align 4
  br label %81

75:                                               ; preds = %69
  %76 = call i32 (...) @edit_clear_line()
  %77 = load i8*, i8** %3, align 8
  %78 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %77)
  %79 = call i32 (...) @edit_redraw()
  %80 = load i32, i32* @EDIT_KEY_NONE, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %75, %73
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i32 @esc_seq_to_key1(i32, i32, i8 signext) #1

declare dso_local i32 @esc_seq_to_key2(i32, i32, i8 signext) #1

declare dso_local i32 @edit_clear_line(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @edit_redraw(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

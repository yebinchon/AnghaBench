; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_parse_escape.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_parse_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [82 x i8] c"There is no character corresponding to `Delete' in the target character set `%s'.\00", align 1
@.str.1 = private unnamed_addr constant [105 x i8] c"The escape sequence `%c' is equivalent to plain `%c', which has no equivalent\0Ain the `%s' character set.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_escape(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %9 = load i8**, i8*** %3, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %9, align 8
  %12 = load i8, i8* %10, align 1
  %13 = sext i8 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 (i32, i32*, ...) bitcast (i32 (...)* @c_parse_backslash to i32 (i32, i32*, ...)*)(i32 %14, i32* %4)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %116

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %105 [
    i32 10, label %21
    i32 0, label %22
    i32 94, label %26
    i32 48, label %74
    i32 49, label %74
    i32 50, label %74
    i32 51, label %74
    i32 52, label %74
    i32 53, label %74
    i32 54, label %74
    i32 55, label %74
  ]

21:                                               ; preds = %19
  store i32 -2, i32* %2, align 4
  br label %116

22:                                               ; preds = %19
  %23 = load i8**, i8*** %3, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 -1
  store i8* %25, i8** %23, align 8
  store i32 0, i32* %2, align 4
  br label %116

26:                                               ; preds = %19
  %27 = load i8**, i8*** %3, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 -1
  store i8* %29, i8** %6, align 8
  %30 = load i8**, i8*** %3, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %30, align 8
  %33 = load i8, i8* %31, align 1
  %34 = sext i8 %33 to i32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 63
  br i1 %36, label %37, label %46

37:                                               ; preds = %26
  store i32 127, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 (i32, i32*, ...) bitcast (i32 (...)* @host_char_to_target to i32 (i32, i32*, ...)*)(i32 %38, i32* %4)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = call i32 (...) @host_charset()
  %43 = call i32 (i8*, i32, ...) bitcast (i32 (...)* @error to i32 (i8*, i32, ...)*)(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %116

46:                                               ; preds = %26
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %47, 92
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i8**, i8*** %3, align 8
  %51 = call i32 @parse_escape(i8** %50)
  store i32 %51, i32* %4, align 4
  br label %62

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  %54 = call i32 (i32, i32*, ...) bitcast (i32 (...)* @host_char_to_target to i32 (i32, i32*, ...)*)(i32 %53, i32* %4)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** %6, align 8
  %58 = load i8**, i8*** %3, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @no_control_char_error to i32 (i8*, i8*, ...)*)(i8* %57, i8* %59)
  br label %61

61:                                               ; preds = %56, %52
  br label %62

62:                                               ; preds = %61, %49
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %4, align 4
  %65 = call i32 (i32, i32*, ...) bitcast (i32 (...)* @target_char_to_control_char to i32 (i32, i32*, ...)*)(i32 %64, i32* %4)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = load i8*, i8** %6, align 8
  %69 = load i8**, i8*** %3, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @no_control_char_error to i32 (i8*, i8*, ...)*)(i8* %68, i8* %70)
  br label %72

72:                                               ; preds = %67, %63
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %116

74:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19
  %75 = load i32, i32* %5, align 4
  %76 = sub nsw i32 %75, 48
  store i32 %76, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %102, %74
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  %80 = icmp slt i32 %79, 3
  br i1 %80, label %81, label %103

81:                                               ; preds = %77
  %82 = load i8**, i8*** %3, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp sge i32 %86, 48
  br i1 %87, label %88, label %101

88:                                               ; preds = %81
  %89 = load i32, i32* %5, align 4
  %90 = icmp sle i32 %89, 55
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load i8**, i8*** %3, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %92, align 8
  %95 = load i32, i32* %7, align 4
  %96 = mul nsw i32 %95, 8
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %5, align 4
  %98 = sub nsw i32 %97, 48
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %7, align 4
  br label %102

101:                                              ; preds = %88, %81
  br label %103

102:                                              ; preds = %91
  br label %77

103:                                              ; preds = %101, %77
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %2, align 4
  br label %116

105:                                              ; preds = %19
  %106 = load i32, i32* %5, align 4
  %107 = call i32 (i32, i32*, ...) bitcast (i32 (...)* @host_char_to_target to i32 (i32, i32*, ...)*)(i32 %106, i32* %4)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = call i32 (...) @target_charset()
  %113 = call i32 (i8*, i32, i32, i32, ...) bitcast (i32 (...)* @error to i32 (i8*, i32, i32, i32, ...)*)(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %109, %105
  %115 = load i32, i32* %4, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %114, %103, %72, %44, %22, %21, %17
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @c_parse_backslash(...) #1

declare dso_local i32 @host_char_to_target(...) #1

declare dso_local i32 @error(...) #1

declare dso_local i32 @host_charset(...) #1

declare dso_local i32 @no_control_char_error(...) #1

declare dso_local i32 @target_char_to_control_char(...) #1

declare dso_local i32 @target_charset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

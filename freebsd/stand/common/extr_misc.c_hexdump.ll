; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_misc.c_hexdump.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_misc.c_hexdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"%08lx  \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"-- \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c" |\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"|\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hexdump(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [80 x i8], align 16
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = call i32 (...) @pager_open()
  %10 = load i64, i64* %3, align 8
  store i64 %10, i64* %5, align 8
  br label %11

11:                                               ; preds = %113, %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = add i64 %13, %14
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %116

17:                                               ; preds = %11
  %18 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %19 = load i64, i64* %5, align 8
  %20 = call i32 (i8*, i8*, ...) @sprintf(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %22 = call i32 (i8*, ...) bitcast (i32 (...)* @pager_output to i32 (i8*, ...)*)(i8* %21)
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %60, %17
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 16
  br i1 %25, label %26, label %63

26:                                               ; preds = %23
  %27 = load i64, i64* %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %31, %32
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %26
  %36 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %37 = load i64, i64* %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = inttoptr i64 %40 to i32*
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, i8*, ...) @sprintf(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %45 = call i32 (i8*, ...) bitcast (i32 (...)* @pager_output to i32 (i8*, ...)*)(i8* %44)
  br label %51

46:                                               ; preds = %26
  %47 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %48 = call i32 (i8*, i8*, ...) @sprintf(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %49 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %50 = call i32 (i8*, ...) bitcast (i32 (...)* @pager_output to i32 (i8*, ...)*)(i8* %49)
  br label %51

51:                                               ; preds = %46, %35
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 7
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %56 = call i32 (i8*, i8*, ...) @sprintf(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %57 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %58 = call i32 (i8*, ...) bitcast (i32 (...)* @pager_output to i32 (i8*, ...)*)(i8* %57)
  br label %59

59:                                               ; preds = %54, %51
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %23

63:                                               ; preds = %23
  %64 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %65 = call i32 (i8*, i8*, ...) @sprintf(i8* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %66 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %67 = call i32 (i8*, ...) bitcast (i32 (...)* @pager_output to i32 (i8*, ...)*)(i8* %66)
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %105, %63
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 16
  br i1 %70, label %71, label %108

71:                                               ; preds = %68
  %72 = load i64, i64* %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = load i64, i64* %3, align 8
  %77 = load i64, i64* %4, align 8
  %78 = add i64 %76, %77
  %79 = icmp ult i64 %75, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %71
  %81 = load i64, i64* %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %81, %83
  %85 = inttoptr i64 %84 to i32*
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %87, 32
  br i1 %88, label %92, label %89

89:                                               ; preds = %80
  %90 = load i32, i32* %7, align 4
  %91 = icmp sgt i32 %90, 126
  br i1 %91, label %92, label %93

92:                                               ; preds = %89, %80
  store i32 46, i32* %7, align 4
  br label %93

93:                                               ; preds = %92, %89
  %94 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %95 = load i32, i32* %7, align 4
  %96 = call i32 (i8*, i8*, ...) @sprintf(i8* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  %97 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %98 = call i32 (i8*, ...) bitcast (i32 (...)* @pager_output to i32 (i8*, ...)*)(i8* %97)
  br label %104

99:                                               ; preds = %71
  %100 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %101 = call i32 (i8*, i8*, ...) @sprintf(i8* %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %102 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %103 = call i32 (i8*, ...) bitcast (i32 (...)* @pager_output to i32 (i8*, ...)*)(i8* %102)
  br label %104

104:                                              ; preds = %99, %93
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %68

108:                                              ; preds = %68
  %109 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %110 = call i32 (i8*, i8*, ...) @sprintf(i8* %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %111 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %112 = call i32 (i8*, ...) bitcast (i32 (...)* @pager_output to i32 (i8*, ...)*)(i8* %111)
  br label %113

113:                                              ; preds = %108
  %114 = load i64, i64* %5, align 8
  %115 = add nsw i64 %114, 16
  store i64 %115, i64* %5, align 8
  br label %11

116:                                              ; preds = %11
  %117 = call i32 (...) @pager_close()
  ret void
}

declare dso_local i32 @pager_open(...) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @pager_output(...) #1

declare dso_local i32 @pager_close(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

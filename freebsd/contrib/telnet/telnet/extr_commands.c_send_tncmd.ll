; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_commands.c_send_tncmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_commands.c_send_tncmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"usage: send %s <value|option>\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"\22value\22 must be from 0 to 255\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Valid options are:\0A\09\00", align 1
@telopts = external dso_local global [0 x i8*], align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [50 x i8] c"'%s': ambiguous argument ('send %s ?' for help).\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"'%s': unknown argument ('send %s ?' for help).\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"'%s': bad value ('send %s ?' for help).\0A\00", align 1
@connected = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"?Need to be connected first.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (void (i32, i32)*, i8*, i8*)* @send_tncmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_tncmd(void (i32, i32)* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca void (i32, i32)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store void (i32, i32)* %0, void (i32, i32)** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @isprefix(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @isprefix(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %16, %3
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store i32 8, i32* %10, align 4
  store i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @telopts, i64 0, i64 0), i8*** %8, align 8
  br label %25

25:                                               ; preds = %47, %20
  %26 = load i8**, i8*** %8, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = load i8**, i8*** %8, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = add nsw i32 %32, 3
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %34, %35
  %37 = icmp sgt i32 %36, 65
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32 8, i32* %10, align 4
  br label %40

40:                                               ; preds = %38, %29
  %41 = load i8**, i8*** %8, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %42)
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %40
  %48 = load i8**, i8*** %8, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i32 1
  store i8** %49, i8*** %8, align 8
  br label %25

50:                                               ; preds = %25
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %129

52:                                               ; preds = %16
  %53 = load i8*, i8** %7, align 8
  %54 = call i64 @genget(i8* %53, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @telopts, i64 0, i64 0), i32 8)
  %55 = inttoptr i64 %54 to i8**
  store i8** %55, i8*** %8, align 8
  %56 = load i8**, i8*** %8, align 8
  %57 = call i64 @Ambiguous(i8** %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load i32, i32* @stderr, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @fprintf(i32 %60, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i8* %61, i8* %62)
  store i32 0, i32* %4, align 4
  br label %129

64:                                               ; preds = %52
  %65 = load i8**, i8*** %8, align 8
  %66 = icmp ne i8** %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i8**, i8*** %8, align 8
  %69 = ptrtoint i8** %68 to i64
  %70 = sub i64 %69, ptrtoint ([0 x i8*]* @telopts to i64)
  %71 = sdiv exact i64 %70, 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %9, align 4
  br label %121

73:                                               ; preds = %64
  %74 = load i8*, i8** %7, align 8
  store i8* %74, i8** %12, align 8
  br label %75

75:                                               ; preds = %87, %73
  %76 = load i8*, i8** %12, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp sge i32 %78, 48
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i8*, i8** %12, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp sle i32 %83, 57
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i1 [ false, %75 ], [ %84, %80 ]
  br i1 %86, label %87, label %98

87:                                               ; preds = %85
  %88 = load i32, i32* %9, align 4
  %89 = mul nsw i32 %88, 10
  store i32 %89, i32* %9, align 4
  %90 = load i8*, i8** %12, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = sub nsw i32 %92, 48
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %9, align 4
  %96 = load i8*, i8** %12, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %12, align 8
  br label %75

98:                                               ; preds = %85
  %99 = load i8*, i8** %12, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load i32, i32* @stderr, align 4
  %105 = load i8*, i8** %7, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 @fprintf(i32 %104, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i8* %105, i8* %106)
  store i32 0, i32* %4, align 4
  br label %129

108:                                              ; preds = %98
  %109 = load i32, i32* %9, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %9, align 4
  %113 = icmp sgt i32 %112, 255
  br i1 %113, label %114, label %119

114:                                              ; preds = %111, %108
  %115 = load i32, i32* @stderr, align 4
  %116 = load i8*, i8** %7, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = call i32 @fprintf(i32 %115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i8* %116, i8* %117)
  store i32 0, i32* %4, align 4
  br label %129

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %119
  br label %121

121:                                              ; preds = %120, %67
  %122 = load i32, i32* @connected, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %121
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %129

126:                                              ; preds = %121
  %127 = load void (i32, i32)*, void (i32, i32)** %5, align 8
  %128 = load i32, i32* %9, align 4
  call void %127(i32 %128, i32 1)
  store i32 1, i32* %4, align 4
  br label %129

129:                                              ; preds = %126, %124, %114, %103, %59, %50
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i64 @isprefix(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @genget(i8*, i8**, i32) #1

declare dso_local i64 @Ambiguous(i8**) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

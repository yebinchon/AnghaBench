; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_message.c_progress_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_message.c_progress_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progress_started = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@V_VERBOSE = common dso_local global i64 0, align 8
@progress_active = common dso_local global i32 0, align 4
@progress_automatic = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"100 %\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"\0D %*s %*s   %*s %10s   %10s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@filename = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @progress_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @progress_flush(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [5 x i8*], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* @progress_started, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i64, i64* @verbosity, align 8
  %15 = load i64, i64* @V_VERBOSE, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %1
  br label %143

18:                                               ; preds = %13
  %19 = call i32 @progress_pos(i64* %3, i64* %4, i64* %5)
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @progress_active, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* %4, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* %5, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %25
  br label %143

32:                                               ; preds = %28, %22, %18
  store i32 0, i32* @progress_active, align 4
  %33 = call i64 (...) @mytime_get_elapsed()
  store i64 %33, i64* %6, align 8
  %34 = call i32 (...) @signals_block()
  %35 = load i64, i64* @progress_automatic, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %89

37:                                               ; preds = %32
  %38 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 0
  %39 = load i32, i32* %2, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %45

42:                                               ; preds = %37
  %43 = load i64, i64* %3, align 8
  %44 = call i8* @progress_percentage(i64 %43)
  br label %45

45:                                               ; preds = %42, %41
  %46 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %41 ], [ %44, %42 ]
  store i8* %46, i8** %38, align 8
  %47 = getelementptr inbounds i8*, i8** %38, i64 1
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i8* @progress_sizes(i64 %48, i64 %49, i32 1)
  store i8* %50, i8** %47, align 8
  %51 = getelementptr inbounds i8*, i8** %47, i64 1
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i8* @progress_speed(i64 %52, i64 %53)
  store i8* %54, i8** %51, align 8
  %55 = getelementptr inbounds i8*, i8** %51, i64 1
  %56 = load i64, i64* %6, align 8
  %57 = call i8* @progress_time(i64 %56)
  store i8* %57, i8** %55, align 8
  %58 = getelementptr inbounds i8*, i8** %55, i64 1
  %59 = load i32, i32* %2, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %45
  br label %66

62:                                               ; preds = %45
  %63 = load i64, i64* %3, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i8* @progress_remaining(i64 %63, i64 %64)
  br label %66

66:                                               ; preds = %62, %61
  %67 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %61 ], [ %65, %62 ]
  store i8* %67, i8** %58, align 8
  %68 = load i32, i32* @stderr, align 4
  %69 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 0
  %70 = load i8*, i8** %69, align 16
  %71 = call i8* @tuklib_mbstr_fw(i8* %70, i32 6)
  %72 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 0
  %73 = load i8*, i8** %72, align 16
  %74 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i8* @tuklib_mbstr_fw(i8* %75, i32 35)
  %77 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 1
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 2
  %80 = load i8*, i8** %79, align 16
  %81 = call i8* @tuklib_mbstr_fw(i8* %80, i32 9)
  %82 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 2
  %83 = load i8*, i8** %82, align 16
  %84 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 3
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 4
  %87 = load i8*, i8** %86, align 16
  %88 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %71, i8* %73, i8* %76, i8* %78, i8* %81, i8* %83, i8* %85, i8* %87)
  br label %141

89:                                               ; preds = %32
  %90 = load i32, i32* @stderr, align 4
  %91 = load i8*, i8** @filename, align 8
  %92 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %91)
  %93 = load i32, i32* %2, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %108, label %95

95:                                               ; preds = %89
  %96 = load i64, i64* %3, align 8
  %97 = call i8* @progress_percentage(i64 %96)
  store i8* %97, i8** %8, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 45
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load i32, i32* @stderr, align 4
  %105 = load i8*, i8** %8, align 8
  %106 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %105)
  br label %107

107:                                              ; preds = %103, %95
  br label %108

108:                                              ; preds = %107, %89
  %109 = load i32, i32* @stderr, align 4
  %110 = load i64, i64* %4, align 8
  %111 = load i64, i64* %5, align 8
  %112 = call i8* @progress_sizes(i64 %110, i64 %111, i32 1)
  %113 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %112)
  %114 = load i64, i64* %5, align 8
  %115 = load i64, i64* %6, align 8
  %116 = call i8* @progress_speed(i64 %114, i64 %115)
  store i8* %116, i8** %9, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %108
  %123 = load i32, i32* @stderr, align 4
  %124 = load i8*, i8** %9, align 8
  %125 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %124)
  br label %126

126:                                              ; preds = %122, %108
  %127 = load i64, i64* %6, align 8
  %128 = call i8* @progress_time(i64 %127)
  store i8* %128, i8** %10, align 8
  %129 = load i8*, i8** %10, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 0
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %126
  %135 = load i32, i32* @stderr, align 4
  %136 = load i8*, i8** %10, align 8
  %137 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %136)
  br label %138

138:                                              ; preds = %134, %126
  %139 = load i32, i32* @stderr, align 4
  %140 = call i32 @fputc(i8 signext 10, i32 %139)
  br label %141

141:                                              ; preds = %138, %66
  %142 = call i32 (...) @signals_unblock()
  br label %143

143:                                              ; preds = %141, %31, %17
  ret void
}

declare dso_local i32 @progress_pos(i64*, i64*, i64*) #1

declare dso_local i64 @mytime_get_elapsed(...) #1

declare dso_local i32 @signals_block(...) #1

declare dso_local i8* @progress_percentage(i64) #1

declare dso_local i8* @progress_sizes(i64, i64, i32) #1

declare dso_local i8* @progress_speed(i64, i64) #1

declare dso_local i8* @progress_time(i64) #1

declare dso_local i8* @progress_remaining(i64, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @tuklib_mbstr_fw(i8*, i32) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @signals_unblock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

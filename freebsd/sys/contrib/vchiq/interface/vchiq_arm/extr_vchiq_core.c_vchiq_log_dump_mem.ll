; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_vchiq_log_dump_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_vchiq_log_dump_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@VCHIQ_LOG_TRACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"%s: %08x: %s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%08x: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vchiq_log_dump_mem(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [100 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %9, align 8
  br label %16

16:                                               ; preds = %112, %4
  %17 = load i64, i64* %8, align 8
  %18 = icmp ugt i64 %17, 0
  br i1 %18, label %19, label %113

19:                                               ; preds = %16
  %20 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  store i8* %20, i8** %12, align 8
  store i64 0, i64* %10, align 8
  br label %21

21:                                               ; preds = %45, %19
  %22 = load i64, i64* %10, align 8
  %23 = icmp ult i64 %22, 16
  br i1 %23, label %24, label %48

24:                                               ; preds = %21
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load i8*, i8** %12, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %29, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i8*, i8** %12, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %12, align 8
  br label %44

38:                                               ; preds = %24
  %39 = load i8*, i8** %12, align 8
  %40 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %39, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i8*, i8** %12, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %12, align 8
  br label %44

44:                                               ; preds = %38, %28
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %10, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %10, align 8
  br label %21

48:                                               ; preds = %21
  store i64 0, i64* %10, align 8
  br label %49

49:                                               ; preds = %73, %48
  %50 = load i64, i64* %10, align 8
  %51 = icmp ult i64 %50, 16
  br i1 %51, label %52, label %76

52:                                               ; preds = %49
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %8, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %52
  %57 = load i32*, i32** %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp slt i32 %61, 32
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %13, align 4
  %65 = icmp sgt i32 %64, 126
  br i1 %65, label %66, label %67

66:                                               ; preds = %63, %56
  store i32 46, i32* %13, align 4
  br label %67

67:                                               ; preds = %66, %63
  %68 = load i32, i32* %13, align 4
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %12, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %12, align 8
  store i8 %69, i8* %70, align 1
  br label %72

72:                                               ; preds = %67, %52
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %10, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %10, align 8
  br label %49

76:                                               ; preds = %49
  %77 = load i8*, i8** %12, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %12, align 8
  store i8 0, i8* %77, align 1
  %79 = load i8*, i8** %5, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %94

81:                                               ; preds = %76
  %82 = load i8*, i8** %5, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load i32, i32* @VCHIQ_LOG_TRACE, align 4
  %88 = load i8*, i8** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to i8*
  %92 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %93 = call i32 (i32, i8*, i8*, i8*, ...) @vchiq_log_trace(i32 %87, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %88, i8* %91, i8* %92)
  br label %101

94:                                               ; preds = %81, %76
  %95 = load i32, i32* @VCHIQ_LOG_TRACE, align 4
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %100 = call i32 (i32, i8*, i8*, i8*, ...) @vchiq_log_trace(i32 %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %98, i8* %99)
  br label %101

101:                                              ; preds = %94, %86
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 16
  store i32 %103, i32* %6, align 4
  %104 = load i32*, i32** %9, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 16
  store i32* %105, i32** %9, align 8
  %106 = load i64, i64* %8, align 8
  %107 = icmp ugt i64 %106, 16
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load i64, i64* %8, align 8
  %110 = sub i64 %109, 16
  store i64 %110, i64* %8, align 8
  br label %112

111:                                              ; preds = %101
  store i64 0, i64* %8, align 8
  br label %112

112:                                              ; preds = %111, %108
  br label %16

113:                                              ; preds = %16
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @vchiq_log_trace(i32, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

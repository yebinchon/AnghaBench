; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_assertions.c_default_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_assertions.c_default_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BACKTRACE_MAXFRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c", back trace\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"%s:%d: %s(%s) %s%s\0A\00", align 1
@isc_msgcat = common dso_local global i32 0, align 4
@ISC_MSGSET_GENERAL = common dso_local global i32 0, align 4
@ISC_MSG_FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"#%d %p in %s()+0x%lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"#%d %p in ??\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i8*)* @default_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @default_callback(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %17 = load i32, i32* @BACKTRACE_MAXFRAME, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i8*, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %21 = load i32, i32* @BACKTRACE_MAXFRAME, align 4
  %22 = call i64 @isc_backtrace_gettrace(i8** %20, i32 %21, i32* %12)
  store i64 %22, i64* %15, align 8
  %23 = load i64, i64* %15, align 8
  %24 = load i64, i64* @ISC_R_SUCCESS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load i32, i32* %12, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %30

30:                                               ; preds = %29, %26, %4
  %31 = load i32, i32* @stderr, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i8* @isc_assertion_typetotext(i32 %34)
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* @isc_msgcat, align 4
  %38 = load i32, i32* @ISC_MSGSET_GENERAL, align 4
  %39 = load i32, i32* @ISC_MSG_FAILED, align 4
  %40 = call i8* @isc_msgcat_get(i32 %37, i32 %38, i32 %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i8*, i8** %13, align 8
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %32, i32 %33, i8* %35, i8* %36, i8* %40, i8* %41)
  %43 = load i64, i64* %15, align 8
  %44 = load i64, i64* @ISC_R_SUCCESS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %83

46:                                               ; preds = %30
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %79, %46
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %82

51:                                               ; preds = %47
  store i8* null, i8** %14, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %20, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @isc_backtrace_getsymbol(i8* %55, i8** %14, i64* %16)
  store i64 %56, i64* %15, align 8
  %57 = load i64, i64* %15, align 8
  %58 = load i64, i64* @ISC_R_SUCCESS, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %51
  %61 = load i32, i32* @stderr, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %20, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = load i64, i64* %16, align 8
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %62, i8* %66, i8* %67, i64 %68)
  br label %78

70:                                               ; preds = %51
  %71 = load i32, i32* @stderr, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %20, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %72, i8* %76)
  br label %78

78:                                               ; preds = %70, %60
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %47

82:                                               ; preds = %47
  br label %83

83:                                               ; preds = %82, %30
  %84 = load i32, i32* @stderr, align 4
  %85 = call i32 @fflush(i32 %84)
  %86 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %86)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @isc_backtrace_gettrace(i8**, i32, i32*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @isc_assertion_typetotext(i32) #2

declare dso_local i8* @isc_msgcat_get(i32, i32, i32, i8*) #2

declare dso_local i64 @isc_backtrace_getsymbol(i8*, i8**, i64*) #2

declare dso_local i32 @fflush(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

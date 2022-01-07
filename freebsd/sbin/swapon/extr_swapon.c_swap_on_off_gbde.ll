; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/swapon/extr_swapon.c_swap_on_off_gbde.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/swapon/extr_swapon.c_swap_on_off_gbde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@which_prog = common dso_local global i64 0, align 8
@SWAPON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"%s init %s -P %s\00", align 1
@_PATH_GBDE = common dso_local global i32 0, align 4
@qflag = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"%s: Device already in use\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s attach %s -p %s\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"gbde (attach) error: %s\00", align 1
@SWAPOFF = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"%s detach %s\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"%s: Device not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @swap_on_off_gbde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @swap_on_off_gbde(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [129 x i8], align 16
  %8 = alloca [64 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i8* @swap_basename(i8* %12)
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %95

17:                                               ; preds = %2
  %18 = load i64, i64* @which_prog, align 8
  %19 = load i64, i64* @SWAPON, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %70

21:                                               ; preds = %17
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %23 = call i32 @arc4random_buf(i8* %22, i32 64)
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %37, %21
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 64
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load i32, i32* %10, align 4
  %29 = mul nsw i32 2, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [129 x i8], [129 x i8]* %7, i64 0, i64 %30
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = call i32 @sprintf(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8 zeroext %35)
  br label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %24

40:                                               ; preds = %24
  %41 = getelementptr inbounds [129 x i8], [129 x i8]* %7, i64 0, i64 128
  store i8 0, i8* %41, align 16
  %42 = load i32, i32* @_PATH_GBDE, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds [129 x i8], [129 x i8]* %7, i64 0, i64 0
  %45 = call i32 (i32*, i8*, i32, i8*, ...) @run_cmd(i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %42, i8* %43, i8* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %40
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @free(i8* %49)
  %51 = load i64, i64* @qflag, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %53, %48
  store i8* null, i8** %3, align 8
  br label %95

57:                                               ; preds = %40
  %58 = load i32, i32* @_PATH_GBDE, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds [129 x i8], [129 x i8]* %7, i64 0, i64 0
  %61 = call i32 (i32*, i8*, i32, i8*, ...) @run_cmd(i32* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %58, i8* %59, i8* %60)
  store i32 %61, i32* %11, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @free(i8* %62)
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %67)
  store i8* null, i8** %3, align 8
  br label %95

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69, %17
  %71 = load i8*, i8** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i8* @swap_on_off_sfile(i8* %71, i32 %72)
  store i8* %73, i8** %6, align 8
  %74 = load i64, i64* @which_prog, align 8
  %75 = load i64, i64* @SWAPOFF, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %70
  %78 = load i32, i32* @_PATH_GBDE, align 4
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 (i32*, i8*, i32, i8*, ...) @run_cmd(i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %78, i8* %79)
  store i32 %80, i32* %11, align 4
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 @free(i8* %81)
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %77
  %86 = load i64, i64* @qflag, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i8*, i8** %4, align 8
  %90 = call i32 @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %89)
  br label %91

91:                                               ; preds = %88, %85
  store i8* null, i8** %3, align 8
  br label %95

92:                                               ; preds = %77
  br label %93

93:                                               ; preds = %92, %70
  %94 = load i8*, i8** %6, align 8
  store i8* %94, i8** %3, align 8
  br label %95

95:                                               ; preds = %93, %91, %66, %56, %16
  %96 = load i8*, i8** %3, align 8
  ret i8* %96
}

declare dso_local i8* @swap_basename(i8*) #1

declare dso_local i32 @arc4random_buf(i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 zeroext) #1

declare dso_local i32 @run_cmd(i32*, i8*, i32, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i8* @swap_on_off_sfile(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

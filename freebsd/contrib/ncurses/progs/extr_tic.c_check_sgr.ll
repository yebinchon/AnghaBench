; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tic.c_check_sgr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tic.c_check_sgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_nc_tparm_err = common dso_local global i64 0, align 8
@set_attributes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s differs from sgr(%d)\0A\09%s=%s\0A\09sgr(%d)=%s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"sgr(%d) present, but not %s\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"sgr(%d) missing, but %s present\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"stack error in sgr(%d) string\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i32, i8*, i8*)* @check_sgr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_sgr(i32* %0, i8* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  store i64 0, i64* @_nc_tparm_err, align 8
  %12 = load i32, i32* @set_attributes, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 1
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 2
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 3
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 4
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 5
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 6
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 7
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 8
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 9
  %39 = zext i1 %38 to i32
  %40 = call i8* @TPARM_9(i32 %12, i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30, i32 %33, i32 %36, i32 %39)
  store i8* %40, i8** %11, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %75

43:                                               ; preds = %5
  %44 = load i8*, i8** %9, align 8
  %45 = call i64 @PRESENT(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = load i8*, i8** %11, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @similar_sgr(i32 %48, i8* %49, i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %47
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i8*, i8** %10, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @_nc_visbuf2(i32 1, i8* %57)
  %59 = load i32, i32* %8, align 4
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @_nc_visbuf2(i32 2, i8* %60)
  %62 = call i32 (i8*, ...) @_nc_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %54, i32 %55, i8* %56, i32 %58, i32 %59, i32 %61)
  br label %63

63:                                               ; preds = %53, %47
  br label %74

64:                                               ; preds = %43
  %65 = load i8*, i8** %11, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i64 @_nc_capcmp(i8* %65, i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* %8, align 4
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 (i8*, ...) @_nc_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %70, i8* %71)
  br label %73

73:                                               ; preds = %69, %64
  br label %74

74:                                               ; preds = %73, %63
  br label %84

75:                                               ; preds = %5
  %76 = load i8*, i8** %9, align 8
  %77 = call i64 @PRESENT(i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32, i32* %8, align 4
  %81 = load i8*, i8** %10, align 8
  %82 = call i32 (i8*, ...) @_nc_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %80, i8* %81)
  br label %83

83:                                               ; preds = %79, %75
  br label %84

84:                                               ; preds = %83, %74
  %85 = load i64, i64* @_nc_tparm_err, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %8, align 4
  %89 = call i32 (i8*, ...) @_nc_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i8*, i8** %11, align 8
  ret i8* %91
}

declare dso_local i8* @TPARM_9(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @PRESENT(i8*) #1

declare dso_local i32 @similar_sgr(i32, i8*, i8*) #1

declare dso_local i32 @_nc_warning(i8*, ...) #1

declare dso_local i32 @_nc_visbuf2(i32, i8*) #1

declare dso_local i64 @_nc_capcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

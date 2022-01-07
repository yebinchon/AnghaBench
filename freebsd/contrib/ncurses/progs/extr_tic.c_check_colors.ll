; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tic.c_check_colors.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tic.c_check_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_colors = common dso_local global i64 0, align 8
@max_pairs = common dso_local global i64 0, align 8
@initialize_pair = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [59 x i8] c"inconsistent values for max_colors (%d) and max_pairs (%d)\00", align 1
@set_foreground = common dso_local global i32* null, align 8
@set_background = common dso_local global i32* null, align 8
@set_a_foreground = common dso_local global i32* null, align 8
@set_a_background = common dso_local global i32* null, align 8
@set_color_pair = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"expected setf/setaf to be different\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"expected setb/setab to be different\00", align 1
@orig_pair = common dso_local global i32* null, align 8
@orig_colors = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [50 x i8] c"expected either op/oc string for resetting colors\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @check_colors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_colors(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i64, i64* @max_colors, align 8
  %4 = icmp sgt i64 %3, 0
  %5 = zext i1 %4 to i32
  %6 = load i64, i64* @max_pairs, align 8
  %7 = icmp sgt i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = icmp ne i32 %5, %8
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* @max_colors, align 8
  %12 = load i64, i64* @max_pairs, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load i32*, i32** @initialize_pair, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14, %1
  %18 = load i64, i64* @max_colors, align 8
  %19 = load i64, i64* @max_pairs, align 8
  %20 = call i32 (i8*, ...) @_nc_warning(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %18, i64 %19)
  br label %21

21:                                               ; preds = %17, %14, %10
  %22 = load i32*, i32** @set_foreground, align 8
  %23 = load i32*, i32** @set_background, align 8
  %24 = call i32 @PAIRED(i32* %22, i32* %23)
  %25 = load i32*, i32** @set_a_foreground, align 8
  %26 = load i32*, i32** @set_a_background, align 8
  %27 = call i32 @PAIRED(i32* %25, i32* %26)
  %28 = load i32*, i32** @set_color_pair, align 8
  %29 = load i32*, i32** @initialize_pair, align 8
  %30 = call i32 @PAIRED(i32* %28, i32* %29)
  %31 = load i32*, i32** @set_foreground, align 8
  %32 = call i64 @VALID_STRING(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %21
  %35 = load i32*, i32** @set_a_foreground, align 8
  %36 = call i64 @VALID_STRING(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i32*, i32** @set_foreground, align 8
  %40 = load i32*, i32** @set_a_foreground, align 8
  %41 = call i32 @_nc_capcmp(i32* %39, i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = call i32 (i8*, ...) @_nc_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %38, %34, %21
  %46 = load i32*, i32** @set_background, align 8
  %47 = call i64 @VALID_STRING(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = load i32*, i32** @set_a_background, align 8
  %51 = call i64 @VALID_STRING(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i32*, i32** @set_background, align 8
  %55 = load i32*, i32** @set_a_background, align 8
  %56 = call i32 @_nc_capcmp(i32* %54, i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = call i32 (i8*, ...) @_nc_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %53, %49, %45
  %61 = load i64, i64* @max_colors, align 8
  %62 = call i64 @VALID_NUMERIC(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %94

64:                                               ; preds = %60
  %65 = load i64, i64* @max_pairs, align 8
  %66 = call i64 @VALID_NUMERIC(i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %94

68:                                               ; preds = %64
  %69 = load i32*, i32** @set_foreground, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32*, i32** @set_background, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %83, label %74

74:                                               ; preds = %71, %68
  %75 = load i32*, i32** @set_a_foreground, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32*, i32** @set_a_background, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %77, %74
  %81 = load i32*, i32** @set_color_pair, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %94

83:                                               ; preds = %80, %77, %71
  %84 = load i32*, i32** @orig_pair, align 8
  %85 = call i64 @VALID_STRING(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %83
  %88 = load i32*, i32** @orig_colors, align 8
  %89 = call i64 @VALID_STRING(i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  %92 = call i32 (i8*, ...) @_nc_warning(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %87, %83
  br label %94

94:                                               ; preds = %93, %80, %64, %60
  ret void
}

declare dso_local i32 @_nc_warning(i8*, ...) #1

declare dso_local i32 @PAIRED(i32*, i32*) #1

declare dso_local i64 @VALID_STRING(i32*) #1

declare dso_local i32 @_nc_capcmp(i32*, i32*) #1

declare dso_local i64 @VALID_NUMERIC(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

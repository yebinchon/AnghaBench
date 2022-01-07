; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_set_options_simple.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_set_options_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"colors\00", align 1
@xo_xof_simple_names = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"no-color\00", align 1
@XOF_COLOR_ALLOWED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"unknown simple option: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @xo_set_options_simple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xo_set_options_simple(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = call i8* @alloca(i32 %16)
  store i8* %17, i8** %11, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @memcpy(i8* %18, i8* %19, i32 %20)
  %22 = load i8*, i8** %11, align 8
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %12, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = getelementptr inbounds i8, i8* %26, i64 -1
  store i8* %27, i8** %8, align 8
  br label %28

28:                                               ; preds = %85, %2
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ult i8* %32, %33
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i1 [ false, %28 ], [ %34, %31 ]
  br i1 %36, label %37, label %87

37:                                               ; preds = %35
  %38 = load i8*, i8** %7, align 8
  %39 = call i8* @strchr(i8* %38, i8 signext 44)
  store i8* %39, i8** %10, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %10, align 8
  store i8 0, i8* %43, align 1
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i8*, i8** %7, align 8
  %47 = call i8* @strchr(i8* %46, i8 signext 61)
  store i8* %47, i8** %9, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %9, align 8
  store i8 0, i8* %51, align 1
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i8*, i8** %7, align 8
  %55 = call i64 @xo_streq(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32*, i32** %4, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @xo_set_color_map(i32* %58, i8* %59)
  br label %85

61:                                               ; preds = %53
  %62 = load i32, i32* @xo_xof_simple_names, align 4
  %63 = load i8*, i8** %7, align 8
  %64 = call i64 @xo_name_lookup(i32 %62, i8* %63, i32 -1)
  store i64 %64, i64* %6, align 8
  %65 = load i64, i64* %6, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32*, i32** %4, align 8
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @XOF_SET(i32* %68, i64 %69)
  br label %84

71:                                               ; preds = %61
  %72 = load i8*, i8** %7, align 8
  %73 = call i64 @xo_streq(i8* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* @XOF_COLOR_ALLOWED, align 4
  %78 = call i32 @XOF_CLEAR(i32* %76, i32 %77)
  br label %83

79:                                               ; preds = %71
  %80 = load i32*, i32** %4, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @xo_failure(i32* %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %81)
  store i32 -1, i32* %3, align 4
  br label %88

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %67
  br label %85

85:                                               ; preds = %84, %57
  %86 = load i8*, i8** %10, align 8
  store i8* %86, i8** %7, align 8
  br label %28

87:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %79
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @xo_streq(i8*, i8*) #1

declare dso_local i32 @xo_set_color_map(i32*, i8*) #1

declare dso_local i64 @xo_name_lookup(i32, i8*, i32) #1

declare dso_local i32 @XOF_SET(i32*, i64) #1

declare dso_local i32 @XOF_CLEAR(i32*, i32) #1

declare dso_local i32 @xo_failure(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

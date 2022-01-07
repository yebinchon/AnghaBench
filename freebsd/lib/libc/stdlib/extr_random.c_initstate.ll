; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_random.c_initstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_random.c_initstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@state = common dso_local global i64* null, align 8
@BREAK_0 = common dso_local global i64 0, align 8
@rand_type = common dso_local global i64 0, align 8
@TYPE_0 = common dso_local global i64 0, align 8
@MAX_TYPES = common dso_local global i32 0, align 4
@rptr = common dso_local global i64* null, align 8
@BREAK_1 = common dso_local global i64 0, align 8
@DEG_0 = common dso_local global i64 0, align 8
@rand_deg = common dso_local global i64 0, align 8
@SEP_0 = common dso_local global i32 0, align 4
@rand_sep = common dso_local global i32 0, align 4
@BREAK_2 = common dso_local global i64 0, align 8
@TYPE_1 = common dso_local global i64 0, align 8
@DEG_1 = common dso_local global i64 0, align 8
@SEP_1 = common dso_local global i32 0, align 4
@BREAK_3 = common dso_local global i64 0, align 8
@TYPE_2 = common dso_local global i64 0, align 8
@DEG_2 = common dso_local global i64 0, align 8
@SEP_2 = common dso_local global i32 0, align 4
@BREAK_4 = common dso_local global i64 0, align 8
@TYPE_3 = common dso_local global i64 0, align 8
@DEG_3 = common dso_local global i64 0, align 8
@SEP_3 = common dso_local global i32 0, align 4
@TYPE_4 = common dso_local global i64 0, align 8
@DEG_4 = common dso_local global i64 0, align 8
@SEP_4 = common dso_local global i32 0, align 4
@end_ptr = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @initstate(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64*, i64** @state, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 -1
  %12 = bitcast i64* %11 to i8*
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to i64*
  store i64* %14, i64** %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @BREAK_0, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %111

19:                                               ; preds = %3
  %20 = load i64, i64* @rand_type, align 8
  %21 = load i64, i64* @TYPE_0, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i64, i64* @rand_type, align 8
  %25 = load i64*, i64** @state, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 -1
  store i64 %24, i64* %26, align 8
  br label %41

27:                                               ; preds = %19
  %28 = load i32, i32* @MAX_TYPES, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64*, i64** @rptr, align 8
  %31 = load i64*, i64** @state, align 8
  %32 = ptrtoint i64* %30 to i64
  %33 = ptrtoint i64* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 8
  %36 = mul nsw i64 %29, %35
  %37 = load i64, i64* @rand_type, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i64*, i64** @state, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 -1
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %27, %23
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @BREAK_1, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i64, i64* @TYPE_0, align 8
  store i64 %46, i64* @rand_type, align 8
  %47 = load i64, i64* @DEG_0, align 8
  store i64 %47, i64* @rand_deg, align 8
  %48 = load i32, i32* @SEP_0, align 4
  store i32 %48, i32* @rand_sep, align 4
  br label %80

49:                                               ; preds = %41
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @BREAK_2, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i64, i64* @TYPE_1, align 8
  store i64 %54, i64* @rand_type, align 8
  %55 = load i64, i64* @DEG_1, align 8
  store i64 %55, i64* @rand_deg, align 8
  %56 = load i32, i32* @SEP_1, align 4
  store i32 %56, i32* @rand_sep, align 4
  br label %79

57:                                               ; preds = %49
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @BREAK_3, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i64, i64* @TYPE_2, align 8
  store i64 %62, i64* @rand_type, align 8
  %63 = load i64, i64* @DEG_2, align 8
  store i64 %63, i64* @rand_deg, align 8
  %64 = load i32, i32* @SEP_2, align 4
  store i32 %64, i32* @rand_sep, align 4
  br label %78

65:                                               ; preds = %57
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @BREAK_4, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i64, i64* @TYPE_3, align 8
  store i64 %70, i64* @rand_type, align 8
  %71 = load i64, i64* @DEG_3, align 8
  store i64 %71, i64* @rand_deg, align 8
  %72 = load i32, i32* @SEP_3, align 4
  store i32 %72, i32* @rand_sep, align 4
  br label %77

73:                                               ; preds = %65
  %74 = load i64, i64* @TYPE_4, align 8
  store i64 %74, i64* @rand_type, align 8
  %75 = load i64, i64* @DEG_4, align 8
  store i64 %75, i64* @rand_deg, align 8
  %76 = load i32, i32* @SEP_4, align 4
  store i32 %76, i32* @rand_sep, align 4
  br label %77

77:                                               ; preds = %73, %69
  br label %78

78:                                               ; preds = %77, %61
  br label %79

79:                                               ; preds = %78, %53
  br label %80

80:                                               ; preds = %79, %45
  %81 = load i64*, i64** %9, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 1
  store i64* %82, i64** @state, align 8
  %83 = load i64*, i64** @state, align 8
  %84 = load i64, i64* @rand_deg, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  store i64* %85, i64** @end_ptr, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @srandom(i32 %86)
  %88 = load i64, i64* @rand_type, align 8
  %89 = load i64, i64* @TYPE_0, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %80
  %92 = load i64, i64* @rand_type, align 8
  %93 = load i64*, i64** %9, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 0
  store i64 %92, i64* %94, align 8
  br label %109

95:                                               ; preds = %80
  %96 = load i32, i32* @MAX_TYPES, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64*, i64** @rptr, align 8
  %99 = load i64*, i64** @state, align 8
  %100 = ptrtoint i64* %98 to i64
  %101 = ptrtoint i64* %99 to i64
  %102 = sub i64 %100, %101
  %103 = sdiv exact i64 %102, 8
  %104 = mul nsw i64 %97, %103
  %105 = load i64, i64* @rand_type, align 8
  %106 = add nsw i64 %104, %105
  %107 = load i64*, i64** %9, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 0
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %95, %91
  %110 = load i8*, i8** %8, align 8
  store i8* %110, i8** %4, align 8
  br label %111

111:                                              ; preds = %109, %18
  %112 = load i8*, i8** %4, align 8
  ret i8* %112
}

declare dso_local i32 @srandom(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_argv.c_argv_esc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_argv.c_argv_esc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CH_LITERAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @argv_esc(i32* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32*, i32** %12, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* %9, align 8
  %19 = add i64 %18, 1
  %20 = call i32 @GET_SPACE_GOTOW(i32* %15, i32* %16, i64 %17, i64 %19)
  %21 = load i32*, i32** %12, align 8
  store i32* %21, i32** %13, align 8
  br label %22

22:                                               ; preds = %107, %4
  %23 = load i64, i64* %9, align 8
  %24 = icmp ugt i64 %23, 0
  br i1 %24, label %25, label %112

25:                                               ; preds = %22
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %14, align 4
  %28 = load i32*, i32** %13, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = ptrtoint i32* %28 to i64
  %31 = ptrtoint i32* %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 4
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %10, align 8
  %35 = udiv i64 %34, 4
  %36 = load i64, i64* %11, align 8
  %37 = sub i64 %35, %36
  %38 = icmp ult i64 %37, 3
  br i1 %38, label %39, label %49

39:                                               ; preds = %25
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = add i64 %43, 3
  %45 = call i32 @ADD_SPACE_GOTOW(i32* %40, i32* %41, i64 %42, i64 %44)
  %46 = load i32*, i32** %12, align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32* %48, i32** %13, align 8
  br label %49

49:                                               ; preds = %39, %25
  %50 = load i32, i32* %14, align 4
  %51 = call i64 @cmdskip(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %14, align 4
  %55 = icmp eq i32 %54, 10
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = load i32*, i32** %6, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %14, align 4
  %60 = call i64 @IS_ESCAPE(i32* %57, i32* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56, %53, %49
  %63 = load i32, i32* @CH_LITERAL, align 4
  %64 = load i32*, i32** %13, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %13, align 8
  store i32 %63, i32* %64, align 4
  br label %103

66:                                               ; preds = %56
  %67 = load i32, i32* %14, align 4
  switch i32 %67, label %90 [
    i32 126, label %68
    i32 43, label %76
    i32 33, label %84
    i32 37, label %84
    i32 35, label %84
    i32 44, label %89
    i32 45, label %89
    i32 46, label %89
    i32 47, label %89
    i32 58, label %89
    i32 61, label %89
    i32 64, label %89
    i32 95, label %89
  ]

68:                                               ; preds = %66
  %69 = load i32*, i32** %13, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = icmp ne i32* %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32*, i32** %13, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %13, align 8
  store i32 92, i32* %73, align 4
  br label %75

75:                                               ; preds = %72, %68
  br label %102

76:                                               ; preds = %66
  %77 = load i32*, i32** %13, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = icmp eq i32* %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32*, i32** %13, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %13, align 8
  store i32 92, i32* %81, align 4
  br label %83

83:                                               ; preds = %80, %76
  br label %102

84:                                               ; preds = %66, %66, %66
  %85 = load i32*, i32** %13, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %13, align 8
  store i32 92, i32* %85, align 4
  %87 = load i32*, i32** %13, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %13, align 8
  store i32 92, i32* %87, align 4
  br label %102

89:                                               ; preds = %66, %66, %66, %66, %66, %66, %66, %66
  br label %102

90:                                               ; preds = %66
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @isascii(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @isalnum(i32 %95) #3
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = load i32*, i32** %13, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %13, align 8
  store i32 92, i32* %99, align 4
  br label %101

101:                                              ; preds = %98, %94, %90
  br label %102

102:                                              ; preds = %101, %89, %84, %83, %75
  br label %103

103:                                              ; preds = %102, %62
  %104 = load i32, i32* %14, align 4
  %105 = load i32*, i32** %13, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %13, align 8
  store i32 %104, i32* %105, align 4
  br label %107

107:                                              ; preds = %103
  %108 = load i32*, i32** %8, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %8, align 8
  %110 = load i64, i64* %9, align 8
  %111 = add i64 %110, -1
  store i64 %111, i64* %9, align 8
  br label %22

112:                                              ; preds = %22
  %113 = load i32*, i32** %13, align 8
  store i32 0, i32* %113, align 4
  %114 = load i32*, i32** %12, align 8
  store i32* %114, i32** %5, align 8
  br label %116

115:                                              ; No predecessors!
  store i32* null, i32** %5, align 8
  br label %116

116:                                              ; preds = %115, %112
  %117 = load i32*, i32** %5, align 8
  ret i32* %117
}

declare dso_local i32 @GET_SPACE_GOTOW(i32*, i32*, i64, i64) #1

declare dso_local i32 @ADD_SPACE_GOTOW(i32*, i32*, i64, i64) #1

declare dso_local i64 @cmdskip(i32) #1

declare dso_local i64 @IS_ESCAPE(i32*, i32*, i32) #1

declare dso_local i32 @isascii(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isalnum(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

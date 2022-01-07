; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_configfile.c_handle_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_configfile.c_handle_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPTION_LOAD_UNCOOKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*, i8*, i32)* @handle_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @handle_cfg(i32* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %8, align 8
  store i8* %15, i8** %10, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i8* @strchr(i8* %17, i32 129)
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  store i8* %26, i8** %5, align 8
  br label %120

27:                                               ; preds = %4
  %28 = load i8*, i8** %8, align 8
  %29 = call i8* @SPN_VALUE_NAME_CHARS(i8* %28)
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i8* @SPN_WHITESPACE_CHARS(i8* %30)
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = icmp ugt i8* %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %63, %35
  %37 = load i8*, i8** %11, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %11, align 8
  store i8 -128, i8* %37, align 1
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @OPTION_LOAD_UNCOOKED, align 4
  %44 = call i32 @load_opt_line(i32* %39, i32* %40, i8* %41, i32 %42, i32 %43)
  %45 = load i8*, i8** %11, align 8
  store i8* %45, i8** %5, align 8
  br label %120

46:                                               ; preds = %27
  %47 = load i8*, i8** %8, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 61
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %8, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 58
  br i1 %55, label %56, label %65

56:                                               ; preds = %51, %46
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = call i8* @SPN_WHITESPACE_CHARS(i8* %58)
  store i8* %59, i8** %8, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = icmp ugt i8* %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %36

64:                                               ; preds = %56
  br label %73

65:                                               ; preds = %51
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 -1
  %68 = load i8, i8* %67, align 1
  %69 = call i32 @IS_WHITESPACE_CHAR(i8 signext %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  store i8* null, i8** %5, align 8
  br label %120

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %64
  %74 = load i8*, i8** %11, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 -1
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 92
  br i1 %78, label %79, label %109

79:                                               ; preds = %73
  %80 = load i8*, i8** %11, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 -1
  store i8* %81, i8** %12, align 8
  %82 = load i8*, i8** %11, align 8
  store i8* %82, i8** %13, align 8
  br label %83

83:                                               ; preds = %107, %79
  %84 = load i8*, i8** %13, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %13, align 8
  %86 = load i8, i8* %84, align 1
  store i8 %86, i8* %14, align 1
  %87 = load i8, i8* %14, align 1
  %88 = sext i8 %87 to i32
  switch i32 %88, label %103 [
    i32 128, label %89
    i32 129, label %90
    i32 92, label %93
  ]

89:                                               ; preds = %83
  store i8* null, i8** %13, align 8
  br label %90

90:                                               ; preds = %83, %89
  %91 = load i8*, i8** %12, align 8
  store i8 -128, i8* %91, align 1
  %92 = load i8*, i8** %13, align 8
  store i8* %92, i8** %11, align 8
  br label %108

93:                                               ; preds = %83
  %94 = load i8*, i8** %13, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 129
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i8*, i8** %13, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %13, align 8
  %101 = load i8, i8* %99, align 1
  store i8 %101, i8* %14, align 1
  br label %102

102:                                              ; preds = %98, %93
  br label %103

103:                                              ; preds = %83, %102
  %104 = load i8, i8* %14, align 1
  %105 = load i8*, i8** %12, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %12, align 8
  store i8 %104, i8* %105, align 1
  br label %107

107:                                              ; preds = %103
  br label %83

108:                                              ; preds = %90
  br label %112

109:                                              ; preds = %73
  %110 = load i8*, i8** %11, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %11, align 8
  store i8 -128, i8* %110, align 1
  br label %112

112:                                              ; preds = %109, %108
  %113 = load i32*, i32** %6, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = load i8*, i8** %10, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @OPTION_LOAD_UNCOOKED, align 4
  %118 = call i32 @load_opt_line(i32* %113, i32* %114, i8* %115, i32 %116, i32 %117)
  %119 = load i8*, i8** %11, align 8
  store i8* %119, i8** %5, align 8
  br label %120

120:                                              ; preds = %112, %71, %36, %21
  %121 = load i8*, i8** %5, align 8
  ret i8* %121
}

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @SPN_VALUE_NAME_CHARS(i8*) #1

declare dso_local i8* @SPN_WHITESPACE_CHARS(i8*) #1

declare dso_local i32 @load_opt_line(i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @IS_WHITESPACE_CHAR(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

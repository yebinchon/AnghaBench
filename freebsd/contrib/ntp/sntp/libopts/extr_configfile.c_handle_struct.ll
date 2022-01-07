; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_configfile.c_handle_struct.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_configfile.c_handle_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@option_load_mode = common dso_local global i64 0, align 8
@OPARG_TYPE_STRING = common dso_local global i64 0, align 8
@NUL = common dso_local global i8 0, align 1
@OPTION_LOAD_COOKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*, i8*, i32)* @handle_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @handle_struct(i32* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_3__, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i64, i64* @option_load_mode, align 8
  store i64 %15, i64* %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %8, align 8
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i8* @SPN_VALUE_NAME_CHARS(i8* %18)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  store i8* %20, i8** %14, align 8
  %21 = load i64, i64* @OPARG_TYPE_STRING, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i64 %21, i64* %22, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  switch i32 %25, label %69 [
    i32 32, label %26
    i32 9, label %26
    i32 47, label %49
    i32 62, label %68
  ]

26:                                               ; preds = %4, %4
  %27 = load i32*, i32** %6, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @SPN_WHITESPACE_CHARS(i8* %28)
  %30 = call i32 @parse_attrs(i32* %27, i32 %29, i64* %10, %struct.TYPE_3__* %11)
  %31 = call i8* @VOIDP(i32 %30)
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i8*, i8** %8, align 8
  store i8* %35, i8** %5, align 8
  br label %119

36:                                               ; preds = %26
  %37 = load i8*, i8** %8, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 62
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %79

42:                                               ; preds = %36
  %43 = load i8*, i8** %8, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 47
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i8* null, i8** %5, align 8
  br label %119

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %4, %48
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 62
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i8* null, i8** %5, align 8
  br label %119

56:                                               ; preds = %49
  %57 = load i8, i8* @NUL, align 1
  %58 = load i8*, i8** %8, align 8
  store i8 %57, i8* %58, align 1
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  store i8* %60, i8** %8, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @load_opt_line(i32* %61, i32* %62, i8* %63, i32 %64, i64 %65)
  %67 = load i8*, i8** %8, align 8
  store i8* %67, i8** %5, align 8
  br label %119

68:                                               ; preds = %4
  br label %79

69:                                               ; preds = %4
  %70 = load i8*, i8** %8, align 8
  %71 = call i8* @strchr(i8* %70, i8 signext 62)
  store i8* %71, i8** %8, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %8, align 8
  br label %77

77:                                               ; preds = %74, %69
  %78 = load i8*, i8** %8, align 8
  store i8* %78, i8** %5, align 8
  br label %119

79:                                               ; preds = %68, %41
  %80 = load i8, i8* @NUL, align 1
  %81 = load i8*, i8** %14, align 8
  store i8 %80, i8* %81, align 1
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %8, align 8
  store i8* %83, i8** %13, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = load i64, i64* %10, align 8
  %87 = call i8* @trim_xml_text(i8* %84, i8* %85, i64 %86)
  store i8* %87, i8** %8, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %79
  %91 = load i8*, i8** %8, align 8
  store i8* %91, i8** %5, align 8
  br label %119

92:                                               ; preds = %79
  %93 = load i8*, i8** %14, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = load i8*, i8** %14, align 8
  %96 = ptrtoint i8* %94 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = call i32 @memset(i8* %93, i8 signext 32, i64 %98)
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @OPARG_TYPE_STRING, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %92
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* @OPTION_LOAD_COOKED, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i8*, i8** %13, align 8
  %110 = call i32 @cook_xml_text(i8* %109)
  br label %111

111:                                              ; preds = %108, %104, %92
  %112 = load i32*, i32** %6, align 8
  %113 = load i32*, i32** %7, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i64, i64* %10, align 8
  %117 = call i32 @load_opt_line(i32* %112, i32* %113, i8* %114, i32 %115, i64 %116)
  %118 = load i8*, i8** %8, align 8
  store i8* %118, i8** %5, align 8
  br label %119

119:                                              ; preds = %111, %90, %77, %56, %55, %47, %34
  %120 = load i8*, i8** %5, align 8
  ret i8* %120
}

declare dso_local i8* @SPN_VALUE_NAME_CHARS(i8*) #1

declare dso_local i8* @VOIDP(i32) #1

declare dso_local i32 @parse_attrs(i32*, i32, i64*, %struct.TYPE_3__*) #1

declare dso_local i32 @SPN_WHITESPACE_CHARS(i8*) #1

declare dso_local i32 @load_opt_line(i32*, i32*, i8*, i32, i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @trim_xml_text(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i8 signext, i64) #1

declare dso_local i32 @cook_xml_text(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

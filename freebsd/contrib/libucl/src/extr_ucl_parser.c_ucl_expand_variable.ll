; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_expand_variable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_expand_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32 }

@UCL_PARSER_DISABLE_MACRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ucl_parser*, i8**, i8*, i64)* @ucl_expand_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ucl_expand_variable(%struct.ucl_parser* %0, i8** %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ucl_parser*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ucl_parser* %0, %struct.ucl_parser** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8* %17, i8** %11, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %19 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @UCL_PARSER_DISABLE_MACRO, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i8**, i8*** %7, align 8
  store i8* null, i8** %25, align 8
  %26 = load i64, i64* %9, align 8
  store i64 %26, i64* %5, align 8
  br label %105

27:                                               ; preds = %4
  %28 = load i8*, i8** %8, align 8
  store i8* %28, i8** %10, align 8
  br label %29

29:                                               ; preds = %55, %27
  %30 = load i8*, i8** %10, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = icmp ne i8* %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %29
  %34 = load i8*, i8** %10, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 36
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8*, i8** %11, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sub nsw i64 %46, 1
  %48 = trunc i64 %47 to i32
  %49 = call i8* @ucl_check_variable(%struct.ucl_parser* %39, i8* %41, i32 %48, i64* %13, i32* %14)
  store i8* %49, i8** %10, align 8
  br label %55

50:                                               ; preds = %33
  %51 = load i8*, i8** %10, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %10, align 8
  %53 = load i64, i64* %13, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %13, align 8
  br label %55

55:                                               ; preds = %50, %38
  br label %29

56:                                               ; preds = %29
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i8**, i8*** %7, align 8
  store i8* null, i8** %60, align 8
  %61 = load i64, i64* %9, align 8
  store i64 %61, i64* %5, align 8
  br label %105

62:                                               ; preds = %56
  %63 = load i64, i64* %13, align 8
  %64 = add i64 %63, 1
  %65 = call i8* @UCL_ALLOC(i64 %64)
  %66 = load i8**, i8*** %7, align 8
  store i8* %65, i8** %66, align 8
  %67 = load i8**, i8*** %7, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i64, i64* %9, align 8
  store i64 %71, i64* %5, align 8
  br label %105

72:                                               ; preds = %62
  %73 = load i8**, i8*** %7, align 8
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %12, align 8
  %75 = load i8*, i8** %8, align 8
  store i8* %75, i8** %10, align 8
  br label %76

76:                                               ; preds = %101, %72
  %77 = load i8*, i8** %10, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = icmp ne i8* %77, %78
  br i1 %79, label %80, label %102

80:                                               ; preds = %76
  %81 = load i8*, i8** %10, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 36
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = trunc i64 %92 to i32
  %94 = call i8* @ucl_expand_single_variable(%struct.ucl_parser* %86, i8* %87, i32 %93, i8** %12)
  store i8* %94, i8** %10, align 8
  br label %101

95:                                               ; preds = %80
  %96 = load i8*, i8** %10, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %10, align 8
  %98 = load i8, i8* %96, align 1
  %99 = load i8*, i8** %12, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %12, align 8
  store i8 %98, i8* %99, align 1
  br label %101

101:                                              ; preds = %95, %85
  br label %76

102:                                              ; preds = %76
  %103 = load i8*, i8** %12, align 8
  store i8 0, i8* %103, align 1
  %104 = load i64, i64* %13, align 8
  store i64 %104, i64* %5, align 8
  br label %105

105:                                              ; preds = %102, %70, %59, %24
  %106 = load i64, i64* %5, align 8
  ret i64 %106
}

declare dso_local i8* @ucl_check_variable(%struct.ucl_parser*, i8*, i32, i64*, i32*) #1

declare dso_local i8* @UCL_ALLOC(i64) #1

declare dso_local i8* @ucl_expand_single_variable(%struct.ucl_parser*, i8*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

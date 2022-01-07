; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_copy_or_store_ptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_copy_or_store_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32, i32, i32* }

@UCL_PARSER_ZEROCOPY = common dso_local global i32 0, align 4
@UCL_EINTERNAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cannot allocate memory for a string\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucl_parser*, i8*, i8**, i8**, i64, i32, i32, i32)* @ucl_copy_or_store_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_copy_or_store_ptr(%struct.ucl_parser* %0, i8* %1, i8** %2, i8** %3, i64 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ucl_parser*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.ucl_parser* %0, %struct.ucl_parser** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8** %2, i8*** %12, align 8
  store i8** %3, i8*** %13, align 8
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %8
  %24 = load i32, i32* %16, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %17, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.ucl_parser*, %struct.ucl_parser** %10, align 8
  %31 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %29, %26
  %35 = load %struct.ucl_parser*, %struct.ucl_parser** %10, align 8
  %36 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @UCL_PARSER_ZEROCOPY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %109, label %41

41:                                               ; preds = %34, %29, %23, %8
  %42 = load i64, i64* %14, align 8
  %43 = add i64 %42, 1
  %44 = call i8* @UCL_ALLOC(i64 %43)
  %45 = load i8**, i8*** %12, align 8
  store i8* %44, i8** %45, align 8
  %46 = load i8**, i8*** %12, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load %struct.ucl_parser*, %struct.ucl_parser** %10, align 8
  %51 = load i32, i32* @UCL_EINTERNAL, align 4
  %52 = load %struct.ucl_parser*, %struct.ucl_parser** %10, align 8
  %53 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %52, i32 0, i32 1
  %54 = call i32 @ucl_set_err(%struct.ucl_parser* %50, i32 %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32* %53)
  store i32 0, i32* %9, align 4
  br label %116

55:                                               ; preds = %41
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i8**, i8*** %12, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = load i64, i64* %14, align 8
  %63 = add i64 %62, 1
  %64 = call i32 @ucl_strlcpy_tolower(i8* %60, i8* %61, i64 %63)
  store i32 %64, i32* %18, align 4
  br label %72

65:                                               ; preds = %55
  %66 = load i8**, i8*** %12, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = load i64, i64* %14, align 8
  %70 = add i64 %69, 1
  %71 = call i32 @ucl_strlcpy_unsafe(i8* %67, i8* %68, i64 %70)
  store i32 %71, i32* %18, align 4
  br label %72

72:                                               ; preds = %65, %58
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i8**, i8*** %12, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* %18, align 4
  %79 = call i32 @ucl_unescape_json_string(i8* %77, i32 %78)
  store i32 %79, i32* %18, align 4
  br label %80

80:                                               ; preds = %75, %72
  %81 = load i32, i32* %17, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %80
  %84 = load i8**, i8*** %12, align 8
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %20, align 8
  %86 = load i32, i32* %18, align 4
  store i32 %86, i32* %19, align 4
  %87 = load %struct.ucl_parser*, %struct.ucl_parser** %10, align 8
  %88 = load i8**, i8*** %12, align 8
  %89 = load i8*, i8** %20, align 8
  %90 = load i32, i32* %18, align 4
  %91 = call i32 @ucl_expand_variable(%struct.ucl_parser* %87, i8** %88, i8* %89, i32 %90)
  store i32 %91, i32* %18, align 4
  %92 = load i8**, i8*** %12, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %83
  %96 = load i8*, i8** %20, align 8
  %97 = load i8**, i8*** %12, align 8
  store i8* %96, i8** %97, align 8
  %98 = load i32, i32* %19, align 4
  store i32 %98, i32* %18, align 4
  br label %104

99:                                               ; preds = %83
  %100 = load i64, i64* %14, align 8
  %101 = add i64 %100, 1
  %102 = load i8*, i8** %20, align 8
  %103 = call i32 @UCL_FREE(i64 %101, i8* %102)
  br label %104

104:                                              ; preds = %99, %95
  br label %105

105:                                              ; preds = %104, %80
  %106 = load i8**, i8*** %12, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = load i8**, i8*** %13, align 8
  store i8* %107, i8** %108, align 8
  br label %114

109:                                              ; preds = %34
  %110 = load i8*, i8** %11, align 8
  %111 = load i8**, i8*** %13, align 8
  store i8* %110, i8** %111, align 8
  %112 = load i64, i64* %14, align 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %18, align 4
  br label %114

114:                                              ; preds = %109, %105
  %115 = load i32, i32* %18, align 4
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %114, %49
  %117 = load i32, i32* %9, align 4
  ret i32 %117
}

declare dso_local i8* @UCL_ALLOC(i64) #1

declare dso_local i32 @ucl_set_err(%struct.ucl_parser*, i32, i8*, i32*) #1

declare dso_local i32 @ucl_strlcpy_tolower(i8*, i8*, i64) #1

declare dso_local i32 @ucl_strlcpy_unsafe(i8*, i8*, i64) #1

declare dso_local i32 @ucl_unescape_json_string(i8*, i32) #1

declare dso_local i32 @ucl_expand_variable(%struct.ucl_parser*, i8**, i8*, i32) #1

declare dso_local i32 @UCL_FREE(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter_utils.c_ucl_elt_string_write_json.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter_utils.c_ucl_elt_string_write_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_emitter_context = type { %struct.ucl_emitter_functions* }
%struct.ucl_emitter_functions = type { i32, i32 (i8, i32, i32)*, i32 (i8*, i64, i32)* }

@UCL_CHARACTER_JSON_UNSAFE = common dso_local global i32 0, align 4
@UCL_CHARACTER_DENIED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"\\uFFFD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ucl_elt_string_write_json(i8* %0, i64 %1, %struct.ucl_emitter_context* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ucl_emitter_context*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ucl_emitter_functions*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.ucl_emitter_context* %2, %struct.ucl_emitter_context** %6, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %8, align 8
  store i64 0, i64* %9, align 8
  %13 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %6, align 8
  %14 = getelementptr inbounds %struct.ucl_emitter_context, %struct.ucl_emitter_context* %13, i32 0, i32 0
  %15 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %14, align 8
  store %struct.ucl_emitter_functions* %15, %struct.ucl_emitter_functions** %10, align 8
  %16 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %10, align 8
  %17 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %16, i32 0, i32 1
  %18 = load i32 (i8, i32, i32)*, i32 (i8, i32, i32)** %17, align 8
  %19 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %10, align 8
  %20 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 %18(i8 signext 34, i32 1, i32 %21)
  br label %23

23:                                               ; preds = %123, %3
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %126

26:                                               ; preds = %23
  %27 = load i8*, i8** %7, align 8
  %28 = load i8, i8* %27, align 1
  %29 = load i32, i32* @UCL_CHARACTER_JSON_UNSAFE, align 4
  %30 = load i32, i32* @UCL_CHARACTER_DENIED, align 4
  %31 = or i32 %29, %30
  %32 = call i64 @ucl_test_character(i8 signext %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %118

34:                                               ; preds = %26
  %35 = load i64, i64* %9, align 8
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %10, align 8
  %39 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %38, i32 0, i32 2
  %40 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %39, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %10, align 8
  %44 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %40(i8* %41, i64 %42, i32 %45)
  br label %47

47:                                               ; preds = %37, %34
  %48 = load i8*, i8** %7, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  switch i32 %50, label %107 [
    i32 10, label %51
    i32 13, label %59
    i32 8, label %67
    i32 9, label %75
    i32 12, label %83
    i32 92, label %91
    i32 34, label %99
  ]

51:                                               ; preds = %47
  %52 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %10, align 8
  %53 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %52, i32 0, i32 2
  %54 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %53, align 8
  %55 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %10, align 8
  %56 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 %54(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2, i32 %57)
  br label %115

59:                                               ; preds = %47
  %60 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %10, align 8
  %61 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %60, i32 0, i32 2
  %62 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %61, align 8
  %63 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %10, align 8
  %64 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 %62(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 2, i32 %65)
  br label %115

67:                                               ; preds = %47
  %68 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %10, align 8
  %69 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %68, i32 0, i32 2
  %70 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %69, align 8
  %71 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %10, align 8
  %72 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 %70(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 2, i32 %73)
  br label %115

75:                                               ; preds = %47
  %76 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %10, align 8
  %77 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %76, i32 0, i32 2
  %78 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %77, align 8
  %79 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %10, align 8
  %80 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 %78(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i64 2, i32 %81)
  br label %115

83:                                               ; preds = %47
  %84 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %10, align 8
  %85 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %84, i32 0, i32 2
  %86 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %85, align 8
  %87 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %10, align 8
  %88 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 %86(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 2, i32 %89)
  br label %115

91:                                               ; preds = %47
  %92 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %10, align 8
  %93 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %92, i32 0, i32 2
  %94 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %93, align 8
  %95 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %10, align 8
  %96 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 %94(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 2, i32 %97)
  br label %115

99:                                               ; preds = %47
  %100 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %10, align 8
  %101 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %100, i32 0, i32 2
  %102 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %101, align 8
  %103 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %10, align 8
  %104 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 %102(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i64 2, i32 %105)
  br label %115

107:                                              ; preds = %47
  %108 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %10, align 8
  %109 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %108, i32 0, i32 2
  %110 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %109, align 8
  %111 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %10, align 8
  %112 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 %110(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i64 5, i32 %113)
  br label %115

115:                                              ; preds = %107, %99, %91, %83, %75, %67, %59, %51
  store i64 0, i64* %9, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %7, align 8
  store i8* %117, i8** %8, align 8
  br label %123

118:                                              ; preds = %26
  %119 = load i8*, i8** %7, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %7, align 8
  %121 = load i64, i64* %9, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %9, align 8
  br label %123

123:                                              ; preds = %118, %115
  %124 = load i64, i64* %5, align 8
  %125 = add i64 %124, -1
  store i64 %125, i64* %5, align 8
  br label %23

126:                                              ; preds = %23
  %127 = load i64, i64* %9, align 8
  %128 = icmp ugt i64 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %126
  %130 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %10, align 8
  %131 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %130, i32 0, i32 2
  %132 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %131, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = load i64, i64* %9, align 8
  %135 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %10, align 8
  %136 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 %132(i8* %133, i64 %134, i32 %137)
  br label %139

139:                                              ; preds = %129, %126
  %140 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %10, align 8
  %141 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %140, i32 0, i32 1
  %142 = load i32 (i8, i32, i32)*, i32 (i8, i32, i32)** %141, align 8
  %143 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %10, align 8
  %144 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 %142(i8 signext 34, i32 1, i32 %145)
  ret void
}

declare dso_local i64 @ucl_test_character(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

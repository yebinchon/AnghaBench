; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_include_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_include_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32 }
%struct.ucl_include_params = type { i64, i64, i32 }
%struct.TYPE_5__ = type { i64, i64* }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cannot match any files for pattern %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.ucl_parser*, %struct.ucl_include_params*)* @ucl_include_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_include_file(i8* %0, i64 %1, %struct.ucl_parser* %2, %struct.ucl_include_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ucl_parser*, align 8
  %9 = alloca %struct.ucl_include_params*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_5__, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.ucl_parser* %2, %struct.ucl_parser** %8, align 8
  store %struct.ucl_include_params* %3, %struct.ucl_include_params** %9, align 8
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8* %22, i8** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %23 = load i32, i32* @PATH_MAX, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %14, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %15, align 8
  %27 = load %struct.ucl_include_params*, %struct.ucl_include_params** %9, align 8
  %28 = getelementptr inbounds %struct.ucl_include_params, %struct.ucl_include_params* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %4
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %35 = load %struct.ucl_include_params*, %struct.ucl_include_params** %9, align 8
  %36 = call i32 @ucl_include_file_single(i8* %32, i64 %33, %struct.ucl_parser* %34, %struct.ucl_include_params* %35)
  store i32 %36, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %142

37:                                               ; preds = %4
  br label %38

38:                                               ; preds = %53, %37
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = icmp ne i8* %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load i8*, i8** %10, align 8
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 42
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %10, align 8
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 63
  br i1 %51, label %52, label %53

52:                                               ; preds = %47, %42
  store i32 1, i32* %12, align 4
  br label %56

53:                                               ; preds = %47
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %10, align 8
  br label %38

56:                                               ; preds = %52, %38
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %134

59:                                               ; preds = %56
  %60 = call i32 @memset(%struct.TYPE_5__* %18, i32 0, i32 16)
  %61 = load i8*, i8** %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %62, 1
  %64 = icmp ult i64 %63, %24
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, 1
  br label %69

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %65
  %70 = phi i64 [ %67, %65 ], [ %24, %68 ]
  %71 = call i32 @ucl_strlcpy(i8* %26, i8* %61, i64 %70)
  %72 = call i64 @glob(i8* %26, i32 0, i32* null, %struct.TYPE_5__* %18)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load %struct.ucl_include_params*, %struct.ucl_include_params** %9, align 8
  %76 = getelementptr inbounds %struct.ucl_include_params, %struct.ucl_include_params* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %79, %74
  %81 = phi i1 [ true, %74 ], [ false, %79 ]
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %142

83:                                               ; preds = %69
  store i64 0, i64* %16, align 8
  br label %84

84:                                               ; preds = %117, %83
  %85 = load i64, i64* %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ult i64 %85, %87
  br i1 %88, label %89, label %120

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = load i64, i64* %16, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %97 = load i64*, i64** %96, align 8
  %98 = load i64, i64* %16, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @strlen(i64 %100)
  %102 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %103 = load %struct.ucl_include_params*, %struct.ucl_include_params** %9, align 8
  %104 = call i32 @ucl_include_file_single(i8* %95, i64 %101, %struct.ucl_parser* %102, %struct.ucl_include_params* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %89
  %107 = load %struct.ucl_include_params*, %struct.ucl_include_params** %9, align 8
  %108 = getelementptr inbounds %struct.ucl_include_params, %struct.ucl_include_params* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %117

112:                                              ; preds = %106
  %113 = call i32 @globfree(%struct.TYPE_5__* %18)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %142

114:                                              ; preds = %89
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %13, align 4
  br label %117

117:                                              ; preds = %114, %111
  %118 = load i64, i64* %16, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %16, align 8
  br label %84

120:                                              ; preds = %84
  %121 = call i32 @globfree(%struct.TYPE_5__* %18)
  %122 = load i32, i32* %13, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %120
  %125 = load %struct.ucl_include_params*, %struct.ucl_include_params** %9, align 8
  %126 = getelementptr inbounds %struct.ucl_include_params, %struct.ucl_include_params* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %131 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %130, i32 0, i32 0
  %132 = call i32 @ucl_create_err(i32* %131, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %26)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %142

133:                                              ; preds = %124, %120
  br label %140

134:                                              ; preds = %56
  %135 = load i8*, i8** %6, align 8
  %136 = load i64, i64* %7, align 8
  %137 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %138 = load %struct.ucl_include_params*, %struct.ucl_include_params** %9, align 8
  %139 = call i32 @ucl_include_file_single(i8* %135, i64 %136, %struct.ucl_parser* %137, %struct.ucl_include_params* %138)
  store i32 %139, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %142

140:                                              ; preds = %133
  br label %141

141:                                              ; preds = %140
  store i32 1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %142

142:                                              ; preds = %141, %134, %129, %112, %80, %31
  %143 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %143)
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ucl_include_file_single(i8*, i64, %struct.ucl_parser*, %struct.ucl_include_params*) #2

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #2

declare dso_local i32 @ucl_strlcpy(i8*, i8*, i64) #2

declare dso_local i64 @glob(i8*, i32, i32*, %struct.TYPE_5__*) #2

declare dso_local i64 @strlen(i64) #2

declare dso_local i32 @globfree(%struct.TYPE_5__*) #2

declare dso_local i32 @ucl_create_err(i32*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

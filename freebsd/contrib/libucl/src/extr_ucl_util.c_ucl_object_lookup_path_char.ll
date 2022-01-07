; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_object_lookup_path_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_object_lookup_path_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @ucl_object_lookup_path_char(%struct.TYPE_8__* %0, i8* %1, i8 signext %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8 %2, i8* %7, align 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = icmp eq %struct.TYPE_8__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %112

20:                                               ; preds = %16
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %9, align 8
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %10, align 8
  br label %22

22:                                               ; preds = %29, %20
  %23 = load i8*, i8** %10, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = load i8, i8* %7, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i8*, i8** %10, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %10, align 8
  br label %22

32:                                               ; preds = %22
  %33 = load i8*, i8** %10, align 8
  store i8* %33, i8** %11, align 8
  br label %34

34:                                               ; preds = %108, %32
  %35 = load i8*, i8** %10, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %109

39:                                               ; preds = %34
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %10, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = load i8, i8* %7, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %39
  %49 = load i8*, i8** %10, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %108

53:                                               ; preds = %48, %39
  %54 = load i8*, i8** %10, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = icmp ugt i8* %54, %55
  br i1 %56, label %57, label %99

57:                                               ; preds = %53
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %83 [
    i32 128, label %61
  ]

61:                                               ; preds = %57
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 @strtoul(i8* %62, i8** %12, i32 10)
  store i32 %63, i32* %13, align 4
  %64 = load i8*, i8** %12, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load i8*, i8** %12, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = load i8, i8* %7, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %69, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load i8*, i8** %12, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %112

79:                                               ; preds = %73, %66, %61
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call %struct.TYPE_8__* @ucl_array_find_index(%struct.TYPE_8__* %80, i32 %81)
  store %struct.TYPE_8__* %82, %struct.TYPE_8__** %8, align 8
  br label %93

83:                                               ; preds = %57
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = ptrtoint i8* %86 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = trunc i64 %90 to i32
  %92 = call %struct.TYPE_8__* @ucl_object_lookup_len(%struct.TYPE_8__* %84, i8* %85, i32 %91)
  store %struct.TYPE_8__* %92, %struct.TYPE_8__** %8, align 8
  br label %93

93:                                               ; preds = %83, %79
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %95 = icmp eq %struct.TYPE_8__* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %112

97:                                               ; preds = %93
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %98, %struct.TYPE_8__** %5, align 8
  br label %99

99:                                               ; preds = %97, %53
  %100 = load i8*, i8** %10, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i8*, i8** %10, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  store i8* %106, i8** %11, align 8
  br label %107

107:                                              ; preds = %104, %99
  br label %108

108:                                              ; preds = %107, %48
  br label %34

109:                                              ; preds = %34
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %110, %struct.TYPE_8__** %9, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %111, %struct.TYPE_8__** %4, align 8
  br label %112

112:                                              ; preds = %109, %96, %78, %19
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %113
}

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local %struct.TYPE_8__* @ucl_array_find_index(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.TYPE_8__* @ucl_object_lookup_len(%struct.TYPE_8__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

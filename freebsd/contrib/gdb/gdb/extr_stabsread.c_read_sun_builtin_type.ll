; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stabsread.c_read_sun_builtin_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stabsread.c_read_sun_builtin_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.objfile = type { i32 }

@TYPE_CODE_INT = common dso_local global i32 0, align 4
@TYPE_CODE_BOOL = common dso_local global i32 0, align 4
@TYPE_CODE_VOID = common dso_local global i32 0, align 4
@TYPE_FLAG_UNSIGNED = common dso_local global i32 0, align 4
@TARGET_CHAR_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (i8**, i32*, %struct.objfile*)* @read_sun_builtin_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @read_sun_builtin_type(i8** %0, i32* %1, %struct.objfile* %2) #0 {
  %4 = alloca %struct.type*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.objfile*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.objfile* %2, %struct.objfile** %7, align 8
  %12 = load i32, i32* @TYPE_CODE_INT, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  switch i32 %16, label %19 [
    i32 115, label %17
    i32 117, label %18
  ]

17:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %23

18:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %23

19:                                               ; preds = %3
  %20 = load i8**, i8*** %5, align 8
  %21 = load %struct.objfile*, %struct.objfile** %7, align 8
  %22 = call %struct.type* @error_type(i8** %20, %struct.objfile* %21)
  store %struct.type* %22, %struct.type** %4, align 8
  br label %113

23:                                               ; preds = %18, %17
  %24 = load i8**, i8*** %5, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %24, align 8
  %27 = load i8**, i8*** %5, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 99
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load i8**, i8*** %5, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %33, align 8
  br label %48

36:                                               ; preds = %23
  %37 = load i8**, i8*** %5, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 98
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i32, i32* @TYPE_CODE_BOOL, align 4
  store i32 %43, i32* %11, align 4
  %44 = load i8**, i8*** %5, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %44, align 8
  br label %47

47:                                               ; preds = %42, %36
  br label %48

48:                                               ; preds = %47, %32
  %49 = load i8**, i8*** %5, align 8
  %50 = call i32 @read_huge_number(i8** %49, i8 signext 59, i32* %9)
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i8**, i8*** %5, align 8
  %55 = load %struct.objfile*, %struct.objfile** %7, align 8
  %56 = call %struct.type* @error_type(i8** %54, %struct.objfile* %55)
  store %struct.type* %56, %struct.type** %4, align 8
  br label %113

57:                                               ; preds = %48
  %58 = load i8**, i8*** %5, align 8
  %59 = call i32 @read_huge_number(i8** %58, i8 signext 59, i32* %9)
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i8**, i8*** %5, align 8
  %64 = load %struct.objfile*, %struct.objfile** %7, align 8
  %65 = call %struct.type* @error_type(i8** %63, %struct.objfile* %64)
  store %struct.type* %65, %struct.type** %4, align 8
  br label %113

66:                                               ; preds = %57
  %67 = load i8**, i8*** %5, align 8
  %68 = call i32 @read_huge_number(i8** %67, i8 signext 0, i32* %9)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i8**, i8*** %5, align 8
  %73 = load %struct.objfile*, %struct.objfile** %7, align 8
  %74 = call %struct.type* @error_type(i8** %72, %struct.objfile* %73)
  store %struct.type* %74, %struct.type** %4, align 8
  br label %113

75:                                               ; preds = %66
  %76 = load i8**, i8*** %5, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 59
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i8**, i8*** %5, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %82, align 8
  br label %85

85:                                               ; preds = %81, %75
  %86 = load i32, i32* %8, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %85
  %89 = load i32, i32* @TYPE_CODE_VOID, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %95

93:                                               ; preds = %88
  %94 = load i32, i32* @TYPE_FLAG_UNSIGNED, align 4
  br label %95

95:                                               ; preds = %93, %92
  %96 = phi i32 [ 0, %92 ], [ %94, %93 ]
  %97 = load %struct.objfile*, %struct.objfile** %7, align 8
  %98 = call %struct.type* @init_type(i32 %89, i32 1, i32 %96, i8* null, %struct.objfile* %97)
  store %struct.type* %98, %struct.type** %4, align 8
  br label %113

99:                                               ; preds = %85
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %103 = sdiv i32 %101, %102
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %109

107:                                              ; preds = %99
  %108 = load i32, i32* @TYPE_FLAG_UNSIGNED, align 4
  br label %109

109:                                              ; preds = %107, %106
  %110 = phi i32 [ 0, %106 ], [ %108, %107 ]
  %111 = load %struct.objfile*, %struct.objfile** %7, align 8
  %112 = call %struct.type* @init_type(i32 %100, i32 %103, i32 %110, i8* null, %struct.objfile* %111)
  store %struct.type* %112, %struct.type** %4, align 8
  br label %113

113:                                              ; preds = %109, %95, %71, %62, %53, %19
  %114 = load %struct.type*, %struct.type** %4, align 8
  ret %struct.type* %114
}

declare dso_local %struct.type* @error_type(i8**, %struct.objfile*) #1

declare dso_local i32 @read_huge_number(i8**, i8 signext, i32*) #1

declare dso_local %struct.type* @init_type(i32, i32, i32, i8*, %struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

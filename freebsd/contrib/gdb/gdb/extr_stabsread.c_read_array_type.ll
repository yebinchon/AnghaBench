; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stabsread.c_read_array_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stabsread.c_read_array_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.objfile = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (i8**, %struct.type*, %struct.objfile*)* @read_array_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @read_array_type(i8** %0, %struct.type* %1, %struct.objfile* %2) #0 {
  %4 = alloca %struct.type*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca %struct.objfile*, align 8
  %8 = alloca %struct.type*, align 8
  %9 = alloca %struct.type*, align 8
  %10 = alloca %struct.type*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store %struct.type* %1, %struct.type** %6, align 8
  store %struct.objfile* %2, %struct.objfile** %7, align 8
  store i32 0, i32* %13, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = load %struct.objfile*, %struct.objfile** %7, align 8
  %17 = call %struct.type* @read_type(i8** %15, %struct.objfile* %16)
  store %struct.type* %17, %struct.type** %8, align 8
  %18 = load i8**, i8*** %5, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 59
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i8**, i8*** %5, align 8
  %25 = load %struct.objfile*, %struct.objfile** %7, align 8
  %26 = call %struct.type* @error_type(i8** %24, %struct.objfile* %25)
  store %struct.type* %26, %struct.type** %4, align 8
  br label %109

27:                                               ; preds = %3
  %28 = load i8**, i8*** %5, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %28, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp sge i32 %34, 48
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = load i8**, i8*** %5, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp sle i32 %40, 57
  br i1 %41, label %52, label %42

42:                                               ; preds = %36, %27
  %43 = load i8**, i8*** %5, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 45
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i8**, i8*** %5, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %49, align 8
  store i32 1, i32* %13, align 4
  br label %52

52:                                               ; preds = %48, %42, %36
  %53 = load i8**, i8*** %5, align 8
  %54 = call i32 @read_huge_number(i8** %53, i8 signext 59, i32* %14)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i8**, i8*** %5, align 8
  %59 = load %struct.objfile*, %struct.objfile** %7, align 8
  %60 = call %struct.type* @error_type(i8** %58, %struct.objfile* %59)
  store %struct.type* %60, %struct.type** %4, align 8
  br label %109

61:                                               ; preds = %52
  %62 = load i8**, i8*** %5, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp sge i32 %65, 48
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load i8**, i8*** %5, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp sle i32 %71, 57
  br i1 %72, label %83, label %73

73:                                               ; preds = %67, %61
  %74 = load i8**, i8*** %5, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 45
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i8**, i8*** %5, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %80, align 8
  store i32 1, i32* %13, align 4
  br label %83

83:                                               ; preds = %79, %73, %67
  %84 = load i8**, i8*** %5, align 8
  %85 = call i32 @read_huge_number(i8** %84, i8 signext 59, i32* %14)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i8**, i8*** %5, align 8
  %90 = load %struct.objfile*, %struct.objfile** %7, align 8
  %91 = call %struct.type* @error_type(i8** %89, %struct.objfile* %90)
  store %struct.type* %91, %struct.type** %4, align 8
  br label %109

92:                                               ; preds = %83
  %93 = load i8**, i8*** %5, align 8
  %94 = load %struct.objfile*, %struct.objfile** %7, align 8
  %95 = call %struct.type* @read_type(i8** %93, %struct.objfile* %94)
  store %struct.type* %95, %struct.type** %9, align 8
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  br label %99

99:                                               ; preds = %98, %92
  %100 = load %struct.type*, %struct.type** %8, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %12, align 4
  %103 = call %struct.type* @create_range_type(%struct.type* null, %struct.type* %100, i32 %101, i32 %102)
  store %struct.type* %103, %struct.type** %10, align 8
  %104 = load %struct.type*, %struct.type** %6, align 8
  %105 = load %struct.type*, %struct.type** %9, align 8
  %106 = load %struct.type*, %struct.type** %10, align 8
  %107 = call %struct.type* @create_array_type(%struct.type* %104, %struct.type* %105, %struct.type* %106)
  store %struct.type* %107, %struct.type** %6, align 8
  %108 = load %struct.type*, %struct.type** %6, align 8
  store %struct.type* %108, %struct.type** %4, align 8
  br label %109

109:                                              ; preds = %99, %88, %57, %23
  %110 = load %struct.type*, %struct.type** %4, align 8
  ret %struct.type* %110
}

declare dso_local %struct.type* @read_type(i8**, %struct.objfile*) #1

declare dso_local %struct.type* @error_type(i8**, %struct.objfile*) #1

declare dso_local i32 @read_huge_number(i8**, i8 signext, i32*) #1

declare dso_local %struct.type* @create_range_type(%struct.type*, %struct.type*, i32, i32) #1

declare dso_local %struct.type* @create_array_type(%struct.type*, %struct.type*, %struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

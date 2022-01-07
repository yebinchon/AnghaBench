; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tzcode/zic/extr_zdump.c_hunt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tzcode/zic/extr_zdump.c_hunt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i64 }

@MAX_STRING_LENGTH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64)* @hunt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hunt(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tm, align 8
  %10 = alloca %struct.tm*, align 8
  %11 = alloca %struct.tm, align 8
  %12 = alloca %struct.tm*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load i32, i32* @MAX_STRING_LENGTH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %13, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %14, align 8
  %19 = call %struct.tm* @my_localtime(i64* %5)
  store %struct.tm* %19, %struct.tm** %10, align 8
  %20 = load %struct.tm*, %struct.tm** %10, align 8
  %21 = icmp ne %struct.tm* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load %struct.tm*, %struct.tm** %10, align 8
  %24 = bitcast %struct.tm* %9 to i8*
  %25 = bitcast %struct.tm* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 8, i1 false)
  %26 = call i32 @abbr(%struct.tm* %9)
  %27 = sub i64 %16, 1
  %28 = trunc i64 %27 to i32
  %29 = call i32 @strncpy(i8* %18, i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %22, %3
  br label %31

31:                                               ; preds = %99, %30
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %5, align 8
  %34 = sub nsw i64 %32, %33
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp slt i64 %35, 2
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %100

38:                                               ; preds = %31
  %39 = load i64, i64* %5, align 8
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = sdiv i64 %40, 2
  %42 = load i64, i64* %7, align 8
  %43 = add nsw i64 %42, %41
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %5, align 8
  %46 = icmp sle i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i64, i64* %7, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %7, align 8
  br label %58

50:                                               ; preds = %38
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i64, i64* %7, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, i64* %7, align 8
  br label %57

57:                                               ; preds = %54, %50
  br label %58

58:                                               ; preds = %57, %47
  %59 = call %struct.tm* @my_localtime(i64* %7)
  store %struct.tm* %59, %struct.tm** %12, align 8
  %60 = load %struct.tm*, %struct.tm** %12, align 8
  %61 = icmp ne %struct.tm* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.tm*, %struct.tm** %12, align 8
  %64 = bitcast %struct.tm* %11 to i8*
  %65 = bitcast %struct.tm* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 8 %65, i64 8, i1 false)
  br label %66

66:                                               ; preds = %62, %58
  %67 = load %struct.tm*, %struct.tm** %10, align 8
  %68 = icmp eq %struct.tm* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load %struct.tm*, %struct.tm** %12, align 8
  %71 = icmp eq %struct.tm* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %69, %66
  %73 = load %struct.tm*, %struct.tm** %10, align 8
  %74 = load %struct.tm*, %struct.tm** %12, align 8
  %75 = icmp eq %struct.tm* %73, %74
  br i1 %75, label %92, label %97

76:                                               ; preds = %69
  %77 = call i64 @delta(%struct.tm* %11, %struct.tm* %9)
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %5, align 8
  %80 = sub nsw i64 %78, %79
  %81 = icmp eq i64 %77, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %84, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %82
  %89 = call i32 @abbr(%struct.tm* %11)
  %90 = call i64 @strcmp(i32 %89, i8* %18)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88, %72
  %93 = load i64, i64* %7, align 8
  store i64 %93, i64* %5, align 8
  %94 = bitcast %struct.tm* %9 to i8*
  %95 = bitcast %struct.tm* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %94, i8* align 8 %95, i64 8, i1 false)
  %96 = load %struct.tm*, %struct.tm** %12, align 8
  store %struct.tm* %96, %struct.tm** %10, align 8
  br label %99

97:                                               ; preds = %88, %82, %76, %72
  %98 = load i64, i64* %7, align 8
  store i64 %98, i64* %6, align 8
  br label %99

99:                                               ; preds = %97, %92
  br label %31

100:                                              ; preds = %37
  %101 = load i8*, i8** %4, align 8
  %102 = load i64, i64* %5, align 8
  %103 = load i32, i32* @TRUE, align 4
  %104 = call i32 @show(i8* %101, i64 %102, i32 %103)
  %105 = load i8*, i8** %4, align 8
  %106 = load i64, i64* %6, align 8
  %107 = load i32, i32* @TRUE, align 4
  %108 = call i32 @show(i8* %105, i64 %106, i32 %107)
  %109 = load i64, i64* %6, align 8
  %110 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %110)
  ret i64 %109
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.tm* @my_localtime(i64*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @strncpy(i8*, i32, i32) #2

declare dso_local i32 @abbr(%struct.tm*) #2

declare dso_local i64 @delta(%struct.tm*, %struct.tm*) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @show(i8*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

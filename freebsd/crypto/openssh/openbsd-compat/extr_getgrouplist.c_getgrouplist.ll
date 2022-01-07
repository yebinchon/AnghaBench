; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_getgrouplist.c_getgrouplist.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_getgrouplist.c_getgrouplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i64, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getgrouplist(i8* %0, i64 %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.group*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* %12, align 4
  %23 = load i32*, i32** %9, align 8
  store i32 %22, i32* %23, align 4
  store i32 -1, i32* %5, align 4
  br label %117

24:                                               ; preds = %4
  %25 = load i64, i64* %7, align 8
  %26 = load i64*, i64** %8, align 8
  %27 = load i32, i32* %12, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %12, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i64, i64* %26, i64 %29
  store i64 %25, i64* %30, align 8
  %31 = call i32 (...) @setgrent()
  br label %32

32:                                               ; preds = %110, %70, %41, %24
  %33 = call %struct.group* (...) @getgrent()
  store %struct.group* %33, %struct.group** %10, align 8
  %34 = icmp ne %struct.group* %33, null
  br i1 %34, label %35, label %111

35:                                               ; preds = %32
  %36 = load %struct.group*, %struct.group** %10, align 8
  %37 = getelementptr inbounds %struct.group, %struct.group* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %32

42:                                               ; preds = %35
  store i32 0, i32* %15, align 4
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %64, %42
  %44 = load i32, i32* %15, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %47, %48
  br label %50

50:                                               ; preds = %46, %43
  %51 = phi i1 [ false, %43 ], [ %49, %46 ]
  br i1 %51, label %52, label %67

52:                                               ; preds = %50
  %53 = load i64*, i64** %8, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.group*, %struct.group** %10, align 8
  %59 = getelementptr inbounds %struct.group, %struct.group* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  store i32 1, i32* %15, align 4
  br label %63

63:                                               ; preds = %62, %52
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %43

67:                                               ; preds = %50
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %32

71:                                               ; preds = %67
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %107, %71
  %73 = load %struct.group*, %struct.group** %10, align 8
  %74 = getelementptr inbounds %struct.group, %struct.group* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %110

81:                                               ; preds = %72
  %82 = load %struct.group*, %struct.group** %10, align 8
  %83 = getelementptr inbounds %struct.group, %struct.group* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 @strcmp(i64 %88, i8* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %106, label %92

92:                                               ; preds = %81
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp sge i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 -1, i32* %13, align 4
  br label %112

97:                                               ; preds = %92
  %98 = load %struct.group*, %struct.group** %10, align 8
  %99 = getelementptr inbounds %struct.group, %struct.group* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64*, i64** %8, align 8
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i64, i64* %101, i64 %104
  store i64 %100, i64* %105, align 8
  br label %110

106:                                              ; preds = %81
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %11, align 4
  br label %72

110:                                              ; preds = %97, %72
  br label %32

111:                                              ; preds = %32
  br label %112

112:                                              ; preds = %111, %96
  %113 = call i32 (...) @endgrent()
  %114 = load i32, i32* %12, align 4
  %115 = load i32*, i32** %9, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* %13, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %112, %21
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @setgrent(...) #1

declare dso_local %struct.group* @getgrent(...) #1

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local i32 @endgrent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_glob.c_glob2.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_glob.c_glob2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.stat = type { i32 }

@CHAR_EOS = common dso_local global i64 0, align 8
@GLOB_MARK = common dso_local global i32 0, align 4
@CHAR_SEP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, i64*, %struct.TYPE_7__*, i64*)* @glob2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glob2(i64* %0, i64* %1, i64* %2, %struct.TYPE_7__* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.stat, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %130, %5
  %17 = load i64*, i64** %9, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CHAR_EOS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %77

21:                                               ; preds = %16
  %22 = load i64, i64* @CHAR_EOS, align 8
  %23 = load i64*, i64** %8, align 8
  store i64 %22, i64* %23, align 8
  %24 = load i64*, i64** %7, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %26 = call i64 @g_lstat(i64* %24, %struct.stat* %12, %struct.TYPE_7__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %131

29:                                               ; preds = %21
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @GLOB_MARK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %68

36:                                               ; preds = %29
  %37 = load i64*, i64** %8, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 -1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CHAR_SEP, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @S_ISDIR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @S_ISLNK(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %47
  %53 = load i64*, i64** %7, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %55 = call i64 @g_stat(i64* %53, %struct.stat* %12, %struct.TYPE_7__* %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @S_ISDIR(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57, %42
  %63 = load i64, i64* @CHAR_SEP, align 8
  %64 = load i64*, i64** %8, align 8
  %65 = getelementptr inbounds i64, i64* %64, i32 1
  store i64* %65, i64** %8, align 8
  store i64 %63, i64* %64, align 8
  %66 = load i64, i64* @CHAR_EOS, align 8
  %67 = load i64*, i64** %8, align 8
  store i64 %66, i64* %67, align 8
  br label %68

68:                                               ; preds = %62, %57, %52, %47, %36, %29
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load i64*, i64** %7, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %75 = load i64*, i64** %11, align 8
  %76 = call i32 @globextend(i64* %73, %struct.TYPE_7__* %74, i64* %75)
  store i32 %76, i32* %6, align 4
  br label %131

77:                                               ; preds = %16
  %78 = load i64*, i64** %8, align 8
  store i64* %78, i64** %14, align 8
  %79 = load i64*, i64** %9, align 8
  store i64* %79, i64** %13, align 8
  br label %80

80:                                               ; preds = %98, %77
  %81 = load i64*, i64** %13, align 8
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @CHAR_EOS, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i64*, i64** %13, align 8
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @CHAR_SEP, align 8
  %89 = icmp ne i64 %87, %88
  br label %90

90:                                               ; preds = %85, %80
  %91 = phi i1 [ false, %80 ], [ %89, %85 ]
  br i1 %91, label %92, label %104

92:                                               ; preds = %90
  %93 = load i64*, i64** %13, align 8
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @ismeta(i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 1, i32* %15, align 4
  br label %98

98:                                               ; preds = %97, %92
  %99 = load i64*, i64** %13, align 8
  %100 = getelementptr inbounds i64, i64* %99, i32 1
  store i64* %100, i64** %13, align 8
  %101 = load i64, i64* %99, align 8
  %102 = load i64*, i64** %14, align 8
  %103 = getelementptr inbounds i64, i64* %102, i32 1
  store i64* %103, i64** %14, align 8
  store i64 %101, i64* %102, align 8
  br label %80

104:                                              ; preds = %90
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %122, label %107

107:                                              ; preds = %104
  %108 = load i64*, i64** %14, align 8
  store i64* %108, i64** %8, align 8
  %109 = load i64*, i64** %13, align 8
  store i64* %109, i64** %9, align 8
  br label %110

110:                                              ; preds = %115, %107
  %111 = load i64*, i64** %9, align 8
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @CHAR_SEP, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load i64*, i64** %9, align 8
  %117 = getelementptr inbounds i64, i64* %116, i32 1
  store i64* %117, i64** %9, align 8
  %118 = load i64, i64* %116, align 8
  %119 = load i64*, i64** %8, align 8
  %120 = getelementptr inbounds i64, i64* %119, i32 1
  store i64* %120, i64** %8, align 8
  store i64 %118, i64* %119, align 8
  br label %110

121:                                              ; preds = %110
  br label %130

122:                                              ; preds = %104
  %123 = load i64*, i64** %7, align 8
  %124 = load i64*, i64** %8, align 8
  %125 = load i64*, i64** %9, align 8
  %126 = load i64*, i64** %13, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %128 = load i64*, i64** %11, align 8
  %129 = call i32 @glob3(i64* %123, i64* %124, i64* %125, i64* %126, %struct.TYPE_7__* %127, i64* %128)
  store i32 %129, i32* %6, align 4
  br label %131

130:                                              ; preds = %121
  br label %16

131:                                              ; preds = %122, %68, %28
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local i64 @g_lstat(i64*, %struct.stat*, %struct.TYPE_7__*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @g_stat(i64*, %struct.stat*, %struct.TYPE_7__*) #1

declare dso_local i32 @globextend(i64*, %struct.TYPE_7__*, i64*) #1

declare dso_local i64 @ismeta(i64) #1

declare dso_local i32 @glob3(i64*, i64*, i64*, i64*, %struct.TYPE_7__*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

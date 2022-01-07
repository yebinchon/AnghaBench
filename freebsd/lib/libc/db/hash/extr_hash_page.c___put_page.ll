; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_hash_page.c___put_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_hash_page.c___put_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32 }

@MAX_BSIZE = common dso_local global i32 0, align 4
@BYTE_ORDER = common dso_local global i64 0, align 8
@EFTYPE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__put_page(%struct.TYPE_4__* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %22 = load i32, i32* @MAX_BSIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %16, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %17, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %14, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %38

33:                                               ; preds = %5
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %35 = call i64 @open_temp(%struct.TYPE_4__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %123

38:                                               ; preds = %33, %5
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %12, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @BYTE_ORDER, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %95

47:                                               ; preds = %38
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @memcpy(i8* %25, i8* %48, i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %47
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = ashr i32 %56, 2
  store i32 %57, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %58

58:                                               ; preds = %69, %53
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* %20, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = bitcast i8* %25 to i32*
  %64 = load i32, i32* %19, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @M_32_SWAP(i32 %67)
  br label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %19, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %19, align 4
  br label %58

72:                                               ; preds = %58
  br label %94

73:                                               ; preds = %47
  %74 = bitcast i8* %25 to i32*
  store i32* %74, i32** %21, align 8
  %75 = load i32*, i32** %21, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 2
  store i32 %78, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %79

79:                                               ; preds = %90, %73
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %20, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load i32*, i32** %21, align 8
  %85 = load i32, i32* %19, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @M_16_SWAP(i32 %88)
  br label %90

90:                                               ; preds = %83
  %91 = load i32, i32* %19, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %19, align 4
  br label %79

93:                                               ; preds = %79
  br label %94

94:                                               ; preds = %93, %72
  store i8* %25, i8** %8, align 8
  br label %95

95:                                               ; preds = %94, %38
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @BUCKET_TO_PAGE(i32 %99)
  store i32 %100, i32* %13, align 4
  br label %104

101:                                              ; preds = %95
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @OADDR_TO_PAGE(i32 %102)
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i32, i32* %12, align 4
  %106 = load i8*, i8** %8, align 8
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = shl i32 %108, %111
  %113 = call i32 @pwrite(i32 %105, i8* %106, i32 %107, i32 %112)
  store i32 %113, i32* %15, align 4
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %116

115:                                              ; preds = %104
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %123

116:                                              ; preds = %104
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i32, i32* @EFTYPE, align 4
  store i32 %121, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %123

122:                                              ; preds = %116
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %123

123:                                              ; preds = %122, %120, %115, %37
  %124 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @open_temp(%struct.TYPE_4__*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @M_32_SWAP(i32) #2

declare dso_local i32 @M_16_SWAP(i32) #2

declare dso_local i32 @BUCKET_TO_PAGE(i32) #2

declare dso_local i32 @OADDR_TO_PAGE(i32) #2

declare dso_local i32 @pwrite(i32, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

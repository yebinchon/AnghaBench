; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_lzjb.c_lzjb_decompress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_lzjb.c_lzjb_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NBBY = common dso_local global i32 0, align 4
@MATCH_BITS = common dso_local global i32 0, align 4
@MATCH_MIN = common dso_local global i32 0, align 4
@OFFSET_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lzjb_decompress(i8* %0, i8* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %12, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %13, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32* %27, i32** %14, align 8
  store i32 0, i32* %16, align 4
  %28 = load i32, i32* @NBBY, align 4
  %29 = sub nsw i32 %28, 1
  %30 = shl i32 1, %29
  store i32 %30, i32* %17, align 4
  br label %31

31:                                               ; preds = %118, %5
  %32 = load i32*, i32** %13, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = icmp ult i32* %32, %33
  br i1 %34, label %35, label %119

35:                                               ; preds = %31
  %36 = load i32, i32* %17, align 4
  %37 = shl i32 %36, 1
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* @NBBY, align 4
  %39 = shl i32 1, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  store i32 1, i32* %17, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %12, align 8
  %44 = load i32, i32* %42, align 4
  store i32 %44, i32* %16, align 4
  br label %45

45:                                               ; preds = %41, %35
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %17, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %112

50:                                               ; preds = %45
  %51 = load i32*, i32** %12, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @NBBY, align 4
  %55 = load i32, i32* @MATCH_BITS, align 4
  %56 = sub nsw i32 %54, %55
  %57 = ashr i32 %53, %56
  %58 = load i32, i32* @MATCH_MIN, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %18, align 4
  %60 = load i32*, i32** %12, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @NBBY, align 4
  %64 = shl i32 %62, %63
  %65 = load i32*, i32** %12, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %64, %67
  %69 = load i32, i32* @OFFSET_MASK, align 4
  %70 = and i32 %68, %69
  store i32 %70, i32* %19, align 4
  %71 = load i32*, i32** %12, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32* %72, i32** %12, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = load i32, i32* %19, align 4
  %75 = sext i32 %74 to i64
  %76 = sub i64 0, %75
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32* %77, i32** %15, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = bitcast i8* %78 to i32*
  %80 = icmp ult i32* %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %50
  store i32 -1, i32* %6, align 4
  br label %120

82:                                               ; preds = %50
  %83 = load i32, i32* %18, align 4
  %84 = sext i32 %83 to i64
  %85 = load i32*, i32** %14, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = ptrtoint i32* %85 to i64
  %88 = ptrtoint i32* %86 to i64
  %89 = sub i64 %87, %88
  %90 = sdiv exact i64 %89, 4
  %91 = icmp sgt i64 %84, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %82
  %93 = load i32*, i32** %14, align 8
  %94 = load i32*, i32** %13, align 8
  %95 = ptrtoint i32* %93 to i64
  %96 = ptrtoint i32* %94 to i64
  %97 = sub i64 %95, %96
  %98 = sdiv exact i64 %97, 4
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %18, align 4
  br label %100

100:                                              ; preds = %92, %82
  br label %101

101:                                              ; preds = %105, %100
  %102 = load i32, i32* %18, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %18, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load i32*, i32** %15, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %15, align 8
  %108 = load i32, i32* %106, align 4
  %109 = load i32*, i32** %13, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %13, align 8
  store i32 %108, i32* %109, align 4
  br label %101

111:                                              ; preds = %101
  br label %118

112:                                              ; preds = %45
  %113 = load i32*, i32** %12, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %12, align 8
  %115 = load i32, i32* %113, align 4
  %116 = load i32*, i32** %13, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %13, align 8
  store i32 %115, i32* %116, align 4
  br label %118

118:                                              ; preds = %112, %111
  br label %31

119:                                              ; preds = %31
  store i32 0, i32* %6, align 4
  br label %120

120:                                              ; preds = %119, %81
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

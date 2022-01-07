; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/boot/zfs/extr_lzjb.c_lzjb_decompress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/boot/zfs/extr_lzjb.c_lzjb_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NBBY = common dso_local global i32 0, align 4
@MATCH_BITS = common dso_local global i32 0, align 4
@MATCH_MIN = common dso_local global i8 0, align 1
@OFFSET_MASK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i64, i32)* @lzjb_decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzjb_decompress(i8* %0, i8* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i8*, i8** %7, align 8
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %8, align 8
  store i8* %21, i8** %13, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %10, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %14, align 8
  store i8 0, i8* %16, align 1
  %25 = load i32, i32* @NBBY, align 4
  %26 = sub nsw i32 %25, 1
  %27 = shl i32 1, %26
  store i32 %27, i32* %17, align 4
  br label %28

28:                                               ; preds = %108, %5
  %29 = load i8*, i8** %13, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = icmp ult i8* %29, %30
  br i1 %31, label %32, label %109

32:                                               ; preds = %28
  %33 = load i32, i32* %17, align 4
  %34 = shl i32 %33, 1
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* @NBBY, align 4
  %36 = shl i32 1, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  store i32 1, i32* %17, align 4
  %39 = load i8*, i8** %12, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %12, align 8
  %41 = load i8, i8* %39, align 1
  store i8 %41, i8* %16, align 1
  br label %42

42:                                               ; preds = %38, %32
  %43 = load i8, i8* %16, align 1
  %44 = zext i8 %43 to i32
  %45 = load i32, i32* %17, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %102

48:                                               ; preds = %42
  %49 = load i8*, i8** %12, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = load i32, i32* @NBBY, align 4
  %54 = load i32, i32* @MATCH_BITS, align 4
  %55 = sub nsw i32 %53, %54
  %56 = ashr i32 %52, %55
  %57 = load i8, i8* @MATCH_MIN, align 1
  %58 = zext i8 %57 to i32
  %59 = add nsw i32 %56, %58
  store i32 %59, i32* %18, align 4
  %60 = load i8*, i8** %12, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = load i32, i32* @NBBY, align 4
  %65 = shl i32 %63, %64
  %66 = load i8*, i8** %12, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = or i32 %65, %69
  %71 = load i8, i8* @OFFSET_MASK, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %70, %72
  store i32 %73, i32* %19, align 4
  %74 = load i8*, i8** %12, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  store i8* %75, i8** %12, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = load i32, i32* %19, align 4
  %78 = sext i32 %77 to i64
  %79 = sub i64 0, %78
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  store i8* %80, i8** %15, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = icmp ult i8* %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %48
  store i32 -1, i32* %6, align 4
  br label %110

84:                                               ; preds = %48
  br label %85

85:                                               ; preds = %95, %84
  %86 = load i32, i32* %18, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %18, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i8*, i8** %13, align 8
  %91 = load i8*, i8** %14, align 8
  %92 = icmp ult i8* %90, %91
  br label %93

93:                                               ; preds = %89, %85
  %94 = phi i1 [ false, %85 ], [ %92, %89 ]
  br i1 %94, label %95, label %101

95:                                               ; preds = %93
  %96 = load i8*, i8** %15, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %15, align 8
  %98 = load i8, i8* %96, align 1
  %99 = load i8*, i8** %13, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %13, align 8
  store i8 %98, i8* %99, align 1
  br label %85

101:                                              ; preds = %93
  br label %108

102:                                              ; preds = %42
  %103 = load i8*, i8** %12, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %12, align 8
  %105 = load i8, i8* %103, align 1
  %106 = load i8*, i8** %13, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %13, align 8
  store i8 %105, i8* %106, align 1
  br label %108

108:                                              ; preds = %102, %101
  br label %28

109:                                              ; preds = %28
  store i32 0, i32* %6, align 4
  br label %110

110:                                              ; preds = %109, %83
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

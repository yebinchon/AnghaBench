; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libb2/extr_blake2sp.c_blake2sp_final.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libb2/extr_blake2sp.c_blake2sp_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32*, i32* }

@PARALLELISM_DEGREE = common dso_local global i32 0, align 4
@BLAKE2S_OUTBYTES = common dso_local global i32 0, align 4
@BLAKE2S_BLOCKBYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blake2sp_final(%struct.TYPE_3__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i32, i32* @PARALLELISM_DEGREE, align 4
  %16 = zext i32 %15 to i64
  %17 = load i32, i32* @BLAKE2S_OUTBYTES, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = mul nuw i64 %16, %18
  %21 = alloca i32, i64 %20, align 16
  store i64 %16, i64* %9, align 8
  store i64 %18, i64* %10, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %113

28:                                               ; preds = %3
  store i64 0, i64* %12, align 8
  br label %29

29:                                               ; preds = %85, %28
  %30 = load i64, i64* %12, align 8
  %31 = load i32, i32* @PARALLELISM_DEGREE, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %34, label %88

34:                                               ; preds = %29
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* @BLAKE2S_BLOCKBYTES, align 8
  %40 = mul i64 %38, %39
  %41 = icmp ugt i64 %37, %40
  br i1 %41, label %42, label %72

42:                                               ; preds = %34
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* @BLAKE2S_BLOCKBYTES, align 8
  %48 = mul i64 %46, %47
  %49 = sub i64 %45, %48
  store i64 %49, i64* %13, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* @BLAKE2S_BLOCKBYTES, align 8
  %52 = icmp ugt i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i64, i64* @BLAKE2S_BLOCKBYTES, align 8
  store i64 %54, i64* %13, align 8
  br label %55

55:                                               ; preds = %53, %42
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %12, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* @BLAKE2S_BLOCKBYTES, align 8
  %67 = mul i64 %65, %66
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i64, i64* %13, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @blake2s_update(i32 %61, i32* %68, i32 %70)
  br label %72

72:                                               ; preds = %55, %34
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %12, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %12, align 8
  %80 = mul nsw i64 %79, %18
  %81 = getelementptr inbounds i32, i32* %21, i64 %80
  %82 = load i32, i32* @BLAKE2S_OUTBYTES, align 4
  %83 = sext i32 %82 to i64
  %84 = call i32 @blake2s_final(i32 %78, i32* %81, i64 %83)
  br label %85

85:                                               ; preds = %72
  %86 = load i64, i64* %12, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %12, align 8
  br label %29

88:                                               ; preds = %29
  store i64 0, i64* %14, align 8
  br label %89

89:                                               ; preds = %103, %88
  %90 = load i64, i64* %14, align 8
  %91 = load i32, i32* @PARALLELISM_DEGREE, align 4
  %92 = sext i32 %91 to i64
  %93 = icmp ult i64 %90, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %89
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i64, i64* %14, align 8
  %99 = mul nsw i64 %98, %18
  %100 = getelementptr inbounds i32, i32* %21, i64 %99
  %101 = load i32, i32* @BLAKE2S_OUTBYTES, align 4
  %102 = call i32 @blake2s_update(i32 %97, i32* %100, i32 %101)
  br label %103

103:                                              ; preds = %94
  %104 = load i64, i64* %14, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %14, align 8
  br label %89

106:                                              ; preds = %89
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = load i64, i64* %7, align 8
  %112 = call i32 @blake2s_final(i32 %109, i32* %110, i64 %111)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %113

113:                                              ; preds = %106, %27
  %114 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @blake2s_update(i32, i32*, i32) #2

declare dso_local i32 @blake2s_final(i32, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

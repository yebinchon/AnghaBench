; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libb2/extr_blake2sp.c_blake2sp_init_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libb2/extr_blake2sp.c_blake2sp_init_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_8__**, i64, %struct.TYPE_7__*, i64, i64* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@BLAKE2S_OUTBYTES = common dso_local global i64 0, align 8
@BLAKE2S_KEYBYTES = common dso_local global i64 0, align 8
@PARALLELISM_DEGREE = common dso_local global i64 0, align 8
@BLAKE2S_BLOCKBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blake2sp_init_key(%struct.TYPE_6__* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @BLAKE2S_OUTBYTES, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %4
  store i32 -1, i32* %5, align 4
  br label %114

21:                                               ; preds = %16
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @BLAKE2S_KEYBYTES, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %24, %21
  store i32 -1, i32* %5, align 4
  br label %114

32:                                               ; preds = %27
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 4
  %35 = load i64*, i64** %34, align 8
  %36 = call i32 @memset(i64* %35, i32 0, i32 8)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @blake2sp_init_root(%struct.TYPE_7__* %41, i64 %42, i64 %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  store i32 -1, i32* %5, align 4
  br label %114

47:                                               ; preds = %32
  store i64 0, i64* %10, align 8
  br label %48

48:                                               ; preds = %66, %47
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @PARALLELISM_DEGREE, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %48
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %55, i64 %56
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i64 @blake2sp_init_leaf(%struct.TYPE_8__* %58, i64 %59, i64 %60, i64 %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  store i32 -1, i32* %5, align 4
  br label %114

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %10, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %10, align 8
  br label %48

69:                                               ; preds = %48
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %75, align 8
  %77 = load i64, i64* @PARALLELISM_DEGREE, align 8
  %78 = sub i64 %77, 1
  %79 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %76, i64 %78
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 4
  %82 = load i64, i64* %7, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = load i32, i32* @BLAKE2S_BLOCKBYTES, align 4
  %86 = zext i32 %85 to i64
  %87 = call i8* @llvm.stacksave()
  store i8* %87, i8** %11, align 8
  %88 = alloca i64, i64 %86, align 16
  store i64 %86, i64* %12, align 8
  %89 = load i32, i32* @BLAKE2S_BLOCKBYTES, align 4
  %90 = call i32 @memset(i64* %88, i32 0, i32 %89)
  %91 = load i8*, i8** %8, align 8
  %92 = load i64, i64* %9, align 8
  %93 = call i32 @memcpy(i64* %88, i8* %91, i64 %92)
  store i64 0, i64* %13, align 8
  br label %94

94:                                               ; preds = %107, %69
  %95 = load i64, i64* %13, align 8
  %96 = load i64, i64* @PARALLELISM_DEGREE, align 8
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %94
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %100, align 8
  %102 = load i64, i64* %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %101, i64 %102
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = load i32, i32* @BLAKE2S_BLOCKBYTES, align 4
  %106 = call i32 @blake2s_update(%struct.TYPE_8__* %104, i64* %88, i32 %105)
  br label %107

107:                                              ; preds = %98
  %108 = load i64, i64* %13, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %13, align 8
  br label %94

110:                                              ; preds = %94
  %111 = load i32, i32* @BLAKE2S_BLOCKBYTES, align 4
  %112 = call i32 @secure_zero_memory(i64* %88, i32 %111)
  %113 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %113)
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %110, %64, %46, %31, %20
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i64 @blake2sp_init_root(%struct.TYPE_7__*, i64, i64) #1

declare dso_local i64 @blake2sp_init_leaf(%struct.TYPE_8__*, i64, i64, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i64*, i8*, i64) #1

declare dso_local i32 @blake2s_update(%struct.TYPE_8__*, i64*, i32) #1

declare dso_local i32 @secure_zero_memory(i64*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

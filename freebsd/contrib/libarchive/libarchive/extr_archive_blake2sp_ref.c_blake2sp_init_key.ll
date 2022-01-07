; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_blake2sp_ref.c_blake2sp_init_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_blake2sp_ref.c_blake2sp_init_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_8__**, %struct.TYPE_7__*, i64, i32* }
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
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @BLAKE2S_OUTBYTES, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %4
  store i32 -1, i32* %5, align 4
  br label %114

20:                                               ; preds = %15
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i64, i64* %9, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @BLAKE2S_KEYBYTES, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %23, %20
  store i32 -1, i32* %5, align 4
  br label %114

31:                                               ; preds = %26
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @memset(i32* %34, i32 0, i32 8)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i64 @blake2sp_init_root(%struct.TYPE_7__* %43, i64 %44, i64 %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %31
  store i32 -1, i32* %5, align 4
  br label %114

49:                                               ; preds = %31
  store i64 0, i64* %10, align 8
  br label %50

50:                                               ; preds = %69, %49
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* @PARALLELISM_DEGREE, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %50
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %57, i64 %58
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i64 @blake2sp_init_leaf(%struct.TYPE_8__* %60, i64 %61, i64 %62, i32 %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  store i32 -1, i32* %5, align 4
  br label %114

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %10, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %10, align 8
  br label %50

72:                                               ; preds = %50
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %78, align 8
  %80 = load i64, i64* @PARALLELISM_DEGREE, align 8
  %81 = sub i64 %80, 1
  %82 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %79, i64 %81
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 4
  %85 = load i32, i32* @BLAKE2S_BLOCKBYTES, align 4
  %86 = zext i32 %85 to i64
  %87 = call i8* @llvm.stacksave()
  store i8* %87, i8** %11, align 8
  %88 = alloca i32, i64 %86, align 16
  store i64 %86, i64* %12, align 8
  %89 = load i32, i32* @BLAKE2S_BLOCKBYTES, align 4
  %90 = call i32 @memset(i32* %88, i32 0, i32 %89)
  %91 = load i8*, i8** %8, align 8
  %92 = load i64, i64* %9, align 8
  %93 = call i32 @memcpy(i32* %88, i8* %91, i64 %92)
  store i64 0, i64* %10, align 8
  br label %94

94:                                               ; preds = %107, %72
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* @PARALLELISM_DEGREE, align 8
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %94
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %100, align 8
  %102 = load i64, i64* %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %101, i64 %102
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = load i32, i32* @BLAKE2S_BLOCKBYTES, align 4
  %106 = call i32 @blake2s_update(%struct.TYPE_8__* %104, i32* %88, i32 %105)
  br label %107

107:                                              ; preds = %98
  %108 = load i64, i64* %10, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %10, align 8
  br label %94

110:                                              ; preds = %94
  %111 = load i32, i32* @BLAKE2S_BLOCKBYTES, align 4
  %112 = call i32 @secure_zero_memory(i32* %88, i32 %111)
  %113 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %113)
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %110, %67, %48, %30, %19
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @blake2sp_init_root(%struct.TYPE_7__*, i64, i64) #1

declare dso_local i64 @blake2sp_init_leaf(%struct.TYPE_8__*, i64, i64, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @blake2s_update(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @secure_zero_memory(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

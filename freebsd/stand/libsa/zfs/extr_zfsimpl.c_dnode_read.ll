; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfsimpl.c_dnode_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfsimpl.c_dnode_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32* }

@SPA_BLKPTRSHIFT = common dso_local global i32 0, align 4
@SPA_MINBLOCKSHIFT = common dso_local global i32 0, align 4
@SPA_MAXBLOCKSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"ZFS: I/O error - blocks larger than %llu are not supported\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@dnode_cache_obj = common dso_local global %struct.TYPE_4__* null, align 8
@dnode_cache_bn = common dso_local global i32 0, align 4
@dnode_cache_buf = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i32, i8*, i64)* @dnode_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnode_read(i32* %0, %struct.TYPE_4__* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SPA_BLKPTRSHIFT, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %12, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SPA_MINBLOCKSHIFT, align 4
  %31 = shl i32 %29, %30
  store i32 %31, i32* %13, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @SPA_MAXBLOCKSIZE, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %5
  %39 = load i32, i32* @SPA_MAXBLOCKSIZE, align 4
  %40 = call i32 @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EIO, align 4
  store i32 %41, i32* %6, align 4
  br label %149

42:                                               ; preds = %5
  br label %43

43:                                               ; preds = %129, %42
  %44 = load i64, i64* %11, align 8
  %45 = icmp ugt i64 %44, 0
  br i1 %45, label %46, label %148

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %13, align 4
  %49 = sdiv i32 %47, %48
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %13, align 4
  %52 = srem i32 %50, %51
  store i32 %52, i32* %18, align 4
  %53 = load i32, i32* %17, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %53, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %46
  %59 = load i32, i32* @EIO, align 4
  store i32 %59, i32* %6, align 4
  br label %149

60:                                               ; preds = %46
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dnode_cache_obj, align 8
  %63 = icmp eq %struct.TYPE_4__* %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* @dnode_cache_bn, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %118

69:                                               ; preds = %64, %60
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  store i32* %72, i32** %20, align 8
  store i32 0, i32* %15, align 4
  br label %73

73:                                               ; preds = %112, %69
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %115

77:                                               ; preds = %73
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %15, align 4
  %81 = sub nsw i32 %79, %80
  %82 = sub nsw i32 %81, 1
  %83 = load i32, i32* %12, align 4
  %84 = mul nsw i32 %82, %83
  %85 = ashr i32 %78, %84
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %12, align 4
  %87 = shl i32 1, %86
  %88 = sub nsw i32 %87, 1
  %89 = load i32, i32* %19, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %19, align 4
  %91 = load i32*, i32** %20, align 8
  %92 = load i32, i32* %19, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %21, align 4
  %96 = call i64 @BP_IS_HOLE(i32* %21)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %77
  %99 = load i32*, i32** @dnode_cache_buf, align 8
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @memset(i32* %99, i32 0, i32 %100)
  br label %115

102:                                              ; preds = %77
  %103 = load i32*, i32** %7, align 8
  %104 = load i32*, i32** @dnode_cache_buf, align 8
  %105 = call i32 @zio_read(i32* %103, i32* %21, i32* %104)
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %16, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32, i32* %16, align 4
  store i32 %109, i32* %6, align 4
  br label %149

110:                                              ; preds = %102
  %111 = load i32*, i32** @dnode_cache_buf, align 8
  store i32* %111, i32** %20, align 8
  br label %112

112:                                              ; preds = %110
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %15, align 4
  br label %73

115:                                              ; preds = %98, %73
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %116, %struct.TYPE_4__** @dnode_cache_obj, align 8
  %117 = load i32, i32* %17, align 4
  store i32 %117, i32* @dnode_cache_bn, align 4
  br label %118

118:                                              ; preds = %115, %68
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %18, align 4
  %121 = sub nsw i32 %119, %120
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* %11, align 8
  %125 = icmp ugt i64 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %118
  %127 = load i64, i64* %11, align 8
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %15, align 4
  br label %129

129:                                              ; preds = %126, %118
  %130 = load i8*, i8** %10, align 8
  %131 = load i32*, i32** @dnode_cache_buf, align 8
  %132 = load i32, i32* %18, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %15, align 4
  %136 = call i32 @memcpy(i8* %130, i32* %134, i32 %135)
  %137 = load i8*, i8** %10, align 8
  %138 = load i32, i32* %15, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  store i8* %140, i8** %10, align 8
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %15, align 4
  %145 = sext i32 %144 to i64
  %146 = load i64, i64* %11, align 8
  %147 = sub i64 %146, %145
  store i64 %147, i64* %11, align 8
  br label %43

148:                                              ; preds = %43
  store i32 0, i32* %6, align 4
  br label %149

149:                                              ; preds = %148, %108, %58, %38
  %150 = load i32, i32* %6, align 4
  ret i32 %150
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i64 @BP_IS_HOLE(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @zio_read(i32*, i32*, i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

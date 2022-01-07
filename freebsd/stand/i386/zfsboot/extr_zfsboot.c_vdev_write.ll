; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/zfsboot/extr_zfsboot.c_vdev_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/zfsboot/extr_zfsboot.c_vdev_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.zfsdsk = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@DEV_BSIZE = common dso_local global i32 0, align 4
@READ_BUF_SIZE = common dso_local global i32 0, align 4
@dmadat = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8*, i64)* @vdev_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_write(i32* %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.zfsdsk*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.zfsdsk*
  store %struct.zfsdsk* %17, %struct.zfsdsk** %15, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @DEV_BSIZE, align 4
  %20 = sub nsw i32 %19, 1
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %5
  %24 = load i64, i64* %11, align 8
  %25 = load i32, i32* @DEV_BSIZE, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = and i64 %24, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23, %5
  store i32 -1, i32* %6, align 4
  br label %98

31:                                               ; preds = %23
  %32 = load i8*, i8** %10, align 8
  store i8* %32, i8** %12, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @DEV_BSIZE, align 4
  %35 = sdiv i32 %33, %34
  store i32 %35, i32* %13, align 4
  %36 = load %struct.zfsdsk*, %struct.zfsdsk** %15, align 8
  %37 = getelementptr inbounds %struct.zfsdsk, %struct.zfsdsk* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %13, align 4
  %41 = zext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %81, %31
  %45 = load i64, i64* %11, align 8
  %46 = icmp ugt i64 %45, 0
  br i1 %46, label %47, label %97

47:                                               ; preds = %44
  %48 = load i64, i64* %11, align 8
  %49 = load i32, i32* @DEV_BSIZE, align 4
  %50 = sext i32 %49 to i64
  %51 = udiv i64 %48, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* @READ_BUF_SIZE, align 4
  %55 = load i32, i32* @DEV_BSIZE, align 4
  %56 = sdiv i32 %54, %55
  %57 = icmp ugt i32 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %47
  %59 = load i32, i32* @READ_BUF_SIZE, align 4
  %60 = load i32, i32* @DEV_BSIZE, align 4
  %61 = sdiv i32 %59, %60
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %58, %47
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dmadat, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %12, align 8
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @DEV_BSIZE, align 4
  %69 = mul i32 %67, %68
  %70 = call i32 @memcpy(i32 %65, i8* %66, i32 %69)
  %71 = load %struct.zfsdsk*, %struct.zfsdsk** %15, align 8
  %72 = getelementptr inbounds %struct.zfsdsk, %struct.zfsdsk* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dmadat, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %14, align 4
  %78 = call i64 @drvwrite(%struct.TYPE_3__* %72, i32 %75, i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %62
  store i32 -1, i32* %6, align 4
  br label %98

81:                                               ; preds = %62
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @DEV_BSIZE, align 4
  %84 = mul i32 %82, %83
  %85 = load i8*, i8** %12, align 8
  %86 = zext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8* %87, i8** %12, align 8
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %13, align 4
  %90 = add i32 %89, %88
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @DEV_BSIZE, align 4
  %93 = mul i32 %91, %92
  %94 = zext i32 %93 to i64
  %95 = load i64, i64* %11, align 8
  %96 = sub i64 %95, %94
  store i64 %96, i64* %11, align 8
  br label %44

97:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %97, %80, %30
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i64 @drvwrite(%struct.TYPE_3__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

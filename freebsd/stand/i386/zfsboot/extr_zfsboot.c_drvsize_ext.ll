; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/zfsboot/extr_zfsboot.c_drvsize_ext.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/zfsboot/extr_zfsboot.c_drvsize_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.zfsdsk = type { %struct.dsk }
%struct.dsk = type { i32 }

@V86_FLAGS = common dso_local global i8* null, align 8
@v86 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EDD_INTERFACE_FIXED_DISK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfsdsk*)* @drvsize_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drvsize_ext(%struct.zfsdsk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfsdsk*, align 8
  %4 = alloca %struct.dsk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.zfsdsk* %0, %struct.zfsdsk** %3, align 8
  %10 = load %struct.zfsdsk*, %struct.zfsdsk** %3, align 8
  %11 = getelementptr inbounds %struct.zfsdsk, %struct.zfsdsk* %10, i32 0, i32 0
  store %struct.dsk* %11, %struct.dsk** %4, align 8
  %12 = load %struct.dsk*, %struct.dsk** %4, align 8
  %13 = call i32 @drvsize_gpt(%struct.dsk* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %85

18:                                               ; preds = %1
  %19 = load i8*, i8** @V86_FLAGS, align 8
  store i8* %19, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 6), align 8
  store i32 19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 0), align 8
  store i32 2048, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 1), align 4
  %20 = load %struct.dsk*, %struct.dsk** %4, align 8
  %21 = getelementptr inbounds %struct.dsk, %struct.dsk* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 2), align 8
  %23 = call i32 (...) @v86int()
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 5), align 4
  %25 = call i64 @V86_CY(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 2), align 8
  %29 = and i32 %28, 255
  %30 = load %struct.dsk*, %struct.dsk** %4, align 8
  %31 = getelementptr inbounds %struct.dsk, %struct.dsk* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 127
  %34 = icmp ule i32 %29, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27, %18
  store i32 0, i32* %2, align 4
  br label %85

36:                                               ; preds = %27
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 3), align 4
  %38 = and i32 %37, 192
  %39 = shl i32 %38, 2
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 3), align 4
  %41 = and i32 %40, 65280
  %42 = ashr i32 %41, 8
  %43 = add nsw i32 %39, %42
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 2), align 8
  %46 = and i32 %45, 65280
  %47 = ashr i32 %46, 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 3), align 4
  %50 = and i32 %49, 63
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %9, align 4
  %55 = mul nsw i32 %53, %54
  store i32 %55, i32* %5, align 4
  %56 = load i8*, i8** @V86_FLAGS, align 8
  store i8* %56, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 6), align 8
  store i32 19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 0), align 8
  store i32 16640, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 1), align 4
  %57 = load %struct.dsk*, %struct.dsk** %4, align 8
  %58 = getelementptr inbounds %struct.dsk, %struct.dsk* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 2), align 8
  store i32 21930, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 4), align 8
  %60 = call i32 (...) @v86int()
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 5), align 4
  %62 = call i64 @V86_CY(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %36
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 4), align 8
  %66 = and i32 %65, 65535
  %67 = icmp ne i32 %66, 43605
  br i1 %67, label %73, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 3), align 4
  %70 = load i32, i32* @EDD_INTERFACE_FIXED_DISK, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68, %64, %36
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %85

75:                                               ; preds = %68
  %76 = load %struct.dsk*, %struct.dsk** %4, align 8
  %77 = call i32 @drvsize(%struct.dsk* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %75
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %73, %35, %16
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @drvsize_gpt(%struct.dsk*) #1

declare dso_local i32 @v86int(...) #1

declare dso_local i64 @V86_CY(i32) #1

declare dso_local i32 @drvsize(%struct.dsk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

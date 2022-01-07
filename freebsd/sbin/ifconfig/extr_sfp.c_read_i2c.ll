; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_sfp.c_read_i2c.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_sfp.c_read_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_info = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.ifi2creq = type { i32, i32, i32, i32 }

@SIOCGI2C = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_info*, i32, i32, i32, i32*)* @read_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_i2c(%struct.i2c_info* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ifi2creq, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i2c_info* %0, %struct.i2c_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.i2c_info*, %struct.i2c_info** %7, align 8
  %16 = getelementptr inbounds %struct.i2c_info, %struct.i2c_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %5
  %20 = load %struct.i2c_info*, %struct.i2c_info** %7, align 8
  %21 = getelementptr inbounds %struct.i2c_info, %struct.i2c_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %6, align 4
  br label %80

24:                                               ; preds = %5
  %25 = ptrtoint %struct.ifi2creq* %12 to i64
  %26 = load %struct.i2c_info*, %struct.i2c_info** %7, align 8
  %27 = getelementptr inbounds %struct.i2c_info, %struct.i2c_info* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i64 %25, i64* %29, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %30 = call i32 @memset(%struct.ifi2creq* %12, i32 0, i32 16)
  %31 = load i32, i32* %8, align 4
  %32 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %12, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %12, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %10, align 4
  %36 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %12, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %60, %24
  %38 = load i32, i32* %10, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %79

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @MIN(i32 4, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %12, i32 0, i32 2
  store i32 %43, i32* %44, align 4
  %45 = load %struct.i2c_info*, %struct.i2c_info** %7, align 8
  %46 = getelementptr inbounds %struct.i2c_info, %struct.i2c_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SIOCGI2C, align 4
  %49 = load %struct.i2c_info*, %struct.i2c_info** %7, align 8
  %50 = getelementptr inbounds %struct.i2c_info, %struct.i2c_info* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = call i64 @ioctl(i32 %47, i32 %48, %struct.TYPE_2__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %40
  %55 = load i32, i32* @errno, align 4
  %56 = sext i32 %55 to i64
  %57 = load %struct.i2c_info*, %struct.i2c_info** %7, align 8
  %58 = getelementptr inbounds %struct.i2c_info, %struct.i2c_info* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* @errno, align 4
  store i32 %59, i32* %6, align 4
  br label %80

60:                                               ; preds = %40
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %12, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @memcpy(i32* %64, i32 %66, i32 %67)
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %10, align 4
  %71 = sub nsw i32 %70, %69
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %14, align 4
  %76 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %12, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, %75
  store i32 %78, i32* %76, align 4
  br label %37

79:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %79, %54, %19
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @memset(%struct.ifi2creq*, i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

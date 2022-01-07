; ModuleID = '/home/carl/AnghaBench/freebsd/stand/usb/storage/extr_umass_loader.c_umass_disk_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/usb/storage/extr_umass_loader.c_umass_disk_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@umass_uaa = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ENXIO = common dso_local global i32 0, align 4
@F_MASK = common dso_local global i32 0, align 4
@F_WRITE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@F_READ = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i64, i8*, i64*)* @umass_disk_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umass_disk_strategy(i8* %0, i32 %1, i32 %2, i64 %3, i8* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64* %5, i64** %13, align 8
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @umass_uaa, i32 0, i32 0), align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %6
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %7, align 4
  br label %66

18:                                               ; preds = %6
  %19 = load i64*, i64** %13, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i64*, i64** %13, align 8
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i32, i32* @F_MASK, align 4
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @F_WRITE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @umass_uaa, i32 0, i32 0), align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i64, i64* %11, align 8
  %34 = lshr i64 %33, 9
  %35 = load i8*, i8** %12, align 8
  %36 = call i64 @usb_msc_write_10(i32* %31, i32 0, i32 %32, i64 %34, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %7, align 4
  br label %66

40:                                               ; preds = %30
  br label %59

41:                                               ; preds = %23
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @F_READ, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @umass_uaa, i32 0, i32 0), align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i64, i64* %11, align 8
  %49 = lshr i64 %48, 9
  %50 = load i8*, i8** %12, align 8
  %51 = call i64 @usb_msc_read_10(i32* %46, i32 0, i32 %47, i64 %49, i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %7, align 4
  br label %66

55:                                               ; preds = %45
  br label %58

56:                                               ; preds = %41
  %57 = load i32, i32* @EROFS, align 4
  store i32 %57, i32* %7, align 4
  br label %66

58:                                               ; preds = %55
  br label %59

59:                                               ; preds = %58, %40
  %60 = load i64*, i64** %13, align 8
  %61 = icmp ne i64* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i64, i64* %11, align 8
  %64 = load i64*, i64** %13, align 8
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %62, %59
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %65, %56, %53, %38, %16
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i64 @usb_msc_write_10(i32*, i32, i32, i64, i8*) #1

declare dso_local i64 @usb_msc_read_10(i32*, i32, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

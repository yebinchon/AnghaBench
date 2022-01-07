; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_pkgfs.c_get_zipped.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_pkgfs.c_get_zipped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.package = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i32, i8* }

@PKG_BUFSIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@Z_SYNC_FLUSH = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.package*, i8*, i64)* @get_zipped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_zipped(%struct.package* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.package*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.package* %0, %struct.package** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load %struct.package*, %struct.package** %5, align 8
  %11 = getelementptr inbounds %struct.package, %struct.package* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  store i8* %9, i8** %12, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.package*, %struct.package** %5, align 8
  %15 = getelementptr inbounds %struct.package, %struct.package* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i64 %13, i64* %16, align 8
  br label %17

17:                                               ; preds = %67, %3
  %18 = load %struct.package*, %struct.package** %5, align 8
  %19 = getelementptr inbounds %struct.package, %struct.package* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %68

23:                                               ; preds = %17
  %24 = load %struct.package*, %struct.package** %5, align 8
  %25 = getelementptr inbounds %struct.package, %struct.package* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %23
  %30 = load %struct.package*, %struct.package** %5, align 8
  %31 = getelementptr inbounds %struct.package, %struct.package* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.package*, %struct.package** %5, align 8
  %34 = getelementptr inbounds %struct.package, %struct.package* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PKG_BUFSIZE, align 4
  %37 = call i32 @read(i32 %32, i32 %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* @EIO, align 4
  store i32 %41, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %74

42:                                               ; preds = %29
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.package*, %struct.package** %5, align 8
  %45 = getelementptr inbounds %struct.package, %struct.package* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 8
  %47 = load %struct.package*, %struct.package** %5, align 8
  %48 = getelementptr inbounds %struct.package, %struct.package* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.package*, %struct.package** %5, align 8
  %51 = getelementptr inbounds %struct.package, %struct.package* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 4
  br label %53

53:                                               ; preds = %42, %23
  %54 = load %struct.package*, %struct.package** %5, align 8
  %55 = getelementptr inbounds %struct.package, %struct.package* %54, i32 0, i32 1
  %56 = load i32, i32* @Z_SYNC_FLUSH, align 4
  %57 = call i32 @inflate(%struct.TYPE_2__* %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @Z_OK, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @Z_STREAM_END, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @EIO, align 4
  store i32 %66, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %74

67:                                               ; preds = %61, %53
  br label %17

68:                                               ; preds = %17
  %69 = load i64, i64* %7, align 8
  %70 = load %struct.package*, %struct.package** %5, align 8
  %71 = getelementptr inbounds %struct.package, %struct.package* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, %69
  store i64 %73, i64* %71, align 8
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %68, %65, %40
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @read(i32, i32, i32) #1

declare dso_local i32 @inflate(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

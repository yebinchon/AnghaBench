; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_file.c_convert_utimens_arguments.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_file.c_convert_utimens_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.timespec = type { i32, i32 }

@CLOUDABI_FILESTAT_ATIM_NOW = common dso_local global i32 0, align 4
@UTIME_NOW = common dso_local global i8* null, align 8
@CLOUDABI_FILESTAT_ATIM = common dso_local global i32 0, align 4
@UTIME_OMIT = common dso_local global i8* null, align 8
@CLOUDABI_FILESTAT_MTIM_NOW = common dso_local global i32 0, align 4
@CLOUDABI_FILESTAT_MTIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, %struct.timespec*)* @convert_utimens_arguments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_utimens_arguments(%struct.TYPE_3__* %0, i32 %1, %struct.timespec* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.timespec*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.timespec* %2, %struct.timespec** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @CLOUDABI_FILESTAT_ATIM_NOW, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i8*, i8** @UTIME_NOW, align 8
  %13 = ptrtoint i8* %12 to i32
  %14 = load %struct.timespec*, %struct.timespec** %6, align 8
  %15 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i64 0
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  br label %44

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @CLOUDABI_FILESTAT_ATIM, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %25, 1000000000
  %27 = load %struct.timespec*, %struct.timespec** %6, align 8
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %27, i64 0
  %29 = getelementptr inbounds %struct.timespec, %struct.timespec* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = srem i32 %32, 1000000000
  %34 = load %struct.timespec*, %struct.timespec** %6, align 8
  %35 = getelementptr inbounds %struct.timespec, %struct.timespec* %34, i64 0
  %36 = getelementptr inbounds %struct.timespec, %struct.timespec* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  br label %43

37:                                               ; preds = %17
  %38 = load i8*, i8** @UTIME_OMIT, align 8
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.timespec*, %struct.timespec** %6, align 8
  %41 = getelementptr inbounds %struct.timespec, %struct.timespec* %40, i64 0
  %42 = getelementptr inbounds %struct.timespec, %struct.timespec* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  br label %43

43:                                               ; preds = %37, %22
  br label %44

44:                                               ; preds = %43, %11
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @CLOUDABI_FILESTAT_MTIM_NOW, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i8*, i8** @UTIME_NOW, align 8
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.timespec*, %struct.timespec** %6, align 8
  %53 = getelementptr inbounds %struct.timespec, %struct.timespec* %52, i64 1
  %54 = getelementptr inbounds %struct.timespec, %struct.timespec* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  br label %82

55:                                               ; preds = %44
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @CLOUDABI_FILESTAT_MTIM, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %63, 1000000000
  %65 = load %struct.timespec*, %struct.timespec** %6, align 8
  %66 = getelementptr inbounds %struct.timespec, %struct.timespec* %65, i64 1
  %67 = getelementptr inbounds %struct.timespec, %struct.timespec* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = srem i32 %70, 1000000000
  %72 = load %struct.timespec*, %struct.timespec** %6, align 8
  %73 = getelementptr inbounds %struct.timespec, %struct.timespec* %72, i64 1
  %74 = getelementptr inbounds %struct.timespec, %struct.timespec* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  br label %81

75:                                               ; preds = %55
  %76 = load i8*, i8** @UTIME_OMIT, align 8
  %77 = ptrtoint i8* %76 to i32
  %78 = load %struct.timespec*, %struct.timespec** %6, align 8
  %79 = getelementptr inbounds %struct.timespec, %struct.timespec* %78, i64 1
  %80 = getelementptr inbounds %struct.timespec, %struct.timespec* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  br label %81

81:                                               ; preds = %75, %60
  br label %82

82:                                               ; preds = %81, %49
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

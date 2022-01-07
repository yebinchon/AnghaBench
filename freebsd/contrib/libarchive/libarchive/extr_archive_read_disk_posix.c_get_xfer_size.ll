; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_get_xfer_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_get_xfer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8*, i8*, i8* }

@errno = common dso_local global i64 0, align 8
@_PC_REC_INCR_XFER_SIZE = common dso_local global i32 0, align 4
@_PC_REC_MAX_XFER_SIZE = common dso_local global i32 0, align 4
@_PC_REC_MIN_XFER_SIZE = common dso_local global i32 0, align 4
@_PC_REC_XFER_ALIGN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree*, i32, i8*)* @get_xfer_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_xfer_size(%struct.tree* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tree*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.tree* %0, %struct.tree** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load %struct.tree*, %struct.tree** %5, align 8
  %9 = getelementptr inbounds %struct.tree, %struct.tree* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 -1, i32* %11, align 8
  store i64 0, i64* @errno, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @_PC_REC_INCR_XFER_SIZE, align 4
  %17 = call i8* @fpathconf(i32 %15, i32 %16)
  %18 = load %struct.tree*, %struct.tree** %5, align 8
  %19 = getelementptr inbounds %struct.tree, %struct.tree* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  store i8* %17, i8** %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @_PC_REC_MAX_XFER_SIZE, align 4
  %24 = call i8* @fpathconf(i32 %22, i32 %23)
  %25 = load %struct.tree*, %struct.tree** %5, align 8
  %26 = getelementptr inbounds %struct.tree, %struct.tree* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i8* %24, i8** %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @_PC_REC_MIN_XFER_SIZE, align 4
  %31 = call i8* @fpathconf(i32 %29, i32 %30)
  %32 = load %struct.tree*, %struct.tree** %5, align 8
  %33 = getelementptr inbounds %struct.tree, %struct.tree* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i8* %31, i8** %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @_PC_REC_XFER_ALIGN, align 4
  %38 = call i8* @fpathconf(i32 %36, i32 %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.tree*, %struct.tree** %5, align 8
  %41 = getelementptr inbounds %struct.tree, %struct.tree* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 8
  br label %78

44:                                               ; preds = %3
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %77

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* @_PC_REC_INCR_XFER_SIZE, align 4
  %50 = call i8* @pathconf(i8* %48, i32 %49)
  %51 = load %struct.tree*, %struct.tree** %5, align 8
  %52 = getelementptr inbounds %struct.tree, %struct.tree* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  store i8* %50, i8** %54, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* @_PC_REC_MAX_XFER_SIZE, align 4
  %57 = call i8* @pathconf(i8* %55, i32 %56)
  %58 = load %struct.tree*, %struct.tree** %5, align 8
  %59 = getelementptr inbounds %struct.tree, %struct.tree* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  store i8* %57, i8** %61, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* @_PC_REC_MIN_XFER_SIZE, align 4
  %64 = call i8* @pathconf(i8* %62, i32 %63)
  %65 = load %struct.tree*, %struct.tree** %5, align 8
  %66 = getelementptr inbounds %struct.tree, %struct.tree* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i8* %64, i8** %68, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* @_PC_REC_XFER_ALIGN, align 4
  %71 = call i8* @pathconf(i8* %69, i32 %70)
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.tree*, %struct.tree** %5, align 8
  %74 = getelementptr inbounds %struct.tree, %struct.tree* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 8
  br label %77

77:                                               ; preds = %47, %44
  br label %78

78:                                               ; preds = %77, %14
  %79 = load %struct.tree*, %struct.tree** %5, align 8
  %80 = getelementptr inbounds %struct.tree, %struct.tree* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = load i64, i64* @errno, align 8
  %87 = load i64, i64* @EINVAL, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 1, i32 -1
  store i32 %90, i32* %4, align 4
  br label %92

91:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %85
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i8* @fpathconf(i32, i32) #1

declare dso_local i8* @pathconf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

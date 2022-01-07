; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_file.c_write_dirent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_file.c_write_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i8*, i32, i32 }
%struct.uio = type { i32 }

@CLOUDABI_FILETYPE_BLOCK_DEVICE = common dso_local global i8* null, align 8
@CLOUDABI_FILETYPE_CHARACTER_DEVICE = common dso_local global i8* null, align 8
@CLOUDABI_FILETYPE_DIRECTORY = common dso_local global i8* null, align 8
@CLOUDABI_FILETYPE_SOCKET_STREAM = common dso_local global i8* null, align 8
@CLOUDABI_FILETYPE_SYMBOLIC_LINK = common dso_local global i8* null, align 8
@CLOUDABI_FILETYPE_REGULAR_FILE = common dso_local global i8* null, align 8
@CLOUDABI_FILETYPE_UNKNOWN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dirent*, i32, %struct.uio*)* @write_dirent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_dirent(%struct.dirent* %0, i32 %1, %struct.uio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uio*, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.dirent* %0, %struct.dirent** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.uio* %2, %struct.uio** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %12 = load %struct.dirent*, %struct.dirent** %5, align 8
  %13 = getelementptr inbounds %struct.dirent, %struct.dirent* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %11, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i8* null, i8** %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %17 = load %struct.dirent*, %struct.dirent** %5, align 8
  %18 = getelementptr inbounds %struct.dirent, %struct.dirent* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %16, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %20, align 4
  %22 = load %struct.dirent*, %struct.dirent** %5, align 8
  %23 = getelementptr inbounds %struct.dirent, %struct.dirent* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %46 [
    i32 134, label %25
    i32 133, label %28
    i32 132, label %31
    i32 131, label %34
    i32 130, label %37
    i32 129, label %40
    i32 128, label %43
  ]

25:                                               ; preds = %3
  %26 = load i8*, i8** @CLOUDABI_FILETYPE_BLOCK_DEVICE, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i8* %26, i8** %27, align 8
  br label %49

28:                                               ; preds = %3
  %29 = load i8*, i8** @CLOUDABI_FILETYPE_CHARACTER_DEVICE, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i8* %29, i8** %30, align 8
  br label %49

31:                                               ; preds = %3
  %32 = load i8*, i8** @CLOUDABI_FILETYPE_DIRECTORY, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i8* %32, i8** %33, align 8
  br label %49

34:                                               ; preds = %3
  %35 = load i8*, i8** @CLOUDABI_FILETYPE_SOCKET_STREAM, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  br label %49

37:                                               ; preds = %3
  %38 = load i8*, i8** @CLOUDABI_FILETYPE_SYMBOLIC_LINK, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i8* %38, i8** %39, align 8
  br label %49

40:                                               ; preds = %3
  %41 = load i8*, i8** @CLOUDABI_FILETYPE_REGULAR_FILE, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i8* %41, i8** %42, align 8
  br label %49

43:                                               ; preds = %3
  %44 = load i8*, i8** @CLOUDABI_FILETYPE_SOCKET_STREAM, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i8* %44, i8** %45, align 8
  br label %49

46:                                               ; preds = %3
  %47 = load i8*, i8** @CLOUDABI_FILETYPE_UNKNOWN, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i8* %47, i8** %48, align 8
  br label %49

49:                                               ; preds = %46, %43, %40, %37, %34, %31, %28, %25
  %50 = load %struct.uio*, %struct.uio** %7, align 8
  %51 = getelementptr inbounds %struct.uio, %struct.uio* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp ult i64 24, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %61

56:                                               ; preds = %49
  %57 = load %struct.uio*, %struct.uio** %7, align 8
  %58 = getelementptr inbounds %struct.uio, %struct.uio* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  br label %61

61:                                               ; preds = %56, %55
  %62 = phi i64 [ 24, %55 ], [ %60, %56 ]
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.uio*, %struct.uio** %7, align 8
  %65 = call i32 @uiomove(%struct.TYPE_3__* %8, i64 %63, %struct.uio* %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %4, align 4
  br label %95

70:                                               ; preds = %61
  %71 = load %struct.dirent*, %struct.dirent** %5, align 8
  %72 = getelementptr inbounds %struct.dirent, %struct.dirent* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.uio*, %struct.uio** %7, align 8
  %75 = getelementptr inbounds %struct.uio, %struct.uio* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %70
  %79 = load %struct.dirent*, %struct.dirent** %5, align 8
  %80 = getelementptr inbounds %struct.dirent, %struct.dirent* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  br label %86

82:                                               ; preds = %70
  %83 = load %struct.uio*, %struct.uio** %7, align 8
  %84 = getelementptr inbounds %struct.uio, %struct.uio* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  br label %86

86:                                               ; preds = %82, %78
  %87 = phi i32 [ %81, %78 ], [ %85, %82 ]
  %88 = sext i32 %87 to i64
  store i64 %88, i64* %9, align 8
  %89 = load %struct.dirent*, %struct.dirent** %5, align 8
  %90 = getelementptr inbounds %struct.dirent, %struct.dirent* %89, i32 0, i32 2
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load %struct.uio*, %struct.uio** %7, align 8
  %94 = call i32 @uiomove(%struct.TYPE_3__* %91, i64 %92, %struct.uio* %93)
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %86, %68
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @uiomove(%struct.TYPE_3__*, i64, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

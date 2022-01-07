; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfsimpl.c_zfs_lookup_dataset.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfsimpl.c_zfs_lookup_dataset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DMU_POOL_ROOT_DATASET = common dso_local global i8* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32*)* @zfs_lookup_dataset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_lookup_dataset(%struct.TYPE_9__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__, align 4
  %12 = alloca %struct.TYPE_11__, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %20 = call i64 @objset_get_dnode(%struct.TYPE_9__* %16, i32* %18, i32 %19, %struct.TYPE_11__* %12)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @EIO, align 4
  store i32 %23, i32* %4, align 4
  br label %116

24:                                               ; preds = %3
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = load i8*, i8** @DMU_POOL_ROOT_DATASET, align 8
  %27 = call i64 @zap_lookup(%struct.TYPE_9__* %25, %struct.TYPE_11__* %12, i8* %26, i32 4, i32 1, i32* %9)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @EIO, align 4
  store i32 %30, i32* %4, align 4
  br label %116

31:                                               ; preds = %24
  %32 = load i8*, i8** %6, align 8
  store i8* %32, i8** %14, align 8
  br label %33

33:                                               ; preds = %110, %31
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %9, align 4
  %38 = call i64 @objset_get_dnode(%struct.TYPE_9__* %34, i32* %36, i32 %37, %struct.TYPE_11__* %12)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @EIO, align 4
  store i32 %41, i32* %4, align 4
  br label %116

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %44 = bitcast i32* %43 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %13, align 8
  br label %45

45:                                               ; preds = %50, %42
  %46 = load i8*, i8** %14, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 47
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i8*, i8** %14, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %14, align 8
  br label %45

53:                                               ; preds = %45
  %54 = load i8*, i8** %14, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %111

59:                                               ; preds = %53
  %60 = load i8*, i8** %14, align 8
  %61 = call i8* @strchr(i8* %60, i8 signext 47)
  store i8* %61, i8** %15, align 8
  %62 = load i8*, i8** %15, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %82

64:                                               ; preds = %59
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %66 = load i8*, i8** %14, align 8
  %67 = load i8*, i8** %15, align 8
  %68 = load i8*, i8** %14, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = trunc i64 %71 to i32
  %73 = call i32 @memcpy(i8* %65, i8* %66, i32 %72)
  %74 = load i8*, i8** %15, align 8
  %75 = load i8*, i8** %14, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %78
  store i8 0, i8* %79, align 1
  %80 = load i8*, i8** %15, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  store i8* %81, i8** %14, align 8
  br label %91

82:                                               ; preds = %59
  %83 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %84 = load i8*, i8** %14, align 8
  %85 = call i32 @strcpy(i8* %83, i8* %84)
  %86 = load i8*, i8** %14, align 8
  %87 = call i32 @strlen(i8* %86)
  %88 = load i8*, i8** %14, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %14, align 8
  br label %91

91:                                               ; preds = %82, %64
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %10, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %10, align 4
  %99 = call i64 @objset_get_dnode(%struct.TYPE_9__* %95, i32* %97, i32 %98, %struct.TYPE_11__* %11)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %91
  %102 = load i32, i32* @EIO, align 4
  store i32 %102, i32* %4, align 4
  br label %116

103:                                              ; preds = %91
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %105 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %106 = call i64 @zap_lookup(%struct.TYPE_9__* %104, %struct.TYPE_11__* %11, i8* %105, i32 4, i32 1, i32* %9)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* @ENOENT, align 4
  store i32 %109, i32* %4, align 4
  br label %116

110:                                              ; preds = %103
  br label %33

111:                                              ; preds = %58
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %7, align 8
  store i32 %114, i32* %115, align 4
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %111, %108, %101, %40, %29, %22
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i64 @objset_get_dnode(%struct.TYPE_9__*, i32*, i32, %struct.TYPE_11__*) #1

declare dso_local i64 @zap_lookup(%struct.TYPE_9__*, %struct.TYPE_11__*, i8*, i32, i32, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

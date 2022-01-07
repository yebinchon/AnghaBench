; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_dosfs.c_dos_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_dosfs.c_dos_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i8* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }

@errno = common dso_local global i32 0, align 4
@FA_DIR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.open_file*)* @dos_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dos_open(i8* %0, %struct.open_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.open_file*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.open_file* %1, %struct.open_file** %5, align 8
  %12 = call i8* @malloc(i32 8)
  %13 = bitcast i8* %12 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %8, align 8
  %14 = icmp eq %struct.TYPE_12__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @errno, align 4
  store i32 %16, i32* %3, align 4
  br label %111

17:                                               ; preds = %2
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %19 = load %struct.open_file*, %struct.open_file** %5, align 8
  %20 = call i32 @dos_mount(%struct.TYPE_12__* %18, %struct.open_file* %19)
  store i32 %20, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %24 = call i32 @free(%struct.TYPE_12__* %23)
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %3, align 4
  br label %111

26:                                               ; preds = %17
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @namede(%struct.TYPE_12__* %27, i8* %28, %struct.TYPE_14__** %6)
  store i32 %29, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %33 = call i32 @dos_unmount(%struct.TYPE_12__* %32)
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %3, align 4
  br label %111

35:                                               ; preds = %26
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %40 = call i64 @stclus(i32 %38, %struct.TYPE_14__* %39)
  store i64 %40, i64* %10, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @cv4(i32 %43)
  store i64 %44, i64* %9, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @FA_DIR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %35
  %52 = load i64, i64* %10, align 8
  %53 = icmp ne i64 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = load i64, i64* %9, align 8
  %57 = icmp ne i64 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = icmp ne i32 %55, %59
  br i1 %60, label %79, label %61

61:                                               ; preds = %51, %35
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @FA_DIR, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i64, i64* %9, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %68, %61
  %72 = load i64, i64* %10, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @okclus(%struct.TYPE_12__* %75, i64 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %74, %68, %51
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %81 = call i32 @dos_unmount(%struct.TYPE_12__* %80)
  %82 = load i32, i32* @EINVAL, align 4
  store i32 %82, i32* %3, align 4
  br label %111

83:                                               ; preds = %74, %71
  %84 = call i8* @malloc(i32 16)
  %85 = bitcast i8* %84 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %85, %struct.TYPE_13__** %7, align 8
  %86 = icmp eq %struct.TYPE_13__* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i32, i32* @errno, align 4
  store i32 %88, i32* %11, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %90 = call i32 @dos_unmount(%struct.TYPE_12__* %89)
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %3, align 4
  br label %111

92:                                               ; preds = %83
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %94 = call i32 @bzero(%struct.TYPE_13__* %93, i32 16)
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  store %struct.TYPE_12__* %95, %struct.TYPE_12__** %97, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %105 = bitcast %struct.TYPE_14__* %103 to i8*
  %106 = bitcast %struct.TYPE_14__* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 4 %106, i64 8, i1 false)
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %108 = bitcast %struct.TYPE_13__* %107 to i8*
  %109 = load %struct.open_file*, %struct.open_file** %5, align 8
  %110 = getelementptr inbounds %struct.open_file, %struct.open_file* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %92, %87, %79, %31, %22, %15
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @dos_mount(%struct.TYPE_12__*, %struct.open_file*) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

declare dso_local i32 @namede(%struct.TYPE_12__*, i8*, %struct.TYPE_14__**) #1

declare dso_local i32 @dos_unmount(%struct.TYPE_12__*) #1

declare dso_local i64 @stclus(i32, %struct.TYPE_14__*) #1

declare dso_local i64 @cv4(i32) #1

declare dso_local i32 @okclus(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @bzero(%struct.TYPE_13__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

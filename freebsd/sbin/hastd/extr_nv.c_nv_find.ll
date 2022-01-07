; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_nv.c_nv_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_nv.c_nv_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvhdr = type { i32, i32 }
%struct.nv = type { i64, i32 }

@ENOMEM = common dso_local global i8* null, align 8
@errno = common dso_local global i8* null, align 8
@NV_TYPE_NONE = common dso_local global i32 0, align 4
@NV_TYPE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i8* null, align 8
@ENOENT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvhdr* (%struct.nv*, i32, i8*, i32)* @nv_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvhdr* @nv_find(%struct.nv* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.nvhdr*, align 8
  %6 = alloca %struct.nv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [255 x i8], align 16
  %11 = alloca %struct.nvhdr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.nv* %0, %struct.nv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.nv*, %struct.nv** %6, align 8
  %16 = icmp eq %struct.nv* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i8*, i8** @ENOMEM, align 8
  store i8* %18, i8** @errno, align 8
  store %struct.nvhdr* null, %struct.nvhdr** %5, align 8
  br label %112

19:                                               ; preds = %4
  %20 = load %struct.nv*, %struct.nv** %6, align 8
  %21 = call i32 @NV_CHECK(%struct.nv* %20)
  %22 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 0
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @vsnprintf(i8* %22, i32 255, i8* %23, i32 %24)
  store i64 %25, i64* %14, align 8
  %26 = load i64, i64* %14, align 8
  %27 = icmp ugt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i64, i64* %14, align 8
  %30 = icmp ult i64 %29, 255
  br label %31

31:                                               ; preds = %28, %19
  %32 = phi i1 [ false, %19 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @PJDLOG_ASSERT(i32 %33)
  %35 = load i64, i64* %14, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %14, align 8
  %37 = load %struct.nv*, %struct.nv** %6, align 8
  %38 = getelementptr inbounds %struct.nv, %struct.nv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i8* @ebuf_data(i32 %39, i64* %13)
  store i8* %40, i8** %12, align 8
  br label %41

41:                                               ; preds = %91, %31
  %42 = load i64, i64* %13, align 8
  %43 = icmp ugt i64 %42, 0
  br i1 %43, label %44, label %100

44:                                               ; preds = %41
  %45 = load i64, i64* %13, align 8
  %46 = icmp uge i64 %45, 10
  %47 = zext i1 %46 to i32
  %48 = call i32 @PJDLOG_ASSERT(i32 %47)
  %49 = load i8*, i8** %12, align 8
  %50 = bitcast i8* %49 to %struct.nvhdr*
  store %struct.nvhdr* %50, %struct.nvhdr** %11, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load %struct.nvhdr*, %struct.nvhdr** %11, align 8
  %53 = call i64 @NVH_SIZE(%struct.nvhdr* %52)
  %54 = icmp uge i64 %51, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @PJDLOG_ASSERT(i32 %55)
  %57 = load %struct.nvhdr*, %struct.nvhdr** %11, align 8
  %58 = call i32 @nv_swap(%struct.nvhdr* %57, i32 1)
  %59 = load %struct.nvhdr*, %struct.nvhdr** %11, align 8
  %60 = getelementptr inbounds %struct.nvhdr, %struct.nvhdr* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 0
  %63 = call i64 @strcmp(i32 %61, i8* %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %91

65:                                               ; preds = %44
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @NV_TYPE_NONE, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %89

69:                                               ; preds = %65
  %70 = load %struct.nvhdr*, %struct.nvhdr** %11, align 8
  %71 = getelementptr inbounds %struct.nvhdr, %struct.nvhdr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @NV_TYPE_MASK, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %69
  %78 = load i8*, i8** @EINVAL, align 8
  store i8* %78, i8** @errno, align 8
  %79 = load %struct.nv*, %struct.nv** %6, align 8
  %80 = getelementptr inbounds %struct.nv, %struct.nv* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load i8*, i8** @EINVAL, align 8
  %85 = ptrtoint i8* %84 to i64
  %86 = load %struct.nv*, %struct.nv** %6, align 8
  %87 = getelementptr inbounds %struct.nv, %struct.nv* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %83, %77
  store %struct.nvhdr* null, %struct.nvhdr** %5, align 8
  br label %112

89:                                               ; preds = %69, %65
  %90 = load %struct.nvhdr*, %struct.nvhdr** %11, align 8
  store %struct.nvhdr* %90, %struct.nvhdr** %5, align 8
  br label %112

91:                                               ; preds = %44
  %92 = load %struct.nvhdr*, %struct.nvhdr** %11, align 8
  %93 = call i64 @NVH_SIZE(%struct.nvhdr* %92)
  %94 = load i8*, i8** %12, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 %93
  store i8* %95, i8** %12, align 8
  %96 = load %struct.nvhdr*, %struct.nvhdr** %11, align 8
  %97 = call i64 @NVH_SIZE(%struct.nvhdr* %96)
  %98 = load i64, i64* %13, align 8
  %99 = sub i64 %98, %97
  store i64 %99, i64* %13, align 8
  br label %41

100:                                              ; preds = %41
  %101 = load i8*, i8** @ENOENT, align 8
  store i8* %101, i8** @errno, align 8
  %102 = load %struct.nv*, %struct.nv** %6, align 8
  %103 = getelementptr inbounds %struct.nv, %struct.nv* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load i8*, i8** @ENOENT, align 8
  %108 = ptrtoint i8* %107 to i64
  %109 = load %struct.nv*, %struct.nv** %6, align 8
  %110 = getelementptr inbounds %struct.nv, %struct.nv* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %106, %100
  store %struct.nvhdr* null, %struct.nvhdr** %5, align 8
  br label %112

112:                                              ; preds = %111, %89, %88, %17
  %113 = load %struct.nvhdr*, %struct.nvhdr** %5, align 8
  ret %struct.nvhdr* %113
}

declare dso_local i32 @NV_CHECK(%struct.nv*) #1

declare dso_local i64 @vsnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i8* @ebuf_data(i32, i64*) #1

declare dso_local i64 @NVH_SIZE(%struct.nvhdr*) #1

declare dso_local i32 @nv_swap(%struct.nvhdr*, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

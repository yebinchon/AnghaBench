; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_kinfo_getvmmap.c_kinfo_getvmmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_kinfo_getvmmap.c_kinfo_getvmmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_vmentry = type { i64 }

@CTL_KERN = common dso_local global i32 0, align 4
@KERN_PROC = common dso_local global i32 0, align 4
@KERN_PROC_VMMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kinfo_vmentry* @kinfo_getvmmap(i32 %0, i32* %1) #0 {
  %3 = alloca %struct.kinfo_vmentry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.kinfo_vmentry*, align 8
  %14 = alloca %struct.kinfo_vmentry*, align 8
  %15 = alloca %struct.kinfo_vmentry*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  store i32 0, i32* %16, align 4
  store i64 0, i64* %9, align 8
  %17 = load i32, i32* @CTL_KERN, align 4
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %17, i32* %18, align 16
  %19 = load i32, i32* @KERN_PROC, align 4
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @KERN_PROC_VMMAP, align 4
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %27 = call i32 @nitems(i32* %26)
  %28 = call i32 @sysctl(i32* %25, i32 %27, i8* null, i64* %9, i32* null, i32 0)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store %struct.kinfo_vmentry* null, %struct.kinfo_vmentry** %3, align 8
  br label %127

32:                                               ; preds = %2
  %33 = load i64, i64* %9, align 8
  %34 = mul i64 %33, 4
  %35 = udiv i64 %34, 3
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i8* @malloc(i64 %36)
  store i8* %37, i8** %10, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store %struct.kinfo_vmentry* null, %struct.kinfo_vmentry** %3, align 8
  br label %127

41:                                               ; preds = %32
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %44 = call i32 @nitems(i32* %43)
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @sysctl(i32* %42, i32 %44, i8* %45, i64* %9, i32* null, i32 0)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @free(i8* %50)
  store %struct.kinfo_vmentry* null, %struct.kinfo_vmentry** %3, align 8
  br label %127

52:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  %53 = load i8*, i8** %10, align 8
  store i8* %53, i8** %11, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %12, align 8
  br label %57

57:                                               ; preds = %70, %52
  %58 = load i8*, i8** %11, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = icmp ult i8* %58, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %57
  %62 = load i8*, i8** %11, align 8
  %63 = ptrtoint i8* %62 to i64
  %64 = inttoptr i64 %63 to %struct.kinfo_vmentry*
  store %struct.kinfo_vmentry* %64, %struct.kinfo_vmentry** %15, align 8
  %65 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %15, align 8
  %66 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %78

70:                                               ; preds = %61
  %71 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %15, align 8
  %72 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 %73
  store i8* %75, i8** %11, align 8
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %57

78:                                               ; preds = %69, %57
  %79 = load i32, i32* %8, align 4
  %80 = call %struct.kinfo_vmentry* @calloc(i32 %79, i32 8)
  store %struct.kinfo_vmentry* %80, %struct.kinfo_vmentry** %13, align 8
  %81 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %13, align 8
  %82 = icmp eq %struct.kinfo_vmentry* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 @free(i8* %84)
  store %struct.kinfo_vmentry* null, %struct.kinfo_vmentry** %3, align 8
  br label %127

86:                                               ; preds = %78
  %87 = load i8*, i8** %10, align 8
  store i8* %87, i8** %11, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load i64, i64* %9, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %12, align 8
  %91 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %13, align 8
  store %struct.kinfo_vmentry* %91, %struct.kinfo_vmentry** %14, align 8
  br label %92

92:                                               ; preds = %105, %86
  %93 = load i8*, i8** %11, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = icmp ult i8* %93, %94
  br i1 %95, label %96, label %121

96:                                               ; preds = %92
  %97 = load i8*, i8** %11, align 8
  %98 = ptrtoint i8* %97 to i64
  %99 = inttoptr i64 %98 to %struct.kinfo_vmentry*
  store %struct.kinfo_vmentry* %99, %struct.kinfo_vmentry** %15, align 8
  %100 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %15, align 8
  %101 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %121

105:                                              ; preds = %96
  %106 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %14, align 8
  %107 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %15, align 8
  %108 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %15, align 8
  %109 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @memcpy(%struct.kinfo_vmentry* %106, %struct.kinfo_vmentry* %107, i64 %110)
  %112 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %15, align 8
  %113 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 %114
  store i8* %116, i8** %11, align 8
  %117 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %14, align 8
  %118 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %117, i32 0, i32 0
  store i64 8, i64* %118, align 8
  %119 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %14, align 8
  %120 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %119, i32 1
  store %struct.kinfo_vmentry* %120, %struct.kinfo_vmentry** %14, align 8
  br label %92

121:                                              ; preds = %104, %92
  %122 = load i8*, i8** %10, align 8
  %123 = call i32 @free(i8* %122)
  %124 = load i32, i32* %8, align 4
  %125 = load i32*, i32** %5, align 8
  store i32 %124, i32* %125, align 4
  %126 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %13, align 8
  store %struct.kinfo_vmentry* %126, %struct.kinfo_vmentry** %3, align 8
  br label %127

127:                                              ; preds = %121, %83, %49, %40, %31
  %128 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %3, align 8
  ret %struct.kinfo_vmentry* %128
}

declare dso_local i32 @sysctl(i32*, i32, i8*, i64*, i32*, i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.kinfo_vmentry* @calloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.kinfo_vmentry*, %struct.kinfo_vmentry*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

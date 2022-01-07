; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_getswapinfo.c_kvm_getswapinfo_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_getswapinfo.c_kvm_getswapinfo_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.kvm_swap = type { i64, i64, i32, i32 }
%struct.xswdev = type { i64, i64, i32, i32, i64 }

@SWI_MAXMIB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"vm.dmmax\00", align 1
@dmmax = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"vm.swap_info\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"sysctlnametomib failed: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@unswdev = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"cannot read sysctl: %s.\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"struct xswdev has unexpected size;  kernel and libkvm out of sync?\00", align 1
@XSWDEV_VERSION = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [63 x i8] c"struct xswdev version mismatch; kernel and libkvm out of sync?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_getswapinfo_sysctl(%struct.TYPE_5__* %0, %struct.kvm_swap* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.kvm_swap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.xswdev, align 8
  %17 = alloca %struct.kvm_swap, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store %struct.kvm_swap* %1, %struct.kvm_swap** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* @SWI_MAXMIB, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %14, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %15, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = load i64, i64* @dmmax, align 8
  %25 = call i32 @GETSYSCTL(%struct.TYPE_5__* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %163

28:                                               ; preds = %4
  %29 = load i32, i32* @SWI_MAXMIB, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %12, align 8
  %32 = call i32 @sysctlnametomib(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %22, i64* %12)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* @errno, align 8
  %40 = call i32 @strerror(i64 %39)
  %41 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_5__* %35, i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %163

42:                                               ; preds = %28
  %43 = call i32 @bzero(%struct.kvm_swap* %17, i32 24)
  store i32 0, i32* @unswdev, align 4
  br label %44

44:                                               ; preds = %140, %42
  %45 = load i32, i32* @unswdev, align 4
  %46 = load i64, i64* %12, align 8
  %47 = getelementptr inbounds i32, i32* %22, i64 %46
  store i32 %45, i32* %47, align 4
  store i64 32, i64* %13, align 8
  %48 = load i64, i64* %12, align 8
  %49 = add i64 %48, 1
  %50 = call i32 @sysctl(i32* %22, i64 %49, %struct.xswdev* %16, i64* %13, i32* null, i32 0)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %65

52:                                               ; preds = %44
  %53 = load i64, i64* @errno, align 8
  %54 = load i64, i64* @ENOENT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %143

57:                                               ; preds = %52
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* @errno, align 8
  %63 = call i32 @strerror(i64 %62)
  %64 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_5__* %58, i32 %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %163

65:                                               ; preds = %44
  %66 = load i64, i64* %13, align 8
  %67 = icmp ne i64 %66, 32
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_5__* %69, i32 %72, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %163

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.xswdev, %struct.xswdev* %16, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @XSWDEV_VERSION, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_5__* %80, i32 %83, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %163

85:                                               ; preds = %74
  %86 = getelementptr inbounds %struct.xswdev, %struct.xswdev* %16, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @dmmax, align 8
  %89 = sub nsw i64 %87, %88
  store i64 %89, i64* %11, align 8
  %90 = load i32, i32* @unswdev, align 4
  %91 = load i32, i32* %8, align 4
  %92 = sub nsw i32 %91, 1
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %130

94:                                               ; preds = %85
  %95 = load %struct.kvm_swap*, %struct.kvm_swap** %7, align 8
  %96 = load i32, i32* @unswdev, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.kvm_swap, %struct.kvm_swap* %95, i64 %97
  %99 = call i32 @bzero(%struct.kvm_swap* %98, i32 24)
  %100 = load i64, i64* %11, align 8
  %101 = load %struct.kvm_swap*, %struct.kvm_swap** %7, align 8
  %102 = load i32, i32* @unswdev, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.kvm_swap, %struct.kvm_swap* %101, i64 %103
  %105 = getelementptr inbounds %struct.kvm_swap, %struct.kvm_swap* %104, i32 0, i32 1
  store i64 %100, i64* %105, align 8
  %106 = getelementptr inbounds %struct.xswdev, %struct.xswdev* %16, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.kvm_swap*, %struct.kvm_swap** %7, align 8
  %109 = load i32, i32* @unswdev, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.kvm_swap, %struct.kvm_swap* %108, i64 %110
  %112 = getelementptr inbounds %struct.kvm_swap, %struct.kvm_swap* %111, i32 0, i32 0
  store i64 %107, i64* %112, align 8
  %113 = getelementptr inbounds %struct.xswdev, %struct.xswdev* %16, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.kvm_swap*, %struct.kvm_swap** %7, align 8
  %116 = load i32, i32* @unswdev, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.kvm_swap, %struct.kvm_swap* %115, i64 %117
  %119 = getelementptr inbounds %struct.kvm_swap, %struct.kvm_swap* %118, i32 0, i32 3
  store i32 %114, i32* %119, align 4
  %120 = getelementptr inbounds %struct.xswdev, %struct.xswdev* %16, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.kvm_swap*, %struct.kvm_swap** %7, align 8
  %123 = load i32, i32* @unswdev, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.kvm_swap, %struct.kvm_swap* %122, i64 %124
  %126 = getelementptr inbounds %struct.kvm_swap, %struct.kvm_swap* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @GETSWDEVNAME(i32 %121, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %94, %85
  %131 = load i64, i64* %11, align 8
  %132 = getelementptr inbounds %struct.kvm_swap, %struct.kvm_swap* %17, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, %131
  store i64 %134, i64* %132, align 8
  %135 = getelementptr inbounds %struct.xswdev, %struct.xswdev* %16, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.kvm_swap, %struct.kvm_swap* %17, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, %136
  store i64 %139, i64* %137, align 8
  br label %140

140:                                              ; preds = %130
  %141 = load i32, i32* @unswdev, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* @unswdev, align 4
  br label %44

143:                                              ; preds = %56
  %144 = load i32, i32* @unswdev, align 4
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp sge i32 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load i32, i32* %8, align 4
  %150 = sub nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  br label %151

151:                                              ; preds = %148, %143
  %152 = load i32, i32* %10, align 4
  %153 = icmp sge i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %151
  %155 = load %struct.kvm_swap*, %struct.kvm_swap** %7, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.kvm_swap, %struct.kvm_swap* %155, i64 %157
  %159 = bitcast %struct.kvm_swap* %158 to i8*
  %160 = bitcast %struct.kvm_swap* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %159, i8* align 8 %160, i64 24, i1 false)
  br label %161

161:                                              ; preds = %154, %151
  %162 = load i32, i32* %10, align 4
  store i32 %162, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %163

163:                                              ; preds = %161, %79, %68, %57, %34, %27
  %164 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %164)
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GETSYSCTL(%struct.TYPE_5__*, i8*, i64) #2

declare dso_local i32 @sysctlnametomib(i8*, i32*, i64*) #2

declare dso_local i32 @_kvm_err(%struct.TYPE_5__*, i32, i8*, ...) #2

declare dso_local i32 @strerror(i64) #2

declare dso_local i32 @bzero(%struct.kvm_swap*, i32) #2

declare dso_local i32 @sysctl(i32*, i64, %struct.xswdev*, i64*, i32*, i32) #2

declare dso_local i32 @GETSWDEVNAME(i32, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

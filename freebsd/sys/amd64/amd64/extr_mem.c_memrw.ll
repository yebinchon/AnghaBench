; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_mem.c_memrw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_mem.c_memrw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i64, i64, i32, i32, %struct.iovec* }
%struct.iovec = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"memrw\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@DMAP_MIN_ADDRESS = common dso_local global i32 0, align 4
@dmaplimit = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memrw(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store %struct.uio* %1, %struct.uio** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.uio*, %struct.uio** %5, align 8
  %15 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  br label %17

17:                                               ; preds = %144, %50, %3
  %18 = load %struct.uio*, %struct.uio** %5, align 8
  %19 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %13, align 4
  %24 = icmp eq i32 %23, 0
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi i1 [ false, %17 ], [ %24, %22 ]
  br i1 %26, label %27, label %145

27:                                               ; preds = %25
  %28 = load %struct.uio*, %struct.uio** %5, align 8
  %29 = getelementptr inbounds %struct.uio, %struct.uio* %28, i32 0, i32 4
  %30 = load %struct.iovec*, %struct.iovec** %29, align 8
  store %struct.iovec* %30, %struct.iovec** %7, align 8
  %31 = load %struct.iovec*, %struct.iovec** %7, align 8
  %32 = getelementptr inbounds %struct.iovec, %struct.iovec* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %27
  %36 = load %struct.uio*, %struct.uio** %5, align 8
  %37 = getelementptr inbounds %struct.uio, %struct.uio* %36, i32 0, i32 4
  %38 = load %struct.iovec*, %struct.iovec** %37, align 8
  %39 = getelementptr inbounds %struct.iovec, %struct.iovec* %38, i32 1
  store %struct.iovec* %39, %struct.iovec** %37, align 8
  %40 = load %struct.uio*, %struct.uio** %5, align 8
  %41 = getelementptr inbounds %struct.uio, %struct.uio* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %41, align 8
  %44 = load %struct.uio*, %struct.uio** %5, align 8
  %45 = getelementptr inbounds %struct.uio, %struct.uio* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = call i32 @panic(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %35
  br label %17

51:                                               ; preds = %27
  %52 = load %struct.uio*, %struct.uio** %5, align 8
  %53 = getelementptr inbounds %struct.uio, %struct.uio* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %10, align 4
  %55 = load %struct.iovec*, %struct.iovec** %7, align 8
  %56 = getelementptr inbounds %struct.iovec, %struct.iovec* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PAGE_SIZE, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @PAGE_MASK, align 4
  %61 = and i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = sub nsw i64 %58, %62
  %64 = call i64 @ulmin(i64 %57, i64 %63)
  store i64 %64, i64* %12, align 8
  %65 = load %struct.cdev*, %struct.cdev** %4, align 8
  %66 = call i32 @dev2unit(%struct.cdev* %65)
  switch i32 %66, label %144 [
    i32 129, label %67
    i32 128, label %113
  ]

67:                                               ; preds = %51
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @DMAP_MIN_ADDRESS, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %67
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @DMAP_MIN_ADDRESS, align 4
  %74 = load i32, i32* @dmaplimit, align 4
  %75 = add nsw i32 %73, %74
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = load i64, i64* %12, align 8
  %82 = load %struct.uio*, %struct.uio** %5, align 8
  %83 = call i32 @uiomove(i8* %80, i64 %81, %struct.uio* %82)
  store i32 %83, i32* %13, align 4
  br label %144

84:                                               ; preds = %71, %67
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = load i64, i64* %12, align 8
  %89 = load %struct.uio*, %struct.uio** %5, align 8
  %90 = getelementptr inbounds %struct.uio, %struct.uio* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @UIO_READ, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %84
  %95 = load i32, i32* @VM_PROT_READ, align 4
  br label %98

96:                                               ; preds = %84
  %97 = load i32, i32* @VM_PROT_WRITE, align 4
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i32 [ %95, %94 ], [ %97, %96 ]
  %100 = call i32 @kernacc(i8* %87, i64 %88, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* @EFAULT, align 4
  store i32 %103, i32* %13, align 4
  br label %144

104:                                              ; preds = %98
  %105 = load i32, i32* @kernel_pmap, align 4
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @pmap_extract(i32 %105, i32 %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* @EFAULT, align 4
  store i32 %111, i32* %13, align 4
  br label %144

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %51, %112
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @dmaplimit, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %113
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @PHYS_TO_DMAP(i32 %118)
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to i8*
  %123 = load i64, i64* %12, align 8
  %124 = load %struct.uio*, %struct.uio** %5, align 8
  %125 = call i32 @uiomove(i8* %122, i64 %123, %struct.uio* %124)
  store i32 %125, i32* %13, align 4
  br label %144

126:                                              ; preds = %113
  %127 = load i32, i32* %10, align 4
  %128 = call i32 (...) @cpu_getmaxphyaddr()
  %129 = icmp sgt i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i32, i32* @EFAULT, align 4
  store i32 %131, i32* %13, align 4
  br label %144

132:                                              ; preds = %126
  %133 = load i32, i32* %10, align 4
  %134 = load i64, i64* @PAGE_SIZE, align 8
  %135 = call i8* @pmap_mapdev(i32 %133, i64 %134)
  store i8* %135, i8** %8, align 8
  %136 = load i8*, i8** %8, align 8
  %137 = load i64, i64* %12, align 8
  %138 = load %struct.uio*, %struct.uio** %5, align 8
  %139 = call i32 @uiomove(i8* %136, i64 %137, %struct.uio* %138)
  store i32 %139, i32* %13, align 4
  %140 = load i8*, i8** %8, align 8
  %141 = ptrtoint i8* %140 to i32
  %142 = load i64, i64* @PAGE_SIZE, align 8
  %143 = call i32 @pmap_unmapdev(i32 %141, i64 %142)
  br label %144

144:                                              ; preds = %51, %132, %130, %117, %110, %102, %77
  br label %17

145:                                              ; preds = %25
  %146 = load %struct.uio*, %struct.uio** %5, align 8
  %147 = getelementptr inbounds %struct.uio, %struct.uio* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %9, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  store i32 0, i32* %13, align 4
  br label %152

152:                                              ; preds = %151, %145
  %153 = load i32, i32* %13, align 4
  ret i32 %153
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @ulmin(i64, i64) #1

declare dso_local i32 @dev2unit(%struct.cdev*) #1

declare dso_local i32 @uiomove(i8*, i64, %struct.uio*) #1

declare dso_local i32 @kernacc(i8*, i64, i32) #1

declare dso_local i32 @pmap_extract(i32, i32) #1

declare dso_local i32 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @cpu_getmaxphyaddr(...) #1

declare dso_local i8* @pmap_mapdev(i32, i64) #1

declare dso_local i32 @pmap_unmapdev(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

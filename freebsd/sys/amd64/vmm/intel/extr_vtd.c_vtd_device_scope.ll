; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vtd.c_vtd_device_scope.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vtd.c_vtd_device_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.vtdmap = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i64, i64 }

@drhd_num = common dso_local global i32 0, align 4
@drhds = common dso_local global %struct.TYPE_8__** null, align 8
@vtdmaps = common dso_local global %struct.vtdmap** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vtdmap* (i32)* @vtd_device_scope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vtdmap* @vtd_device_scope(i32 %0) #0 {
  %2 = alloca %struct.vtdmap*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.vtdmap*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %133, %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @drhd_num, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %136

17:                                               ; preds = %13
  %18 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @drhds, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %18, i64 %20
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %10, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @VTD_DRHD_INCLUDE_PCI_ALL(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %17
  %29 = load %struct.vtdmap**, %struct.vtdmap*** @vtdmaps, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.vtdmap*, %struct.vtdmap** %29, i64 %31
  %33 = load %struct.vtdmap*, %struct.vtdmap** %32, align 8
  store %struct.vtdmap* %33, %struct.vtdmap** %9, align 8
  %34 = load %struct.vtdmap*, %struct.vtdmap** %9, align 8
  store %struct.vtdmap* %34, %struct.vtdmap** %2, align 8
  br label %137

35:                                               ; preds = %17
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %37 = bitcast %struct.TYPE_8__* %36 to i8*
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %37, i64 %42
  store i8* %43, i8** %7, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = sub i64 %48, 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %131, %79, %71, %35
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp ugt i64 %53, 16
  br i1 %54, label %55, label %132

55:                                               ; preds = %51
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = sub i64 0, %58
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  %61 = bitcast i8* %60 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %11, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %5, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %71 [
    i32 1, label %70
    i32 2, label %70
  ]

70:                                               ; preds = %55, %55
  br label %72

71:                                               ; preds = %55
  br label %51

72:                                               ; preds = %70
  %73 = load i32, i32* %3, align 4
  %74 = call i64 @PCI_RID2BUS(i32 %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %51

80:                                               ; preds = %72
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %82 = bitcast %struct.TYPE_9__* %81 to i8*
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %82, i64 %86
  store i8* %87, i8** %8, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = sub i64 %91, 16
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %123, %115, %80
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp uge i64 %96, 16
  br i1 %97, label %98, label %131

98:                                               ; preds = %94
  %99 = load i8*, i8** %8, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = sub i64 0, %101
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  %104 = bitcast i8* %103 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %104, %struct.TYPE_7__** %12, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = sub i64 %106, 16
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %3, align 4
  %110 = call i64 @PCI_RID2SLOT(i32 %109)
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %110, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %98
  br label %94

116:                                              ; preds = %98
  %117 = load i32, i32* %3, align 4
  %118 = call i64 @PCI_RID2FUNC(i32 %117)
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %118, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  br label %94

124:                                              ; preds = %116
  %125 = load %struct.vtdmap**, %struct.vtdmap*** @vtdmaps, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.vtdmap*, %struct.vtdmap** %125, i64 %127
  %129 = load %struct.vtdmap*, %struct.vtdmap** %128, align 8
  store %struct.vtdmap* %129, %struct.vtdmap** %9, align 8
  %130 = load %struct.vtdmap*, %struct.vtdmap** %9, align 8
  store %struct.vtdmap* %130, %struct.vtdmap** %2, align 8
  br label %137

131:                                              ; preds = %94
  br label %51

132:                                              ; preds = %51
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %4, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %4, align 4
  br label %13

136:                                              ; preds = %13
  store %struct.vtdmap* null, %struct.vtdmap** %2, align 8
  br label %137

137:                                              ; preds = %136, %124, %28
  %138 = load %struct.vtdmap*, %struct.vtdmap** %2, align 8
  ret %struct.vtdmap* %138
}

declare dso_local i64 @VTD_DRHD_INCLUDE_PCI_ALL(i32) #1

declare dso_local i64 @PCI_RID2BUS(i32) #1

declare dso_local i64 @PCI_RID2SLOT(i32) #1

declare dso_local i64 @PCI_RID2FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

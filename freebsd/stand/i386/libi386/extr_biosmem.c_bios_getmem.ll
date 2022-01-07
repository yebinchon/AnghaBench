; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosmem.c_bios_getmem.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosmem.c_bios_getmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32, i32, i8*, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }

@v86 = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@V86_FLAGS = common dso_local global i8* null, align 8
@SMAP_SIG = common dso_local global i32 0, align 4
@smap = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SMAP_TYPE_MEMORY = common dso_local global i64 0, align 8
@bios_basemem = common dso_local global i32 0, align 4
@B_BASEMEM_E820 = common dso_local global i32 0, align 4
@b_bios_probed = common dso_local global i32 0, align 4
@BQ_DISTRUST_E820_EXTMEM = common dso_local global i32 0, align 4
@bios_extmem = common dso_local global i32 0, align 4
@B_EXTMEM_E820 = common dso_local global i32 0, align 4
@high_heap_base = common dso_local global i32 0, align 4
@HEAP_MIN = common dso_local global i32 0, align 4
@high_heap_size = common dso_local global i32 0, align 4
@B_BASEMEM_12 = common dso_local global i32 0, align 4
@B_EXTMEM_E801 = common dso_local global i32 0, align 4
@B_EXTMEM_8800 = common dso_local global i32 0, align 4
@memtop_copyin = common dso_local global i32 0, align 4
@memtop = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bios_getmem() #0 {
  %1 = alloca i32, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 0), align 8
  br label %2

2:                                                ; preds = %88, %0
  %3 = load i8*, i8** @V86_FLAGS, align 8
  store i8* %3, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 5), align 8
  store i32 21, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 1), align 8
  store i32 59424, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 2), align 4
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 3), align 8
  %4 = load i32, i32* @SMAP_SIG, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 4), align 4
  %5 = call i32 @VTOPSEG(%struct.TYPE_6__* @smap)
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 8), align 8
  %6 = call i32 @VTOPOFF(%struct.TYPE_6__* @smap)
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 7), align 4
  %7 = call i32 (...) @v86int()
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 6), align 8
  %9 = call i64 @V86_CY(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 2), align 4
  %13 = load i32, i32* @SMAP_SIG, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %2
  br label %91

16:                                               ; preds = %11
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 0), align 8
  %18 = load i64, i64* @SMAP_TYPE_MEMORY, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 1), align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 2), align 4
  %25 = icmp sge i32 %24, 524288
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 2), align 4
  store i32 %27, i32* @bios_basemem, align 4
  %28 = load i32, i32* @B_BASEMEM_E820, align 4
  %29 = load i32, i32* @b_bios_probed, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* @b_bios_probed, align 4
  br label %31

31:                                               ; preds = %26, %23, %20, %16
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 0), align 8
  %33 = load i64, i64* @SMAP_TYPE_MEMORY, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 1), align 8
  %37 = icmp eq i32 %36, 1048576
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = call i32 (...) @bios_getquirks()
  %40 = load i32, i32* @BQ_DISTRUST_E820_EXTMEM, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 2), align 4
  store i32 %44, i32* @bios_extmem, align 4
  %45 = load i32, i32* @B_EXTMEM_E820, align 4
  %46 = load i32, i32* @b_bios_probed, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* @b_bios_probed, align 4
  br label %48

48:                                               ; preds = %43, %38, %35, %31
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 0), align 8
  %50 = load i64, i64* @SMAP_TYPE_MEMORY, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %87

52:                                               ; preds = %48
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 1), align 8
  %54 = icmp sgt i32 %53, 1048576
  br i1 %54, label %55, label %87

55:                                               ; preds = %52
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 1), align 8
  %57 = sext i32 %56 to i64
  %58 = icmp ult i64 %57, 4294967296
  br i1 %58, label %59, label %87

59:                                               ; preds = %55
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 2), align 4
  store i32 %60, i32* %1, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 1), align 8
  %62 = load i32, i32* %1, align 4
  %63 = add nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = icmp ugt i64 %64, 4294967296
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 1), align 8
  %68 = sext i32 %67 to i64
  %69 = sub i64 4294967296, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %1, align 4
  br label %71

71:                                               ; preds = %66, %59
  %72 = load i32, i32* @high_heap_base, align 4
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 1), align 8
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = load i32, i32* %1, align 4
  %77 = load i32, i32* @HEAP_MIN, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 1), align 8
  %81 = load i32, i32* %1, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32, i32* @HEAP_MIN, align 4
  %84 = sub nsw i32 %82, %83
  store i32 %84, i32* @high_heap_base, align 4
  %85 = load i32, i32* @HEAP_MIN, align 4
  store i32 %85, i32* @high_heap_size, align 4
  br label %86

86:                                               ; preds = %79, %75, %71
  br label %87

87:                                               ; preds = %86, %55, %52, %48
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 0), align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %2, label %91

91:                                               ; preds = %88, %15
  %92 = load i32, i32* @bios_basemem, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 5), align 8
  store i32 18, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 1), align 8
  %95 = call i32 (...) @v86int()
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 2), align 4
  %97 = and i32 %96, 65535
  %98 = mul nsw i32 %97, 1024
  store i32 %98, i32* @bios_basemem, align 4
  %99 = load i32, i32* @B_BASEMEM_12, align 4
  %100 = load i32, i32* @b_bios_probed, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* @b_bios_probed, align 4
  br label %102

102:                                              ; preds = %94, %91
  %103 = load i32, i32* @bios_extmem, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %133

105:                                              ; preds = %102
  %106 = load i8*, i8** @V86_FLAGS, align 8
  store i8* %106, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 5), align 8
  store i32 21, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 1), align 8
  store i32 59393, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 2), align 4
  %107 = call i32 (...) @v86int()
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 6), align 8
  %109 = call i64 @V86_CY(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %132, label %111

111:                                              ; preds = %105
  store i32 0, i32* @high_heap_size, align 4
  store i32 0, i32* @high_heap_base, align 4
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 3), align 8
  %113 = and i32 %112, 65535
  %114 = mul nsw i32 %113, 1024
  store i32 %114, i32* @bios_extmem, align 4
  %115 = load i32, i32* @bios_extmem, align 4
  %116 = icmp eq i32 %115, 15728640
  br i1 %116, label %117, label %124

117:                                              ; preds = %111
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 4), align 4
  %119 = and i32 %118, 65535
  %120 = mul nsw i32 %119, 64
  %121 = mul nsw i32 %120, 1024
  %122 = load i32, i32* @bios_extmem, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* @bios_extmem, align 4
  br label %124

124:                                              ; preds = %117, %111
  %125 = load i32, i32* @bios_extmem, align 4
  %126 = icmp sgt i32 %125, 1072693248
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store i32 1072693248, i32* @bios_extmem, align 4
  br label %128

128:                                              ; preds = %127, %124
  %129 = load i32, i32* @B_EXTMEM_E801, align 4
  %130 = load i32, i32* @b_bios_probed, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* @b_bios_probed, align 4
  br label %132

132:                                              ; preds = %128, %105
  br label %133

133:                                              ; preds = %132, %102
  %134 = load i32, i32* @bios_extmem, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %133
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 5), align 8
  store i32 21, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 1), align 8
  store i32 34816, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 2), align 4
  %137 = call i32 (...) @v86int()
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 2), align 4
  %139 = and i32 %138, 65535
  %140 = mul nsw i32 %139, 1024
  store i32 %140, i32* @bios_extmem, align 4
  %141 = load i32, i32* @B_EXTMEM_8800, align 4
  %142 = load i32, i32* @b_bios_probed, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* @b_bios_probed, align 4
  br label %144

144:                                              ; preds = %136, %133
  %145 = load i32, i32* @high_heap_size, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = load i32, i32* @high_heap_base, align 4
  store i32 %148, i32* @memtop_copyin, align 4
  store i32 %148, i32* @memtop, align 4
  br label %152

149:                                              ; preds = %144
  %150 = load i32, i32* @bios_extmem, align 4
  %151 = add nsw i32 1048576, %150
  store i32 %151, i32* @memtop_copyin, align 4
  store i32 %151, i32* @memtop, align 4
  br label %152

152:                                              ; preds = %149, %147
  %153 = load i32, i32* @bios_extmem, align 4
  %154 = load i32, i32* @HEAP_MIN, align 4
  %155 = icmp sge i32 %153, %154
  br i1 %155, label %156, label %166

156:                                              ; preds = %152
  %157 = load i32, i32* @high_heap_size, align 4
  %158 = load i32, i32* @HEAP_MIN, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %156
  %161 = load i32, i32* @HEAP_MIN, align 4
  store i32 %161, i32* @high_heap_size, align 4
  %162 = load i32, i32* @memtop, align 4
  %163 = load i32, i32* @HEAP_MIN, align 4
  %164 = sub nsw i32 %162, %163
  store i32 %164, i32* @high_heap_base, align 4
  %165 = load i32, i32* @high_heap_base, align 4
  store i32 %165, i32* @memtop_copyin, align 4
  store i32 %165, i32* @memtop, align 4
  br label %166

166:                                              ; preds = %160, %156, %152
  ret void
}

declare dso_local i32 @VTOPSEG(%struct.TYPE_6__*) #1

declare dso_local i32 @VTOPOFF(%struct.TYPE_6__*) #1

declare dso_local i32 @v86int(...) #1

declare dso_local i64 @V86_CY(i32) #1

declare dso_local i32 @bios_getquirks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

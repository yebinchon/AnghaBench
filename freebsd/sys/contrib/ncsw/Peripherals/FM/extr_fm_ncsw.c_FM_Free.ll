; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_FM_Free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_FM_Free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64*, i64, i64, %struct.TYPE_7__*, i32, %struct.TYPE_7__*, %struct.TYPE_6__, i64, %struct.TYPE_7__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.fman_rg = type { i32, i32, i32, i32 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@NCSW_MASTER_ID = common dso_local global i64 0, align 8
@E_OK = common dso_local global i32 0, align 4
@NO_IRQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FM_Free(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.fman_rg, align 4
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = inttoptr i64 %6 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %4, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = load i32, i32* @E_INVALID_HANDLE, align 4
  %10 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_7__* %8, i32 %9)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 15
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.fman_rg, %struct.fman_rg* %5, i32 0, i32 3
  store i32 %13, i32* %14, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 14
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.fman_rg, %struct.fman_rg* %5, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 13
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.fman_rg, %struct.fman_rg* %5, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 12
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.fman_rg, %struct.fman_rg* %5, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NCSW_MASTER_ID, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = call i32 @XX_IpcUnregisterMsgHandler(i64* %42)
  br label %44

44:                                               ; preds = %39, %32
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = call i32 @XX_Free(%struct.TYPE_7__* %52)
  br label %54

54:                                               ; preds = %49, %44
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = call i32 @XX_Free(%struct.TYPE_7__* %55)
  %57 = load i32, i32* @E_OK, align 4
  store i32 %57, i32* %2, align 4
  br label %180

58:                                               ; preds = %1
  %59 = call i32 @fman_free_resources(%struct.fman_rg* %5)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @NCSW_MASTER_ID, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %58
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = call i32 @XX_IpcUnregisterMsgHandler(i64* %75)
  br label %77

77:                                               ; preds = %72, %65, %58
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = icmp ne %struct.TYPE_7__* %80, null
  br i1 %81, label %82, label %125

82:                                               ; preds = %77
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @NO_IRQ, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %82
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @XX_DisableIntr(i64 %95)
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @XX_FreeIntr(i64 %101)
  br label %103

103:                                              ; preds = %90, %82
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @NO_IRQ, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %103
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @XX_DisableIntr(i64 %116)
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 4
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @XX_FreeIntr(i64 %122)
  br label %124

124:                                              ; preds = %111, %103
  br label %125

125:                                              ; preds = %124, %77
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 8
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 8
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @XX_FreeSpinlock(i64 %133)
  br label %135

135:                                              ; preds = %130, %125
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 6
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = icmp ne %struct.TYPE_7__* %138, null
  br i1 %139, label %140, label %159

140:                                              ; preds = %135
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 7
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = icmp ne %struct.TYPE_7__* %144, null
  br i1 %145, label %146, label %152

146:                                              ; preds = %140
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 7
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %149, align 8
  %151 = call i32 @XX_Free(%struct.TYPE_7__* %150)
  br label %152

152:                                              ; preds = %146, %140
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 6
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = call i32 @XX_Free(%struct.TYPE_7__* %155)
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 6
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %158, align 8
  br label %159

159:                                              ; preds = %152, %135
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %161 = call i32 @FreeInitResources(%struct.TYPE_7__* %160)
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %176, label %166

166:                                              ; preds = %159
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 4
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %168, align 8
  %170 = icmp ne %struct.TYPE_7__* %169, null
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 4
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %173, align 8
  %175 = call i32 @XX_Free(%struct.TYPE_7__* %174)
  br label %176

176:                                              ; preds = %171, %166, %159
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %178 = call i32 @XX_Free(%struct.TYPE_7__* %177)
  %179 = load i32, i32* @E_OK, align 4
  store i32 %179, i32* %2, align 4
  br label %180

180:                                              ; preds = %176, %54
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @XX_IpcUnregisterMsgHandler(i64*) #1

declare dso_local i32 @XX_Free(%struct.TYPE_7__*) #1

declare dso_local i32 @fman_free_resources(%struct.fman_rg*) #1

declare dso_local i32 @XX_DisableIntr(i64) #1

declare dso_local i32 @XX_FreeIntr(i64) #1

declare dso_local i32 @XX_FreeSpinlock(i64) #1

declare dso_local i32 @FreeInitResources(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_localbus.c_fdt_localbus_devmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_localbus.c_fdt_localbus_devmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.TYPE_4__ = type { i32, i64, i8*, i32 }
%struct.devmap_entry = type { i64, i8*, i32 }

@MV_LOCALBUS_MAX_BANKS = common dso_local global i32 0, align 4
@MV_LOCALBUS_MAX_BANK_CELLS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@localbus_virtmap = common dso_local global %struct.TYPE_3__* null, align 8
@localbus_banks = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_localbus_devmap(i32 %0, %struct.devmap_entry* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.devmap_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.devmap_entry* %1, %struct.devmap_entry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %26 = load i32, i32* @MV_LOCALBUS_MAX_BANKS, align 4
  %27 = load i32, i32* @MV_LOCALBUS_MAX_BANK_CELLS, align 4
  %28 = mul nsw i32 %26, %27
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %10, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %11, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @fdt_addrsize_cells(i32 %32, i32* %18, i32* %19)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %5, align 4
  store i32 1, i32* %25, align 4
  br label %240

37:                                               ; preds = %4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @fdt_parent_addr_cells(i32 %38)
  store i32 %39, i32* %20, align 4
  %40 = load i32, i32* %20, align 4
  %41 = icmp sgt i32 %40, 2
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @ERANGE, align 4
  store i32 %43, i32* %5, align 4
  store i32 1, i32* %25, align 4
  br label %240

44:                                               ; preds = %37
  %45 = load i32, i32* %18, align 4
  %46 = load i32, i32* %20, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* %19, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @MV_LOCALBUS_MAX_BANK_CELLS, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* @ERANGE, align 4
  store i32 %54, i32* %5, align 4
  store i32 1, i32* %25, align 4
  br label %240

55:                                               ; preds = %44
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %6, align 4
  %61 = mul nuw i64 4, %29
  %62 = trunc i64 %61 to i32
  %63 = call i32 @OF_getprop(i32 %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %31, i32 %62)
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %17, align 4
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %5, align 4
  store i32 1, i32* %25, align 4
  br label %240

68:                                               ; preds = %55
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* %13, align 4
  %71 = sdiv i32 %69, %70
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @MIN(i32 %72, i32 %73)
  store i32 %74, i32* %17, align 4
  %75 = getelementptr inbounds i32, i32* %31, i64 0
  store i32* %75, i32** %12, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %22, align 4
  br label %76

76:                                               ; preds = %234, %68
  %77 = load i32, i32* %22, align 4
  %78 = load i32, i32* %17, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %237

80:                                               ; preds = %76
  %81 = load i32*, i32** %12, align 8
  %82 = bitcast i32* %81 to i8*
  %83 = call i8* @fdt_data_get(i8* %82, i32 1)
  %84 = ptrtoint i8* %83 to i32
  store i32 %84, i32* %14, align 4
  %85 = load i32*, i32** %12, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  store i32* %86, i32** %12, align 8
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @MV_LOCALBUS_MAX_BANKS, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %80
  %91 = load i32, i32* %18, align 4
  %92 = sub nsw i32 %91, 1
  %93 = load i32, i32* %20, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32, i32* %19, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32*, i32** %12, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32* %99, i32** %12, align 8
  br label %234

100:                                              ; preds = %80
  store i32 -1, i32* %21, align 4
  store i32 0, i32* %24, align 4
  br label %101

101:                                              ; preds = %122, %100
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** @localbus_virtmap, align 8
  %103 = load i32, i32* %24, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp sge i64 %107, 0
  br i1 %108, label %109, label %125

109:                                              ; preds = %101
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** @localbus_virtmap, align 8
  %111 = load i32, i32* %24, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = icmp eq i64 %115, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %109
  %120 = load i32, i32* %24, align 4
  store i32 %120, i32* %21, align 4
  br label %125

121:                                              ; preds = %109
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %24, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %24, align 4
  br label %101

125:                                              ; preds = %119, %101
  %126 = load i32, i32* %21, align 4
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %128, label %138

128:                                              ; preds = %125
  %129 = load i32, i32* %18, align 4
  %130 = sub nsw i32 %129, 1
  %131 = load i32, i32* %20, align 4
  %132 = add nsw i32 %130, %131
  %133 = load i32, i32* %19, align 4
  %134 = add nsw i32 %132, %133
  %135 = load i32*, i32** %12, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  store i32* %137, i32** %12, align 8
  br label %234

138:                                              ; preds = %125
  %139 = load i32, i32* %18, align 4
  %140 = sub nsw i32 %139, 1
  %141 = load i32*, i32** %12, align 8
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  store i32* %143, i32** %12, align 8
  %144 = load i32*, i32** %12, align 8
  %145 = bitcast i32* %144 to i8*
  %146 = load i32, i32* %20, align 4
  %147 = call i8* @fdt_data_get(i8* %145, i32 %146)
  store i8* %147, i8** %15, align 8
  %148 = load i32, i32* %20, align 4
  %149 = load i32*, i32** %12, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  store i32* %151, i32** %12, align 8
  %152 = load i32*, i32** %12, align 8
  %153 = bitcast i32* %152 to i8*
  %154 = load i32, i32* %19, align 4
  %155 = call i8* @fdt_data_get(i8* %153, i32 %154)
  %156 = ptrtoint i8* %155 to i64
  store i64 %156, i64* %16, align 8
  %157 = load i32, i32* %19, align 4
  %158 = load i32*, i32** %12, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  store i32* %160, i32** %12, align 8
  %161 = load i64, i64* %16, align 8
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** @localbus_virtmap, align 8
  %163 = load i32, i32* %21, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp sgt i64 %161, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %138
  br label %234

170:                                              ; preds = %138
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** @localbus_virtmap, align 8
  %172 = load i32, i32* %21, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.devmap_entry*, %struct.devmap_entry** %7, align 8
  %178 = load i32, i32* %23, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %177, i64 %179
  %181 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %180, i32 0, i32 2
  store i32 %176, i32* %181, align 8
  %182 = load i8*, i8** %15, align 8
  %183 = load %struct.devmap_entry*, %struct.devmap_entry** %7, align 8
  %184 = load i32, i32* %23, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %183, i64 %185
  %187 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %186, i32 0, i32 1
  store i8* %182, i8** %187, align 8
  %188 = load i64, i64* %16, align 8
  %189 = load %struct.devmap_entry*, %struct.devmap_entry** %7, align 8
  %190 = load i32, i32* %23, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %189, i64 %191
  %193 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %192, i32 0, i32 0
  store i64 %188, i64* %193, align 8
  %194 = load %struct.devmap_entry*, %struct.devmap_entry** %7, align 8
  %195 = load i32, i32* %23, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %194, i64 %196
  %198 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** @localbus_banks, align 8
  %201 = load i32, i32* %14, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 3
  store i32 %199, i32* %204, align 8
  %205 = load %struct.devmap_entry*, %struct.devmap_entry** %7, align 8
  %206 = load i32, i32* %23, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %205, i64 %207
  %209 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %208, i32 0, i32 1
  %210 = load i8*, i8** %209, align 8
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** @localbus_banks, align 8
  %212 = load i32, i32* %14, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 2
  store i8* %210, i8** %215, align 8
  %216 = load %struct.devmap_entry*, %struct.devmap_entry** %7, align 8
  %217 = load i32, i32* %23, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %216, i64 %218
  %220 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** @localbus_banks, align 8
  %223 = load i32, i32* %14, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 1
  store i64 %221, i64* %226, align 8
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** @localbus_banks, align 8
  %228 = load i32, i32* %14, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  store i32 1, i32* %231, align 8
  %232 = load i32, i32* %23, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %23, align 4
  br label %234

234:                                              ; preds = %170, %169, %128, %90
  %235 = load i32, i32* %22, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %22, align 4
  br label %76

237:                                              ; preds = %76
  %238 = load i32, i32* %23, align 4
  %239 = load i32*, i32** %9, align 8
  store i32 %238, i32* %239, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %25, align 4
  br label %240

240:                                              ; preds = %237, %66, %53, %42, %35
  %241 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %241)
  %242 = load i32, i32* %5, align 4
  ret i32 %242
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @fdt_addrsize_cells(i32, i32*, i32*) #2

declare dso_local i32 @fdt_parent_addr_cells(i32) #2

declare dso_local i32 @OF_getprop(i32, i8*, i32*, i32) #2

declare dso_local i32 @MIN(i32, i32) #2

declare dso_local i8* @fdt_data_get(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

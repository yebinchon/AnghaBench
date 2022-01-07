; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pci_ranges_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pci_ranges_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_pci_range = type { i32, i32, i32 }

@FDT_RANGES_CELLS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PCI_SPACE_LEN = common dso_local global i32 0, align 4
@fdt_immr_va = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mv_pci_range*, %struct.mv_pci_range*)* @mv_pci_ranges_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_pci_ranges_decode(i32 %0, %struct.mv_pci_range* %1, %struct.mv_pci_range* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mv_pci_range*, align 8
  %7 = alloca %struct.mv_pci_range*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mv_pci_range*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.mv_pci_range* %1, %struct.mv_pci_range** %6, align 8
  store %struct.mv_pci_range* %2, %struct.mv_pci_range** %7, align 8
  %27 = load i32, i32* @FDT_RANGES_CELLS, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %8, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %9, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @fdt_addrsize_cells(i32 %31, i32* %11, i32* %12)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %202

36:                                               ; preds = %3
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 3
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 2
  br i1 %41, label %42, label %44

42:                                               ; preds = %39, %36
  %43 = load i32, i32* @ERANGE, align 4
  store i32 %43, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %202

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @fdt_parent_addr_cells(i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp sgt i32 %47, 3
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @ERANGE, align 4
  store i32 %50, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %202

51:                                               ; preds = %44
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @OF_getproplen(i32 %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %53, i32* %23, align 4
  %54 = load i32, i32* %23, align 4
  %55 = sext i32 %54 to i64
  %56 = mul nuw i64 4, %28
  %57 = icmp ugt i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @ENOMEM, align 4
  store i32 %59, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %202

60:                                               ; preds = %51
  %61 = load i32, i32* %5, align 4
  %62 = mul nuw i64 4, %28
  %63 = trunc i64 %62 to i32
  %64 = call i64 @OF_getprop(i32 %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %30, i32 %63)
  %65 = icmp sle i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %202

68:                                               ; preds = %60
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = mul i64 4, %74
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %23, align 4
  %78 = load i32, i32* %18, align 4
  %79 = sdiv i32 %77, %78
  store i32 %79, i32* %19, align 4
  %80 = load %struct.mv_pci_range*, %struct.mv_pci_range** %6, align 8
  %81 = call i32 @bzero(%struct.mv_pci_range* %80, i32 12)
  %82 = load %struct.mv_pci_range*, %struct.mv_pci_range** %7, align 8
  %83 = call i32 @bzero(%struct.mv_pci_range* %82, i32 12)
  %84 = getelementptr inbounds i32, i32* %30, i64 0
  store i32* %84, i32** %14, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %20, align 4
  br label %85

85:                                               ; preds = %196, %68
  %86 = load i32, i32* %20, align 4
  %87 = load i32, i32* %19, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %199

89:                                               ; preds = %85
  %90 = load i32*, i32** %14, align 8
  %91 = bitcast i32* %90 to i8*
  %92 = call i8* @fdt_data_get(i8* %91, i32 1)
  %93 = ptrtoint i8* %92 to i32
  store i32 %93, i32* %15, align 4
  %94 = load i32*, i32** %14, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %14, align 8
  %96 = load i32*, i32** %14, align 8
  %97 = bitcast i32* %96 to i8*
  %98 = call i8* @fdt_data_get(i8* %97, i32 1)
  %99 = ptrtoint i8* %98 to i32
  store i32 %99, i32* %16, align 4
  %100 = load i32*, i32** %14, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %14, align 8
  %102 = load i32*, i32** %14, align 8
  %103 = bitcast i32* %102 to i8*
  %104 = call i8* @fdt_data_get(i8* %103, i32 1)
  %105 = ptrtoint i8* %104 to i32
  store i32 %105, i32* %17, align 4
  %106 = load i32*, i32** %14, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %14, align 8
  %108 = load i32*, i32** %14, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = bitcast i32* %109 to i8*
  %111 = call i8* @fdt_data_get(i8* %110, i32 1)
  %112 = ptrtoint i8* %111 to i32
  store i32 %112, i32* %24, align 4
  %113 = load i32, i32* %15, align 4
  %114 = and i32 %113, 33554432
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %89
  %117 = load %struct.mv_pci_range*, %struct.mv_pci_range** %7, align 8
  store %struct.mv_pci_range* %117, %struct.mv_pci_range** %10, align 8
  store i32 0, i32* %25, align 4
  br label %127

118:                                              ; preds = %89
  %119 = load i32, i32* %15, align 4
  %120 = and i32 %119, 16777216
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load %struct.mv_pci_range*, %struct.mv_pci_range** %6, align 8
  store %struct.mv_pci_range* %123, %struct.mv_pci_range** %10, align 8
  store i32 1, i32* %25, align 4
  br label %126

124:                                              ; preds = %118
  %125 = load i32, i32* @ERANGE, align 4
  store i32 %125, i32* %21, align 4
  br label %200

126:                                              ; preds = %122
  br label %127

127:                                              ; preds = %126, %116
  %128 = load i32, i32* %13, align 4
  %129 = icmp eq i32 %128, 3
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  store i32 2, i32* %22, align 4
  %131 = load i32, i32* %22, align 4
  %132 = load i32*, i32** %14, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32* %134, i32** %14, align 8
  br label %135

135:                                              ; preds = %130, %127
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %22, align 4
  %138 = sub nsw i32 %136, %137
  %139 = icmp sgt i32 %138, 2
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = load i32, i32* @ERANGE, align 4
  store i32 %141, i32* %21, align 4
  br label %200

142:                                              ; preds = %135
  %143 = load i32*, i32** %14, align 8
  %144 = bitcast i32* %143 to i8*
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %22, align 4
  %147 = sub nsw i32 %145, %146
  %148 = call i8* @fdt_data_get(i8* %144, i32 %147)
  %149 = ptrtoint i8* %148 to i32
  %150 = load %struct.mv_pci_range*, %struct.mv_pci_range** %10, align 8
  %151 = getelementptr inbounds %struct.mv_pci_range, %struct.mv_pci_range* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* %22, align 4
  %154 = sub nsw i32 %152, %153
  %155 = load i32*, i32** %14, align 8
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  store i32* %157, i32** %14, align 8
  %158 = load i32, i32* %12, align 4
  %159 = icmp sgt i32 %158, 2
  br i1 %159, label %160, label %162

160:                                              ; preds = %142
  %161 = load i32, i32* @ERANGE, align 4
  store i32 %161, i32* %21, align 4
  br label %200

162:                                              ; preds = %142
  %163 = load i32*, i32** %14, align 8
  %164 = bitcast i32* %163 to i8*
  %165 = load i32, i32* %12, align 4
  %166 = call i8* @fdt_data_get(i8* %164, i32 %165)
  %167 = ptrtoint i8* %166 to i32
  %168 = load %struct.mv_pci_range*, %struct.mv_pci_range** %10, align 8
  %169 = getelementptr inbounds %struct.mv_pci_range, %struct.mv_pci_range* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* %12, align 4
  %171 = load i32*, i32** %14, align 8
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  store i32* %173, i32** %14, align 8
  %174 = load i32, i32* %17, align 4
  %175 = load %struct.mv_pci_range*, %struct.mv_pci_range** %10, align 8
  %176 = getelementptr inbounds %struct.mv_pci_range, %struct.mv_pci_range* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 4
  %177 = load %struct.mv_pci_range*, %struct.mv_pci_range** %10, align 8
  %178 = getelementptr inbounds %struct.mv_pci_range, %struct.mv_pci_range* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %195

181:                                              ; preds = %162
  %182 = load i32, i32* @PCI_SPACE_LEN, align 4
  %183 = load %struct.mv_pci_range*, %struct.mv_pci_range** %10, align 8
  %184 = getelementptr inbounds %struct.mv_pci_range, %struct.mv_pci_range* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  %185 = load i32, i32* @fdt_immr_va, align 4
  %186 = load i32, i32* @PCI_SPACE_LEN, align 4
  %187 = load i32, i32* %24, align 4
  %188 = mul nsw i32 2, %187
  %189 = load i32, i32* %25, align 4
  %190 = add nsw i32 %188, %189
  %191 = mul nsw i32 %186, %190
  %192 = add nsw i32 %185, %191
  %193 = load %struct.mv_pci_range*, %struct.mv_pci_range** %10, align 8
  %194 = getelementptr inbounds %struct.mv_pci_range, %struct.mv_pci_range* %193, i32 0, i32 0
  store i32 %192, i32* %194, align 4
  br label %195

195:                                              ; preds = %181, %162
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %20, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %20, align 4
  br label %85

199:                                              ; preds = %85
  store i32 0, i32* %21, align 4
  br label %200

200:                                              ; preds = %199, %160, %140, %124
  %201 = load i32, i32* %21, align 4
  store i32 %201, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %202

202:                                              ; preds = %200, %66, %58, %49, %42, %34
  %203 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %203)
  %204 = load i32, i32* %4, align 4
  ret i32 %204
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @fdt_addrsize_cells(i32, i32*, i32*) #2

declare dso_local i32 @fdt_parent_addr_cells(i32) #2

declare dso_local i32 @OF_getproplen(i32, i8*) #2

declare dso_local i64 @OF_getprop(i32, i8*, i32*, i32) #2

declare dso_local i32 @bzero(%struct.mv_pci_range*, i32) #2

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

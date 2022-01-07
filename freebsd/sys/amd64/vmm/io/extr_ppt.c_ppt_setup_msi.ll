; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_ppt.c_ppt_setup_msi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_ppt.c_ppt_setup_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.pptdev = type { %struct.TYPE_3__, i32, %struct.vm* }
%struct.TYPE_3__ = type { i32, i32, i32**, %struct.TYPE_4__*, i32** }
%struct.TYPE_4__ = type { i8*, i8*, %struct.pptdev* }

@MAX_MSIMSGS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@pptintr = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ppt_setup_msi(%struct.vm* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.vm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.pptdev*, align 8
  store %struct.vm* %0, %struct.vm** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %8
  %29 = load i32, i32* %17, align 4
  %30 = load i32, i32* @MAX_MSIMSGS, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28, %8
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %9, align 4
  br label %227

34:                                               ; preds = %28
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %14, align 4
  %38 = call %struct.pptdev* @ppt_find(i32 %35, i32 %36, i32 %37)
  store %struct.pptdev* %38, %struct.pptdev** %25, align 8
  %39 = load %struct.pptdev*, %struct.pptdev** %25, align 8
  %40 = icmp eq %struct.pptdev* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOENT, align 4
  store i32 %42, i32* %9, align 4
  br label %227

43:                                               ; preds = %34
  %44 = load %struct.pptdev*, %struct.pptdev** %25, align 8
  %45 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %44, i32 0, i32 2
  %46 = load %struct.vm*, %struct.vm** %45, align 8
  %47 = load %struct.vm*, %struct.vm** %10, align 8
  %48 = icmp ne %struct.vm* %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @EBUSY, align 4
  store i32 %50, i32* %9, align 4
  br label %227

51:                                               ; preds = %43
  %52 = load %struct.pptdev*, %struct.pptdev** %25, align 8
  %53 = call i32 @ppt_teardown_msi(%struct.pptdev* %52)
  %54 = load i32, i32* %17, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 0, i32* %9, align 4
  br label %227

57:                                               ; preds = %51
  %58 = load i32, i32* @RF_ACTIVE, align 4
  store i32 %58, i32* %20, align 4
  %59 = load %struct.pptdev*, %struct.pptdev** %25, align 8
  %60 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @pci_msi_count(i32 %61)
  store i32 %62, i32* %21, align 4
  %63 = load i32, i32* %21, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  store i32 0, i32* %22, align 4
  store i32 1, i32* %21, align 4
  %66 = load i32, i32* @RF_SHAREABLE, align 4
  %67 = load i32, i32* %20, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %20, align 4
  br label %70

69:                                               ; preds = %57
  store i32 1, i32* %22, align 4
  br label %70

70:                                               ; preds = %69, %65
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %21, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %9, align 4
  br label %227

76:                                               ; preds = %70
  %77 = load i32, i32* %22, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %102

79:                                               ; preds = %76
  %80 = load i32, i32* %17, align 4
  store i32 %80, i32* %24, align 4
  %81 = load %struct.pptdev*, %struct.pptdev** %25, align 8
  %82 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @pci_alloc_msi(i32 %83, i32* %24)
  store i32 %84, i32* %23, align 4
  %85 = load i32, i32* %23, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i32, i32* %23, align 4
  store i32 %88, i32* %9, align 4
  br label %227

89:                                               ; preds = %79
  %90 = load i32, i32* %24, align 4
  %91 = load i32, i32* %17, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load %struct.pptdev*, %struct.pptdev** %25, align 8
  %95 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @pci_release_msi(i32 %96)
  %98 = load i32, i32* @ENOSPC, align 4
  store i32 %98, i32* %9, align 4
  br label %227

99:                                               ; preds = %89
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %101, %76
  %103 = load i32, i32* %22, align 4
  %104 = load %struct.pptdev*, %struct.pptdev** %25, align 8
  %105 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  store i32 0, i32* %18, align 4
  br label %107

107:                                              ; preds = %215, %102
  %108 = load i32, i32* %18, align 4
  %109 = load i32, i32* %17, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %218

111:                                              ; preds = %107
  %112 = load i32, i32* %18, align 4
  %113 = add nsw i32 %112, 1
  %114 = load %struct.pptdev*, %struct.pptdev** %25, align 8
  %115 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 4
  %117 = load %struct.pptdev*, %struct.pptdev** %25, align 8
  %118 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  %120 = load i32**, i32*** %119, align 8
  %121 = load i32, i32* %18, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %120, i64 %122
  store i32* null, i32** %123, align 8
  %124 = load i32, i32* %22, align 4
  %125 = load i32, i32* %18, align 4
  %126 = add nsw i32 %124, %125
  store i32 %126, i32* %19, align 4
  %127 = load %struct.pptdev*, %struct.pptdev** %25, align 8
  %128 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @SYS_RES_IRQ, align 4
  %131 = load i32, i32* %20, align 4
  %132 = call i32* @bus_alloc_resource_any(i32 %129, i32 %130, i32* %19, i32 %131)
  %133 = load %struct.pptdev*, %struct.pptdev** %25, align 8
  %134 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 4
  %136 = load i32**, i32*** %135, align 8
  %137 = load i32, i32* %18, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  store i32* %132, i32** %139, align 8
  %140 = load %struct.pptdev*, %struct.pptdev** %25, align 8
  %141 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 4
  %143 = load i32**, i32*** %142, align 8
  %144 = load i32, i32* %18, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32*, i32** %143, i64 %145
  %147 = load i32*, i32** %146, align 8
  %148 = icmp eq i32* %147, null
  br i1 %148, label %149, label %150

149:                                              ; preds = %111
  br label %218

150:                                              ; preds = %111
  %151 = load %struct.pptdev*, %struct.pptdev** %25, align 8
  %152 = load %struct.pptdev*, %struct.pptdev** %25, align 8
  %153 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 3
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = load i32, i32* %18, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 2
  store %struct.pptdev* %151, %struct.pptdev** %159, align 8
  %160 = load i8*, i8** %15, align 8
  %161 = load %struct.pptdev*, %struct.pptdev** %25, align 8
  %162 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = load i32, i32* %18, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 1
  store i8* %160, i8** %168, align 8
  %169 = load i8*, i8** %16, align 8
  %170 = load i32, i32* %18, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr i8, i8* %169, i64 %171
  %173 = load %struct.pptdev*, %struct.pptdev** %25, align 8
  %174 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 3
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = load i32, i32* %18, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  store i8* %172, i8** %180, align 8
  %181 = load %struct.pptdev*, %struct.pptdev** %25, align 8
  %182 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.pptdev*, %struct.pptdev** %25, align 8
  %185 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 4
  %187 = load i32**, i32*** %186, align 8
  %188 = load i32, i32* %18, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32*, i32** %187, i64 %189
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* @INTR_TYPE_NET, align 4
  %193 = load i32, i32* @INTR_MPSAFE, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* @pptintr, align 4
  %196 = load %struct.pptdev*, %struct.pptdev** %25, align 8
  %197 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 3
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = load i32, i32* %18, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i64 %201
  %203 = load %struct.pptdev*, %struct.pptdev** %25, align 8
  %204 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 2
  %206 = load i32**, i32*** %205, align 8
  %207 = load i32, i32* %18, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32*, i32** %206, i64 %208
  %210 = call i32 @bus_setup_intr(i32 %183, i32* %191, i32 %194, i32 %195, i32* null, %struct.TYPE_4__* %202, i32** %209)
  store i32 %210, i32* %23, align 4
  %211 = load i32, i32* %23, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %150
  br label %218

214:                                              ; preds = %150
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %18, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %18, align 4
  br label %107

218:                                              ; preds = %213, %149, %107
  %219 = load i32, i32* %18, align 4
  %220 = load i32, i32* %17, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %226

222:                                              ; preds = %218
  %223 = load %struct.pptdev*, %struct.pptdev** %25, align 8
  %224 = call i32 @ppt_teardown_msi(%struct.pptdev* %223)
  %225 = load i32, i32* @ENXIO, align 4
  store i32 %225, i32* %9, align 4
  br label %227

226:                                              ; preds = %218
  store i32 0, i32* %9, align 4
  br label %227

227:                                              ; preds = %226, %222, %93, %87, %74, %56, %49, %41, %32
  %228 = load i32, i32* %9, align 4
  ret i32 %228
}

declare dso_local %struct.pptdev* @ppt_find(i32, i32, i32) #1

declare dso_local i32 @ppt_teardown_msi(%struct.pptdev*) #1

declare dso_local i32 @pci_msi_count(i32) #1

declare dso_local i32 @pci_alloc_msi(i32, i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32, i32*, %struct.TYPE_4__*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

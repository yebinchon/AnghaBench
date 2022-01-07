; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vtd.c_vtd_add_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vtd.c_vtd_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain = type { i32, i32, i32 }
%struct.vtdmap = type { i32 }

@ctx_tables = common dso_local global i32** null, align 8
@VTD_CTX_PRESENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"vtd_add_device: device %x is already owned by domain %d\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"vtd_add_device: device %x is not in scope for any DMA remapping unit\00", align 1
@VTD_CTX_TT_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @vtd_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtd_add_device(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.domain*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vtdmap*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.domain*
  store %struct.domain* %12, %struct.domain** %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @PCI_RID2BUS(i32 %13)
  store i64 %14, i64* %10, align 8
  %15 = load i32**, i32*** @ctx_tables, align 8
  %16 = load i64, i64* %10, align 8
  %17 = getelementptr inbounds i32*, i32** %15, i64 %16
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %6, align 8
  %19 = load %struct.domain*, %struct.domain** %7, align 8
  %20 = getelementptr inbounds %struct.domain, %struct.domain* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @vtophys(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @VTD_RID2IDX(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @VTD_CTX_PRESENT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %2
  %34 = load i32, i32* %4, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 8
  %42 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %41)
  br label %43

43:                                               ; preds = %33, %2
  %44 = load i32, i32* %4, align 4
  %45 = call %struct.vtdmap* @vtd_device_scope(i32 %44)
  store %struct.vtdmap* %45, %struct.vtdmap** %9, align 8
  %46 = icmp eq %struct.vtdmap* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %47, %43
  %51 = load %struct.domain*, %struct.domain** %7, align 8
  %52 = getelementptr inbounds %struct.domain, %struct.domain* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.domain*, %struct.domain** %7, align 8
  %55 = getelementptr inbounds %struct.domain, %struct.domain* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 8
  %58 = or i32 %53, %57
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  store i32 %58, i32* %63, align 4
  %64 = load %struct.vtdmap*, %struct.vtdmap** %9, align 8
  %65 = getelementptr inbounds %struct.vtdmap, %struct.vtdmap* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @VTD_ECAP_DI(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %50
  %70 = load i32, i32* @VTD_CTX_TT_ALL, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %70, i32* %74, align 4
  br label %80

75:                                               ; preds = %50
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 0, i32* %79, align 4
  br label %80

80:                                               ; preds = %75, %69
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @VTD_CTX_PRESENT, align 4
  %83 = or i32 %81, %82
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %83
  store i32 %89, i32* %87, align 4
  ret void
}

declare dso_local i64 @PCI_RID2BUS(i32) #1

declare dso_local i32 @vtophys(i32) #1

declare dso_local i32 @VTD_RID2IDX(i32) #1

declare dso_local i32 @panic(i8*, i32, ...) #1

declare dso_local %struct.vtdmap* @vtd_device_scope(i32) #1

declare dso_local i64 @VTD_ECAP_DI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

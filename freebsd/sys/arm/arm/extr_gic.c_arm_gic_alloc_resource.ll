; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic.c_arm_gic_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic.c_arm_gic_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.arm_gic_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.resource_list_entry = type { i64, i64, i64 }
%struct.resource_list = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid resoure type %x\00", align 1
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"no default resources for rid = %d, type = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Could not map resource %#jx-%#jx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i64, i64, i64, i32)* @arm_gic_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @arm_gic_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i64 %4, i64 %5, i64 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.arm_gic_softc*, align 8
  %19 = alloca %struct.resource_list_entry*, align 8
  %20 = alloca %struct.resource_list*, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @SYS_RES_MEMORY, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @KASSERT(i32 %25, i8* %28)
  %30 = load i32, i32* %10, align 4
  %31 = call %struct.arm_gic_softc* @device_get_softc(i32 %30)
  store %struct.arm_gic_softc* %31, %struct.arm_gic_softc** %18, align 8
  %32 = load i64, i64* %14, align 8
  %33 = load i64, i64* %15, align 8
  %34 = call i64 @RMAN_IS_DEFAULT_RANGE(i64 %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %73

36:                                               ; preds = %8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call %struct.resource_list* @BUS_GET_RESOURCE_LIST(i32 %37, i32 %38)
  store %struct.resource_list* %39, %struct.resource_list** %20, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @SYS_RES_IOPORT, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @SYS_RES_MEMORY, align 4
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %43, %36
  %46 = load %struct.resource_list*, %struct.resource_list** %20, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %46, i32 %47, i32 %49)
  store %struct.resource_list_entry* %50, %struct.resource_list_entry** %19, align 8
  %51 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %52 = icmp eq %struct.resource_list_entry* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %45
  %54 = load i64, i64* @bootverbose, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  %58 = load i32*, i32** %13, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %53
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %188

63:                                               ; preds = %45
  %64 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %65 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %14, align 8
  %67 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %68 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %15, align 8
  %70 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %71 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %16, align 8
  br label %73

73:                                               ; preds = %63, %8
  store i32 0, i32* %21, align 4
  br label %74

74:                                               ; preds = %153, %73
  %75 = load i32, i32* %21, align 4
  %76 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %18, align 8
  %77 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %156

80:                                               ; preds = %74
  %81 = load i64, i64* %14, align 8
  %82 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %18, align 8
  %83 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %21, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp sge i64 %81, %89
  br i1 %90, label %91, label %152

91:                                               ; preds = %80
  %92 = load i64, i64* %15, align 8
  %93 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %18, align 8
  %94 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = load i32, i32* %21, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %18, align 8
  %102 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %21, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %100, %108
  %110 = icmp slt i64 %92, %109
  br i1 %110, label %111, label %152

111:                                              ; preds = %91
  %112 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %18, align 8
  %113 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %112, i32 0, i32 1
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i32, i32* %21, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %14, align 8
  %121 = sub nsw i64 %120, %119
  store i64 %121, i64* %14, align 8
  %122 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %18, align 8
  %123 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %122, i32 0, i32 1
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = load i32, i32* %21, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %14, align 8
  %131 = add nsw i64 %130, %129
  store i64 %131, i64* %14, align 8
  %132 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %18, align 8
  %133 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %132, i32 0, i32 1
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = load i32, i32* %21, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %15, align 8
  %141 = sub nsw i64 %140, %139
  store i64 %141, i64* %15, align 8
  %142 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %18, align 8
  %143 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %142, i32 0, i32 1
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = load i32, i32* %21, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %15, align 8
  %151 = add nsw i64 %150, %149
  store i64 %151, i64* %15, align 8
  br label %156

152:                                              ; preds = %91, %80
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %21, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %21, align 4
  br label %74

156:                                              ; preds = %111, %74
  %157 = load i32, i32* %21, align 4
  %158 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %18, align 8
  %159 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp eq i32 %157, %160
  br i1 %161, label %162, label %178

162:                                              ; preds = %156
  %163 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %18, align 8
  %164 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %162
  %168 = load i64, i64* @bootverbose, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %167
  %171 = load i32, i32* %10, align 4
  %172 = load i64, i64* %14, align 8
  %173 = trunc i64 %172 to i32
  %174 = load i64, i64* %15, align 8
  %175 = trunc i64 %174 to i32
  %176 = call i32 @device_printf(i32 %171, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %173, i32 %175)
  br label %177

177:                                              ; preds = %170, %167
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %188

178:                                              ; preds = %162, %156
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* %12, align 4
  %182 = load i32*, i32** %13, align 8
  %183 = load i64, i64* %14, align 8
  %184 = load i64, i64* %15, align 8
  %185 = load i64, i64* %16, align 8
  %186 = load i32, i32* %17, align 4
  %187 = call %struct.resource* @bus_generic_alloc_resource(i32 %179, i32 %180, i32 %181, i32* %182, i64 %183, i64 %184, i64 %185, i32 %186)
  store %struct.resource* %187, %struct.resource** %9, align 8
  br label %188

188:                                              ; preds = %178, %177, %62
  %189 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %189
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.arm_gic_softc* @device_get_softc(i32) #1

declare dso_local i64 @RMAN_IS_DEFAULT_RANGE(i64, i64) #1

declare dso_local %struct.resource_list* @BUS_GET_RESOURCE_LIST(i32, i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(%struct.resource_list*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local %struct.resource* @bus_generic_alloc_resource(i32, i32, i32, i32*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

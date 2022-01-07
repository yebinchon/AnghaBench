; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_ale_dump_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_ale_dump_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_softc = type { i32 }

@CPSW_MAX_ALE_ENTRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ALE[%4u] %08x %08x %08x \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"type: %u \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"vlan: %u \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"untag: %u \00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"reg flood: %u \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"unreg flood: %u \00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"members: %u \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"mac: %02x:%02x:%02x:%02x:%02x:%02x \00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"mcast \00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"ucast \00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"port: %u \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpsw_softc*)* @cpsw_ale_dump_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_ale_dump_table(%struct.cpsw_softc* %0) #0 {
  %2 = alloca %struct.cpsw_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [3 x i32], align 4
  store %struct.cpsw_softc* %0, %struct.cpsw_softc** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %100, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @CPSW_MAX_ALE_ENTRIES, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %103

9:                                                ; preds = %5
  %10 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %13 = call i32 @cpsw_ale_read_entry(%struct.cpsw_softc* %10, i32 %11, i32* %12)
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %15 = call i32 @ALE_TYPE(i32* %14)
  switch i32 %15, label %99 [
    i32 129, label %16
    i32 130, label %44
    i32 128, label %44
  ]

16:                                               ; preds = %9
  %17 = load i32, i32* %3, align 4
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %19, i32 %21, i32 %23)
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %26 = call i32 @ALE_TYPE(i32* %25)
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %29 = call i32 @ALE_VLAN(i32* %28)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %32 = call i32 @ALE_VLAN_UNTAG(i32* %31)
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %35 = call i32 @ALE_VLAN_REGFLOOD(i32* %34)
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %38 = call i32 @ALE_VLAN_UNREGFLOOD(i32* %37)
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %38)
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %41 = call i32 @ALE_VLAN_MEMBERS(i32* %40)
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %41)
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %99

44:                                               ; preds = %9, %9
  %45 = load i32, i32* %3, align 4
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %47, i32 %49, i32 %51)
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %54 = call i32 @ALE_TYPE(i32* %53)
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 8
  %59 = and i32 %58, 255
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 0
  %63 = and i32 %62, 255
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 24
  %67 = and i32 %66, 255
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 16
  %71 = and i32 %70, 255
  %72 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = ashr i32 %73, 8
  %75 = and i32 %74, 255
  %76 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = ashr i32 %77, 0
  %79 = and i32 %78, 255
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %59, i32 %63, i32 %67, i32 %71, i32 %75, i32 %79)
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %82 = call i32 @ALE_MCAST(i32* %81)
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)
  %86 = call i32 (i8*, ...) @printf(i8* %85)
  %87 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %88 = call i32 @ALE_TYPE(i32* %87)
  %89 = icmp eq i32 %88, 128
  br i1 %89, label %90, label %94

90:                                               ; preds = %44
  %91 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %92 = call i32 @ALE_VLAN(i32* %91)
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %90, %44
  %95 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %96 = call i32 @ALE_PORTS(i32* %95)
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %96)
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %99

99:                                               ; preds = %9, %94, %16
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %3, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %3, align 4
  br label %5

103:                                              ; preds = %5
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cpsw_ale_read_entry(%struct.cpsw_softc*, i32, i32*) #1

declare dso_local i32 @ALE_TYPE(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ALE_VLAN(i32*) #1

declare dso_local i32 @ALE_VLAN_UNTAG(i32*) #1

declare dso_local i32 @ALE_VLAN_REGFLOOD(i32*) #1

declare dso_local i32 @ALE_VLAN_UNREGFLOOD(i32*) #1

declare dso_local i32 @ALE_VLAN_MEMBERS(i32*) #1

declare dso_local i32 @ALE_MCAST(i32*) #1

declare dso_local i32 @ALE_PORTS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

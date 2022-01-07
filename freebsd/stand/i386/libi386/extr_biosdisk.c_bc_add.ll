; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosdisk.c_bc_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosdisk.c_bc_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.specification_packet = type { i32, i32 }

@cdinfo = common dso_local global i32 0, align 4
@V86_FLAGS = common dso_local global i32 0, align 4
@v86 = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@BD_CDROM = common dso_local global i32 0, align 4
@bd_link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"BIOS CD is cd%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bc_add(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.specification_packet, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %6, align 4
  %7 = call i32 @STAILQ_EMPTY(i32* @cdinfo)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %109

10:                                               ; preds = %1
  %11 = load i32, i32* @V86_FLAGS, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @v86, i32 0, i32 5), align 4
  store i32 19, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @v86, i32 0, i32 0), align 4
  store i32 19201, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @v86, i32 0, i32 1), align 4
  %12 = load i32, i32* %3, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @v86, i32 0, i32 2), align 4
  %13 = call i32 @VTOPSEG(%struct.specification_packet* %5)
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @v86, i32 0, i32 4), align 4
  %14 = call i32 @VTOPOFF(%struct.specification_packet* %5)
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @v86, i32 0, i32 3), align 4
  %15 = call i32 (...) @v86int()
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @v86, i32 0, i32 1), align 4
  %17 = and i32 %16, 65280
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  store i32 -1, i32* %2, align 4
  br label %109

20:                                               ; preds = %10
  %21 = call %struct.TYPE_6__* @calloc(i32 1, i32 24)
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %4, align 8
  %22 = icmp eq %struct.TYPE_6__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %109

24:                                               ; preds = %20
  %25 = load i32, i32* @BD_CDROM, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = call i32 @bd_int13probe(%struct.TYPE_6__* %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.specification_packet, %struct.specification_packet* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 192
  %41 = shl i32 %40, 2
  %42 = getelementptr inbounds %struct.specification_packet, %struct.specification_packet* %5, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 65280
  %45 = ashr i32 %44, 8
  %46 = add nsw i32 %41, %45
  %47 = add nsw i32 %46, 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %37, %24
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.specification_packet, %struct.specification_packet* %5, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %55, %50
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.specification_packet, %struct.specification_packet* %5, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 63
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %66, %61
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %72
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %80, %83
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %84, %87
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %77, %72
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 4
  store i32 4173824, i32* %98, align 4
  br label %99

99:                                               ; preds = %96, %91
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %101 = load i32, i32* @bd_link, align 4
  %102 = call i32 @STAILQ_INSERT_TAIL(i32* @cdinfo, %struct.TYPE_6__* %100, i32 %101)
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @bcache_add_dev(i32 %107)
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %99, %23, %19, %9
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

declare dso_local i32 @VTOPSEG(%struct.specification_packet*) #1

declare dso_local i32 @VTOPOFF(%struct.specification_packet*) #1

declare dso_local i32 @v86int(...) #1

declare dso_local %struct.TYPE_6__* @calloc(i32, i32) #1

declare dso_local i32 @bd_int13probe(%struct.TYPE_6__*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @bcache_add_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

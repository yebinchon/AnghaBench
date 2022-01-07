; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_atahpa_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_atahpa_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_params = type { %struct.TYPE_4__, %struct.TYPE_3__, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"\0AFeature                      Support  Enabled   Value\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Host Protected Area (HPA)      \00", align 1
@ATA_SUPPORT_PROTECTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"yes      %s     %ju/%ju\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"no \00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"HPA - Security                 \00", align 1
@ATA_SUPPORT_MAXSECURITY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"yes      %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"no\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_params*, i32, i32)* @atahpa_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atahpa_print(%struct.ata_params* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ata_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ata_params* %0, %struct.ata_params** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ata_params*, %struct.ata_params** %4, align 8
  %11 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %10, i32 0, i32 7
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = load %struct.ata_params*, %struct.ata_params** %4, align 8
  %15 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = shl i32 %17, 16
  %19 = or i32 %13, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.ata_params*, %struct.ata_params** %4, align 8
  %21 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = load %struct.ata_params*, %struct.ata_params** %4, align 8
  %25 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = shl i32 %27, 16
  %29 = or i32 %23, %28
  %30 = load %struct.ata_params*, %struct.ata_params** %4, align 8
  %31 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = shl i32 %33, 32
  %35 = or i32 %29, %34
  %36 = load %struct.ata_params*, %struct.ata_params** %4, align 8
  %37 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = shl i32 %39, 48
  %41 = or i32 %35, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %3
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %3
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.ata_params*, %struct.ata_params** %4, align 8
  %49 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ATA_SUPPORT_PROTECTED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %94

55:                                               ; preds = %46
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  br label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp sgt i32 %64, %65
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %68, i32 %69, i32 %70)
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %73 = load %struct.ata_params*, %struct.ata_params** %4, align 8
  %74 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @ATA_SUPPORT_MAXSECURITY, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %62
  %81 = load %struct.ata_params*, %struct.ata_params** %4, align 8
  %82 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @ATA_SUPPORT_MAXSECURITY, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %89)
  br label %93

91:                                               ; preds = %62
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %80
  br label %96

94:                                               ; preds = %46
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %93
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

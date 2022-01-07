; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vatpic.c_vatpic_ocw3.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vatpic.c_vatpic_ocw3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vatpic = type { i32 }
%struct.atpic = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"atpic ocw3 0x%x\00", align 1
@OCW3_ESMM = common dso_local global i32 0, align 4
@OCW3_SMM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%s atpic special mask mode %s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@OCW3_RR = common dso_local global i32 0, align 4
@OCW3_RIS = common dso_local global i32 0, align 4
@OCW3_P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vatpic*, %struct.atpic*, i32)* @vatpic_ocw3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vatpic_ocw3(%struct.vatpic* %0, %struct.atpic* %1, i32 %2) #0 {
  %4 = alloca %struct.vatpic*, align 8
  %5 = alloca %struct.atpic*, align 8
  %6 = alloca i32, align 4
  store %struct.vatpic* %0, %struct.vatpic** %4, align 8
  store %struct.atpic* %1, %struct.atpic** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.vatpic*, %struct.vatpic** %4, align 8
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @VATPIC_CTR1(%struct.vatpic* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @OCW3_ESMM, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @OCW3_SMM, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  %21 = load %struct.atpic*, %struct.atpic** %5, align 8
  %22 = getelementptr inbounds %struct.atpic, %struct.atpic* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.vatpic*, %struct.vatpic** %4, align 8
  %24 = load %struct.vatpic*, %struct.vatpic** %4, align 8
  %25 = load %struct.atpic*, %struct.atpic** %5, align 8
  %26 = call i64 @master_atpic(%struct.vatpic* %24, %struct.atpic* %25)
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %30 = load %struct.atpic*, %struct.atpic** %5, align 8
  %31 = getelementptr inbounds %struct.atpic, %struct.atpic* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %36 = call i32 @VATPIC_CTR2(%struct.vatpic* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %29, i8* %35)
  br label %37

37:                                               ; preds = %14, %3
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @OCW3_RR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @OCW3_RIS, align 4
  %45 = and i32 %43, %44
  %46 = load %struct.atpic*, %struct.atpic** %5, align 8
  %47 = getelementptr inbounds %struct.atpic, %struct.atpic* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @OCW3_P, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = load %struct.atpic*, %struct.atpic** %5, align 8
  %54 = getelementptr inbounds %struct.atpic, %struct.atpic* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %42, %37
  ret i32 0
}

declare dso_local i32 @VATPIC_CTR1(%struct.vatpic*, i8*, i32) #1

declare dso_local i32 @VATPIC_CTR2(%struct.vatpic*, i8*, i8*, i8*) #1

declare dso_local i64 @master_atpic(%struct.vatpic*, %struct.atpic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

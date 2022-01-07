; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vatpic.c_vatpic_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vatpic.c_vatpic_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vatpic = type { i32 }
%struct.atpic = type { i32, i64, i32, i32, i64 }

@ICU_IMR_OFFSET = common dso_local global i32 0, align 4
@OCW3_RIS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vatpic*, %struct.atpic*, i32, i32, i32, i32*)* @vatpic_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vatpic_read(%struct.vatpic* %0, %struct.atpic* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.vatpic*, align 8
  %8 = alloca %struct.atpic*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.vatpic* %0, %struct.vatpic** %7, align 8
  store %struct.atpic* %1, %struct.atpic** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %14 = load %struct.vatpic*, %struct.vatpic** %7, align 8
  %15 = call i32 @VATPIC_LOCK(%struct.vatpic* %14)
  %16 = load %struct.atpic*, %struct.atpic** %8, align 8
  %17 = getelementptr inbounds %struct.atpic, %struct.atpic* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %6
  %21 = load %struct.atpic*, %struct.atpic** %8, align 8
  %22 = getelementptr inbounds %struct.atpic, %struct.atpic* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load %struct.atpic*, %struct.atpic** %8, align 8
  %24 = call i32 @vatpic_get_highest_irrpin(%struct.atpic* %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.atpic*, %struct.atpic** %8, align 8
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @vatpic_pin_accepted(%struct.atpic* %28, i32 %29)
  %31 = load i32, i32* %13, align 4
  %32 = or i32 128, %31
  %33 = load i32*, i32** %12, align 8
  store i32 %32, i32* %33, align 4
  br label %36

34:                                               ; preds = %20
  %35 = load i32*, i32** %12, align 8
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %34, %27
  br label %65

37:                                               ; preds = %6
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @ICU_IMR_OFFSET, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.atpic*, %struct.atpic** %8, align 8
  %44 = getelementptr inbounds %struct.atpic, %struct.atpic* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %12, align 8
  store i32 %45, i32* %46, align 4
  br label %64

47:                                               ; preds = %37
  %48 = load %struct.atpic*, %struct.atpic** %8, align 8
  %49 = getelementptr inbounds %struct.atpic, %struct.atpic* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @OCW3_RIS, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.atpic*, %struct.atpic** %8, align 8
  %55 = getelementptr inbounds %struct.atpic, %struct.atpic* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32*, i32** %12, align 8
  store i32 %56, i32* %57, align 4
  br label %63

58:                                               ; preds = %47
  %59 = load %struct.atpic*, %struct.atpic** %8, align 8
  %60 = getelementptr inbounds %struct.atpic, %struct.atpic* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %12, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %58, %53
  br label %64

64:                                               ; preds = %63, %42
  br label %65

65:                                               ; preds = %64, %36
  %66 = load %struct.vatpic*, %struct.vatpic** %7, align 8
  %67 = call i32 @VATPIC_UNLOCK(%struct.vatpic* %66)
  ret i32 0
}

declare dso_local i32 @VATPIC_LOCK(%struct.vatpic*) #1

declare dso_local i32 @vatpic_get_highest_irrpin(%struct.atpic*) #1

declare dso_local i32 @vatpic_pin_accepted(%struct.atpic*, i32) #1

declare dso_local i32 @VATPIC_UNLOCK(%struct.vatpic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

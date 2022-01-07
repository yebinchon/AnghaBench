; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_memac.c_fman_memac_get_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_memac.c_fman_memac_get_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memac_regs = type { i32 }

@r64 = common dso_local global i32 0, align 4
@r127 = common dso_local global i32 0, align 4
@r255 = common dso_local global i32 0, align 4
@r511 = common dso_local global i32 0, align 4
@r1023 = common dso_local global i32 0, align 4
@r1518 = common dso_local global i32 0, align 4
@r1519x = common dso_local global i32 0, align 4
@rfrg = common dso_local global i32 0, align 4
@rjbr = common dso_local global i32 0, align 4
@rdrp = common dso_local global i32 0, align 4
@raln = common dso_local global i32 0, align 4
@tund = common dso_local global i32 0, align 4
@rovr = common dso_local global i32 0, align 4
@rxpf = common dso_local global i32 0, align 4
@txpf = common dso_local global i32 0, align 4
@roct = common dso_local global i32 0, align 4
@rmca = common dso_local global i32 0, align 4
@rbca = common dso_local global i32 0, align 4
@rpkt = common dso_local global i32 0, align 4
@ruca = common dso_local global i32 0, align 4
@rerr = common dso_local global i32 0, align 4
@toct = common dso_local global i32 0, align 4
@tmca = common dso_local global i32 0, align 4
@tbca = common dso_local global i32 0, align 4
@tuca = common dso_local global i32 0, align 4
@terr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_memac_get_counter(%struct.memac_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.memac_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.memac_regs* %0, %struct.memac_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %85 [
    i32 147, label %7
    i32 152, label %10
    i32 149, label %13
    i32 148, label %16
    i32 153, label %19
    i32 151, label %22
    i32 150, label %25
    i32 142, label %28
    i32 141, label %31
    i32 144, label %34
    i32 146, label %37
    i32 129, label %40
    i32 138, label %43
    i32 135, label %46
    i32 128, label %49
    i32 139, label %52
    i32 140, label %55
    i32 145, label %58
    i32 137, label %61
    i32 136, label %64
    i32 143, label %67
    i32 131, label %70
    i32 132, label %73
    i32 134, label %76
    i32 130, label %79
    i32 133, label %82
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @r64, align 4
  %9 = call i32 @GET_MEMAC_CNTR_64(i32 %8)
  store i32 %9, i32* %5, align 4
  br label %86

10:                                               ; preds = %2
  %11 = load i32, i32* @r127, align 4
  %12 = call i32 @GET_MEMAC_CNTR_64(i32 %11)
  store i32 %12, i32* %5, align 4
  br label %86

13:                                               ; preds = %2
  %14 = load i32, i32* @r255, align 4
  %15 = call i32 @GET_MEMAC_CNTR_64(i32 %14)
  store i32 %15, i32* %5, align 4
  br label %86

16:                                               ; preds = %2
  %17 = load i32, i32* @r511, align 4
  %18 = call i32 @GET_MEMAC_CNTR_64(i32 %17)
  store i32 %18, i32* %5, align 4
  br label %86

19:                                               ; preds = %2
  %20 = load i32, i32* @r1023, align 4
  %21 = call i32 @GET_MEMAC_CNTR_64(i32 %20)
  store i32 %21, i32* %5, align 4
  br label %86

22:                                               ; preds = %2
  %23 = load i32, i32* @r1518, align 4
  %24 = call i32 @GET_MEMAC_CNTR_64(i32 %23)
  store i32 %24, i32* %5, align 4
  br label %86

25:                                               ; preds = %2
  %26 = load i32, i32* @r1519x, align 4
  %27 = call i32 @GET_MEMAC_CNTR_64(i32 %26)
  store i32 %27, i32* %5, align 4
  br label %86

28:                                               ; preds = %2
  %29 = load i32, i32* @rfrg, align 4
  %30 = call i32 @GET_MEMAC_CNTR_64(i32 %29)
  store i32 %30, i32* %5, align 4
  br label %86

31:                                               ; preds = %2
  %32 = load i32, i32* @rjbr, align 4
  %33 = call i32 @GET_MEMAC_CNTR_64(i32 %32)
  store i32 %33, i32* %5, align 4
  br label %86

34:                                               ; preds = %2
  %35 = load i32, i32* @rdrp, align 4
  %36 = call i32 @GET_MEMAC_CNTR_64(i32 %35)
  store i32 %36, i32* %5, align 4
  br label %86

37:                                               ; preds = %2
  %38 = load i32, i32* @raln, align 4
  %39 = call i32 @GET_MEMAC_CNTR_64(i32 %38)
  store i32 %39, i32* %5, align 4
  br label %86

40:                                               ; preds = %2
  %41 = load i32, i32* @tund, align 4
  %42 = call i32 @GET_MEMAC_CNTR_64(i32 %41)
  store i32 %42, i32* %5, align 4
  br label %86

43:                                               ; preds = %2
  %44 = load i32, i32* @rovr, align 4
  %45 = call i32 @GET_MEMAC_CNTR_64(i32 %44)
  store i32 %45, i32* %5, align 4
  br label %86

46:                                               ; preds = %2
  %47 = load i32, i32* @rxpf, align 4
  %48 = call i32 @GET_MEMAC_CNTR_64(i32 %47)
  store i32 %48, i32* %5, align 4
  br label %86

49:                                               ; preds = %2
  %50 = load i32, i32* @txpf, align 4
  %51 = call i32 @GET_MEMAC_CNTR_64(i32 %50)
  store i32 %51, i32* %5, align 4
  br label %86

52:                                               ; preds = %2
  %53 = load i32, i32* @roct, align 4
  %54 = call i32 @GET_MEMAC_CNTR_64(i32 %53)
  store i32 %54, i32* %5, align 4
  br label %86

55:                                               ; preds = %2
  %56 = load i32, i32* @rmca, align 4
  %57 = call i32 @GET_MEMAC_CNTR_64(i32 %56)
  store i32 %57, i32* %5, align 4
  br label %86

58:                                               ; preds = %2
  %59 = load i32, i32* @rbca, align 4
  %60 = call i32 @GET_MEMAC_CNTR_64(i32 %59)
  store i32 %60, i32* %5, align 4
  br label %86

61:                                               ; preds = %2
  %62 = load i32, i32* @rpkt, align 4
  %63 = call i32 @GET_MEMAC_CNTR_64(i32 %62)
  store i32 %63, i32* %5, align 4
  br label %86

64:                                               ; preds = %2
  %65 = load i32, i32* @ruca, align 4
  %66 = call i32 @GET_MEMAC_CNTR_64(i32 %65)
  store i32 %66, i32* %5, align 4
  br label %86

67:                                               ; preds = %2
  %68 = load i32, i32* @rerr, align 4
  %69 = call i32 @GET_MEMAC_CNTR_64(i32 %68)
  store i32 %69, i32* %5, align 4
  br label %86

70:                                               ; preds = %2
  %71 = load i32, i32* @toct, align 4
  %72 = call i32 @GET_MEMAC_CNTR_64(i32 %71)
  store i32 %72, i32* %5, align 4
  br label %86

73:                                               ; preds = %2
  %74 = load i32, i32* @tmca, align 4
  %75 = call i32 @GET_MEMAC_CNTR_64(i32 %74)
  store i32 %75, i32* %5, align 4
  br label %86

76:                                               ; preds = %2
  %77 = load i32, i32* @tbca, align 4
  %78 = call i32 @GET_MEMAC_CNTR_64(i32 %77)
  store i32 %78, i32* %5, align 4
  br label %86

79:                                               ; preds = %2
  %80 = load i32, i32* @tuca, align 4
  %81 = call i32 @GET_MEMAC_CNTR_64(i32 %80)
  store i32 %81, i32* %5, align 4
  br label %86

82:                                               ; preds = %2
  %83 = load i32, i32* @terr, align 4
  %84 = call i32 @GET_MEMAC_CNTR_64(i32 %83)
  store i32 %84, i32* %5, align 4
  br label %86

85:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %82, %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @GET_MEMAC_CNTR_64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

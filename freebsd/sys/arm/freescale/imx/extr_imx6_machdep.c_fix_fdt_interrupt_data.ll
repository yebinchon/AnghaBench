; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_machdep.c_fix_fdt_interrupt_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_machdep.c_fix_fdt_interrupt_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"/soc\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"interrupt-parent\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"/soc/interrupt-controller@00a01000\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"/soc/interrupt-controller@a01000\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"/interrupt-controller@00a01000\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"/interrupt-controller@a01000\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"/soc/aips-bus@02000000/gpc@020dc000\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"/soc/aips-bus@2000000/gpc@20dc000\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fix_fdt_interrupt_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fix_fdt_interrupt_data() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = call i32 @OF_finddevice(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  br label %85

14:                                               ; preds = %0
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @OF_getencprop(i32 %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %7, i32 4)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %85

20:                                               ; preds = %14
  %21 = call i32 @OF_finddevice(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @OF_finddevice(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %20
  %27 = load i32, i32* %2, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = call i32 @OF_finddevice(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 @OF_finddevice(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i32, i32* %2, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %85

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39, %26
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @OF_xref_from_node(i32 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @OF_getencprop(i32 %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %1, i32 4)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %3, align 4
  store i32 %48, i32* %1, align 4
  br label %49

49:                                               ; preds = %47, %40
  %50 = call i32 @OF_finddevice(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 @OF_finddevice(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %53, %49
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %85

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @OF_getencprop(i32 %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %4, i32 4)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp sle i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %85

65:                                               ; preds = %59
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @OF_xref_from_node(i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %79, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %3, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %1, align 4
  %77 = load i32, i32* %3, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75, %71, %65
  br label %85

80:                                               ; preds = %75
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @cpu_to_fdt32(i32 %81)
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @OF_setprop(i32 %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %3, i32 4)
  br label %85

85:                                               ; preds = %80, %79, %64, %58, %38, %19, %13
  ret void
}

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32 @cpu_to_fdt32(i32) #1

declare dso_local i32 @OF_setprop(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

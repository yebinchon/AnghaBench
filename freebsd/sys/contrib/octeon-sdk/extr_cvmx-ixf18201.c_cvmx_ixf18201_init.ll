; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-ixf18201.c_cvmx_ixf18201_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-ixf18201.c_cvmx_ixf18201_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_ixf18201_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @cvmx_ixf18201_write16(i32 3, i32 1)
  %5 = call i32 @cvmx_ixf18201_write16(i32 3, i32 0)
  %6 = call i32 @cvmx_ixf18201_write16(i32 0, i32 16400)
  %7 = call i32 @cvmx_ixf18201_write16(i32 0, i32 16404)
  %8 = call i32 @cvmx_ixf18201_write16(i32 4, i32 320)
  %9 = call i32 @cvmx_ixf18201_write16(i32 9, i32 0)
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %25, %0
  %11 = load i32, i32* %1, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = load i32, i32* %1, align 4
  %15 = mul nsw i32 1280, %14
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 12544, %16
  %18 = call i32 @cvmx_ixf18201_write32(i32 %17, i32 294779)
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 12293, %19
  %21 = call i32 @cvmx_ixf18201_write16(i32 %20, i32 64)
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 12294, %22
  %24 = call i32 @cvmx_ixf18201_write16(i32 %23, i32 0)
  br label %25

25:                                               ; preds = %13
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %10

28:                                               ; preds = %10
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %95, %28
  %30 = load i32, i32* %1, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %98

32:                                               ; preds = %29
  %33 = load i32, i32* %1, align 4
  %34 = mul nsw i32 1280, %33
  store i32 %34, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %35 = load i32, i32* %2, align 4
  %36 = add nsw i32 12295, %35
  %37 = load i32, i32* %3, align 4
  %38 = shl i32 %37, 11
  %39 = or i32 33216, %38
  %40 = call i32 @cvmx_ixf18201_write16(i32 %36, i32 %39)
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 12296, %41
  %43 = load i32, i32* %3, align 4
  %44 = shl i32 %43, 4
  %45 = or i32 13824, %44
  %46 = call i32 @cvmx_ixf18201_write16(i32 %42, i32 %45)
  %47 = load i32, i32* %2, align 4
  %48 = add nsw i32 12288, %47
  %49 = call i32 @cvmx_ixf18201_write16(i32 %48, i32 96)
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 12290, %50
  %52 = call i32 @cvmx_ixf18201_write16(i32 %51, i32 64)
  %53 = load i32, i32* %2, align 4
  %54 = add nsw i32 12291, %53
  %55 = call i32 @cvmx_ixf18201_write16(i32 %54, i32 0)
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 12482, %56
  %58 = call i32 @cvmx_ixf18201_write16(i32 %57, i32 96)
  %59 = load i32, i32* %2, align 4
  %60 = add nsw i32 12298, %59
  %61 = call i32 @cvmx_ixf18201_write16(i32 %60, i32 0)
  %62 = load i32, i32* %2, align 4
  %63 = add nsw i32 12295, %62
  %64 = load i32, i32* %3, align 4
  %65 = shl i32 %64, 11
  %66 = or i32 33216, %65
  %67 = call i32 @cvmx_ixf18201_write16(i32 %63, i32 %66)
  %68 = load i32, i32* %2, align 4
  %69 = add nsw i32 12310, %68
  %70 = call i32 @cvmx_ixf18201_write16(i32 %69, i32 16)
  %71 = load i32, i32* %2, align 4
  %72 = add nsw i32 12296, %71
  %73 = load i32, i32* %3, align 4
  %74 = shl i32 %73, 4
  %75 = or i32 13824, %74
  %76 = call i32 @cvmx_ixf18201_write16(i32 %72, i32 %75)
  %77 = load i32, i32* %2, align 4
  %78 = add nsw i32 12306, %77
  %79 = call i32 @cvmx_ixf18201_write16(i32 %78, i32 16)
  %80 = load i32, i32* %2, align 4
  %81 = add nsw i32 12295, %80
  %82 = load i32, i32* %3, align 4
  %83 = shl i32 %82, 11
  %84 = or i32 33152, %83
  %85 = call i32 @cvmx_ixf18201_write16(i32 %81, i32 %84)
  %86 = load i32, i32* %2, align 4
  %87 = add nsw i32 12296, %86
  %88 = load i32, i32* %3, align 4
  %89 = shl i32 %88, 4
  %90 = or i32 41472, %89
  %91 = call i32 @cvmx_ixf18201_write16(i32 %87, i32 %90)
  %92 = load i32, i32* %2, align 4
  %93 = add nsw i32 12432, %92
  %94 = call i32 @cvmx_ixf18201_write16(i32 %93, i32 769)
  br label %95

95:                                               ; preds = %32
  %96 = load i32, i32* %1, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %1, align 4
  br label %29

98:                                               ; preds = %29
  %99 = call i32 @cvmx_ixf18201_write16(i32 4, i32 8191)
  %100 = call i32 @cvmx_ixf18201_write16(i32 9, i32 127)
  store i32 0, i32* %1, align 4
  br label %101

101:                                              ; preds = %113, %98
  %102 = load i32, i32* %1, align 4
  %103 = icmp slt i32 %102, 2
  br i1 %103, label %104, label %116

104:                                              ; preds = %101
  %105 = load i32, i32* %1, align 4
  %106 = mul nsw i32 1280, %105
  store i32 %106, i32* %2, align 4
  %107 = load i32, i32* %2, align 4
  %108 = add nsw i32 12544, %107
  %109 = call i32 @cvmx_ixf18201_write32(i32 %108, i32 294780)
  %110 = load i32, i32* %2, align 4
  %111 = add nsw i32 12564, %110
  %112 = call i32 @cvmx_ixf18201_write32(i32 %111, i32 629145600)
  br label %113

113:                                              ; preds = %104
  %114 = load i32, i32* %1, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %1, align 4
  br label %101

116:                                              ; preds = %101
  %117 = call i32 @cvmx_wait(i32 100000000)
  %118 = call i32 @cvmx_ixf18201_mii_write(i32 1, i32 3, i32 0, i32 32768)
  %119 = call i32 @cvmx_ixf18201_mii_write(i32 5, i32 3, i32 0, i32 32768)
  ret i32 1
}

declare dso_local i32 @cvmx_ixf18201_write16(i32, i32) #1

declare dso_local i32 @cvmx_ixf18201_write32(i32, i32) #1

declare dso_local i32 @cvmx_wait(i32) #1

declare dso_local i32 @cvmx_ixf18201_mii_write(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

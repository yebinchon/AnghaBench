; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_mips_map_regno.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_mips_map_regno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@REGNO_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mips_map_regno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_map_regno(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 32
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %2, align 4
  br label %92

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @current_gdbarch, align 4
  %11 = call %struct.TYPE_2__* @mips_regnum(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sge i32 %9, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @current_gdbarch, align 4
  %18 = call %struct.TYPE_2__* @mips_regnum(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 32
  %22 = icmp slt i32 %16, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %15
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @current_gdbarch, align 4
  %26 = call %struct.TYPE_2__* @mips_regnum(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %24, %28
  %30 = add nsw i32 %29, 32
  store i32 %30, i32* %2, align 4
  br label %92

31:                                               ; preds = %15, %8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @current_gdbarch, align 4
  %34 = call %struct.TYPE_2__* @mips_regnum(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %32, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @REGNO_OFFSET, align 4
  %40 = add nsw i32 %39, 0
  store i32 %40, i32* %2, align 4
  br label %92

41:                                               ; preds = %31
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @current_gdbarch, align 4
  %44 = call %struct.TYPE_2__* @mips_regnum(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %42, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @REGNO_OFFSET, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %2, align 4
  br label %92

51:                                               ; preds = %41
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @current_gdbarch, align 4
  %54 = call %struct.TYPE_2__* @mips_regnum(i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %52, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @REGNO_OFFSET, align 4
  %60 = add nsw i32 %59, 2
  store i32 %60, i32* %2, align 4
  br label %92

61:                                               ; preds = %51
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @current_gdbarch, align 4
  %64 = call %struct.TYPE_2__* @mips_regnum(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %62, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* @REGNO_OFFSET, align 4
  %70 = add nsw i32 %69, 3
  store i32 %70, i32* %2, align 4
  br label %92

71:                                               ; preds = %61
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @current_gdbarch, align 4
  %74 = call %struct.TYPE_2__* @mips_regnum(i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %72, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i32, i32* @REGNO_OFFSET, align 4
  %80 = add nsw i32 %79, 4
  store i32 %80, i32* %2, align 4
  br label %92

81:                                               ; preds = %71
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @current_gdbarch, align 4
  %84 = call %struct.TYPE_2__* @mips_regnum(i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %82, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load i32, i32* @REGNO_OFFSET, align 4
  %90 = add nsw i32 %89, 5
  store i32 %90, i32* %2, align 4
  br label %92

91:                                               ; preds = %81
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %88, %78, %68, %58, %48, %38, %23, %6
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.TYPE_2__* @mips_regnum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

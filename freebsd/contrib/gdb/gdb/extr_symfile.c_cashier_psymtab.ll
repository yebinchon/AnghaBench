; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_cashier_psymtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_cashier_psymtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partial_symtab = type { i32, %struct.partial_symtab**, %struct.partial_symtab*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.partial_symtab* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.partial_symtab*)* @cashier_psymtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cashier_psymtab(%struct.partial_symtab* %0) #0 {
  %2 = alloca %struct.partial_symtab*, align 8
  %3 = alloca %struct.partial_symtab*, align 8
  %4 = alloca %struct.partial_symtab*, align 8
  %5 = alloca i32, align 4
  store %struct.partial_symtab* %0, %struct.partial_symtab** %2, align 8
  store %struct.partial_symtab* null, %struct.partial_symtab** %4, align 8
  %6 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %7 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.partial_symtab*, %struct.partial_symtab** %9, align 8
  store %struct.partial_symtab* %10, %struct.partial_symtab** %3, align 8
  br label %11

11:                                               ; preds = %21, %1
  %12 = load %struct.partial_symtab*, %struct.partial_symtab** %3, align 8
  %13 = icmp ne %struct.partial_symtab* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load %struct.partial_symtab*, %struct.partial_symtab** %3, align 8
  %16 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %17 = icmp eq %struct.partial_symtab* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %25

19:                                               ; preds = %14
  %20 = load %struct.partial_symtab*, %struct.partial_symtab** %3, align 8
  store %struct.partial_symtab* %20, %struct.partial_symtab** %4, align 8
  br label %21

21:                                               ; preds = %19
  %22 = load %struct.partial_symtab*, %struct.partial_symtab** %3, align 8
  %23 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %22, i32 0, i32 2
  %24 = load %struct.partial_symtab*, %struct.partial_symtab** %23, align 8
  store %struct.partial_symtab* %24, %struct.partial_symtab** %3, align 8
  br label %11

25:                                               ; preds = %18, %11
  %26 = load %struct.partial_symtab*, %struct.partial_symtab** %3, align 8
  %27 = icmp ne %struct.partial_symtab* %26, null
  br i1 %27, label %28, label %89

28:                                               ; preds = %25
  %29 = load %struct.partial_symtab*, %struct.partial_symtab** %3, align 8
  %30 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %31 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.partial_symtab*, %struct.partial_symtab** %33, align 8
  %35 = icmp eq %struct.partial_symtab* %29, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load %struct.partial_symtab*, %struct.partial_symtab** %3, align 8
  %38 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %37, i32 0, i32 2
  %39 = load %struct.partial_symtab*, %struct.partial_symtab** %38, align 8
  %40 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %41 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store %struct.partial_symtab* %39, %struct.partial_symtab** %43, align 8
  br label %50

44:                                               ; preds = %28
  %45 = load %struct.partial_symtab*, %struct.partial_symtab** %3, align 8
  %46 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %45, i32 0, i32 2
  %47 = load %struct.partial_symtab*, %struct.partial_symtab** %46, align 8
  %48 = load %struct.partial_symtab*, %struct.partial_symtab** %4, align 8
  %49 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %48, i32 0, i32 2
  store %struct.partial_symtab* %47, %struct.partial_symtab** %49, align 8
  br label %50

50:                                               ; preds = %44, %36
  br label %51

51:                                               ; preds = %77, %50
  %52 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %53 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %52, i32 0, i32 3
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load %struct.partial_symtab*, %struct.partial_symtab** %55, align 8
  store %struct.partial_symtab* %56, %struct.partial_symtab** %3, align 8
  br label %57

57:                                               ; preds = %84, %51
  %58 = load %struct.partial_symtab*, %struct.partial_symtab** %3, align 8
  %59 = icmp ne %struct.partial_symtab* %58, null
  br i1 %59, label %60, label %88

60:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %80, %60
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.partial_symtab*, %struct.partial_symtab** %3, align 8
  %64 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %61
  %68 = load %struct.partial_symtab*, %struct.partial_symtab** %3, align 8
  %69 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %68, i32 0, i32 1
  %70 = load %struct.partial_symtab**, %struct.partial_symtab*** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.partial_symtab*, %struct.partial_symtab** %70, i64 %72
  %74 = load %struct.partial_symtab*, %struct.partial_symtab** %73, align 8
  %75 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %76 = icmp eq %struct.partial_symtab* %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = load %struct.partial_symtab*, %struct.partial_symtab** %3, align 8
  call void @cashier_psymtab(%struct.partial_symtab* %78)
  br label %51

79:                                               ; preds = %67
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %61

83:                                               ; preds = %61
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.partial_symtab*, %struct.partial_symtab** %3, align 8
  %86 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %85, i32 0, i32 2
  %87 = load %struct.partial_symtab*, %struct.partial_symtab** %86, align 8
  store %struct.partial_symtab* %87, %struct.partial_symtab** %3, align 8
  br label %57

88:                                               ; preds = %57
  br label %89

89:                                               ; preds = %88, %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symmisc.c_free_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symmisc.c_free_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab = type { i32, %struct.TYPE_2__*, %struct.symtab*, %struct.symtab*, %struct.symtab*, i32 (%struct.symtab*)* }
%struct.TYPE_2__ = type { i32 }
%struct.blockvector = type { i32, %struct.TYPE_2__*, %struct.blockvector*, %struct.blockvector*, %struct.blockvector*, i32 (%struct.symtab*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_symtab(%struct.symtab* %0) #0 {
  %2 = alloca %struct.symtab*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.blockvector*, align 8
  store %struct.symtab* %0, %struct.symtab** %2, align 8
  %6 = load %struct.symtab*, %struct.symtab** %2, align 8
  %7 = getelementptr inbounds %struct.symtab, %struct.symtab* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %56 [
    i32 128, label %9
    i32 130, label %10
    i32 129, label %42
  ]

9:                                                ; preds = %1
  br label %56

10:                                               ; preds = %1
  %11 = load %struct.symtab*, %struct.symtab** %2, align 8
  %12 = call %struct.symtab* @BLOCKVECTOR(%struct.symtab* %11)
  %13 = bitcast %struct.symtab* %12 to %struct.blockvector*
  store %struct.blockvector* %13, %struct.blockvector** %5, align 8
  %14 = load %struct.blockvector*, %struct.blockvector** %5, align 8
  %15 = bitcast %struct.blockvector* %14 to %struct.symtab*
  %16 = call i32 @BLOCKVECTOR_NBLOCKS(%struct.symtab* %15)
  store i32 %16, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %30, %10
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load %struct.symtab*, %struct.symtab** %2, align 8
  %23 = getelementptr inbounds %struct.symtab, %struct.symtab* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load %struct.blockvector*, %struct.blockvector** %5, align 8
  %26 = bitcast %struct.blockvector* %25 to %struct.symtab*
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @BLOCKVECTOR_BLOCK(%struct.symtab* %26, i32 %27)
  %29 = call i32 @free_symtab_block(%struct.TYPE_2__* %24, i32 %28)
  br label %30

30:                                               ; preds = %21
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %17

33:                                               ; preds = %17
  %34 = load %struct.symtab*, %struct.symtab** %2, align 8
  %35 = getelementptr inbounds %struct.symtab, %struct.symtab* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.blockvector*, %struct.blockvector** %5, align 8
  %40 = bitcast %struct.blockvector* %39 to %struct.symtab*
  %41 = call i32 @xmfree(i32 %38, %struct.symtab* %40)
  br label %42

42:                                               ; preds = %1, %33
  %43 = load %struct.symtab*, %struct.symtab** %2, align 8
  %44 = call %struct.symtab* @LINETABLE(%struct.symtab* %43)
  %45 = icmp ne %struct.symtab* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load %struct.symtab*, %struct.symtab** %2, align 8
  %48 = getelementptr inbounds %struct.symtab, %struct.symtab* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.symtab*, %struct.symtab** %2, align 8
  %53 = call %struct.symtab* @LINETABLE(%struct.symtab* %52)
  %54 = call i32 @xmfree(i32 %51, %struct.symtab* %53)
  br label %55

55:                                               ; preds = %46, %42
  br label %56

56:                                               ; preds = %1, %55, %9
  %57 = load %struct.symtab*, %struct.symtab** %2, align 8
  %58 = getelementptr inbounds %struct.symtab, %struct.symtab* %57, i32 0, i32 5
  %59 = load i32 (%struct.symtab*)*, i32 (%struct.symtab*)** %58, align 8
  %60 = icmp ne i32 (%struct.symtab*)* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.symtab*, %struct.symtab** %2, align 8
  %63 = getelementptr inbounds %struct.symtab, %struct.symtab* %62, i32 0, i32 5
  %64 = load i32 (%struct.symtab*)*, i32 (%struct.symtab*)** %63, align 8
  %65 = load %struct.symtab*, %struct.symtab** %2, align 8
  %66 = call i32 %64(%struct.symtab* %65)
  br label %67

67:                                               ; preds = %61, %56
  %68 = load %struct.symtab*, %struct.symtab** %2, align 8
  %69 = getelementptr inbounds %struct.symtab, %struct.symtab* %68, i32 0, i32 4
  %70 = load %struct.symtab*, %struct.symtab** %69, align 8
  %71 = icmp ne %struct.symtab* %70, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load %struct.symtab*, %struct.symtab** %2, align 8
  %74 = getelementptr inbounds %struct.symtab, %struct.symtab* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.symtab*, %struct.symtab** %2, align 8
  %79 = getelementptr inbounds %struct.symtab, %struct.symtab* %78, i32 0, i32 4
  %80 = load %struct.symtab*, %struct.symtab** %79, align 8
  %81 = call i32 @xmfree(i32 %77, %struct.symtab* %80)
  br label %82

82:                                               ; preds = %72, %67
  %83 = load %struct.symtab*, %struct.symtab** %2, align 8
  %84 = getelementptr inbounds %struct.symtab, %struct.symtab* %83, i32 0, i32 3
  %85 = load %struct.symtab*, %struct.symtab** %84, align 8
  %86 = icmp ne %struct.symtab* %85, null
  br i1 %86, label %87, label %97

87:                                               ; preds = %82
  %88 = load %struct.symtab*, %struct.symtab** %2, align 8
  %89 = getelementptr inbounds %struct.symtab, %struct.symtab* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.symtab*, %struct.symtab** %2, align 8
  %94 = getelementptr inbounds %struct.symtab, %struct.symtab* %93, i32 0, i32 3
  %95 = load %struct.symtab*, %struct.symtab** %94, align 8
  %96 = call i32 @xmfree(i32 %92, %struct.symtab* %95)
  br label %97

97:                                               ; preds = %87, %82
  %98 = load %struct.symtab*, %struct.symtab** %2, align 8
  %99 = getelementptr inbounds %struct.symtab, %struct.symtab* %98, i32 0, i32 2
  %100 = load %struct.symtab*, %struct.symtab** %99, align 8
  %101 = icmp ne %struct.symtab* %100, null
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = load %struct.symtab*, %struct.symtab** %2, align 8
  %104 = getelementptr inbounds %struct.symtab, %struct.symtab* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.symtab*, %struct.symtab** %2, align 8
  %109 = getelementptr inbounds %struct.symtab, %struct.symtab* %108, i32 0, i32 2
  %110 = load %struct.symtab*, %struct.symtab** %109, align 8
  %111 = call i32 @xmfree(i32 %107, %struct.symtab* %110)
  br label %112

112:                                              ; preds = %102, %97
  %113 = load %struct.symtab*, %struct.symtab** %2, align 8
  %114 = getelementptr inbounds %struct.symtab, %struct.symtab* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.symtab*, %struct.symtab** %2, align 8
  %119 = call i32 @xmfree(i32 %117, %struct.symtab* %118)
  ret void
}

declare dso_local %struct.symtab* @BLOCKVECTOR(%struct.symtab*) #1

declare dso_local i32 @BLOCKVECTOR_NBLOCKS(%struct.symtab*) #1

declare dso_local i32 @free_symtab_block(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @BLOCKVECTOR_BLOCK(%struct.symtab*, i32) #1

declare dso_local i32 @xmfree(i32, %struct.symtab*) #1

declare dso_local %struct.symtab* @LINETABLE(%struct.symtab*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

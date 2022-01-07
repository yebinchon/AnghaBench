; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_psymtab_to_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_psymtab_to_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab = type { i32 }
%struct.partial_symtab = type { %struct.symtab*, i32 (%struct.partial_symtab*)*, i32 }
%struct.cleanup = type { i32 }

@decrement_reading_symtab = common dso_local global i32 0, align 4
@currently_reading_symtab = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symtab* @psymtab_to_symtab(%struct.partial_symtab* %0) #0 {
  %2 = alloca %struct.symtab*, align 8
  %3 = alloca %struct.partial_symtab*, align 8
  %4 = alloca %struct.cleanup*, align 8
  store %struct.partial_symtab* %0, %struct.partial_symtab** %3, align 8
  %5 = load %struct.partial_symtab*, %struct.partial_symtab** %3, align 8
  %6 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %5, i32 0, i32 0
  %7 = load %struct.symtab*, %struct.symtab** %6, align 8
  %8 = icmp ne %struct.symtab* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.partial_symtab*, %struct.partial_symtab** %3, align 8
  %11 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %10, i32 0, i32 0
  %12 = load %struct.symtab*, %struct.symtab** %11, align 8
  store %struct.symtab* %12, %struct.symtab** %2, align 8
  br label %34

13:                                               ; preds = %1
  %14 = load %struct.partial_symtab*, %struct.partial_symtab** %3, align 8
  %15 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @decrement_reading_symtab, align 4
  %20 = call %struct.cleanup* @make_cleanup(i32 %19, i32* null)
  store %struct.cleanup* %20, %struct.cleanup** %4, align 8
  %21 = load i32, i32* @currently_reading_symtab, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @currently_reading_symtab, align 4
  %23 = load %struct.partial_symtab*, %struct.partial_symtab** %3, align 8
  %24 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %23, i32 0, i32 1
  %25 = load i32 (%struct.partial_symtab*)*, i32 (%struct.partial_symtab*)** %24, align 8
  %26 = load %struct.partial_symtab*, %struct.partial_symtab** %3, align 8
  %27 = call i32 %25(%struct.partial_symtab* %26)
  %28 = load %struct.cleanup*, %struct.cleanup** %4, align 8
  %29 = call i32 @do_cleanups(%struct.cleanup* %28)
  br label %30

30:                                               ; preds = %18, %13
  %31 = load %struct.partial_symtab*, %struct.partial_symtab** %3, align 8
  %32 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %31, i32 0, i32 0
  %33 = load %struct.symtab*, %struct.symtab** %32, align 8
  store %struct.symtab* %33, %struct.symtab** %2, align 8
  br label %34

34:                                               ; preds = %30, %9
  %35 = load %struct.symtab*, %struct.symtab** %2, align 8
  ret %struct.symtab* %35
}

declare dso_local %struct.cleanup* @make_cleanup(i32, i32*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

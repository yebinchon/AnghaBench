; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_xcoff_symfile_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_xcoff_symfile_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32, i32, i32 }

@OBJF_REORDERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.objfile*)* @xcoff_symfile_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xcoff_symfile_init(%struct.objfile* %0) #0 {
  %2 = alloca %struct.objfile*, align 8
  store %struct.objfile* %0, %struct.objfile** %2, align 8
  %3 = load %struct.objfile*, %struct.objfile** %2, align 8
  %4 = getelementptr inbounds %struct.objfile, %struct.objfile* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @xmmalloc(i32 %5, i32 4)
  %7 = load %struct.objfile*, %struct.objfile** %2, align 8
  %8 = getelementptr inbounds %struct.objfile, %struct.objfile* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @OBJF_REORDERED, align 4
  %10 = load %struct.objfile*, %struct.objfile** %2, align 8
  %11 = getelementptr inbounds %struct.objfile, %struct.objfile* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.objfile*, %struct.objfile** %2, align 8
  %15 = call i32 @init_entry_point_info(%struct.objfile* %14)
  ret void
}

declare dso_local i32 @xmmalloc(i32, i32) #1

declare dso_local i32 @init_entry_point_info(%struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/base/extr_heimbase.c_memory_dealloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/base/extr_heimbase.c_memory_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.heim_base_mem = type { i32 (i8*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @memory_dealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @memory_dealloc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.heim_base_mem*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @PTR2BASE(i8* %4)
  %6 = inttoptr i64 %5 to %struct.heim_base_mem*
  store %struct.heim_base_mem* %6, %struct.heim_base_mem** %3, align 8
  %7 = load %struct.heim_base_mem*, %struct.heim_base_mem** %3, align 8
  %8 = getelementptr inbounds %struct.heim_base_mem, %struct.heim_base_mem* %7, i32 0, i32 0
  %9 = load i32 (i8*)*, i32 (i8*)** %8, align 8
  %10 = icmp ne i32 (i8*)* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.heim_base_mem*, %struct.heim_base_mem** %3, align 8
  %13 = getelementptr inbounds %struct.heim_base_mem, %struct.heim_base_mem* %12, i32 0, i32 0
  %14 = load i32 (i8*)*, i32 (i8*)** %13, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 %14(i8* %15)
  br label %17

17:                                               ; preds = %11, %1
  ret void
}

declare dso_local i64 @PTR2BASE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

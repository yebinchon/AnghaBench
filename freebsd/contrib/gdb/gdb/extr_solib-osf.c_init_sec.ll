; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-osf.c_init_sec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-osf.c_init_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.so_list = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.lm_sec* }
%struct.lm_sec = type { i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.so_list*, i32, i8*, i8*, i8*, i8*)* @init_sec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_sec(%struct.so_list* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.so_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.lm_sec*, align 8
  store %struct.so_list* %0, %struct.so_list** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load %struct.so_list*, %struct.so_list** %7, align 8
  %15 = getelementptr inbounds %struct.so_list, %struct.so_list* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.lm_sec*, %struct.lm_sec** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.lm_sec, %struct.lm_sec* %18, i64 %20
  store %struct.lm_sec* %21, %struct.lm_sec** %13, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load %struct.lm_sec*, %struct.lm_sec** %13, align 8
  %24 = getelementptr inbounds %struct.lm_sec, %struct.lm_sec* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load %struct.lm_sec*, %struct.lm_sec** %13, align 8
  %27 = getelementptr inbounds %struct.lm_sec, %struct.lm_sec* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct.lm_sec*, %struct.lm_sec** %13, align 8
  %35 = getelementptr inbounds %struct.lm_sec, %struct.lm_sec* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_dbadd_mlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_dbadd_mlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlink = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@NAME_FILE = common dso_local global i32 0, align 4
@DBP_SECT = common dso_local global i32 0, align 4
@DBP_ARCH = common dso_local global i32 0, align 4
@DBP_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlink*)* @dbadd_mlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbadd_mlink(%struct.mlink* %0) #0 {
  %2 = alloca %struct.mlink*, align 8
  store %struct.mlink* %0, %struct.mlink** %2, align 8
  %3 = load %struct.mlink*, %struct.mlink** %2, align 8
  %4 = getelementptr inbounds %struct.mlink, %struct.mlink* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.mlink*, %struct.mlink** %2, align 8
  %9 = getelementptr inbounds %struct.mlink, %struct.mlink* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @NAME_FILE, align 4
  %12 = call i32 @dba_page_alias(i32 %7, i32 %10, i32 %11)
  %13 = load %struct.mlink*, %struct.mlink** %2, align 8
  %14 = getelementptr inbounds %struct.mlink, %struct.mlink* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DBP_SECT, align 4
  %19 = load %struct.mlink*, %struct.mlink** %2, align 8
  %20 = getelementptr inbounds %struct.mlink, %struct.mlink* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dba_page_add(i32 %17, i32 %18, i32 %21)
  %23 = load %struct.mlink*, %struct.mlink** %2, align 8
  %24 = getelementptr inbounds %struct.mlink, %struct.mlink* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DBP_SECT, align 4
  %29 = load %struct.mlink*, %struct.mlink** %2, align 8
  %30 = getelementptr inbounds %struct.mlink, %struct.mlink* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dba_page_add(i32 %27, i32 %28, i32 %31)
  %33 = load %struct.mlink*, %struct.mlink** %2, align 8
  %34 = getelementptr inbounds %struct.mlink, %struct.mlink* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DBP_ARCH, align 4
  %39 = load %struct.mlink*, %struct.mlink** %2, align 8
  %40 = getelementptr inbounds %struct.mlink, %struct.mlink* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dba_page_add(i32 %37, i32 %38, i32 %41)
  %43 = load %struct.mlink*, %struct.mlink** %2, align 8
  %44 = getelementptr inbounds %struct.mlink, %struct.mlink* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DBP_FILE, align 4
  %49 = load %struct.mlink*, %struct.mlink** %2, align 8
  %50 = getelementptr inbounds %struct.mlink, %struct.mlink* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dba_page_add(i32 %47, i32 %48, i32 %51)
  ret void
}

declare dso_local i32 @dba_page_alias(i32, i32, i32) #1

declare dso_local i32 @dba_page_add(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

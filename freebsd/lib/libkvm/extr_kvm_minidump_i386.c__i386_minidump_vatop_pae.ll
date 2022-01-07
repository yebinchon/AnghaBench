; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_i386.c__i386_minidump_vatop_pae.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_i386.c__i386_minidump_vatop_pae.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.vmstate* }
%struct.vmstate = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@I386_PAGE_MASK = common dso_local global i32 0, align 4
@I386_PAGE_SHIFT = common dso_local global i32 0, align 4
@I386_PG_V = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"_i386_minidump_vatop_pae: pte not valid\00", align 1
@I386_PG_FRAME_PAE = common dso_local global i32 0, align 4
@I386_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"_i386_minidump_vatop_pae: physical address 0x%jx not in minidump\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"_i386_minidump_vatop_pae: virtual address 0x%jx not minidumped\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"invalid address (0x%jx)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32*)* @_i386_minidump_vatop_pae to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_i386_minidump_vatop_pae(%struct.TYPE_8__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vmstate*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load %struct.vmstate*, %struct.vmstate** %15, align 8
  store %struct.vmstate* %16, %struct.vmstate** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @I386_PAGE_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %22 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %20, %24
  br i1 %25, label %26, label %84

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %29 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %27, %31
  %33 = load i32, i32* @I386_PAGE_SHIFT, align 4
  %34 = ashr i32 %32, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %38 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = udiv i64 %41, 4
  %43 = icmp uge i64 %36, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %26
  br label %91

45:                                               ; preds = %26
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @_i386_pte_pae_get(%struct.TYPE_8__* %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @I386_PG_V, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %54, i32 %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %91

59:                                               ; preds = %45
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @I386_PG_FRAME_PAE, align 4
  %62 = and i32 %60, %61
  store i32 %62, i32* %12, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @I386_PAGE_SIZE, align 4
  %66 = call i32 @_kvm_pt_find(%struct.TYPE_8__* %63, i32 %64, i32 %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %76

69:                                               ; preds = %59
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %70, i32 %73, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %91

76:                                               ; preds = %59
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %77, %78
  %80 = load i32*, i32** %7, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* @I386_PAGE_SIZE, align 4
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 %81, %82
  store i32 %83, i32* %4, align 4
  br label %95

84:                                               ; preds = %3
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %85, i32 %88, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %84, %69, %53, %44
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %92, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %91, %76
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @_i386_pte_pae_get(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @_kvm_err(%struct.TYPE_8__*, i32, i8*, ...) #1

declare dso_local i32 @_kvm_pt_find(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

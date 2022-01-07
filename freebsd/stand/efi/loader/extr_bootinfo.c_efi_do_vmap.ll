; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_bootinfo.c_efi_do_vmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_bootinfo.c_efi_do_vmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (i32, i32, i32, %struct.TYPE_9__*)* }
%struct.TYPE_9__ = type { i32, i32, i32 }

@EFI_OUT_OF_RESOURCES = common dso_local global i32 0, align 4
@EFI_MEMORY_RUNTIME = common dso_local global i32 0, align 4
@RS = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32, i32)* @efi_do_vmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efi_do_vmap(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = sdiv i32 %18, %19
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.TYPE_9__* @malloc(i32 %21)
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %12, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %24 = icmp eq %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @EFI_OUT_OF_RESOURCES, align 4
  store i32 %26, i32* %5, align 4
  br label %76

27:                                               ; preds = %4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %11, align 8
  store i32 0, i32* %14, align 4
  br label %29

29:                                               ; preds = %56, %27
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %29
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @EFI_MEMORY_RUNTIME, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %33
  %41 = load i32, i32* %16, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %16, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %50 = bitcast %struct.TYPE_9__* %48 to i8*
  %51 = bitcast %struct.TYPE_9__* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 12, i1 false)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call %struct.TYPE_9__* @NextMemoryDescriptor(%struct.TYPE_9__* %52, i32 %53)
  store %struct.TYPE_9__* %54, %struct.TYPE_9__** %11, align 8
  br label %55

55:                                               ; preds = %40, %33
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %14, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call %struct.TYPE_9__* @NextMemoryDescriptor(%struct.TYPE_9__* %59, i32 %60)
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %10, align 8
  br label %29

62:                                               ; preds = %29
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** @RS, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32 (i32, i32, i32, %struct.TYPE_9__*)*, i32 (i32, i32, i32, %struct.TYPE_9__*)** %64, align 8
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %8, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %72 = call i32 %65(i32 %68, i32 %69, i32 %70, %struct.TYPE_9__* %71)
  store i32 %72, i32* %13, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %74 = call i32 @free(%struct.TYPE_9__* %73)
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %62, %25
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local %struct.TYPE_9__* @malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_9__* @NextMemoryDescriptor(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

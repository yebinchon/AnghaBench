; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_sparc64.c__sparc64_kvatop.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_sparc64.c__sparc64_kvatop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.sparc64_tte = type { i8*, i8* }

@SPARC64_PAGE_MASK = common dso_local global i32 0, align 4
@SPARC64_MIN_DIRECT_ADDRESS = common dso_local global i32 0, align 4
@SPARC64_PAGE_SHIFT = common dso_local global i32 0, align 4
@SPARC64_TTE_SHIFT = common dso_local global i32 0, align 4
@SPARC64_PAGE_SIZE = common dso_local global i32 0, align 4
@KVM_OFF_NOTFOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid address (%jx)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32*)* @_sparc64_kvatop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_sparc64_kvatop(%struct.TYPE_6__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sparc64_tte, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @SPARC64_PAGE_MASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @SPARC64_MIN_DIRECT_ADDRESS, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @SPARC64_DIRECT_TO_PHYS(i32 %21)
  %23 = load i32, i32* @SPARC64_PAGE_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  store i32 %25, i32* %11, align 4
  br label %65

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @SPARC64_PAGE_SHIFT, align 4
  %29 = ashr i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %35, %40
  %42 = load i32, i32* @SPARC64_TTE_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = add nsw i32 %34, %43
  store i32 %44, i32* %9, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @_sparc64_read_phys(%struct.TYPE_6__* %45, i32 %46, %struct.sparc64_tte* %8, i32 16)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %26
  br label %85

50:                                               ; preds = %26
  %51 = getelementptr inbounds %struct.sparc64_tte, %struct.sparc64_tte* %8, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i8* @be64toh(i8* %52)
  %54 = getelementptr inbounds %struct.sparc64_tte, %struct.sparc64_tte* %8, i32 0, i32 1
  store i8* %53, i8** %54, align 8
  %55 = getelementptr inbounds %struct.sparc64_tte, %struct.sparc64_tte* %8, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i8* @be64toh(i8* %56)
  %58 = getelementptr inbounds %struct.sparc64_tte, %struct.sparc64_tte* %8, i32 0, i32 0
  store i8* %57, i8** %58, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @sparc64_tte_match(%struct.sparc64_tte* %8, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %50
  br label %85

63:                                               ; preds = %50
  %64 = call i32 @SPARC64_TTE_GET_PA(%struct.sparc64_tte* %8)
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %63, %20
  %66 = load i32, i32* @SPARC64_PAGE_SIZE, align 4
  %67 = load i32, i32* %12, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %13, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @_sparc64_find_off(%struct.TYPE_7__* %71, i32 %72, i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @KVM_OFF_NOTFOUND, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %65
  br label %85

79:                                               ; preds = %65
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32*, i32** %7, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %4, align 4
  br label %89

85:                                               ; preds = %78, %62, %49
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @_kvm_err(%struct.TYPE_6__* %86, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %87)
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %85, %79
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @SPARC64_DIRECT_TO_PHYS(i32) #1

declare dso_local i32 @_sparc64_read_phys(%struct.TYPE_6__*, i32, %struct.sparc64_tte*, i32) #1

declare dso_local i8* @be64toh(i8*) #1

declare dso_local i32 @sparc64_tte_match(%struct.sparc64_tte*, i32) #1

declare dso_local i32 @SPARC64_TTE_GET_PA(%struct.sparc64_tte*) #1

declare dso_local i32 @_sparc64_find_off(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @_kvm_err(%struct.TYPE_6__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

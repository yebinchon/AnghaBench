; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_demote_DMAP.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_demote_DMAP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [42 x i8] c"pmap_demote_DMAP: len is not a power of 2\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"pmap_demote_DMAP: base is not a multiple of len\00", align 1
@NBPDP = common dso_local global i32 0, align 4
@dmaplimit = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global i32 0, align 4
@X86_PG_V = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"pmap_demote_DMAP: invalid PDPE\00", align 1
@PG_PS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"pmap_demote_DMAP: PDPE failed\00", align 1
@TRUE = common dso_local global i64 0, align 8
@NBPDR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"pmap_demote_DMAP: invalid PDE\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"pmap_demote_DMAP: PDE failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_demote_DMAP(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %109

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @powerof2(i32 %15)
  %17 = call i32 @KASSERT(i32 %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sub nsw i32 %19, 1
  %21 = and i32 %18, %20
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @NBPDP, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %109

28:                                               ; preds = %14
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @dmaplimit, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %109

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @PHYS_TO_DMAP(i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i64, i64* @FALSE, align 8
  store i64 %35, i64* %10, align 8
  %36 = load i32, i32* @kernel_pmap, align 4
  %37 = call i32 @PMAP_LOCK(i32 %36)
  %38 = load i32, i32* @kernel_pmap, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32* @pmap_pdpe(i32 %38, i32 %39)
  store i32* %40, i32** %7, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @X86_PG_V, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %32
  %47 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %32
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PG_PS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = load i32, i32* @kernel_pmap, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @pmap_demote_pdpe(i32 %55, i32* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %54
  %61 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %54
  %63 = load i64, i64* @TRUE, align 8
  store i64 %63, i64* %10, align 8
  br label %64

64:                                               ; preds = %62, %48
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @NBPDR, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %96

68:                                               ; preds = %64
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32* @pmap_pdpe_to_pde(i32* %69, i32 %70)
  store i32* %71, i32** %8, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @X86_PG_V, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %68
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @PG_PS, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %79
  %86 = load i32, i32* @kernel_pmap, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @pmap_demote_pde(i32 %86, i32* %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %85
  %92 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %85
  %94 = load i64, i64* @TRUE, align 8
  store i64 %94, i64* %10, align 8
  br label %95

95:                                               ; preds = %93, %79
  br label %96

96:                                               ; preds = %95, %64
  %97 = load i64, i64* %10, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load i64, i64* %6, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i32, i32* @kernel_pmap, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @pmap_invalidate_page(i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %102, %99, %96
  %107 = load i32, i32* @kernel_pmap, align 4
  %108 = call i32 @PMAP_UNLOCK(i32 %107)
  br label %109

109:                                              ; preds = %13, %106, %28, %14
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @powerof2(i32) #1

declare dso_local i32 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32* @pmap_pdpe(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @pmap_demote_pdpe(i32, i32*, i32) #1

declare dso_local i32* @pmap_pdpe_to_pde(i32*, i32) #1

declare dso_local i32 @pmap_demote_pde(i32, i32*, i32) #1

declare dso_local i32 @pmap_invalidate_page(i32, i32) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

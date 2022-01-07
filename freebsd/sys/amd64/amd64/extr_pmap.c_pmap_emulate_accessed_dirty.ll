; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_emulate_accessed_dirty.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_emulate_accessed_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rwlock = type { i32 }

@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"pmap_emulate_accessed_dirty: invalid fault type %d\00", align 1
@PG_PS = common dso_local global i32 0, align 4
@NPTEPG = common dso_local global i64 0, align 8
@PG_FICTITIOUS = common dso_local global i32 0, align 4
@PG_FRAME = common dso_local global i32 0, align 4
@VM_MAXUSER_ADDRESS = common dso_local global i32 0, align 4
@ad_emulation_superpage_promotions = common dso_local global i32 0, align 4
@num_accessed_emulations = common dso_local global i32 0, align 4
@num_dirty_emulations = common dso_local global i32 0, align 4
@num_superpage_accessed_emulations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_emulate_accessed_dirty(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rwlock*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @VM_PROT_READ, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @VM_PROT_WRITE, align 4
  %22 = icmp eq i32 %20, %21
  br label %23

23:                                               ; preds = %19, %3
  %24 = phi i1 [ true, %3 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @KASSERT(i32 %25, i8* %28)
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @pmap_emulate_ad_bits(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %117

34:                                               ; preds = %23
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @pmap_accessed_bit(i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @pmap_modified_bit(i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @pmap_valid_bit(i32 %39)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @pmap_rw_bit(i32 %41)
  store i32 %42, i32* %14, align 4
  store i32 -1, i32* %8, align 4
  store %struct.rwlock* null, %struct.rwlock** %9, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @PMAP_LOCK(i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32* @pmap_pde(i32 %45, i32 %46)
  store i32* %47, i32** %10, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %34
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %15, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %34
  br label %107

57:                                               ; preds = %50
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PG_PS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %57
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @VM_PROT_READ, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i32, i32* %12, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %68
  store i32 %71, i32* %69, align 4
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %67, %63
  br label %107

73:                                               ; preds = %57
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32* @pmap_pde_to_pte(i32* %74, i32 %75)
  store i32* %76, i32** %11, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %15, align 4
  %80 = and i32 %78, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %107

83:                                               ; preds = %73
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @VM_PROT_WRITE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %83
  %88 = load i32*, i32** %11, align 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %14, align 4
  %91 = and i32 %89, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %107

94:                                               ; preds = %87
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %12, align 4
  %97 = or i32 %95, %96
  %98 = load i32*, i32** %11, align 8
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %97
  store i32 %100, i32* %98, align 4
  br label %106

101:                                              ; preds = %83
  %102 = load i32, i32* %12, align 4
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %102
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %101, %94
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %106, %93, %82, %72, %56
  %108 = load %struct.rwlock*, %struct.rwlock** %9, align 8
  %109 = icmp ne %struct.rwlock* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load %struct.rwlock*, %struct.rwlock** %9, align 8
  %112 = call i32 @rw_wunlock(%struct.rwlock* %111)
  br label %113

113:                                              ; preds = %110, %107
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @PMAP_UNLOCK(i32 %114)
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %113, %33
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pmap_emulate_ad_bits(i32) #1

declare dso_local i32 @pmap_accessed_bit(i32) #1

declare dso_local i32 @pmap_modified_bit(i32) #1

declare dso_local i32 @pmap_valid_bit(i32) #1

declare dso_local i32 @pmap_rw_bit(i32) #1

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32* @pmap_pde(i32, i32) #1

declare dso_local i32* @pmap_pde_to_pte(i32*, i32) #1

declare dso_local i32 @rw_wunlock(%struct.rwlock*) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

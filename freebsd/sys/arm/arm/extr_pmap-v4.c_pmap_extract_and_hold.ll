; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_extract_and_hold.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_extract_and_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.l2_dtable**, %struct.TYPE_8__* }
%struct.l2_dtable = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32* }

@kernel_pmap = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"huh\00", align 1
@L1_S_SUPERSEC = common dso_local global i32 0, align 4
@L1_SUP_FRAME = common dso_local global i32 0, align 4
@L1_SUP_OFFSET = common dso_local global i32 0, align 4
@L1_S_FRAME = common dso_local global i32 0, align 4
@L1_S_OFFSET = common dso_local global i32 0, align 4
@L1_S_PROT_W = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@L2_S_PROT_W = common dso_local global i32 0, align 4
@L2_TYPE_MASK = common dso_local global i32 0, align 4
@L2_TYPE_L = common dso_local global i32 0, align 4
@L2_L_FRAME = common dso_local global i32 0, align 4
@L2_L_OFFSET = common dso_local global i32 0, align 4
@L2_S_FRAME = common dso_local global i32 0, align 4
@L2_S_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pmap_extract_and_hold(%struct.TYPE_10__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.l2_dtable*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @L1_IDX(i32 %15)
  store i64 %16, i64* %14, align 8
  store i32* null, i32** %13, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = call i32 @PMAP_LOCK(%struct.TYPE_10__* %17)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %14, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @l1pte_section_p(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %75

30:                                               ; preds = %3
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kernel_pmap, align 8
  %33 = icmp eq %struct.TYPE_10__* %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @KASSERT(i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @L1_S_SUPERSEC, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %30
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @L1_SUP_FRAME, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @L1_SUP_OFFSET, align 4
  %46 = and i32 %44, %45
  %47 = or i32 %43, %46
  store i32 %47, i32* %12, align 4
  br label %56

48:                                               ; preds = %30
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @L1_S_FRAME, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @L1_S_OFFSET, align 4
  %54 = and i32 %52, %53
  %55 = or i32 %51, %54
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %48, %40
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @L1_S_PROT_W, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @VM_PROT_WRITE, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61, %56
  %67 = load i32, i32* %12, align 4
  %68 = call i32* @PHYS_TO_VM_PAGE(i32 %67)
  store i32* %68, i32** %13, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 @vm_page_wire_mapped(i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  store i32* null, i32** %13, align 8
  br label %73

73:                                               ; preds = %72, %66
  br label %74

74:                                               ; preds = %73, %61
  br label %151

75:                                               ; preds = %3
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load %struct.l2_dtable**, %struct.l2_dtable*** %77, align 8
  %79 = load i64, i64* %14, align 8
  %80 = call i64 @L2_IDX(i64 %79)
  %81 = getelementptr inbounds %struct.l2_dtable*, %struct.l2_dtable** %78, i64 %80
  %82 = load %struct.l2_dtable*, %struct.l2_dtable** %81, align 8
  store %struct.l2_dtable* %82, %struct.l2_dtable** %8, align 8
  %83 = load %struct.l2_dtable*, %struct.l2_dtable** %8, align 8
  %84 = icmp eq %struct.l2_dtable* %83, null
  br i1 %84, label %95, label %85

85:                                               ; preds = %75
  %86 = load %struct.l2_dtable*, %struct.l2_dtable** %8, align 8
  %87 = getelementptr inbounds %struct.l2_dtable, %struct.l2_dtable* %86, i32 0, i32 0
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = load i64, i64* %14, align 8
  %90 = call i64 @L2_BUCKET(i64 %89)
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  store i32* %93, i32** %10, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %85, %75
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %97 = call i32 @PMAP_UNLOCK(%struct.TYPE_10__* %96)
  store i32* null, i32** %4, align 8
  br label %155

98:                                               ; preds = %85
  %99 = load i32*, i32** %10, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i64 @l2pte_index(i32 %100)
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32* %102, i32** %10, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %98
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %109 = call i32 @PMAP_UNLOCK(%struct.TYPE_10__* %108)
  store i32* null, i32** %4, align 8
  br label %155

110:                                              ; preds = %98
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @L2_S_PROT_W, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @VM_PROT_WRITE, align 4
  %118 = and i32 %116, %117
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %150

120:                                              ; preds = %115, %110
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @L2_TYPE_MASK, align 4
  %123 = and i32 %121, %122
  %124 = load i32, i32* @L2_TYPE_L, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %120
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @L2_L_FRAME, align 4
  %129 = and i32 %127, %128
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @L2_L_OFFSET, align 4
  %132 = and i32 %130, %131
  %133 = or i32 %129, %132
  store i32 %133, i32* %12, align 4
  br label %142

134:                                              ; preds = %120
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* @L2_S_FRAME, align 4
  %137 = and i32 %135, %136
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @L2_S_OFFSET, align 4
  %140 = and i32 %138, %139
  %141 = or i32 %137, %140
  store i32 %141, i32* %12, align 4
  br label %142

142:                                              ; preds = %134, %126
  %143 = load i32, i32* %12, align 4
  %144 = call i32* @PHYS_TO_VM_PAGE(i32 %143)
  store i32* %144, i32** %13, align 8
  %145 = load i32*, i32** %13, align 8
  %146 = call i32 @vm_page_wire_mapped(i32* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %142
  store i32* null, i32** %13, align 8
  br label %149

149:                                              ; preds = %148, %142
  br label %150

150:                                              ; preds = %149, %115
  br label %151

151:                                              ; preds = %150, %74
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %153 = call i32 @PMAP_UNLOCK(%struct.TYPE_10__* %152)
  %154 = load i32*, i32** %13, align 8
  store i32* %154, i32** %4, align 8
  br label %155

155:                                              ; preds = %151, %107, %95
  %156 = load i32*, i32** %4, align 8
  ret i32* %156
}

declare dso_local i64 @L1_IDX(i32) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_10__*) #1

declare dso_local i64 @l1pte_section_p(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @vm_page_wire_mapped(i32*) #1

declare dso_local i64 @L2_IDX(i64) #1

declare dso_local i64 @L2_BUCKET(i64) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_10__*) #1

declare dso_local i64 @l2pte_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

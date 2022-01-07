; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_invalidate_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_invalidate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.invpcid_descr = type { i32, i64, i64 }

@PT_RVI = common dso_local global i64 0, align 8
@PT_EPT = common dso_local global i64 0, align 8
@PT_X86 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"pmap_invalidate_all: unknown type %d\00", align 1
@kernel_pmap = common dso_local global %struct.TYPE_7__* null, align 8
@pmap_pcid_enabled = common dso_local global i64 0, align 8
@invpcid_works = common dso_local global i64 0, align 8
@INVPCID_CTXGLOB = common dso_local global i32 0, align 4
@curpmap = common dso_local global i32 0, align 4
@INVPCID_CTX = common dso_local global i32 0, align 4
@PMAP_NO_CR3 = common dso_local global i32 0, align 4
@PMAP_PCID_USER_PT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_invalidate_all(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.invpcid_descr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PT_RVI, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PT_EPT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %11, %1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  br label %139

22:                                               ; preds = %11
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PT_X86, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @KASSERT(i32 %28, i8* %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** @kernel_pmap, align 8
  %36 = icmp eq %struct.TYPE_7__* %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %22
  %38 = load i64, i64* @pmap_pcid_enabled, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i64, i64* @invpcid_works, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = call i32 @bzero(%struct.invpcid_descr* %3, i32 24)
  %45 = load i32, i32* @INVPCID_CTXGLOB, align 4
  %46 = call i32 @invpcid(%struct.invpcid_descr* %3, i32 %45)
  br label %49

47:                                               ; preds = %40, %37
  %48 = call i32 (...) @invltlb_glob()
  br label %49

49:                                               ; preds = %47, %43
  br label %139

50:                                               ; preds = %22
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %52 = load i32, i32* @curpmap, align 4
  %53 = call %struct.TYPE_7__* @PCPU_GET(i32 %52)
  %54 = icmp eq %struct.TYPE_7__* %51, %53
  br i1 %54, label %55, label %128

55:                                               ; preds = %50
  %56 = load i64, i64* @pmap_pcid_enabled, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %125

58:                                               ; preds = %55
  %59 = call i32 (...) @critical_enter()
  %60 = load i64, i64* @invpcid_works, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %87

62:                                               ; preds = %58
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.invpcid_descr, %struct.invpcid_descr* %3, i32 0, i32 0
  store i32 %68, i32* %69, align 8
  %70 = getelementptr inbounds %struct.invpcid_descr, %struct.invpcid_descr* %3, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = getelementptr inbounds %struct.invpcid_descr, %struct.invpcid_descr* %3, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load i32, i32* @INVPCID_CTX, align 4
  %73 = call i32 @invpcid(%struct.invpcid_descr* %3, i32 %72)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @PMAP_NO_CR3, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %62
  %80 = load i32, i32* @PMAP_PCID_USER_PT, align 4
  %81 = getelementptr inbounds %struct.invpcid_descr, %struct.invpcid_descr* %3, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %80
  store i32 %83, i32* %81, align 8
  %84 = load i32, i32* @INVPCID_CTX, align 4
  %85 = call i32 @invpcid(%struct.invpcid_descr* %3, i32 %84)
  br label %86

86:                                               ; preds = %79, %62
  br label %123

87:                                               ; preds = %58
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %90, %96
  store i32 %97, i32* %4, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @PMAP_NO_CR3, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %119

103:                                              ; preds = %87
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %106, %112
  %114 = load i32, i32* @PMAP_PCID_USER_PT, align 4
  %115 = or i32 %113, %114
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @pmap_pti_pcid_invalidate(i32 %116, i32 %117)
  br label %122

119:                                              ; preds = %87
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @load_cr3(i32 %120)
  br label %122

122:                                              ; preds = %119, %103
  br label %123

123:                                              ; preds = %122, %86
  %124 = call i32 (...) @critical_exit()
  br label %127

125:                                              ; preds = %55
  %126 = call i32 (...) @invltlb()
  br label %127

127:                                              ; preds = %125, %123
  br label %138

128:                                              ; preds = %50
  %129 = load i64, i64* @pmap_pcid_enabled, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  store i64 0, i64* %136, align 8
  br label %137

137:                                              ; preds = %131, %128
  br label %138

138:                                              ; preds = %137, %127
  br label %139

139:                                              ; preds = %17, %138, %49
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bzero(%struct.invpcid_descr*, i32) #1

declare dso_local i32 @invpcid(%struct.invpcid_descr*, i32) #1

declare dso_local i32 @invltlb_glob(...) #1

declare dso_local %struct.TYPE_7__* @PCPU_GET(i32) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @pmap_pti_pcid_invalidate(i32, i32) #1

declare dso_local i32 @load_cr3(i32) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @invltlb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/powerpc/extr_reloc.c_reloc_non_plt.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/powerpc/extr_reloc.c_reloc_non_plt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, %struct.TYPE_8__*, i32*, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i64 }

@SYMLOOK_IFUNC = common dso_local global i32 0, align 4
@PT_LOAD = common dso_local global i64 0, align 8
@PF_X = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reloc_non_plt(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 -1, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @SYMLOOK_IFUNC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %117

20:                                               ; preds = %4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = icmp ne %struct.TYPE_7__* %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i32* @calloc(i32 %27, i32 4)
  store i32* %28, i32** %13, align 8
  br label %30

29:                                               ; preds = %20
  store i32* null, i32** %13, align 8
  br label %30

30:                                               ; preds = %29, %24
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = bitcast i32* %33 to i8*
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %34, i64 %38
  %40 = bitcast i8* %39 to i32*
  store i32* %40, i32** %10, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %11, align 8
  br label %44

44:                                               ; preds = %59, %30
  %45 = load i32*, i32** %11, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = icmp ult i32* %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = call i64 @reloc_nonplt_object(%struct.TYPE_7__* %49, %struct.TYPE_7__* %50, i32* %51, i32* %52, i32 %53, i32* %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %63

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58
  %60 = load i32*, i32** %11, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %11, align 8
  br label %44

62:                                               ; preds = %44
  store i32 0, i32* %14, align 4
  br label %63

63:                                               ; preds = %62, %57
  %64 = load i32*, i32** %13, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32*, i32** %13, align 8
  %68 = call i32 @free(i32* %67)
  br label %69

69:                                               ; preds = %66, %63
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  store %struct.TYPE_8__* %72, %struct.TYPE_8__** %12, align 8
  br label %73

73:                                               ; preds = %112, %69
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %75 = bitcast %struct.TYPE_8__* %74 to i8*
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = bitcast %struct.TYPE_8__* %78 to i8*
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %79, i64 %83
  %85 = icmp ult i8* %75, %84
  br i1 %85, label %86, label %115

86:                                               ; preds = %73
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @PT_LOAD, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %86
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @PF_X, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %92
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %102, %105
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @__syncicache(i64 %106, i32 %109)
  br label %111

111:                                              ; preds = %99, %92, %86
  br label %112

112:                                              ; preds = %111
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 1
  store %struct.TYPE_8__* %114, %struct.TYPE_8__** %12, align 8
  br label %73

115:                                              ; preds = %73
  %116 = load i32, i32* %14, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %115, %19
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i64 @reloc_nonplt_object(%struct.TYPE_7__*, %struct.TYPE_7__*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @__syncicache(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

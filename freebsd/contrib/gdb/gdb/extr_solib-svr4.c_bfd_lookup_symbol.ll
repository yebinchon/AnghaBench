; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-svr4.c_bfd_lookup_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-svr4.c_bfd_lookup_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i64, i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.cleanup = type { i32 }

@xfree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i32)* @bfd_lookup_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bfd_lookup_symbol(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cleanup*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %14, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @bfd_get_symtab_upper_bound(i32* %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %70

19:                                               ; preds = %3
  %20 = load i64, i64* %8, align 8
  %21 = call i64 @xmalloc(i64 %20)
  %22 = inttoptr i64 %21 to %struct.TYPE_7__**
  store %struct.TYPE_7__** %22, %struct.TYPE_7__*** %10, align 8
  %23 = load i32, i32* @xfree, align 4
  %24 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %25 = call %struct.cleanup* @make_cleanup(i32 %23, %struct.TYPE_7__** %24)
  store %struct.cleanup* %25, %struct.cleanup** %13, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %28 = call i32 @bfd_canonicalize_symtab(i32* %26, %struct.TYPE_7__** %27)
  store i32 %28, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %64, %19
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %67

33:                                               ; preds = %29
  %34 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %34, i32 1
  store %struct.TYPE_7__** %35, %struct.TYPE_7__*** %10, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %9, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i64 @strcmp(i32 %39, i8* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %33
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %43
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %56, %61
  store i64 %62, i64* %14, align 8
  br label %67

63:                                               ; preds = %43, %33
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %12, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %29

67:                                               ; preds = %53, %29
  %68 = load %struct.cleanup*, %struct.cleanup** %13, align 8
  %69 = call i32 @do_cleanups(%struct.cleanup* %68)
  br label %70

70:                                               ; preds = %67, %3
  %71 = load i64, i64* %14, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i64, i64* %14, align 8
  store i64 %74, i64* %4, align 8
  br label %133

75:                                               ; preds = %70
  %76 = load i32*, i32** %5, align 8
  %77 = call i64 @bfd_get_dynamic_symtab_upper_bound(i32* %76)
  store i64 %77, i64* %8, align 8
  %78 = load i64, i64* %8, align 8
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %131

80:                                               ; preds = %75
  %81 = load i64, i64* %8, align 8
  %82 = call i64 @xmalloc(i64 %81)
  %83 = inttoptr i64 %82 to %struct.TYPE_7__**
  store %struct.TYPE_7__** %83, %struct.TYPE_7__*** %10, align 8
  %84 = load i32, i32* @xfree, align 4
  %85 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %86 = call %struct.cleanup* @make_cleanup(i32 %84, %struct.TYPE_7__** %85)
  store %struct.cleanup* %86, %struct.cleanup** %13, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %89 = call i32 @bfd_canonicalize_dynamic_symtab(i32* %87, %struct.TYPE_7__** %88)
  store i32 %89, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %90

90:                                               ; preds = %125, %80
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %128

94:                                               ; preds = %90
  %95 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %95, i32 1
  store %struct.TYPE_7__** %96, %struct.TYPE_7__*** %10, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  store %struct.TYPE_7__* %97, %struct.TYPE_7__** %9, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = call i64 @strcmp(i32 %100, i8* %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %124

104:                                              ; preds = %94
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = and i32 %109, %110
  %112 = load i32, i32* %7, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %104
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %117, %122
  store i64 %123, i64* %14, align 8
  br label %128

124:                                              ; preds = %104, %94
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %12, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %12, align 4
  br label %90

128:                                              ; preds = %114, %90
  %129 = load %struct.cleanup*, %struct.cleanup** %13, align 8
  %130 = call i32 @do_cleanups(%struct.cleanup* %129)
  br label %131

131:                                              ; preds = %128, %75
  %132 = load i64, i64* %14, align 8
  store i64 %132, i64* %4, align 8
  br label %133

133:                                              ; preds = %131, %73
  %134 = load i64, i64* %4, align 8
  ret i64 %134
}

declare dso_local i64 @bfd_get_symtab_upper_bound(i32*) #1

declare dso_local i64 @xmalloc(i64) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, %struct.TYPE_7__**) #1

declare dso_local i32 @bfd_canonicalize_symtab(i32*, %struct.TYPE_7__**) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i64 @bfd_get_dynamic_symtab_upper_bound(i32*) #1

declare dso_local i32 @bfd_canonicalize_dynamic_symtab(i32*, %struct.TYPE_7__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_find_oload_champ_namespace_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_find_oload_champ_namespace_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.symbol = type { i32 }
%struct.badness_vector = type opaque
%struct.cleanup = type { i32 }

@STANDARD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.type**, i32, i8*, i8*, i32, %struct.symbol***, %struct.badness_vector**, i32*)* @find_oload_champ_namespace_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_oload_champ_namespace_loop(%struct.type** %0, i32 %1, i8* %2, i8* %3, i32 %4, %struct.symbol*** %5, %struct.badness_vector** %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.type**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.symbol***, align 8
  %16 = alloca %struct.badness_vector**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.cleanup*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.symbol**, align 8
  %24 = alloca %struct.badness_vector*, align 8
  %25 = alloca i8*, align 8
  store %struct.type** %0, %struct.type*** %10, align 8
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store %struct.symbol*** %5, %struct.symbol**** %15, align 8
  store %struct.badness_vector** %6, %struct.badness_vector*** %16, align 8
  store i32* %7, i32** %17, align 8
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %27 = load i32, i32* %18, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %8
  %30 = load i8*, i8** %13, align 8
  %31 = load i32, i32* %18, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 58
  %37 = zext i1 %36 to i32
  %38 = call i32 @gdb_assert(i32 %37)
  %39 = load i32, i32* %18, align 4
  %40 = add nsw i32 %39, 2
  store i32 %40, i32* %18, align 4
  br label %41

41:                                               ; preds = %29, %8
  %42 = load i8*, i8** %13, align 8
  %43 = load i32, i32* %18, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = call i64 @cp_find_first_component(i8* %45)
  %47 = load i32, i32* %18, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %18, align 4
  %51 = load %struct.symbol***, %struct.symbol**** %15, align 8
  store %struct.symbol** null, %struct.symbol*** %51, align 8
  %52 = load %struct.badness_vector**, %struct.badness_vector*** %16, align 8
  store %struct.badness_vector* null, %struct.badness_vector** %52, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = load i32, i32* %18, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 58
  br i1 %59, label %60, label %73

60:                                               ; preds = %41
  store i32 1, i32* %19, align 4
  %61 = load %struct.type**, %struct.type*** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i8*, i8** %12, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = load i32, i32* %18, align 4
  %66 = load %struct.symbol***, %struct.symbol**** %15, align 8
  %67 = load %struct.badness_vector**, %struct.badness_vector*** %16, align 8
  %68 = load i32*, i32** %17, align 8
  %69 = call i32 @find_oload_champ_namespace_loop(%struct.type** %61, i32 %62, i8* %63, i8* %64, i32 %65, %struct.symbol*** %66, %struct.badness_vector** %67, i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  store i32 1, i32* %9, align 4
  br label %154

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72, %41
  %74 = load %struct.symbol***, %struct.symbol**** %15, align 8
  %75 = load %struct.symbol**, %struct.symbol*** %74, align 8
  %76 = call %struct.cleanup* @make_cleanup(i32 (%struct.symbol**)* @xfree, %struct.symbol** %75)
  store %struct.cleanup* %76, %struct.cleanup** %21, align 8
  %77 = load %struct.badness_vector**, %struct.badness_vector*** %16, align 8
  %78 = load %struct.badness_vector*, %struct.badness_vector** %77, align 8
  %79 = bitcast %struct.badness_vector* %78 to %struct.symbol**
  %80 = call %struct.cleanup* @make_cleanup(i32 (%struct.symbol**)* @xfree, %struct.symbol** %79)
  store %struct.cleanup* %80, %struct.cleanup** %21, align 8
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, 1
  %83 = call i8* @alloca(i32 %82)
  store i8* %83, i8** %25, align 8
  %84 = load i8*, i8** %25, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @strncpy(i8* %84, i8* %85, i32 %86)
  %88 = load i8*, i8** %25, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  store i8 0, i8* %91, align 1
  %92 = load i8*, i8** %12, align 8
  %93 = load i8*, i8** %25, align 8
  %94 = call %struct.symbol** @make_symbol_overload_list(i8* %92, i8* %93)
  store %struct.symbol** %94, %struct.symbol*** %23, align 8
  br label %95

95:                                               ; preds = %102, %73
  %96 = load %struct.symbol**, %struct.symbol*** %23, align 8
  %97 = load i32, i32* %20, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.symbol*, %struct.symbol** %96, i64 %98
  %100 = load %struct.symbol*, %struct.symbol** %99, align 8
  %101 = icmp ne %struct.symbol* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load i32, i32* %20, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %20, align 4
  br label %95

105:                                              ; preds = %95
  %106 = load %struct.type**, %struct.type*** %10, align 8
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %20, align 4
  %109 = load %struct.symbol**, %struct.symbol*** %23, align 8
  %110 = bitcast %struct.badness_vector** %24 to %struct.symbol***
  %111 = call i32 @find_oload_champ(%struct.type** %106, i32 %107, i32 0, i32 %108, i32* null, %struct.symbol** %109, %struct.symbol*** %110)
  store i32 %111, i32* %22, align 4
  %112 = load i32, i32* %22, align 4
  %113 = icmp ne i32 %112, -1
  br i1 %113, label %114, label %130

114:                                              ; preds = %105
  %115 = load %struct.badness_vector*, %struct.badness_vector** %24, align 8
  %116 = bitcast %struct.badness_vector* %115 to %struct.symbol**
  %117 = load i32, i32* %11, align 4
  %118 = call i64 @classify_oload_match(%struct.symbol** %116, i32 %117, i32 0)
  %119 = load i64, i64* @STANDARD, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %114
  %122 = load %struct.symbol**, %struct.symbol*** %23, align 8
  %123 = load %struct.symbol***, %struct.symbol**** %15, align 8
  store %struct.symbol** %122, %struct.symbol*** %123, align 8
  %124 = load i32, i32* %22, align 4
  %125 = load i32*, i32** %17, align 8
  store i32 %124, i32* %125, align 4
  %126 = load %struct.badness_vector*, %struct.badness_vector** %24, align 8
  %127 = load %struct.badness_vector**, %struct.badness_vector*** %16, align 8
  store %struct.badness_vector* %126, %struct.badness_vector** %127, align 8
  %128 = load %struct.cleanup*, %struct.cleanup** %21, align 8
  %129 = call i32 @do_cleanups(%struct.cleanup* %128)
  store i32 1, i32* %9, align 4
  br label %154

130:                                              ; preds = %114, %105
  %131 = load i32, i32* %19, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %130
  %134 = load %struct.symbol**, %struct.symbol*** %23, align 8
  %135 = call i32 @xfree(%struct.symbol** %134)
  %136 = load %struct.badness_vector*, %struct.badness_vector** %24, align 8
  %137 = bitcast %struct.badness_vector* %136 to %struct.symbol**
  %138 = call i32 @xfree(%struct.symbol** %137)
  %139 = load %struct.cleanup*, %struct.cleanup** %21, align 8
  %140 = call i32 @discard_cleanups(%struct.cleanup* %139)
  store i32 0, i32* %9, align 4
  br label %154

141:                                              ; preds = %130
  %142 = load i32, i32* %22, align 4
  %143 = icmp ne i32 %142, -1
  %144 = zext i1 %143 to i32
  %145 = call i32 @gdb_assert(i32 %144)
  %146 = load %struct.symbol**, %struct.symbol*** %23, align 8
  %147 = load %struct.symbol***, %struct.symbol**** %15, align 8
  store %struct.symbol** %146, %struct.symbol*** %147, align 8
  %148 = load i32, i32* %22, align 4
  %149 = load i32*, i32** %17, align 8
  store i32 %148, i32* %149, align 4
  %150 = load %struct.badness_vector*, %struct.badness_vector** %24, align 8
  %151 = load %struct.badness_vector**, %struct.badness_vector*** %16, align 8
  store %struct.badness_vector* %150, %struct.badness_vector** %151, align 8
  %152 = load %struct.cleanup*, %struct.cleanup** %21, align 8
  %153 = call i32 @discard_cleanups(%struct.cleanup* %152)
  store i32 0, i32* %9, align 4
  br label %154

154:                                              ; preds = %141, %133, %121, %71
  %155 = load i32, i32* %9, align 4
  ret i32 %155
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i64 @cp_find_first_component(i8*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32 (%struct.symbol**)*, %struct.symbol**) #1

declare dso_local i32 @xfree(%struct.symbol**) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local %struct.symbol** @make_symbol_overload_list(i8*, i8*) #1

declare dso_local i32 @find_oload_champ(%struct.type**, i32, i32, i32, i32*, %struct.symbol**, %struct.symbol***) #1

declare dso_local i64 @classify_oload_match(%struct.symbol**, i32, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @discard_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

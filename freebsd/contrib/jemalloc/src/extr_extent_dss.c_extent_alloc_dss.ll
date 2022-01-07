; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_extent_dss.c_extent_alloc_dss.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_extent_dss.c_extent_alloc_dss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@have_dss = common dso_local global i32 0, align 4
@dss_exhausted = common dso_local global i32 0, align 4
@ATOMIC_ACQUIRE = common dso_local global i32 0, align 4
@NSIZES = common dso_local global i32 0, align 4
@extent_state_active = common dso_local global i32 0, align 4
@dss_max = common dso_local global i32 0, align 4
@ATOMIC_RELEASE = common dso_local global i32 0, align 4
@EXTENT_HOOKS_INITIALIZER = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @extent_alloc_dss(i32* %0, i32* %1, i8* %2, i64 %3, i64 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %28 = load i32, i32* @have_dss, align 4
  %29 = call i32 @cassert(i32 %28)
  %30 = load i64, i64* %12, align 8
  %31 = icmp ugt i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i64, i64* %13, align 8
  %35 = icmp ugt i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i64, i64* %12, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %7
  store i8* null, i8** %8, align 8
  br label %200

41:                                               ; preds = %7
  %42 = load i32*, i32** %9, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = call i32* @extent_alloc(i32* %42, i32* %43)
  store i32* %44, i32** %16, align 8
  %45 = load i32*, i32** %16, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i8* null, i8** %8, align 8
  br label %200

48:                                               ; preds = %41
  %49 = call i32 (...) @extent_dss_extending_start()
  %50 = load i32, i32* @ATOMIC_ACQUIRE, align 4
  %51 = call i32 @atomic_load_b(i32* @dss_exhausted, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %193, label %53

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53, %192
  %55 = load i8*, i8** %11, align 8
  %56 = call i8* @extent_dss_max_update(i8* %55)
  store i8* %56, i8** %17, align 8
  %57 = load i8*, i8** %17, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %194

60:                                               ; preds = %54
  %61 = load i8*, i8** %17, align 8
  %62 = ptrtoint i8* %61 to i64
  %63 = call i64 @PAGE_CEILING(i64 %62)
  %64 = inttoptr i64 %63 to i8*
  store i8* %64, i8** %18, align 8
  %65 = load i8*, i8** %18, align 8
  %66 = ptrtoint i8* %65 to i64
  %67 = load i64, i64* %13, align 8
  %68 = call i64 @ALIGNMENT_CEILING(i64 %66, i64 %67)
  %69 = inttoptr i64 %68 to i8*
  store i8* %69, i8** %19, align 8
  %70 = load i8*, i8** %19, align 8
  %71 = ptrtoint i8* %70 to i64
  %72 = load i8*, i8** %18, align 8
  %73 = ptrtoint i8* %72 to i64
  %74 = sub i64 %71, %73
  store i64 %74, i64* %20, align 8
  %75 = load i64, i64* %20, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %60
  %78 = load i32*, i32** %16, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = load i8*, i8** %18, align 8
  %81 = load i64, i64* %20, align 8
  %82 = load i32, i32* @NSIZES, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @arena_extent_sn_next(i32* %83)
  %85 = load i32, i32* @extent_state_active, align 4
  %86 = call i32 @extent_init(i32* %78, i32* %79, i8* %80, i64 %81, i64 0, i32 %82, i32 %84, i32 %85, i32 0, i32 1, i32 1)
  br label %87

87:                                               ; preds = %77, %60
  %88 = load i8*, i8** %19, align 8
  %89 = ptrtoint i8* %88 to i64
  %90 = load i64, i64* %12, align 8
  %91 = add i64 %89, %90
  %92 = inttoptr i64 %91 to i8*
  store i8* %92, i8** %21, align 8
  %93 = load i8*, i8** %19, align 8
  %94 = ptrtoint i8* %93 to i64
  %95 = load i8*, i8** %17, align 8
  %96 = ptrtoint i8* %95 to i64
  %97 = icmp ult i64 %94, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %87
  %99 = load i8*, i8** %21, align 8
  %100 = ptrtoint i8* %99 to i64
  %101 = load i8*, i8** %17, align 8
  %102 = ptrtoint i8* %101 to i64
  %103 = icmp ult i64 %100, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98, %87
  br label %194

105:                                              ; preds = %98
  %106 = load i8*, i8** %17, align 8
  store i8* %106, i8** %22, align 8
  %107 = load i8*, i8** %19, align 8
  %108 = ptrtoint i8* %107 to i64
  %109 = load i8*, i8** %22, align 8
  %110 = ptrtoint i8* %109 to i64
  %111 = sub i64 %108, %110
  store i64 %111, i64* %23, align 8
  %112 = load i64, i64* %23, align 8
  %113 = load i64, i64* %12, align 8
  %114 = add i64 %112, %113
  store i64 %114, i64* %24, align 8
  %115 = load i8*, i8** %17, align 8
  %116 = ptrtoint i8* %115 to i64
  %117 = load i64, i64* %24, align 8
  %118 = add i64 %116, %117
  %119 = load i8*, i8** %19, align 8
  %120 = ptrtoint i8* %119 to i64
  %121 = load i64, i64* %12, align 8
  %122 = add i64 %120, %121
  %123 = icmp eq i64 %118, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 @assert(i32 %124)
  %126 = load i64, i64* %24, align 8
  %127 = call i8* @extent_dss_sbrk(i64 %126)
  store i8* %127, i8** %25, align 8
  %128 = load i8*, i8** %25, align 8
  %129 = load i8*, i8** %17, align 8
  %130 = icmp eq i8* %128, %129
  br i1 %130, label %131, label %186

131:                                              ; preds = %105
  %132 = load i8*, i8** %21, align 8
  %133 = load i32, i32* @ATOMIC_RELEASE, align 4
  %134 = call i32 @atomic_store_p(i32* @dss_max, i8* %132, i32 %133)
  %135 = call i32 (...) @extent_dss_extending_finish()
  %136 = load i64, i64* %20, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %131
  %139 = load i32*, i32** %9, align 8
  %140 = load i32*, i32** %10, align 8
  %141 = load i32*, i32** %16, align 8
  %142 = call i32 @extent_dalloc_gap(i32* %139, i32* %140, i32* %141)
  br label %148

143:                                              ; preds = %131
  %144 = load i32*, i32** %9, align 8
  %145 = load i32*, i32** %10, align 8
  %146 = load i32*, i32** %16, align 8
  %147 = call i32 @extent_dalloc(i32* %144, i32* %145, i32* %146)
  br label %148

148:                                              ; preds = %143, %138
  %149 = load i32*, i32** %15, align 8
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %148
  %153 = load i8*, i8** %19, align 8
  %154 = load i64, i64* %12, align 8
  %155 = call i32 @pages_decommit(i8* %153, i64 %154)
  %156 = load i32*, i32** %15, align 8
  store i32 %155, i32* %156, align 4
  br label %157

157:                                              ; preds = %152, %148
  %158 = load i32*, i32** %14, align 8
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %184

161:                                              ; preds = %157
  %162 = load i32*, i32** %15, align 8
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %184

165:                                              ; preds = %161
  %166 = load i32*, i32** @EXTENT_HOOKS_INITIALIZER, align 8
  store i32* %166, i32** %26, align 8
  %167 = load i32*, i32** %10, align 8
  %168 = load i8*, i8** %19, align 8
  %169 = load i64, i64* %12, align 8
  %170 = load i64, i64* %12, align 8
  %171 = load i32, i32* @NSIZES, align 4
  %172 = load i32, i32* @extent_state_active, align 4
  %173 = call i32 @extent_init(i32* %27, i32* %167, i8* %168, i64 %169, i64 %170, i32 0, i32 %171, i32 %172, i32 0, i32 1, i32 1)
  %174 = load i32*, i32** %9, align 8
  %175 = load i32*, i32** %10, align 8
  %176 = load i64, i64* %12, align 8
  %177 = call i64 @extent_purge_forced_wrapper(i32* %174, i32* %175, i32** %26, i32* %27, i32 0, i64 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %165
  %180 = load i8*, i8** %19, align 8
  %181 = load i64, i64* %12, align 8
  %182 = call i32 @memset(i8* %180, i32 0, i64 %181)
  br label %183

183:                                              ; preds = %179, %165
  br label %184

184:                                              ; preds = %183, %161, %157
  %185 = load i8*, i8** %19, align 8
  store i8* %185, i8** %8, align 8
  br label %200

186:                                              ; preds = %105
  %187 = load i8*, i8** %25, align 8
  %188 = icmp eq i8* %187, inttoptr (i64 -1 to i8*)
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load i32, i32* @ATOMIC_RELEASE, align 4
  %191 = call i32 @atomic_store_b(i32* @dss_exhausted, i32 1, i32 %190)
  br label %194

192:                                              ; preds = %186
  br label %54

193:                                              ; preds = %48
  br label %194

194:                                              ; preds = %193, %189, %104, %59
  %195 = call i32 (...) @extent_dss_extending_finish()
  %196 = load i32*, i32** %9, align 8
  %197 = load i32*, i32** %10, align 8
  %198 = load i32*, i32** %16, align 8
  %199 = call i32 @extent_dalloc(i32* %196, i32* %197, i32* %198)
  store i8* null, i8** %8, align 8
  br label %200

200:                                              ; preds = %194, %184, %47, %40
  %201 = load i8*, i8** %8, align 8
  ret i8* %201
}

declare dso_local i32 @cassert(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @extent_alloc(i32*, i32*) #1

declare dso_local i32 @extent_dss_extending_start(...) #1

declare dso_local i32 @atomic_load_b(i32*, i32) #1

declare dso_local i8* @extent_dss_max_update(i8*) #1

declare dso_local i64 @PAGE_CEILING(i64) #1

declare dso_local i64 @ALIGNMENT_CEILING(i64, i64) #1

declare dso_local i32 @extent_init(i32*, i32*, i8*, i64, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @arena_extent_sn_next(i32*) #1

declare dso_local i8* @extent_dss_sbrk(i64) #1

declare dso_local i32 @atomic_store_p(i32*, i8*, i32) #1

declare dso_local i32 @extent_dss_extending_finish(...) #1

declare dso_local i32 @extent_dalloc_gap(i32*, i32*, i32*) #1

declare dso_local i32 @extent_dalloc(i32*, i32*, i32*) #1

declare dso_local i32 @pages_decommit(i8*, i64) #1

declare dso_local i64 @extent_purge_forced_wrapper(i32*, i32*, i32**, i32*, i32, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @atomic_store_b(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

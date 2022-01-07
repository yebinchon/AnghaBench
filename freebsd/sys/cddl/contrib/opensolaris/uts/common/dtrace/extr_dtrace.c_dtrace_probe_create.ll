; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_probe_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_probe_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32*, i8*, i8*, i8*, i8*, i64 }

@dtrace_provider = common dso_local global i32* null, align 8
@dtrace_lock = common dso_local global i32 0, align 4
@dtrace_arena = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@dtrace_probegen = common dso_local global i32 0, align 4
@dtrace_bymod = common dso_local global i32 0, align 4
@dtrace_byfunc = common dso_local global i32 0, align 4
@dtrace_byname = common dso_local global i32 0, align 4
@dtrace_nprobes = common dso_local global i32 0, align 4
@dtrace_probes = common dso_local global %struct.TYPE_7__** null, align 8
@VM_BESTFIT = common dso_local global i32 0, align 4
@VM_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_probe_create(i64 %0, i8* %1, i8* %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_7__**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_7__**, align 8
  store i64 %0, i64* %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %20 = load i64, i64* %7, align 8
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %15, align 8
  %22 = load i32*, i32** %15, align 8
  %23 = load i32*, i32** @dtrace_provider, align 8
  %24 = icmp eq i32* %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = call i32 @MUTEX_HELD(i32* @dtrace_lock)
  %27 = call i32 @ASSERT(i32 %26)
  br label %30

28:                                               ; preds = %6
  %29 = call i32 @mutex_enter(i32* @dtrace_lock)
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i32, i32* @dtrace_arena, align 4
  %32 = call i32 @alloc_unr(i32 %31)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* @KM_SLEEP, align 4
  %34 = call i8* @kmem_zalloc(i64 56, i32 %33)
  %35 = bitcast i8* %34 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %13, align 8
  %36 = load i32, i32* %16, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @dtrace_probegen, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @dtrace_probegen, align 4
  %41 = sext i32 %39 to i64
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 7
  store i64 %41, i64* %43, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i8* @dtrace_strdup(i8* %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 6
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i8* @dtrace_strdup(i8* %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 5
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = call i8* @dtrace_strdup(i8* %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32*, i32** %15, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  store i32* %62, i32** %64, align 8
  %65 = load i32, i32* @dtrace_bymod, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %67 = call i32 @dtrace_hash_add(i32 %65, %struct.TYPE_7__* %66)
  %68 = load i32, i32* @dtrace_byfunc, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %70 = call i32 @dtrace_hash_add(i32 %68, %struct.TYPE_7__* %69)
  %71 = load i32, i32* @dtrace_byname, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %73 = call i32 @dtrace_hash_add(i32 %71, %struct.TYPE_7__* %72)
  %74 = load i32, i32* %16, align 4
  %75 = sub nsw i32 %74, 1
  %76 = load i32, i32* @dtrace_nprobes, align 4
  %77 = icmp sge i32 %75, %76
  br i1 %77, label %78, label %129

78:                                               ; preds = %30
  %79 = load i32, i32* @dtrace_nprobes, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 8
  store i64 %81, i64* %17, align 8
  %82 = load i64, i64* %17, align 8
  %83 = shl i64 %82, 1
  store i64 %83, i64* %18, align 8
  %84 = load i64, i64* %18, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %78
  %87 = load i64, i64* %17, align 8
  %88 = icmp eq i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @ASSERT(i32 %89)
  %91 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @dtrace_probes, align 8
  %92 = icmp eq %struct.TYPE_7__** %91, null
  %93 = zext i1 %92 to i32
  %94 = call i32 @ASSERT(i32 %93)
  store i64 8, i64* %18, align 8
  br label %95

95:                                               ; preds = %86, %78
  %96 = load i64, i64* %18, align 8
  %97 = load i32, i32* @KM_SLEEP, align 4
  %98 = call i8* @kmem_zalloc(i64 %96, i32 %97)
  %99 = bitcast i8* %98 to %struct.TYPE_7__**
  store %struct.TYPE_7__** %99, %struct.TYPE_7__*** %14, align 8
  %100 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @dtrace_probes, align 8
  %101 = icmp eq %struct.TYPE_7__** %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load i64, i64* %17, align 8
  %104 = icmp eq i64 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @ASSERT(i32 %105)
  %107 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %14, align 8
  store %struct.TYPE_7__** %107, %struct.TYPE_7__*** @dtrace_probes, align 8
  store i32 1, i32* @dtrace_nprobes, align 4
  br label %122

108:                                              ; preds = %95
  %109 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @dtrace_probes, align 8
  store %struct.TYPE_7__** %109, %struct.TYPE_7__*** %19, align 8
  %110 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %19, align 8
  %111 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %14, align 8
  %112 = load i64, i64* %17, align 8
  %113 = call i32 @bcopy(%struct.TYPE_7__** %110, %struct.TYPE_7__** %111, i64 %112)
  %114 = call i32 (...) @dtrace_membar_producer()
  %115 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %14, align 8
  store %struct.TYPE_7__** %115, %struct.TYPE_7__*** @dtrace_probes, align 8
  %116 = call i32 (...) @dtrace_sync()
  %117 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %19, align 8
  %118 = load i64, i64* %17, align 8
  %119 = call i32 @kmem_free(%struct.TYPE_7__** %117, i64 %118)
  %120 = load i32, i32* @dtrace_nprobes, align 4
  %121 = shl i32 %120, 1
  store i32 %121, i32* @dtrace_nprobes, align 4
  br label %122

122:                                              ; preds = %108, %102
  %123 = load i32, i32* %16, align 4
  %124 = sub nsw i32 %123, 1
  %125 = load i32, i32* @dtrace_nprobes, align 4
  %126 = icmp slt i32 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @ASSERT(i32 %127)
  br label %129

129:                                              ; preds = %122, %30
  %130 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @dtrace_probes, align 8
  %131 = load i32, i32* %16, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %130, i64 %133
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = icmp eq %struct.TYPE_7__* %135, null
  %137 = zext i1 %136 to i32
  %138 = call i32 @ASSERT(i32 %137)
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %140 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @dtrace_probes, align 8
  %141 = load i32, i32* %16, align 4
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %140, i64 %143
  store %struct.TYPE_7__* %139, %struct.TYPE_7__** %144, align 8
  %145 = load i32*, i32** %15, align 8
  %146 = load i32*, i32** @dtrace_provider, align 8
  %147 = icmp ne i32* %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %129
  %149 = call i32 @mutex_exit(i32* @dtrace_lock)
  br label %150

150:                                              ; preds = %148, %129
  %151 = load i32, i32* %16, align 4
  ret i32 %151
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @alloc_unr(i32) #1

declare dso_local i8* @kmem_zalloc(i64, i32) #1

declare dso_local i8* @dtrace_strdup(i8*) #1

declare dso_local i32 @dtrace_hash_add(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @bcopy(%struct.TYPE_7__**, %struct.TYPE_7__**, i64) #1

declare dso_local i32 @dtrace_membar_producer(...) #1

declare dso_local i32 @dtrace_sync(...) #1

declare dso_local i32 @kmem_free(%struct.TYPE_7__**, i64) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

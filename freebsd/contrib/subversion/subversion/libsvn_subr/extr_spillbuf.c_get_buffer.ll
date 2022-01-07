; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_spillbuf.c_get_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_spillbuf.c_get_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memblock_t = type { %struct.memblock_t*, i8* }
%struct.TYPE_3__ = type { i32, %struct.memblock_t*, i32, %struct.memblock_t* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.memblock_t* (%struct.TYPE_3__*)* @get_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.memblock_t* @get_buffer(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.memblock_t*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.memblock_t*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %7 = load %struct.memblock_t*, %struct.memblock_t** %6, align 8
  store %struct.memblock_t* %7, %struct.memblock_t** %4, align 8
  %8 = load %struct.memblock_t*, %struct.memblock_t** %4, align 8
  %9 = icmp ne %struct.memblock_t* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  store %struct.memblock_t* null, %struct.memblock_t** %12, align 8
  %13 = load %struct.memblock_t*, %struct.memblock_t** %4, align 8
  store %struct.memblock_t* %13, %struct.memblock_t** %2, align 8
  br label %45

14:                                               ; preds = %1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load %struct.memblock_t*, %struct.memblock_t** %16, align 8
  %18 = icmp eq %struct.memblock_t* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @apr_palloc(i32 %22, i32 16)
  %24 = bitcast i8* %23 to %struct.memblock_t*
  store %struct.memblock_t* %24, %struct.memblock_t** %4, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i8* @apr_palloc(i32 %27, i32 %30)
  %32 = load %struct.memblock_t*, %struct.memblock_t** %4, align 8
  %33 = getelementptr inbounds %struct.memblock_t, %struct.memblock_t* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.memblock_t*, %struct.memblock_t** %4, align 8
  store %struct.memblock_t* %34, %struct.memblock_t** %2, align 8
  br label %45

35:                                               ; preds = %14
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load %struct.memblock_t*, %struct.memblock_t** %37, align 8
  store %struct.memblock_t* %38, %struct.memblock_t** %4, align 8
  %39 = load %struct.memblock_t*, %struct.memblock_t** %4, align 8
  %40 = getelementptr inbounds %struct.memblock_t, %struct.memblock_t* %39, i32 0, i32 0
  %41 = load %struct.memblock_t*, %struct.memblock_t** %40, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store %struct.memblock_t* %41, %struct.memblock_t** %43, align 8
  %44 = load %struct.memblock_t*, %struct.memblock_t** %4, align 8
  store %struct.memblock_t* %44, %struct.memblock_t** %2, align 8
  br label %45

45:                                               ; preds = %35, %19, %10
  %46 = load %struct.memblock_t*, %struct.memblock_t** %2, align 8
  ret %struct.memblock_t* %46
}

declare dso_local i8* @apr_palloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

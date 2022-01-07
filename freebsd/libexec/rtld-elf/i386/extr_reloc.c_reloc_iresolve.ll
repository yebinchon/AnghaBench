; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/i386/extr_reloc.c_reloc_iresolve.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/i386/extr_reloc.c_reloc_iresolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }

@rtld_bind_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reloc_iresolve(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %69

15:                                               ; preds = %2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = bitcast %struct.TYPE_5__* %18 to i8*
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %19, i64 %23
  %25 = bitcast i8* %24 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %6, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %7, align 8
  br label %29

29:                                               ; preds = %63, %15
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = icmp ult %struct.TYPE_5__* %30, %31
  br i1 %32, label %33, label %66

33:                                               ; preds = %29
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @ELF_R_TYPE(i32 %36)
  switch i32 %37, label %62 [
    i32 128, label %38
  ]

38:                                               ; preds = %33
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = inttoptr i64 %45 to i64*
  store i64* %46, i64** %8, align 8
  %47 = load i32, i32* @rtld_bind_lock, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @lock_release(i32 %47, i32* %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %8, align 8
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %52, %54
  %56 = call i64 @call_ifunc_resolver(i64 %55)
  store i64 %56, i64* %9, align 8
  %57 = load i32, i32* @rtld_bind_lock, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @wlock_acquire(i32 %57, i32* %58)
  %60 = load i64, i64* %9, align 8
  %61 = load i64*, i64** %8, align 8
  store i64 %60, i64* %61, align 8
  br label %62

62:                                               ; preds = %33, %38
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 1
  store %struct.TYPE_5__* %65, %struct.TYPE_5__** %7, align 8
  br label %29

66:                                               ; preds = %29
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %14
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @ELF_R_TYPE(i32) #1

declare dso_local i32 @lock_release(i32, i32*) #1

declare dso_local i64 @call_ifunc_resolver(i64) #1

declare dso_local i32 @wlock_acquire(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

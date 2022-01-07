; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/mips/extr_reloc.c__mips_rtld_bind.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/mips/extr_reloc.c__mips_rtld_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i64, i32, i64, i64* }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32 }

@rtld_bind_lock = common dso_local global i32 0, align 4
@SYMLOOK_IN_PLT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"bind now/fixup at %s sym # %jd in %s --> was=%p new=%p\00", align 1
@ld_bind_not = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_mips_rtld_bind(%struct.TYPE_13__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 5
  %13 = load i64*, i64** %12, align 8
  store i64* %13, i64** %5, align 8
  %14 = load i32, i32* @rtld_bind_lock, align 4
  %15 = call i32 @rlock_acquire(i32 %14, %struct.TYPE_12__* %10)
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @sigsetjmp(i32 %17, i32 0) #3
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @rtld_bind_lock, align 4
  %22 = call i32 @lock_upgrade(i32 %21, %struct.TYPE_12__* %10)
  br label %23

23:                                               ; preds = %20, %2
  %24 = load i64*, i64** %5, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = add i64 %27, %28
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = sub i64 %29, %32
  %34 = getelementptr inbounds i64, i64* %24, i64 %33
  store i64* %34, i64** %8, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %37 = load i32, i32* @SYMLOOK_IN_PLT, align 4
  %38 = call %struct.TYPE_14__* @find_symdef(i64 %35, %struct.TYPE_13__* %36, %struct.TYPE_13__** %7, i32 %37, i32* null, %struct.TYPE_12__* %10)
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %6, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %40 = icmp eq %struct.TYPE_14__* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %23
  %42 = call i32 (...) @rtld_die()
  br label %43

43:                                               ; preds = %41, %23
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  store i64 %50, i64* %9, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* %4, align 8
  %55 = trunc i64 %54 to i32
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = load i64*, i64** %8, align 8
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = load i64, i64* %9, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = call i32 @dbg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %55, i64 %62, i8* %65, i8* %67)
  %69 = load i32, i32* @ld_bind_not, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %43
  %72 = load i64, i64* %9, align 8
  %73 = load i64*, i64** %8, align 8
  store i64 %72, i64* %73, align 8
  br label %74

74:                                               ; preds = %71, %43
  %75 = load i32, i32* @rtld_bind_lock, align 4
  %76 = call i32 @lock_release(i32 %75, %struct.TYPE_12__* %10)
  %77 = load i64, i64* %9, align 8
  ret i64 %77
}

declare dso_local i32 @rlock_acquire(i32, %struct.TYPE_12__*) #1

; Function Attrs: returns_twice
declare dso_local i64 @sigsetjmp(i32, i32) #2

declare dso_local i32 @lock_upgrade(i32, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_14__* @find_symdef(i64, %struct.TYPE_13__*, %struct.TYPE_13__**, i32, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @rtld_die(...) #1

declare dso_local i32 @dbg(i8*, i32, i32, i64, i8*, i8*) #1

declare dso_local i32 @lock_release(i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

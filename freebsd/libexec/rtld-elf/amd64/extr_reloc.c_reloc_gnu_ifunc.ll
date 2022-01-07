; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/amd64/extr_reloc.c_reloc_gnu_ifunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/amd64/extr_reloc.c_reloc_gnu_ifunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32 }

@SYMLOOK_IN_PLT = common dso_local global i32 0, align 4
@STT_GNU_IFUNC = common dso_local global i32 0, align 4
@rtld_bind_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reloc_gnu_ifunc(%struct.TYPE_12__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %96

19:                                               ; preds = %3
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = bitcast %struct.TYPE_14__* %22 to i8*
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %23, i64 %27
  %29 = bitcast i8* %28 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %29, %struct.TYPE_14__** %8, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  store %struct.TYPE_14__* %32, %struct.TYPE_14__** %9, align 8
  br label %33

33:                                               ; preds = %90, %19
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %36 = icmp ult %struct.TYPE_14__* %34, %35
  br i1 %36, label %37, label %93

37:                                               ; preds = %33
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ELF_R_TYPE(i32 %40)
  switch i32 %41, label %89 [
    i32 128, label %42
  ]

42:                                               ; preds = %37
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %10, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ELF_R_SYM(i32 %53)
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %56 = load i32, i32* @SYMLOOK_IN_PLT, align 4
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %56, %57
  %59 = load i32*, i32** %7, align 8
  %60 = call %struct.TYPE_13__* @find_symdef(i32 %54, %struct.TYPE_12__* %55, %struct.TYPE_12__** %13, i32 %58, i32* null, i32* %59)
  store %struct.TYPE_13__* %60, %struct.TYPE_13__** %12, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %62 = icmp eq %struct.TYPE_13__* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %42
  store i32 -1, i32* %4, align 4
  br label %96

64:                                               ; preds = %42
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ELF_ST_TYPE(i32 %67)
  %69 = load i32, i32* @STT_GNU_IFUNC, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %90

72:                                               ; preds = %64
  %73 = load i32, i32* @rtld_bind_lock, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @lock_release(i32 %73, i32* %74)
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %78 = call i32 @rtld_resolve_ifunc(%struct.TYPE_12__* %76, %struct.TYPE_13__* %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* @rtld_bind_lock, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @wlock_acquire(i32 %79, i32* %80)
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %87 = bitcast %struct.TYPE_14__* %86 to i32*
  %88 = call i32 @reloc_jmpslot(i32* %82, i32 %83, %struct.TYPE_12__* %84, %struct.TYPE_12__* %85, i32* %87)
  br label %89

89:                                               ; preds = %37, %72
  br label %90

90:                                               ; preds = %89, %71
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 1
  store %struct.TYPE_14__* %92, %struct.TYPE_14__** %9, align 8
  br label %33

93:                                               ; preds = %33
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %93, %63, %18
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @ELF_R_TYPE(i32) #1

declare dso_local %struct.TYPE_13__* @find_symdef(i32, %struct.TYPE_12__*, %struct.TYPE_12__**, i32, i32*, i32*) #1

declare dso_local i32 @ELF_R_SYM(i32) #1

declare dso_local i32 @ELF_ST_TYPE(i32) #1

declare dso_local i32 @lock_release(i32, i32*) #1

declare dso_local i32 @rtld_resolve_ifunc(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @wlock_acquire(i32, i32*) #1

declare dso_local i32 @reloc_jmpslot(i32*, i32, %struct.TYPE_12__*, %struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

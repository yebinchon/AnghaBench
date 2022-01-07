; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/aarch64/extr_reloc.c_reloc_gnu_ifunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/aarch64/extr_reloc.c_reloc_gnu_ifunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i64 }
%struct.Struct_RtldLockState = type { i32 }
%struct.TYPE_13__ = type { i32 }

@R_AARCH64_JUMP_SLOT = common dso_local global i64 0, align 8
@SYMLOOK_IN_PLT = common dso_local global i32 0, align 4
@STT_GNU_IFUNC = common dso_local global i64 0, align 8
@rtld_bind_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reloc_gnu_ifunc(%struct.TYPE_12__* %0, i32 %1, %struct.Struct_RtldLockState* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.Struct_RtldLockState*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.Struct_RtldLockState* %2, %struct.Struct_RtldLockState** %7, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %98

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

33:                                               ; preds = %92, %19
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %36 = icmp ult %struct.TYPE_14__* %34, %35
  br i1 %36, label %37, label %95

37:                                               ; preds = %33
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @ELF_R_TYPE(i32 %40)
  %42 = load i64, i64* @R_AARCH64_JUMP_SLOT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %91

44:                                               ; preds = %37
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = inttoptr i64 %51 to i64*
  store i64* %52, i64** %10, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ELF_R_SYM(i32 %55)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %58 = load i32, i32* @SYMLOOK_IN_PLT, align 4
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.Struct_RtldLockState*, %struct.Struct_RtldLockState** %7, align 8
  %62 = call %struct.TYPE_13__* @find_symdef(i32 %56, %struct.TYPE_12__* %57, %struct.TYPE_12__** %13, i32 %60, i32* null, %struct.Struct_RtldLockState* %61)
  store %struct.TYPE_13__* %62, %struct.TYPE_13__** %12, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %64 = icmp eq %struct.TYPE_13__* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %44
  store i32 -1, i32* %4, align 4
  br label %98

66:                                               ; preds = %44
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @ELF_ST_TYPE(i32 %69)
  %71 = load i64, i64* @STT_GNU_IFUNC, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %92

74:                                               ; preds = %66
  %75 = load i32, i32* @rtld_bind_lock, align 4
  %76 = load %struct.Struct_RtldLockState*, %struct.Struct_RtldLockState** %7, align 8
  %77 = call i32 @lock_release(i32 %75, %struct.Struct_RtldLockState* %76)
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %80 = call i64 @rtld_resolve_ifunc(%struct.TYPE_12__* %78, %struct.TYPE_13__* %79)
  store i64 %80, i64* %11, align 8
  %81 = load i32, i32* @rtld_bind_lock, align 4
  %82 = load %struct.Struct_RtldLockState*, %struct.Struct_RtldLockState** %7, align 8
  %83 = call i32 @wlock_acquire(i32 %81, %struct.Struct_RtldLockState* %82)
  %84 = load i64*, i64** %10, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %89 = bitcast %struct.TYPE_14__* %88 to i32*
  %90 = call i32 @reloc_jmpslot(i64* %84, i64 %85, %struct.TYPE_12__* %86, %struct.TYPE_12__* %87, i32* %89)
  br label %91

91:                                               ; preds = %74, %37
  br label %92

92:                                               ; preds = %91, %73
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 1
  store %struct.TYPE_14__* %94, %struct.TYPE_14__** %9, align 8
  br label %33

95:                                               ; preds = %33
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  store i32 0, i32* %97, align 8
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %95, %65, %18
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i64 @ELF_R_TYPE(i32) #1

declare dso_local %struct.TYPE_13__* @find_symdef(i32, %struct.TYPE_12__*, %struct.TYPE_12__**, i32, i32*, %struct.Struct_RtldLockState*) #1

declare dso_local i32 @ELF_R_SYM(i32) #1

declare dso_local i64 @ELF_ST_TYPE(i32) #1

declare dso_local i32 @lock_release(i32, %struct.Struct_RtldLockState*) #1

declare dso_local i64 @rtld_resolve_ifunc(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @wlock_acquire(i32, %struct.Struct_RtldLockState*) #1

declare dso_local i32 @reloc_jmpslot(i64*, i64, %struct.TYPE_12__*, %struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c__rtld_bind.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c__rtld_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i64, i64, i64, i64 }
%struct.TYPE_21__ = type { i32, i64 }
%struct.TYPE_20__ = type { i64, i64, i32 }
%struct.TYPE_18__ = type { i32 }

@rtld_bind_lock = common dso_local global i32 0, align 4
@SYMLOOK_IN_PLT = common dso_local global i32 0, align 4
@STT_GNU_IFUNC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"\22%s\22 in \22%s\22 ==> %p in \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_rtld_bind(%struct.TYPE_19__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_18__, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @rtld_bind_lock, align 4
  %12 = call i32 @rlock_acquire(i32 %11, %struct.TYPE_18__* %10)
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @sigsetjmp(i32 %14, i32 0) #3
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @rtld_bind_lock, align 4
  %19 = call i32 @lock_upgrade(i32 %18, %struct.TYPE_18__* %10)
  br label %20

20:                                               ; preds = %17, %2
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = bitcast i8* %32 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %33, %struct.TYPE_21__** %5, align 8
  br label %43

34:                                               ; preds = %20
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = bitcast i8* %41 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %42, %struct.TYPE_21__** %5, align 8
  br label %43

43:                                               ; preds = %34, %25
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = inttoptr i64 %50 to i64*
  store i64* %51, i64** %8, align 8
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ELF_R_SYM(i32 %54)
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %57 = load i32, i32* @SYMLOOK_IN_PLT, align 4
  %58 = call %struct.TYPE_20__* @find_symdef(i32 %55, %struct.TYPE_19__* %56, %struct.TYPE_19__** %7, i32 %57, i32* null, %struct.TYPE_18__* %10)
  store %struct.TYPE_20__* %58, %struct.TYPE_20__** %6, align 8
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %60 = icmp eq %struct.TYPE_20__* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %43
  %62 = call i32 (...) @rtld_die()
  br label %63

63:                                               ; preds = %61, %43
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @ELF_ST_TYPE(i32 %66)
  %68 = load i64, i64* @STT_GNU_IFUNC, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %73 = call i64 @rtld_resolve_ifunc(%struct.TYPE_19__* %71, %struct.TYPE_20__* %72)
  store i64 %73, i64* %9, align 8
  br label %82

74:                                               ; preds = %63
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  store i64 %81, i64* %9, align 8
  br label %82

82:                                               ; preds = %74, %70
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @basename(i32 %92)
  %94 = load i64, i64* %9, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @basename(i32 %98)
  %100 = call i32 @dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %89, i32 %93, i8* %95, i32 %99)
  %101 = load i64*, i64** %8, align 8
  %102 = load i64, i64* %9, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %106 = call i64 @reloc_jmpslot(i64* %101, i64 %102, %struct.TYPE_19__* %103, %struct.TYPE_19__* %104, %struct.TYPE_21__* %105)
  store i64 %106, i64* %9, align 8
  %107 = load i32, i32* @rtld_bind_lock, align 4
  %108 = call i32 @lock_release(i32 %107, %struct.TYPE_18__* %10)
  %109 = load i64, i64* %9, align 8
  ret i64 %109
}

declare dso_local i32 @rlock_acquire(i32, %struct.TYPE_18__*) #1

; Function Attrs: returns_twice
declare dso_local i64 @sigsetjmp(i32, i32) #2

declare dso_local i32 @lock_upgrade(i32, %struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_20__* @find_symdef(i32, %struct.TYPE_19__*, %struct.TYPE_19__**, i32, i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @ELF_R_SYM(i32) #1

declare dso_local i32 @rtld_die(...) #1

declare dso_local i64 @ELF_ST_TYPE(i32) #1

declare dso_local i64 @rtld_resolve_ifunc(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i32 @dbg(i8*, i64, i32, i8*, i32) #1

declare dso_local i32 @basename(i32) #1

declare dso_local i64 @reloc_jmpslot(i64*, i64, %struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_21__*) #1

declare dso_local i32 @lock_release(i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

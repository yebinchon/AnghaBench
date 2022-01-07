; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_debug.c_dump_Elf_Rel.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_debug.c_dump_Elf_Rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i64, i64, i64 }
%struct.TYPE_8__ = type { i64, i64 }

@rel_header = common dso_local global i32 0, align 4
@rel_format = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_Elf_Rel(%struct.TYPE_6__* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @rel_header, align 4
  %12 = call i32 @rtld_putstr(i32 %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = bitcast %struct.TYPE_8__* %13 to i8*
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = bitcast i8* %17 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %8, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %7, align 8
  br label %20

20:                                               ; preds = %71, %3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = icmp ult %struct.TYPE_8__* %21, %22
  br i1 %23, label %24, label %74

24:                                               ; preds = %20
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = inttoptr i64 %31 to i64*
  store i64* %32, i64** %10, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @ELF_R_SYM(i64 %38)
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 %40
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %9, align 8
  %42 = load i32, i32* @rel_format, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i64*, i64** %10, align 8
  %67 = load i64*, i64** %10, align 8
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @rtld_printf(i32 %42, i64 %49, i32 %53, i32 %57, i32 %61, i32 %65, i64* %66, i32 %69)
  br label %71

71:                                               ; preds = %24
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 1
  store %struct.TYPE_8__* %73, %struct.TYPE_8__** %7, align 8
  br label %20

74:                                               ; preds = %20
  ret void
}

declare dso_local i32 @rtld_putstr(i32) #1

declare dso_local i32 @ELF_R_SYM(i64) #1

declare dso_local i32 @rtld_printf(i32, i64, i32, i32, i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

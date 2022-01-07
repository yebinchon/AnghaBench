; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_elf_utils.c___elf_phdr_match_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_elf_utils.c___elf_phdr_match_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dl_phdr_info = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i64, i64 }

@PT_LOAD = common dso_local global i64 0, align 8
@PF_X = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__elf_phdr_match_addr(%struct.dl_phdr_info* %0, i8* %1) #0 {
  %3 = alloca %struct.dl_phdr_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i32, align 4
  store %struct.dl_phdr_info* %0, %struct.dl_phdr_info** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %63, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.dl_phdr_info*, %struct.dl_phdr_info** %3, align 8
  %10 = getelementptr inbounds %struct.dl_phdr_info, %struct.dl_phdr_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %66

13:                                               ; preds = %7
  %14 = load %struct.dl_phdr_info*, %struct.dl_phdr_info** %3, align 8
  %15 = getelementptr inbounds %struct.dl_phdr_info, %struct.dl_phdr_info* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %5, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PT_LOAD, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  br label %63

26:                                               ; preds = %13
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @PF_X, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %63

34:                                               ; preds = %26
  %35 = load %struct.dl_phdr_info*, %struct.dl_phdr_info** %3, align 8
  %36 = getelementptr inbounds %struct.dl_phdr_info, %struct.dl_phdr_info* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %37, %40
  %42 = load i8*, i8** %4, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = icmp ule i64 %41, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %34
  %46 = load i8*, i8** %4, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = add i64 %47, 8
  %49 = load %struct.dl_phdr_info*, %struct.dl_phdr_info** %3, align 8
  %50 = getelementptr inbounds %struct.dl_phdr_info, %struct.dl_phdr_info* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %51, %54
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %55, %58
  %60 = icmp ult i64 %48, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %45
  br label %66

62:                                               ; preds = %45, %34
  br label %63

63:                                               ; preds = %62, %33, %25
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %7

66:                                               ; preds = %61, %7
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.dl_phdr_info*, %struct.dl_phdr_info** %3, align 8
  %69 = getelementptr inbounds %struct.dl_phdr_info, %struct.dl_phdr_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %67, %70
  %72 = zext i1 %71 to i32
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

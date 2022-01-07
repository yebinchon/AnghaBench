; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_mremap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_mremap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64* }
%struct.linux_mremap_args = type { i32, i32, i64, i64 }

@LINUX_MREMAP_FIXED = common dso_local global i32 0, align 4
@LINUX_MREMAP_MAYMOVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_mremap(%struct.thread* %0, %struct.linux_mremap_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_mremap_args*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_mremap_args* %1, %struct.linux_mremap_args** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.linux_mremap_args*, %struct.linux_mremap_args** %5, align 8
  %10 = getelementptr inbounds %struct.linux_mremap_args, %struct.linux_mremap_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @LINUX_MREMAP_FIXED, align 4
  %13 = load i32, i32* @LINUX_MREMAP_MAYMOVE, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = and i32 %11, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.thread*, %struct.thread** %4, align 8
  %20 = getelementptr inbounds %struct.thread, %struct.thread* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %3, align 4
  br label %109

24:                                               ; preds = %2
  %25 = load %struct.linux_mremap_args*, %struct.linux_mremap_args** %5, align 8
  %26 = getelementptr inbounds %struct.linux_mremap_args, %struct.linux_mremap_args* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PAGE_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.thread*, %struct.thread** %4, align 8
  %33 = getelementptr inbounds %struct.thread, %struct.thread* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %3, align 4
  br label %109

37:                                               ; preds = %24
  %38 = load %struct.linux_mremap_args*, %struct.linux_mremap_args** %5, align 8
  %39 = getelementptr inbounds %struct.linux_mremap_args, %struct.linux_mremap_args* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i8* @round_page(i64 %40)
  %42 = ptrtoint i8* %41 to i64
  %43 = load %struct.linux_mremap_args*, %struct.linux_mremap_args** %5, align 8
  %44 = getelementptr inbounds %struct.linux_mremap_args, %struct.linux_mremap_args* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load %struct.linux_mremap_args*, %struct.linux_mremap_args** %5, align 8
  %46 = getelementptr inbounds %struct.linux_mremap_args, %struct.linux_mremap_args* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = call i8* @round_page(i64 %47)
  %49 = ptrtoint i8* %48 to i64
  %50 = load %struct.linux_mremap_args*, %struct.linux_mremap_args** %5, align 8
  %51 = getelementptr inbounds %struct.linux_mremap_args, %struct.linux_mremap_args* %50, i32 0, i32 3
  store i64 %49, i64* %51, align 8
  %52 = load %struct.linux_mremap_args*, %struct.linux_mremap_args** %5, align 8
  %53 = getelementptr inbounds %struct.linux_mremap_args, %struct.linux_mremap_args* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.linux_mremap_args*, %struct.linux_mremap_args** %5, align 8
  %56 = getelementptr inbounds %struct.linux_mremap_args, %struct.linux_mremap_args* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ugt i64 %54, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %37
  %60 = load %struct.thread*, %struct.thread** %4, align 8
  %61 = getelementptr inbounds %struct.thread, %struct.thread* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* @ENOMEM, align 4
  store i32 %64, i32* %3, align 4
  br label %109

65:                                               ; preds = %37
  %66 = load %struct.linux_mremap_args*, %struct.linux_mremap_args** %5, align 8
  %67 = getelementptr inbounds %struct.linux_mremap_args, %struct.linux_mremap_args* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.linux_mremap_args*, %struct.linux_mremap_args** %5, align 8
  %70 = getelementptr inbounds %struct.linux_mremap_args, %struct.linux_mremap_args* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ult i64 %68, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %65
  %74 = load %struct.linux_mremap_args*, %struct.linux_mremap_args** %5, align 8
  %75 = getelementptr inbounds %struct.linux_mremap_args, %struct.linux_mremap_args* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = load %struct.linux_mremap_args*, %struct.linux_mremap_args** %5, align 8
  %79 = getelementptr inbounds %struct.linux_mremap_args, %struct.linux_mremap_args* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %77, %80
  store i64 %81, i64* %6, align 8
  %82 = load %struct.linux_mremap_args*, %struct.linux_mremap_args** %5, align 8
  %83 = getelementptr inbounds %struct.linux_mremap_args, %struct.linux_mremap_args* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.linux_mremap_args*, %struct.linux_mremap_args** %5, align 8
  %86 = getelementptr inbounds %struct.linux_mremap_args, %struct.linux_mremap_args* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = sub i64 %84, %87
  store i64 %88, i64* %7, align 8
  %89 = load %struct.thread*, %struct.thread** %4, align 8
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* %7, align 8
  %92 = call i32 @kern_munmap(%struct.thread* %89, i64 %90, i64 %91)
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %73, %65
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %102

97:                                               ; preds = %93
  %98 = load %struct.linux_mremap_args*, %struct.linux_mremap_args** %5, align 8
  %99 = getelementptr inbounds %struct.linux_mremap_args, %struct.linux_mremap_args* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  br label %102

102:                                              ; preds = %97, %96
  %103 = phi i64 [ 0, %96 ], [ %101, %97 ]
  %104 = load %struct.thread*, %struct.thread** %4, align 8
  %105 = getelementptr inbounds %struct.thread, %struct.thread* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  store i64 %103, i64* %107, align 8
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %102, %59, %31, %18
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i8* @round_page(i64) #1

declare dso_local i32 @kern_munmap(%struct.thread*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

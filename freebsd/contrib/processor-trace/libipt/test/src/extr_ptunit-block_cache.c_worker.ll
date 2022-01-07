; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-block_cache.c_worker.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-block_cache.c_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_bcache_entry = type { i32, i32, i32, i32, i32 }
%struct.pt_block_cache = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@ptem_64bit = common dso_local global i32 0, align 4
@ptbq_again = common dso_local global i32 0, align 4
@bfix_nentries = common dso_local global i64 0, align 8
@bfix_iterations = common dso_local global i64 0, align 8
@pte_nosync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @worker(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pt_bcache_entry, align 8
  %5 = alloca %struct.pt_block_cache*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pt_bcache_entry, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.pt_block_cache*
  store %struct.pt_block_cache* %11, %struct.pt_block_cache** %5, align 8
  %12 = load %struct.pt_block_cache*, %struct.pt_block_cache** %5, align 8
  %13 = icmp ne %struct.pt_block_cache* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @pte_internal, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %120

17:                                               ; preds = %1
  %18 = call i32 @memset(%struct.pt_bcache_entry* %4, i32 0, i32 20)
  %19 = getelementptr inbounds %struct.pt_bcache_entry, %struct.pt_bcache_entry* %4, i32 0, i32 0
  store i32 5, i32* %19, align 4
  %20 = getelementptr inbounds %struct.pt_bcache_entry, %struct.pt_bcache_entry* %4, i32 0, i32 1
  store i32 28, i32* %20, align 4
  %21 = load i32, i32* @ptem_64bit, align 4
  %22 = getelementptr inbounds %struct.pt_bcache_entry, %struct.pt_bcache_entry* %4, i32 0, i32 4
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @ptbq_again, align 4
  %24 = getelementptr inbounds %struct.pt_bcache_entry, %struct.pt_bcache_entry* %4, i32 0, i32 3
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.pt_bcache_entry, %struct.pt_bcache_entry* %4, i32 0, i32 2
  store i32 3, i32* %25, align 4
  store i64 0, i64* %7, align 8
  br label %26

26:                                               ; preds = %116, %17
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @bfix_nentries, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %119

30:                                               ; preds = %26
  store i64 0, i64* %6, align 8
  br label %31

31:                                               ; preds = %112, %30
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @bfix_iterations, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %115

35:                                               ; preds = %31
  %36 = call i32 @memset(%struct.pt_bcache_entry* %8, i32 255, i32 20)
  %37 = load %struct.pt_block_cache*, %struct.pt_block_cache** %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @pt_bcache_lookup(%struct.pt_bcache_entry* %8, %struct.pt_block_cache* %37, i64 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %2, align 4
  br label %120

44:                                               ; preds = %35
  %45 = call i32 @pt_bce_is_valid(%struct.pt_bcache_entry* byval(%struct.pt_bcache_entry) align 8 %8)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %44
  %48 = load %struct.pt_block_cache*, %struct.pt_block_cache** %5, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @pt_bcache_add(%struct.pt_block_cache* %48, i64 %49, %struct.pt_bcache_entry* byval(%struct.pt_bcache_entry) align 8 %4)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %2, align 4
  br label %120

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %44
  %57 = load %struct.pt_block_cache*, %struct.pt_block_cache** %5, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @pt_bcache_lookup(%struct.pt_bcache_entry* %8, %struct.pt_block_cache* %57, i64 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %2, align 4
  br label %120

64:                                               ; preds = %56
  %65 = call i32 @pt_bce_is_valid(%struct.pt_bcache_entry* byval(%struct.pt_bcache_entry) align 8 %8)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @pte_nosync, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %120

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.pt_bcache_entry, %struct.pt_bcache_entry* %8, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.pt_bcache_entry, %struct.pt_bcache_entry* %4, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* @pte_nosync, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %120

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.pt_bcache_entry, %struct.pt_bcache_entry* %8, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.pt_bcache_entry, %struct.pt_bcache_entry* %4, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %81, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32, i32* @pte_nosync, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %120

88:                                               ; preds = %79
  %89 = call i64 @pt_bce_exec_mode(%struct.pt_bcache_entry* byval(%struct.pt_bcache_entry) align 8 %8)
  %90 = call i64 @pt_bce_exec_mode(%struct.pt_bcache_entry* byval(%struct.pt_bcache_entry) align 8 %4)
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32, i32* @pte_nosync, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %120

95:                                               ; preds = %88
  %96 = call i64 @pt_bce_qualifier(%struct.pt_bcache_entry* byval(%struct.pt_bcache_entry) align 8 %8)
  %97 = call i64 @pt_bce_qualifier(%struct.pt_bcache_entry* byval(%struct.pt_bcache_entry) align 8 %4)
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* @pte_nosync, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %120

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.pt_bcache_entry, %struct.pt_bcache_entry* %8, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.pt_bcache_entry, %struct.pt_bcache_entry* %4, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %104, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load i32, i32* @pte_nosync, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %120

111:                                              ; preds = %102
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %6, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %6, align 8
  br label %31

115:                                              ; preds = %31
  br label %116

116:                                              ; preds = %115
  %117 = load i64, i64* %7, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %7, align 8
  br label %26

119:                                              ; preds = %26
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %119, %108, %99, %92, %85, %76, %67, %62, %53, %42, %14
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @memset(%struct.pt_bcache_entry*, i32, i32) #1

declare dso_local i32 @pt_bcache_lookup(%struct.pt_bcache_entry*, %struct.pt_block_cache*, i64) #1

declare dso_local i32 @pt_bce_is_valid(%struct.pt_bcache_entry* byval(%struct.pt_bcache_entry) align 8) #1

declare dso_local i32 @pt_bcache_add(%struct.pt_block_cache*, i64, %struct.pt_bcache_entry* byval(%struct.pt_bcache_entry) align 8) #1

declare dso_local i64 @pt_bce_exec_mode(%struct.pt_bcache_entry* byval(%struct.pt_bcache_entry) align 8) #1

declare dso_local i64 @pt_bce_qualifier(%struct.pt_bcache_entry* byval(%struct.pt_bcache_entry) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc64-tdep.c_sparc64_store_return_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc64-tdep.c_sparc64_store_return_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.regcache = type { i32 }

@SPARC_O0_REGNUM = common dso_local global i64 0, align 8
@TYPE_CODE_UNION = common dso_local global i64 0, align 8
@SPARC_F0_REGNUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, %struct.regcache*, i8*)* @sparc64_store_return_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sparc64_store_return_value(%struct.type* %0, %struct.regcache* %1, i8* %2) #0 {
  %4 = alloca %struct.type*, align 8
  %5 = alloca %struct.regcache*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [16 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %4, align 8
  store %struct.regcache* %1, %struct.regcache** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.type*, %struct.type** %4, align 8
  %11 = call i32 @TYPE_LENGTH(%struct.type* %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.type*, %struct.type** %4, align 8
  %13 = call i64 @sparc64_structure_or_union_p(%struct.type* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %58

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp sle i32 %16, 32
  %18 = zext i1 %17 to i32
  %19 = call i32 @gdb_assert(i32 %18)
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %21 = call i32 @memset(i8* %20, i32 0, i32 16)
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @memcpy(i8* %22, i8* %23, i32 %24)
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %44, %15
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 7
  %30 = sdiv i32 %29, 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load %struct.regcache*, %struct.regcache** %5, align 8
  %34 = load i64, i64* @SPARC_O0_REGNUM, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %39 = load i32, i32* %9, align 4
  %40 = mul nsw i32 %39, 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = call i32 @regcache_cooked_write(%struct.regcache* %33, i64 %37, i8* %42)
  br label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %26

47:                                               ; preds = %26
  %48 = load %struct.type*, %struct.type** %4, align 8
  %49 = call i64 @TYPE_CODE(%struct.type* %48)
  %50 = load i64, i64* @TYPE_CODE_UNION, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.regcache*, %struct.regcache** %5, align 8
  %54 = load %struct.type*, %struct.type** %4, align 8
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %56 = call i32 @sparc64_store_floating_fields(%struct.regcache* %53, %struct.type* %54, i8* %55, i32 0, i32 0)
  br label %57

57:                                               ; preds = %52, %47
  br label %108

58:                                               ; preds = %3
  %59 = load %struct.type*, %struct.type** %4, align 8
  %60 = call i64 @sparc64_floating_p(%struct.type* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %58
  %63 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @memcpy(i8* %63, i8* %64, i32 %65)
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %84, %62
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %7, align 4
  %70 = sdiv i32 %69, 4
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %67
  %73 = load %struct.regcache*, %struct.regcache** %5, align 8
  %74 = load i64, i64* @SPARC_F0_REGNUM, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %79 = load i32, i32* %9, align 4
  %80 = mul nsw i32 %79, 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  %83 = call i32 @regcache_cooked_write(%struct.regcache* %73, i64 %77, i8* %82)
  br label %84

84:                                               ; preds = %72
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %67

87:                                               ; preds = %67
  br label %107

88:                                               ; preds = %58
  %89 = load %struct.type*, %struct.type** %4, align 8
  %90 = call i32 @sparc64_integral_or_pointer_p(%struct.type* %89)
  %91 = call i32 @gdb_assert(i32 %90)
  %92 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %93 = call i32 @memset(i8* %92, i32 0, i32 8)
  %94 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %95 = getelementptr inbounds i8, i8* %94, i64 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = sub i64 0, %97
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  %100 = load i8*, i8** %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @memcpy(i8* %99, i8* %100, i32 %101)
  %103 = load %struct.regcache*, %struct.regcache** %5, align 8
  %104 = load i64, i64* @SPARC_O0_REGNUM, align 8
  %105 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %106 = call i32 @regcache_cooked_write(%struct.regcache* %103, i64 %104, i8* %105)
  br label %107

107:                                              ; preds = %88, %87
  br label %108

108:                                              ; preds = %107, %57
  ret void
}

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i64 @sparc64_structure_or_union_p(%struct.type*) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @regcache_cooked_write(%struct.regcache*, i64, i8*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @sparc64_store_floating_fields(%struct.regcache*, %struct.type*, i8*, i32, i32) #1

declare dso_local i64 @sparc64_floating_p(%struct.type*) #1

declare dso_local i32 @sparc64_integral_or_pointer_p(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

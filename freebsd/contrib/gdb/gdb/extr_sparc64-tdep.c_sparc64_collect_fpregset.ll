; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc64-tdep.c_sparc64_collect_fpregset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc64-tdep.c_sparc64_collect_fpregset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regcache = type { i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@SPARC_F0_REGNUM = common dso_local global i32 0, align 4
@SPARC32_FSR_REGNUM = common dso_local global i32 0, align 4
@SPARC64_F32_REGNUM = common dso_local global i32 0, align 4
@SPARC64_FSR_REGNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sparc64_collect_fpregset(%struct.regcache* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.regcache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.regcache* %0, %struct.regcache** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @current_gdbarch, align 4
  %11 = call i32 @gdbarch_ptr_bit(i32 %10)
  %12 = icmp eq i32 %11, 32
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %7, align 4
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %39, %3
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 32
  br i1 %17, label %18, label %42

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SPARC_F0_REGNUM, align 4
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %20, %21
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %38

27:                                               ; preds = %24, %18
  %28 = load %struct.regcache*, %struct.regcache** %4, align 8
  %29 = load i32, i32* @SPARC_F0_REGNUM, align 4
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = mul nsw i32 %33, 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  %37 = call i32 @regcache_raw_collect(%struct.regcache* %28, i32 %31, i8* %36)
  br label %38

38:                                               ; preds = %27, %24
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %15

42:                                               ; preds = %15
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @SPARC32_FSR_REGNUM, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %60

52:                                               ; preds = %49, %45
  %53 = load %struct.regcache*, %struct.regcache** %4, align 8
  %54 = load i32, i32* @SPARC32_FSR_REGNUM, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 128
  %57 = getelementptr inbounds i8, i8* %56, i64 128
  %58 = getelementptr inbounds i8, i8* %57, i64 4
  %59 = call i32 @regcache_raw_collect(%struct.regcache* %53, i32 %54, i8* %58)
  br label %60

60:                                               ; preds = %52, %49
  br label %105

61:                                               ; preds = %42
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %87, %61
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 16
  br i1 %64, label %65, label %90

65:                                               ; preds = %62
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @SPARC64_F32_REGNUM, align 4
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %67, %68
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* %5, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %86

74:                                               ; preds = %71, %65
  %75 = load %struct.regcache*, %struct.regcache** %4, align 8
  %76 = load i32, i32* @SPARC64_F32_REGNUM, align 4
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 128
  %81 = load i32, i32* %9, align 4
  %82 = mul nsw i32 %81, 8
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  %85 = call i32 @regcache_raw_collect(%struct.regcache* %75, i32 %78, i8* %84)
  br label %86

86:                                               ; preds = %74, %71
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %62

90:                                               ; preds = %62
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @SPARC64_FSR_REGNUM, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %5, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %104

97:                                               ; preds = %94, %90
  %98 = load %struct.regcache*, %struct.regcache** %4, align 8
  %99 = load i32, i32* @SPARC64_FSR_REGNUM, align 4
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 128
  %102 = getelementptr inbounds i8, i8* %101, i64 128
  %103 = call i32 @regcache_raw_collect(%struct.regcache* %98, i32 %99, i8* %102)
  br label %104

104:                                              ; preds = %97, %94
  br label %105

105:                                              ; preds = %104, %60
  ret void
}

declare dso_local i32 @gdbarch_ptr_bit(i32) #1

declare dso_local i32 @regcache_raw_collect(%struct.regcache*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

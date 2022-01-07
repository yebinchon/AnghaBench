; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc32_extract_return_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc32_extract_return_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.regcache = type { i32 }

@SPARC_F0_REGNUM = common dso_local global i32 0, align 4
@SPARC_F1_REGNUM = common dso_local global i32 0, align 4
@SPARC_O0_REGNUM = common dso_local global i32 0, align 4
@SPARC_O1_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, %struct.regcache*, i8*)* @sparc32_extract_return_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sparc32_extract_return_value(%struct.type* %0, %struct.regcache* %1, i8* %2) #0 {
  %4 = alloca %struct.type*, align 8
  %5 = alloca %struct.regcache*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [8 x i8], align 1
  store %struct.type* %0, %struct.type** %4, align 8
  store %struct.regcache* %1, %struct.regcache** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.type*, %struct.type** %4, align 8
  %10 = call i32 @TYPE_LENGTH(%struct.type* %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.type*, %struct.type** %4, align 8
  %12 = call i32 @sparc_structure_or_union_p(%struct.type* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @gdb_assert(i32 %15)
  %17 = load %struct.type*, %struct.type** %4, align 8
  %18 = call i64 @sparc_floating_p(%struct.type* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 16
  br label %23

23:                                               ; preds = %20, %3
  %24 = phi i1 [ false, %3 ], [ %22, %20 ]
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @gdb_assert(i32 %26)
  %28 = load %struct.type*, %struct.type** %4, align 8
  %29 = call i64 @sparc_floating_p(%struct.type* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %23
  %32 = load %struct.regcache*, %struct.regcache** %5, align 8
  %33 = load i32, i32* @SPARC_F0_REGNUM, align 4
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %35 = call i32 @regcache_cooked_read(%struct.regcache* %32, i32 %33, i8* %34)
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 4
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.regcache*, %struct.regcache** %5, align 8
  %40 = load i32, i32* @SPARC_F1_REGNUM, align 4
  %41 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %42 = getelementptr inbounds i8, i8* %41, i64 4
  %43 = call i32 @regcache_cooked_read(%struct.regcache* %39, i32 %40, i8* %42)
  br label %44

44:                                               ; preds = %38, %31
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @memcpy(i8* %45, i8* %46, i32 %47)
  br label %83

49:                                               ; preds = %23
  %50 = load %struct.type*, %struct.type** %4, align 8
  %51 = call i32 @sparc_integral_or_pointer_p(%struct.type* %50)
  %52 = call i32 @gdb_assert(i32 %51)
  %53 = load %struct.regcache*, %struct.regcache** %5, align 8
  %54 = load i32, i32* @SPARC_O0_REGNUM, align 4
  %55 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %56 = call i32 @regcache_cooked_read(%struct.regcache* %53, i32 %54, i8* %55)
  %57 = load i32, i32* %7, align 4
  %58 = icmp sgt i32 %57, 4
  br i1 %58, label %59, label %72

59:                                               ; preds = %49
  %60 = load %struct.regcache*, %struct.regcache** %5, align 8
  %61 = load i32, i32* @SPARC_O1_REGNUM, align 4
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %63 = getelementptr inbounds i8, i8* %62, i64 4
  %64 = call i32 @regcache_cooked_read(%struct.regcache* %60, i32 %61, i8* %63)
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %65, 8
  %67 = zext i1 %66 to i32
  %68 = call i32 @gdb_assert(i32 %67)
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %71 = call i32 @memcpy(i8* %69, i8* %70, i32 8)
  br label %82

72:                                               ; preds = %49
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %75 = getelementptr inbounds i8, i8* %74, i64 4
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = sub i64 0, %77
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @memcpy(i8* %73, i8* %79, i32 %80)
  br label %82

82:                                               ; preds = %72, %59
  br label %83

83:                                               ; preds = %82, %44
  ret void
}

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @sparc_structure_or_union_p(%struct.type*) #1

declare dso_local i64 @sparc_floating_p(%struct.type*) #1

declare dso_local i32 @regcache_cooked_read(%struct.regcache*, i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sparc_integral_or_pointer_p(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

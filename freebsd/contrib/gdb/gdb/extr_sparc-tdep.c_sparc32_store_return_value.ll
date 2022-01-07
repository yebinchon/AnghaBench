; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc32_store_return_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc32_store_return_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.regcache = type { i32 }

@SPARC_F0_REGNUM = common dso_local global i32 0, align 4
@SPARC_F1_REGNUM = common dso_local global i32 0, align 4
@SPARC_O1_REGNUM = common dso_local global i32 0, align 4
@SPARC_O0_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, %struct.regcache*, i8*)* @sparc32_store_return_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sparc32_store_return_value(%struct.type* %0, %struct.regcache* %1, i8* %2) #0 {
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
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @memcpy(i8* %32, i8* %33, i32 %34)
  %36 = load %struct.regcache*, %struct.regcache** %5, align 8
  %37 = load i32, i32* @SPARC_F0_REGNUM, align 4
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %39 = call i32 @regcache_cooked_write(%struct.regcache* %36, i32 %37, i8* %38)
  %40 = load i32, i32* %7, align 4
  %41 = icmp sgt i32 %40, 4
  br i1 %41, label %42, label %48

42:                                               ; preds = %31
  %43 = load %struct.regcache*, %struct.regcache** %5, align 8
  %44 = load i32, i32* @SPARC_F1_REGNUM, align 4
  %45 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %46 = getelementptr inbounds i8, i8* %45, i64 4
  %47 = call i32 @regcache_cooked_write(%struct.regcache* %43, i32 %44, i8* %46)
  br label %48

48:                                               ; preds = %42, %31
  br label %83

49:                                               ; preds = %23
  %50 = load %struct.type*, %struct.type** %4, align 8
  %51 = call i32 @sparc_integral_or_pointer_p(%struct.type* %50)
  %52 = call i32 @gdb_assert(i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = icmp sgt i32 %53, 4
  br i1 %54, label %55, label %68

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, 8
  %58 = zext i1 %57 to i32
  %59 = call i32 @gdb_assert(i32 %58)
  %60 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @memcpy(i8* %60, i8* %61, i32 8)
  %63 = load %struct.regcache*, %struct.regcache** %5, align 8
  %64 = load i32, i32* @SPARC_O1_REGNUM, align 4
  %65 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %66 = getelementptr inbounds i8, i8* %65, i64 4
  %67 = call i32 @regcache_cooked_write(%struct.regcache* %63, i32 %64, i8* %66)
  br label %78

68:                                               ; preds = %49
  %69 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %70 = getelementptr inbounds i8, i8* %69, i64 4
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = sub i64 0, %72
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @memcpy(i8* %74, i8* %75, i32 %76)
  br label %78

78:                                               ; preds = %68, %55
  %79 = load %struct.regcache*, %struct.regcache** %5, align 8
  %80 = load i32, i32* @SPARC_O0_REGNUM, align 4
  %81 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %82 = call i32 @regcache_cooked_write(%struct.regcache* %79, i32 %80, i8* %81)
  br label %83

83:                                               ; preds = %78, %48
  ret void
}

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @sparc_structure_or_union_p(%struct.type*) #1

declare dso_local i64 @sparc_floating_p(%struct.type*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @regcache_cooked_write(%struct.regcache*, i32, i8*) #1

declare dso_local i32 @sparc_integral_or_pointer_p(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

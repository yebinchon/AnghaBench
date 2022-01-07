; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc64-tdep.c_sparc64_extract_floating_fields.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc64-tdep.c_sparc64_extract_floating_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regcache = type { i32 }
%struct.type = type { i32 }

@SPARC64_Q0_REGNUM = common dso_local global i32 0, align 4
@SPARC64_D0_REGNUM = common dso_local global i32 0, align 4
@SPARC_F0_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regcache*, %struct.type*, i8*, i32)* @sparc64_extract_floating_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sparc64_extract_floating_fields(%struct.regcache* %0, %struct.type* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.regcache*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.type*, align 8
  %13 = alloca i32, align 4
  store %struct.regcache* %0, %struct.regcache** %5, align 8
  store %struct.type* %1, %struct.type** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.type*, %struct.type** %6, align 8
  %15 = call i64 @sparc64_floating_p(%struct.type* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %105

17:                                               ; preds = %4
  %18 = load %struct.type*, %struct.type** %6, align 8
  %19 = call i32 @TYPE_LENGTH(%struct.type* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 16
  br i1 %21, label %22, label %44

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 128
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i1 [ true, %22 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @gdb_assert(i32 %30)
  %32 = load i32, i32* @SPARC64_Q0_REGNUM, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sdiv i32 %33, 128
  %35 = add nsw i32 %32, %34
  store i32 %35, i32* %10, align 4
  %36 = load %struct.regcache*, %struct.regcache** %5, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sdiv i32 %39, 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = call i32 @regcache_cooked_read(%struct.regcache* %36, i32 %37, i8* %42)
  br label %104

44:                                               ; preds = %17
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %45, 8
  br i1 %46, label %47, label %73

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = srem i32 %48, 64
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 256
  br label %57

57:                                               ; preds = %54, %51, %47
  %58 = phi i1 [ false, %51 ], [ false, %47 ], [ %56, %54 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @gdb_assert(i32 %59)
  %61 = load i32, i32* @SPARC64_D0_REGNUM, align 4
  %62 = load i32, i32* %8, align 4
  %63 = sdiv i32 %62, 64
  %64 = add nsw i32 %61, %63
  store i32 %64, i32* %10, align 4
  %65 = load %struct.regcache*, %struct.regcache** %5, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sdiv i32 %68, 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = call i32 @regcache_cooked_read(%struct.regcache* %65, i32 %66, i8* %71)
  br label %103

73:                                               ; preds = %44
  %74 = load i32, i32* %9, align 4
  %75 = icmp eq i32 %74, 4
  %76 = zext i1 %75 to i32
  %77 = call i32 @gdb_assert(i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = srem i32 %78, 32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = load i32, i32* %8, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %85, 256
  br label %87

87:                                               ; preds = %84, %81, %73
  %88 = phi i1 [ false, %81 ], [ false, %73 ], [ %86, %84 ]
  %89 = zext i1 %88 to i32
  %90 = call i32 @gdb_assert(i32 %89)
  %91 = load i32, i32* @SPARC_F0_REGNUM, align 4
  %92 = load i32, i32* %8, align 4
  %93 = sdiv i32 %92, 32
  %94 = add nsw i32 %91, %93
  store i32 %94, i32* %10, align 4
  %95 = load %struct.regcache*, %struct.regcache** %5, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i8*, i8** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sdiv i32 %98, 8
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  %102 = call i32 @regcache_cooked_read(%struct.regcache* %95, i32 %96, i8* %101)
  br label %103

103:                                              ; preds = %87, %57
  br label %104

104:                                              ; preds = %103, %28
  br label %134

105:                                              ; preds = %4
  %106 = load %struct.type*, %struct.type** %6, align 8
  %107 = call i64 @sparc64_structure_or_union_p(%struct.type* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %133

109:                                              ; preds = %105
  store i32 0, i32* %11, align 4
  br label %110

110:                                              ; preds = %129, %109
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.type*, %struct.type** %6, align 8
  %113 = call i32 @TYPE_NFIELDS(%struct.type* %112)
  %114 = icmp slt i32 %111, %113
  br i1 %114, label %115, label %132

115:                                              ; preds = %110
  %116 = load %struct.type*, %struct.type** %6, align 8
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @TYPE_FIELD_TYPE(%struct.type* %116, i32 %117)
  %119 = call %struct.type* @check_typedef(i32 %118)
  store %struct.type* %119, %struct.type** %12, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.type*, %struct.type** %6, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %121, i32 %122)
  %124 = add nsw i32 %120, %123
  store i32 %124, i32* %13, align 4
  %125 = load %struct.regcache*, %struct.regcache** %5, align 8
  %126 = load %struct.type*, %struct.type** %12, align 8
  %127 = load i8*, i8** %7, align 8
  %128 = load i32, i32* %13, align 4
  call void @sparc64_extract_floating_fields(%struct.regcache* %125, %struct.type* %126, i8* %127, i32 %128)
  br label %129

129:                                              ; preds = %115
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %11, align 4
  br label %110

132:                                              ; preds = %110
  br label %133

133:                                              ; preds = %132, %105
  br label %134

134:                                              ; preds = %133, %104
  ret void
}

declare dso_local i64 @sparc64_floating_p(%struct.type*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @regcache_cooked_read(%struct.regcache*, i32, i8*) #1

declare dso_local i64 @sparc64_structure_or_union_p(%struct.type*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local i32 @TYPE_FIELD_BITPOS(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

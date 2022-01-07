; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc64-tdep.c_sparc64_store_floating_fields.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc64-tdep.c_sparc64_store_floating_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regcache = type { i32 }
%struct.type = type { i32 }

@SPARC64_Q0_REGNUM = common dso_local global i32 0, align 4
@SPARC64_D0_REGNUM = common dso_local global i32 0, align 4
@SPARC_F0_REGNUM = common dso_local global i32 0, align 4
@SPARC_F1_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regcache*, %struct.type*, i8*, i32, i32)* @sparc64_store_floating_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sparc64_store_floating_fields(%struct.regcache* %0, %struct.type* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.regcache*, align 8
  %7 = alloca %struct.type*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.type*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.type*, align 8
  store %struct.regcache* %0, %struct.regcache** %6, align 8
  store %struct.type* %1, %struct.type** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 16
  %19 = zext i1 %18 to i32
  %20 = call i32 @gdb_assert(i32 %19)
  %21 = load %struct.type*, %struct.type** %7, align 8
  %22 = call i64 @sparc64_floating_p(%struct.type* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %109

24:                                               ; preds = %5
  %25 = load %struct.type*, %struct.type** %7, align 8
  %26 = call i32 @TYPE_LENGTH(%struct.type* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp eq i32 %27, 16
  br i1 %28, label %29, label %47

29:                                               ; preds = %24
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @gdb_assert(i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = srem i32 %34, 2
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @gdb_assert(i32 %37)
  %39 = load i32, i32* @SPARC64_Q0_REGNUM, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sdiv i32 %40, 2
  %42 = add nsw i32 %39, %41
  store i32 %42, i32* %12, align 4
  %43 = load %struct.regcache*, %struct.regcache** %6, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @regcache_cooked_write(%struct.regcache* %43, i32 %44, i8* %45)
  br label %108

47:                                               ; preds = %24
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %48, 8
  br i1 %49, label %50, label %74

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 64
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi i1 [ true, %50 ], [ %55, %53 ]
  %58 = zext i1 %57 to i32
  %59 = call i32 @gdb_assert(i32 %58)
  %60 = load i32, i32* @SPARC64_D0_REGNUM, align 4
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* %10, align 4
  %64 = sdiv i32 %63, 64
  %65 = add nsw i32 %62, %64
  store i32 %65, i32* %12, align 4
  %66 = load %struct.regcache*, %struct.regcache** %6, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i8*, i8** %8, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sdiv i32 %69, 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  %73 = call i32 @regcache_cooked_write(%struct.regcache* %66, i32 %67, i8* %72)
  br label %107

74:                                               ; preds = %47
  %75 = load i32, i32* %11, align 4
  %76 = icmp eq i32 %75, 4
  %77 = zext i1 %76 to i32
  %78 = call i32 @gdb_assert(i32 %77)
  %79 = load i32, i32* %10, align 4
  %80 = srem i32 %79, 32
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %74
  %83 = load i32, i32* %10, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %86, 128
  br label %88

88:                                               ; preds = %85, %82, %74
  %89 = phi i1 [ false, %82 ], [ false, %74 ], [ %87, %85 ]
  %90 = zext i1 %89 to i32
  %91 = call i32 @gdb_assert(i32 %90)
  %92 = load i32, i32* @SPARC_F0_REGNUM, align 4
  %93 = load i32, i32* %9, align 4
  %94 = mul nsw i32 %93, 2
  %95 = add nsw i32 %92, %94
  %96 = load i32, i32* %10, align 4
  %97 = sdiv i32 %96, 32
  %98 = add nsw i32 %95, %97
  store i32 %98, i32* %12, align 4
  %99 = load %struct.regcache*, %struct.regcache** %6, align 8
  %100 = load i32, i32* %12, align 4
  %101 = load i8*, i8** %8, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sdiv i32 %102, 8
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  %106 = call i32 @regcache_cooked_write(%struct.regcache* %99, i32 %100, i8* %105)
  br label %107

107:                                              ; preds = %88, %56
  br label %108

108:                                              ; preds = %107, %29
  br label %160

109:                                              ; preds = %5
  %110 = load %struct.type*, %struct.type** %7, align 8
  %111 = call i64 @sparc64_structure_or_union_p(%struct.type* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %159

113:                                              ; preds = %109
  store i32 0, i32* %13, align 4
  br label %114

114:                                              ; preds = %134, %113
  %115 = load i32, i32* %13, align 4
  %116 = load %struct.type*, %struct.type** %7, align 8
  %117 = call i32 @TYPE_NFIELDS(%struct.type* %116)
  %118 = icmp slt i32 %115, %117
  br i1 %118, label %119, label %137

119:                                              ; preds = %114
  %120 = load %struct.type*, %struct.type** %7, align 8
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @TYPE_FIELD_TYPE(%struct.type* %120, i32 %121)
  %123 = call %struct.type* @check_typedef(i32 %122)
  store %struct.type* %123, %struct.type** %14, align 8
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.type*, %struct.type** %7, align 8
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %125, i32 %126)
  %128 = add nsw i32 %124, %127
  store i32 %128, i32* %15, align 4
  %129 = load %struct.regcache*, %struct.regcache** %6, align 8
  %130 = load %struct.type*, %struct.type** %14, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %15, align 4
  call void @sparc64_store_floating_fields(%struct.regcache* %129, %struct.type* %130, i8* %131, i32 %132, i32 %133)
  br label %134

134:                                              ; preds = %119
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %13, align 4
  br label %114

137:                                              ; preds = %114
  %138 = load %struct.type*, %struct.type** %7, align 8
  %139 = call i32 @TYPE_NFIELDS(%struct.type* %138)
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %141, label %158

141:                                              ; preds = %137
  %142 = load %struct.type*, %struct.type** %7, align 8
  %143 = call i32 @TYPE_FIELD_TYPE(%struct.type* %142, i32 0)
  %144 = call %struct.type* @check_typedef(i32 %143)
  store %struct.type* %144, %struct.type** %16, align 8
  %145 = load %struct.type*, %struct.type** %16, align 8
  %146 = call i64 @sparc64_floating_p(%struct.type* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %141
  %149 = load %struct.type*, %struct.type** %16, align 8
  %150 = call i32 @TYPE_LENGTH(%struct.type* %149)
  %151 = icmp eq i32 %150, 4
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = load %struct.regcache*, %struct.regcache** %6, align 8
  %154 = load i32, i32* @SPARC_F1_REGNUM, align 4
  %155 = load i8*, i8** %8, align 8
  %156 = call i32 @regcache_cooked_write(%struct.regcache* %153, i32 %154, i8* %155)
  br label %157

157:                                              ; preds = %152, %148, %141
  br label %158

158:                                              ; preds = %157, %137
  br label %159

159:                                              ; preds = %158, %109
  br label %160

160:                                              ; preds = %159, %108
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i64 @sparc64_floating_p(%struct.type*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @regcache_cooked_write(%struct.regcache*, i32, i8*) #1

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

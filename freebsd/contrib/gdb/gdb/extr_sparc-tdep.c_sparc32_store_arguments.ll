; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc32_store_arguments.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc32_store_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regcache = type { i32 }
%struct.value = type { i32 }
%struct.type = type { i32 }

@builtin_type_int32 = common dso_local global i32 0, align 4
@SPARC_O0_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regcache*, i32, %struct.value**, i32, i32, i32)* @sparc32_store_arguments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparc32_store_arguments(%struct.regcache* %0, i32 %1, %struct.value** %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.regcache*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.value**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.type*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.type*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [4 x i8], align 1
  store %struct.regcache* %0, %struct.regcache** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.value** %2, %struct.value*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %23

23:                                               ; preds = %115, %6
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %118

27:                                               ; preds = %23
  %28 = load %struct.value**, %struct.value*** %9, align 8
  %29 = load i32, i32* %15, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.value*, %struct.value** %28, i64 %30
  %32 = load %struct.value*, %struct.value** %31, align 8
  %33 = call %struct.type* @VALUE_TYPE(%struct.value* %32)
  store %struct.type* %33, %struct.type** %16, align 8
  %34 = load %struct.type*, %struct.type** %16, align 8
  %35 = call i32 @TYPE_LENGTH(%struct.type* %34)
  store i32 %35, i32* %17, align 4
  %36 = load %struct.type*, %struct.type** %16, align 8
  %37 = call i64 @sparc_structure_or_union_p(%struct.type* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %27
  %40 = load %struct.type*, %struct.type** %16, align 8
  %41 = call i64 @sparc_floating_p(%struct.type* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %39
  %44 = load i32, i32* %17, align 4
  %45 = icmp eq i32 %44, 16
  br i1 %45, label %46, label %71

46:                                               ; preds = %43, %27
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* %10, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %50, -8
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.value**, %struct.value*** %9, align 8
  %54 = load i32, i32* %15, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.value*, %struct.value** %53, i64 %55
  %57 = load %struct.value*, %struct.value** %56, align 8
  %58 = call i8* @VALUE_CONTENTS(%struct.value* %57)
  %59 = load i32, i32* %17, align 4
  %60 = call i32 @write_memory(i32 %52, i8* %58, i32 %59)
  %61 = load %struct.type*, %struct.type** %16, align 8
  %62 = call i32 @lookup_pointer_type(%struct.type* %61)
  %63 = load i32, i32* %10, align 4
  %64 = call %struct.value* @value_from_pointer(i32 %62, i32 %63)
  %65 = load %struct.value**, %struct.value*** %9, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.value*, %struct.value** %65, i64 %67
  store %struct.value* %64, %struct.value** %68, align 8
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %13, align 4
  br label %114

71:                                               ; preds = %43, %39
  %72 = load %struct.type*, %struct.type** %16, align 8
  %73 = call i64 @sparc_floating_p(%struct.type* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %71
  %76 = load i32, i32* %17, align 4
  %77 = icmp eq i32 %76, 4
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %17, align 4
  %80 = icmp eq i32 %79, 8
  br label %81

81:                                               ; preds = %78, %75
  %82 = phi i1 [ true, %75 ], [ %80, %78 ]
  %83 = zext i1 %82 to i32
  %84 = call i32 @gdb_assert(i32 %83)
  %85 = load i32, i32* %17, align 4
  %86 = sdiv i32 %85, 4
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %13, align 4
  br label %113

89:                                               ; preds = %71
  %90 = load %struct.type*, %struct.type** %16, align 8
  %91 = call i32 @sparc_integral_or_pointer_p(%struct.type* %90)
  %92 = call i32 @gdb_assert(i32 %91)
  %93 = load i32, i32* %17, align 4
  %94 = icmp slt i32 %93, 4
  br i1 %94, label %95, label %107

95:                                               ; preds = %89
  %96 = load i32, i32* @builtin_type_int32, align 4
  %97 = load %struct.value**, %struct.value*** %9, align 8
  %98 = load i32, i32* %15, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.value*, %struct.value** %97, i64 %99
  %101 = load %struct.value*, %struct.value** %100, align 8
  %102 = call %struct.value* @value_cast(i32 %96, %struct.value* %101)
  %103 = load %struct.value**, %struct.value*** %9, align 8
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.value*, %struct.value** %103, i64 %105
  store %struct.value* %102, %struct.value** %106, align 8
  br label %107

107:                                              ; preds = %95, %89
  %108 = load i32, i32* %17, align 4
  %109 = add nsw i32 %108, 3
  %110 = sdiv i32 %109, 4
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %13, align 4
  br label %113

113:                                              ; preds = %107, %81
  br label %114

114:                                              ; preds = %113, %46
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %15, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %15, align 4
  br label %23

118:                                              ; preds = %23
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @max(i32 6, i32 %119)
  %121 = mul nsw i32 %120, 4
  %122 = load i32, i32* %10, align 4
  %123 = sub nsw i32 %122, %121
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = sub nsw i32 %124, 4
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = and i32 %126, -8
  store i32 %127, i32* %10, align 4
  store i32 0, i32* %15, align 4
  br label %128

128:                                              ; preds = %192, %118
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %195

132:                                              ; preds = %128
  %133 = load %struct.value**, %struct.value*** %9, align 8
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.value*, %struct.value** %133, i64 %135
  %137 = load %struct.value*, %struct.value** %136, align 8
  %138 = call i8* @VALUE_CONTENTS(%struct.value* %137)
  store i8* %138, i8** %18, align 8
  %139 = load %struct.value**, %struct.value*** %9, align 8
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.value*, %struct.value** %139, i64 %141
  %143 = load %struct.value*, %struct.value** %142, align 8
  %144 = call %struct.type* @VALUE_TYPE(%struct.value* %143)
  store %struct.type* %144, %struct.type** %19, align 8
  %145 = load %struct.type*, %struct.type** %19, align 8
  %146 = call i32 @TYPE_LENGTH(%struct.type* %145)
  store i32 %146, i32* %20, align 4
  %147 = load i32, i32* %20, align 4
  %148 = icmp eq i32 %147, 4
  br i1 %148, label %152, label %149

149:                                              ; preds = %132
  %150 = load i32, i32* %20, align 4
  %151 = icmp eq i32 %150, 8
  br label %152

152:                                              ; preds = %149, %132
  %153 = phi i1 [ true, %132 ], [ %151, %149 ]
  %154 = zext i1 %153 to i32
  %155 = call i32 @gdb_assert(i32 %154)
  %156 = load i32, i32* %14, align 4
  %157 = icmp slt i32 %156, 6
  br i1 %157, label %158, label %179

158:                                              ; preds = %152
  %159 = load i32, i32* @SPARC_O0_REGNUM, align 4
  %160 = load i32, i32* %14, align 4
  %161 = add nsw i32 %159, %160
  store i32 %161, i32* %21, align 4
  %162 = load %struct.regcache*, %struct.regcache** %7, align 8
  %163 = load i32, i32* %21, align 4
  %164 = load i8*, i8** %18, align 8
  %165 = call i32 @regcache_cooked_write(%struct.regcache* %162, i32 %163, i8* %164)
  %166 = load i32, i32* %20, align 4
  %167 = icmp sgt i32 %166, 4
  br i1 %167, label %168, label %178

168:                                              ; preds = %158
  %169 = load i32, i32* %14, align 4
  %170 = icmp slt i32 %169, 5
  br i1 %170, label %171, label %178

171:                                              ; preds = %168
  %172 = load %struct.regcache*, %struct.regcache** %7, align 8
  %173 = load i32, i32* %21, align 4
  %174 = add nsw i32 %173, 1
  %175 = load i8*, i8** %18, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 4
  %177 = call i32 @regcache_cooked_write(%struct.regcache* %172, i32 %174, i8* %176)
  br label %178

178:                                              ; preds = %171, %168, %158
  br label %179

179:                                              ; preds = %178, %152
  %180 = load i32, i32* %10, align 4
  %181 = add nsw i32 %180, 4
  %182 = load i32, i32* %14, align 4
  %183 = mul nsw i32 %182, 4
  %184 = add nsw i32 %181, %183
  %185 = load i8*, i8** %18, align 8
  %186 = load i32, i32* %20, align 4
  %187 = call i32 @write_memory(i32 %184, i8* %185, i32 %186)
  %188 = load i32, i32* %20, align 4
  %189 = sdiv i32 %188, 4
  %190 = load i32, i32* %14, align 4
  %191 = add nsw i32 %190, %189
  store i32 %191, i32* %14, align 4
  br label %192

192:                                              ; preds = %179
  %193 = load i32, i32* %15, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %15, align 4
  br label %128

195:                                              ; preds = %128
  %196 = load i32, i32* %14, align 4
  %197 = load i32, i32* %13, align 4
  %198 = icmp eq i32 %196, %197
  %199 = zext i1 %198 to i32
  %200 = call i32 @gdb_assert(i32 %199)
  %201 = load i32, i32* %11, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %195
  %204 = getelementptr inbounds [4 x i8], [4 x i8]* %22, i64 0, i64 0
  %205 = load i32, i32* %12, align 4
  %206 = call i32 @store_unsigned_integer(i8* %204, i32 4, i32 %205)
  %207 = load i32, i32* %10, align 4
  %208 = getelementptr inbounds [4 x i8], [4 x i8]* %22, i64 0, i64 0
  %209 = call i32 @write_memory(i32 %207, i8* %208, i32 4)
  br label %210

210:                                              ; preds = %203, %195
  %211 = load i32, i32* %10, align 4
  ret i32 %211
}

declare dso_local %struct.type* @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i64 @sparc_structure_or_union_p(%struct.type*) #1

declare dso_local i64 @sparc_floating_p(%struct.type*) #1

declare dso_local i32 @write_memory(i32, i8*, i32) #1

declare dso_local i8* @VALUE_CONTENTS(%struct.value*) #1

declare dso_local %struct.value* @value_from_pointer(i32, i32) #1

declare dso_local i32 @lookup_pointer_type(%struct.type*) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @sparc_integral_or_pointer_p(%struct.type*) #1

declare dso_local %struct.value* @value_cast(i32, %struct.value*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @regcache_cooked_write(%struct.regcache*, i32, i8*) #1

declare dso_local i32 @store_unsigned_integer(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

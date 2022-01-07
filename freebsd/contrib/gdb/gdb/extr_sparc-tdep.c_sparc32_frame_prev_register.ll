; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc32_frame_prev_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc32_frame_prev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.sparc_frame_cache = type { i32, i64, i64 }
%struct.gdbarch = type { i32 }

@SPARC32_PC_REGNUM = common dso_local global i32 0, align 4
@SPARC32_NPC_REGNUM = common dso_local global i32 0, align 4
@not_lval = common dso_local global i32 0, align 4
@SPARC_O7_REGNUM = common dso_local global i32 0, align 4
@SPARC_I7_REGNUM = common dso_local global i32 0, align 4
@SPARC_L0_REGNUM = common dso_local global i32 0, align 4
@lval_memory = common dso_local global i32 0, align 4
@SPARC_O0_REGNUM = common dso_local global i32 0, align 4
@SPARC_I0_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame_info*, i8**, i32, i32*, i32*, i32*, i32*, i8*)* @sparc32_frame_prev_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sparc32_frame_prev_register(%struct.frame_info* %0, i8** %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6, i8* %7) #0 {
  %9 = alloca %struct.frame_info*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.sparc_frame_cache*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca %struct.gdbarch*, align 8
  store %struct.frame_info* %0, %struct.frame_info** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i8* %7, i8** %16, align 8
  %23 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %24 = load i8**, i8*** %10, align 8
  %25 = call %struct.sparc_frame_cache* @sparc32_frame_cache(%struct.frame_info* %23, i8** %24)
  store %struct.sparc_frame_cache* %25, %struct.sparc_frame_cache** %17, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @SPARC32_PC_REGNUM, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %8
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @SPARC32_NPC_REGNUM, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %78

33:                                               ; preds = %29, %8
  %34 = load i32*, i32** %12, align 8
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* @not_lval, align 4
  %36 = load i32*, i32** %13, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %14, align 8
  store i32 0, i32* %37, align 4
  %38 = load i32*, i32** %15, align 8
  store i32 -1, i32* %38, align 4
  %39 = load i8*, i8** %16, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %77

41:                                               ; preds = %33
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @SPARC32_NPC_REGNUM, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 4, i32 0
  store i32 %46, i32* %18, align 4
  %47 = load %struct.sparc_frame_cache*, %struct.sparc_frame_cache** %17, align 8
  %48 = getelementptr inbounds %struct.sparc_frame_cache, %struct.sparc_frame_cache* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load i32, i32* %18, align 4
  %53 = add nsw i32 %52, 4
  store i32 %53, i32* %18, align 4
  br label %54

54:                                               ; preds = %51, %41
  %55 = load %struct.sparc_frame_cache*, %struct.sparc_frame_cache** %17, align 8
  %56 = getelementptr inbounds %struct.sparc_frame_cache, %struct.sparc_frame_cache* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @SPARC_O7_REGNUM, align 4
  br label %63

61:                                               ; preds = %54
  %62 = load i32, i32* @SPARC_I7_REGNUM, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  store i32 %64, i32* %11, align 4
  %65 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i64 @frame_unwind_register_unsigned(%struct.frame_info* %65, i32 %66)
  %68 = add nsw i64 %67, 8
  %69 = load i32, i32* %18, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %18, align 4
  %73 = load i8*, i8** %16, align 8
  %74 = load i32, i32* %18, align 4
  %75 = sext i32 %74 to i64
  %76 = call i32 @store_unsigned_integer(i8* %73, i32 4, i64 %75)
  br label %77

77:                                               ; preds = %63, %33
  br label %185

78:                                               ; preds = %29
  %79 = call i64 (...) @sparc_fetch_wcookie()
  store i64 %79, i64* %19, align 8
  %80 = load i64, i64* %19, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %117

82:                                               ; preds = %78
  %83 = load %struct.sparc_frame_cache*, %struct.sparc_frame_cache** %17, align 8
  %84 = getelementptr inbounds %struct.sparc_frame_cache, %struct.sparc_frame_cache* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %117, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @SPARC_I7_REGNUM, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %117

91:                                               ; preds = %87
  %92 = load i32*, i32** %12, align 8
  store i32 0, i32* %92, align 4
  %93 = load i32, i32* @not_lval, align 4
  %94 = load i32*, i32** %13, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32*, i32** %14, align 8
  store i32 0, i32* %95, align 4
  %96 = load i32*, i32** %15, align 8
  store i32 -1, i32* %96, align 4
  %97 = load i8*, i8** %16, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %116

99:                                               ; preds = %91
  %100 = load %struct.sparc_frame_cache*, %struct.sparc_frame_cache** %17, align 8
  %101 = getelementptr inbounds %struct.sparc_frame_cache, %struct.sparc_frame_cache* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @SPARC_L0_REGNUM, align 4
  %105 = sub nsw i32 %103, %104
  %106 = mul nsw i32 %105, 4
  %107 = add nsw i32 %102, %106
  store i32 %107, i32* %20, align 4
  %108 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %109 = load i32, i32* %20, align 4
  %110 = call i64 @get_frame_memory_unsigned(%struct.frame_info* %108, i32 %109, i32 4)
  store i64 %110, i64* %21, align 8
  %111 = load i8*, i8** %16, align 8
  %112 = load i64, i64* %21, align 8
  %113 = load i64, i64* %19, align 8
  %114 = xor i64 %112, %113
  %115 = call i32 @store_unsigned_integer(i8* %111, i32 4, i64 %114)
  br label %116

116:                                              ; preds = %99, %91
  br label %185

117:                                              ; preds = %87, %82, %78
  %118 = load %struct.sparc_frame_cache*, %struct.sparc_frame_cache** %17, align 8
  %119 = getelementptr inbounds %struct.sparc_frame_cache, %struct.sparc_frame_cache* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %157, label %122

122:                                              ; preds = %117
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* @SPARC_L0_REGNUM, align 4
  %125 = icmp sge i32 %123, %124
  br i1 %125, label %126, label %157

126:                                              ; preds = %122
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @SPARC_I7_REGNUM, align 4
  %129 = icmp sle i32 %127, %128
  br i1 %129, label %130, label %157

130:                                              ; preds = %126
  %131 = load i32*, i32** %12, align 8
  store i32 0, i32* %131, align 4
  %132 = load i32, i32* @lval_memory, align 4
  %133 = load i32*, i32** %13, align 8
  store i32 %132, i32* %133, align 4
  %134 = load %struct.sparc_frame_cache*, %struct.sparc_frame_cache** %17, align 8
  %135 = getelementptr inbounds %struct.sparc_frame_cache, %struct.sparc_frame_cache* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* @SPARC_L0_REGNUM, align 4
  %139 = sub nsw i32 %137, %138
  %140 = mul nsw i32 %139, 4
  %141 = add nsw i32 %136, %140
  %142 = load i32*, i32** %14, align 8
  store i32 %141, i32* %142, align 4
  %143 = load i32*, i32** %15, align 8
  store i32 -1, i32* %143, align 4
  %144 = load i8*, i8** %16, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %156

146:                                              ; preds = %130
  %147 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %148 = call %struct.gdbarch* @get_frame_arch(%struct.frame_info* %147)
  store %struct.gdbarch* %148, %struct.gdbarch** %22, align 8
  %149 = load i32*, i32** %14, align 8
  %150 = load i32, i32* %149, align 4
  %151 = load i8*, i8** %16, align 8
  %152 = load %struct.gdbarch*, %struct.gdbarch** %22, align 8
  %153 = load i32, i32* %11, align 4
  %154 = call i32 @register_size(%struct.gdbarch* %152, i32 %153)
  %155 = call i32 @read_memory(i32 %150, i8* %151, i32 %154)
  br label %156

156:                                              ; preds = %146, %130
  br label %185

157:                                              ; preds = %126, %122, %117
  %158 = load %struct.sparc_frame_cache*, %struct.sparc_frame_cache** %17, align 8
  %159 = getelementptr inbounds %struct.sparc_frame_cache, %struct.sparc_frame_cache* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %176, label %162

162:                                              ; preds = %157
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* @SPARC_O0_REGNUM, align 4
  %165 = icmp sge i32 %163, %164
  br i1 %165, label %166, label %176

166:                                              ; preds = %162
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* @SPARC_O7_REGNUM, align 4
  %169 = icmp sle i32 %167, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %166
  %171 = load i32, i32* @SPARC_I0_REGNUM, align 4
  %172 = load i32, i32* @SPARC_O0_REGNUM, align 4
  %173 = sub nsw i32 %171, %172
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %11, align 4
  br label %176

176:                                              ; preds = %170, %166, %162, %157
  %177 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %178 = load i32, i32* %11, align 4
  %179 = load i32*, i32** %12, align 8
  %180 = load i32*, i32** %13, align 8
  %181 = load i32*, i32** %14, align 8
  %182 = load i32*, i32** %15, align 8
  %183 = load i8*, i8** %16, align 8
  %184 = call i32 @frame_register_unwind(%struct.frame_info* %177, i32 %178, i32* %179, i32* %180, i32* %181, i32* %182, i8* %183)
  br label %185

185:                                              ; preds = %176, %156, %116, %77
  ret void
}

declare dso_local %struct.sparc_frame_cache* @sparc32_frame_cache(%struct.frame_info*, i8**) #1

declare dso_local i64 @frame_unwind_register_unsigned(%struct.frame_info*, i32) #1

declare dso_local i32 @store_unsigned_integer(i8*, i32, i64) #1

declare dso_local i64 @sparc_fetch_wcookie(...) #1

declare dso_local i64 @get_frame_memory_unsigned(%struct.frame_info*, i32, i32) #1

declare dso_local %struct.gdbarch* @get_frame_arch(%struct.frame_info*) #1

declare dso_local i32 @read_memory(i32, i8*, i32) #1

declare dso_local i32 @register_size(%struct.gdbarch*, i32) #1

declare dso_local i32 @frame_register_unwind(%struct.frame_info*, i32, i32*, i32*, i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

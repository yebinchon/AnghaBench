; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc64-tdep.c_sparc64_frame_prev_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc64-tdep.c_sparc64_frame_prev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.sparc_frame_cache = type { i32, i64 }
%struct.gdbarch = type { i32 }

@SPARC64_PC_REGNUM = common dso_local global i32 0, align 4
@SPARC64_NPC_REGNUM = common dso_local global i32 0, align 4
@not_lval = common dso_local global i32 0, align 4
@SPARC_O7_REGNUM = common dso_local global i32 0, align 4
@SPARC_I7_REGNUM = common dso_local global i32 0, align 4
@SPARC_L0_REGNUM = common dso_local global i32 0, align 4
@lval_memory = common dso_local global i32 0, align 4
@BIAS = common dso_local global i32 0, align 4
@SPARC_O0_REGNUM = common dso_local global i32 0, align 4
@SPARC_I0_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame_info*, i8**, i32, i32*, i32*, i32*, i32*, i8*)* @sparc64_frame_prev_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sparc64_frame_prev_register(%struct.frame_info* %0, i8** %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6, i8* %7) #0 {
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
  %19 = alloca %struct.gdbarch*, align 8
  store %struct.frame_info* %0, %struct.frame_info** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i8* %7, i8** %16, align 8
  %20 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %21 = load i8**, i8*** %10, align 8
  %22 = call %struct.sparc_frame_cache* @sparc64_frame_cache(%struct.frame_info* %20, i8** %21)
  store %struct.sparc_frame_cache* %22, %struct.sparc_frame_cache** %17, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @SPARC64_PC_REGNUM, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @SPARC64_NPC_REGNUM, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %66

30:                                               ; preds = %26, %8
  %31 = load i32*, i32** %12, align 8
  store i32 0, i32* %31, align 4
  %32 = load i32, i32* @not_lval, align 4
  %33 = load i32*, i32** %13, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %14, align 8
  store i32 0, i32* %34, align 4
  %35 = load i32*, i32** %15, align 8
  store i32 -1, i32* %35, align 4
  %36 = load i8*, i8** %16, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %65

38:                                               ; preds = %30
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @SPARC64_NPC_REGNUM, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 4, i32 0
  store i32 %43, i32* %18, align 4
  %44 = load %struct.sparc_frame_cache*, %struct.sparc_frame_cache** %17, align 8
  %45 = getelementptr inbounds %struct.sparc_frame_cache, %struct.sparc_frame_cache* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* @SPARC_O7_REGNUM, align 4
  br label %52

50:                                               ; preds = %38
  %51 = load i32, i32* @SPARC_I7_REGNUM, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  store i32 %53, i32* %11, align 4
  %54 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i64 @frame_unwind_register_unsigned(%struct.frame_info* %54, i32 %55)
  %57 = add nsw i64 %56, 8
  %58 = load i32, i32* %18, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %18, align 4
  %62 = load i8*, i8** %16, align 8
  %63 = load i32, i32* %18, align 4
  %64 = call i32 @store_unsigned_integer(i8* %62, i32 8, i32 %63)
  br label %65

65:                                               ; preds = %52, %30
  br label %136

66:                                               ; preds = %26
  %67 = load %struct.sparc_frame_cache*, %struct.sparc_frame_cache** %17, align 8
  %68 = getelementptr inbounds %struct.sparc_frame_cache, %struct.sparc_frame_cache* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %108, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @SPARC_L0_REGNUM, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %108

75:                                               ; preds = %71
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @SPARC_I7_REGNUM, align 4
  %78 = icmp sle i32 %76, %77
  br i1 %78, label %79, label %108

79:                                               ; preds = %75
  %80 = load i32*, i32** %12, align 8
  store i32 0, i32* %80, align 4
  %81 = load i32, i32* @lval_memory, align 4
  %82 = load i32*, i32** %13, align 8
  store i32 %81, i32* %82, align 4
  %83 = load %struct.sparc_frame_cache*, %struct.sparc_frame_cache** %17, align 8
  %84 = getelementptr inbounds %struct.sparc_frame_cache, %struct.sparc_frame_cache* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @BIAS, align 4
  %87 = add nsw i32 %85, %86
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @SPARC_L0_REGNUM, align 4
  %90 = sub nsw i32 %88, %89
  %91 = mul nsw i32 %90, 8
  %92 = add nsw i32 %87, %91
  %93 = load i32*, i32** %14, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32*, i32** %15, align 8
  store i32 -1, i32* %94, align 4
  %95 = load i8*, i8** %16, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %107

97:                                               ; preds = %79
  %98 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %99 = call %struct.gdbarch* @get_frame_arch(%struct.frame_info* %98)
  store %struct.gdbarch* %99, %struct.gdbarch** %19, align 8
  %100 = load i32*, i32** %14, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load i8*, i8** %16, align 8
  %103 = load %struct.gdbarch*, %struct.gdbarch** %19, align 8
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @register_size(%struct.gdbarch* %103, i32 %104)
  %106 = call i32 @read_memory(i32 %101, i8* %102, i32 %105)
  br label %107

107:                                              ; preds = %97, %79
  br label %136

108:                                              ; preds = %75, %71, %66
  %109 = load %struct.sparc_frame_cache*, %struct.sparc_frame_cache** %17, align 8
  %110 = getelementptr inbounds %struct.sparc_frame_cache, %struct.sparc_frame_cache* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %127, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @SPARC_O0_REGNUM, align 4
  %116 = icmp sge i32 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %113
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @SPARC_O7_REGNUM, align 4
  %120 = icmp sle i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = load i32, i32* @SPARC_I0_REGNUM, align 4
  %123 = load i32, i32* @SPARC_O0_REGNUM, align 4
  %124 = sub nsw i32 %122, %123
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %11, align 4
  br label %127

127:                                              ; preds = %121, %117, %113, %108
  %128 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %129 = load i32, i32* %11, align 4
  %130 = load i32*, i32** %12, align 8
  %131 = load i32*, i32** %13, align 8
  %132 = load i32*, i32** %14, align 8
  %133 = load i32*, i32** %15, align 8
  %134 = load i8*, i8** %16, align 8
  %135 = call i32 @frame_register_unwind(%struct.frame_info* %128, i32 %129, i32* %130, i32* %131, i32* %132, i32* %133, i8* %134)
  br label %136

136:                                              ; preds = %127, %107, %65
  ret void
}

declare dso_local %struct.sparc_frame_cache* @sparc64_frame_cache(%struct.frame_info*, i8**) #1

declare dso_local i64 @frame_unwind_register_unsigned(%struct.frame_info*, i32) #1

declare dso_local i32 @store_unsigned_integer(i8*, i32, i32) #1

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

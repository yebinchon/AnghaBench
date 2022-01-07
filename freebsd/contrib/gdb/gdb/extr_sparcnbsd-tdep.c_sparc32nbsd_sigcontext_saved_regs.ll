; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparcnbsd-tdep.c_sparc32nbsd_sigcontext_saved_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparcnbsd-tdep.c_sparc32nbsd_sigcontext_saved_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trad_frame_saved_reg = type { i32, i8* }
%struct.frame_info = type { i32 }

@SPARC_FP_REGNUM = common dso_local global i64 0, align 8
@SPARC_SP_REGNUM = common dso_local global i64 0, align 8
@SPARC32_PC_REGNUM = common dso_local global i64 0, align 8
@SPARC32_NPC_REGNUM = common dso_local global i64 0, align 8
@SPARC32_PSR_REGNUM = common dso_local global i64 0, align 8
@SPARC_G1_REGNUM = common dso_local global i64 0, align 8
@SPARC_O0_REGNUM = common dso_local global i64 0, align 8
@SPARC_L0_REGNUM = common dso_local global i32 0, align 4
@SPARC_G0_REGNUM = common dso_local global i32 0, align 4
@SPARC_G2_REGNUM = common dso_local global i32 0, align 4
@SPARC_G7_REGNUM = common dso_local global i32 0, align 4
@SPARC_L1_REGNUM = common dso_local global i32 0, align 4
@SPARC32_Y_REGNUM = common dso_local global i64 0, align 8
@SPARC_I0_REGNUM = common dso_local global i64 0, align 8
@SPARC_O1_REGNUM = common dso_local global i32 0, align 4
@SPARC_O5_REGNUM = common dso_local global i32 0, align 4
@SPARC_I7_REGNUM = common dso_local global i32 0, align 4
@SPARC_O7_REGNUM = common dso_local global i64 0, align 8
@SPARC32_FSR_REGNUM = common dso_local global i64 0, align 8
@SPARC_F0_REGNUM = common dso_local global i32 0, align 4
@SPARC_F31_REGNUM = common dso_local global i32 0, align 4
@PSR_EF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.trad_frame_saved_reg* @sparc32nbsd_sigcontext_saved_regs(%struct.frame_info* %0) #0 {
  %2 = alloca %struct.frame_info*, align 8
  %3 = alloca %struct.trad_frame_saved_reg*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.frame_info* %0, %struct.frame_info** %2, align 8
  %12 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %13 = call %struct.trad_frame_saved_reg* @trad_frame_alloc_saved_regs(%struct.frame_info* %12)
  store %struct.trad_frame_saved_reg* %13, %struct.trad_frame_saved_reg** %3, align 8
  %14 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %15 = load i64, i64* @SPARC_FP_REGNUM, align 8
  %16 = call i8* @frame_unwind_register_unsigned(%struct.frame_info* %14, i64 %15)
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr i8, i8* %17, i64 64
  %19 = getelementptr i8, i8* %18, i64 16
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr i8, i8* %20, i64 8
  %22 = load %struct.trad_frame_saved_reg*, %struct.trad_frame_saved_reg** %3, align 8
  %23 = load i64, i64* @SPARC_SP_REGNUM, align 8
  %24 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %22, i64 %23
  %25 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %24, i32 0, i32 1
  store i8* %21, i8** %25, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr i8, i8* %26, i64 12
  %28 = load %struct.trad_frame_saved_reg*, %struct.trad_frame_saved_reg** %3, align 8
  %29 = load i64, i64* @SPARC32_PC_REGNUM, align 8
  %30 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %28, i64 %29
  %31 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %30, i32 0, i32 1
  store i8* %27, i8** %31, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr i8, i8* %32, i64 16
  %34 = load %struct.trad_frame_saved_reg*, %struct.trad_frame_saved_reg** %3, align 8
  %35 = load i64, i64* @SPARC32_NPC_REGNUM, align 8
  %36 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %34, i64 %35
  %37 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %36, i32 0, i32 1
  store i8* %33, i8** %37, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr i8, i8* %38, i64 20
  %40 = load %struct.trad_frame_saved_reg*, %struct.trad_frame_saved_reg** %3, align 8
  %41 = load i64, i64* @SPARC32_PSR_REGNUM, align 8
  %42 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %40, i64 %41
  %43 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %42, i32 0, i32 1
  store i8* %39, i8** %43, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr i8, i8* %44, i64 24
  %46 = load %struct.trad_frame_saved_reg*, %struct.trad_frame_saved_reg** %3, align 8
  %47 = load i64, i64* @SPARC_G1_REGNUM, align 8
  %48 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %46, i64 %47
  %49 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %48, i32 0, i32 1
  store i8* %45, i8** %49, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr i8, i8* %50, i64 28
  %52 = load %struct.trad_frame_saved_reg*, %struct.trad_frame_saved_reg** %3, align 8
  %53 = load i64, i64* @SPARC_O0_REGNUM, align 8
  %54 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %52, i64 %53
  %55 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %54, i32 0, i32 1
  store i8* %51, i8** %55, align 8
  %56 = load i32, i32* @SPARC_L0_REGNUM, align 4
  %57 = load i32, i32* @SPARC_G0_REGNUM, align 4
  %58 = sub nsw i32 %56, %57
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* @SPARC_G2_REGNUM, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %73, %1
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @SPARC_G7_REGNUM, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %65, %66
  %68 = load %struct.trad_frame_saved_reg*, %struct.trad_frame_saved_reg** %3, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %68, i64 %70
  %72 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %71, i32 0, i32 0
  store i32 %67, i32* %72, align 8
  br label %73

73:                                               ; preds = %64
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %60

76:                                               ; preds = %60
  %77 = load i32, i32* @SPARC_L1_REGNUM, align 4
  %78 = load %struct.trad_frame_saved_reg*, %struct.trad_frame_saved_reg** %3, align 8
  %79 = load i64, i64* @SPARC32_Y_REGNUM, align 8
  %80 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %78, i64 %79
  %81 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 8
  %82 = load i64, i64* @SPARC_I0_REGNUM, align 8
  %83 = load i64, i64* @SPARC_O0_REGNUM, align 8
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* @SPARC_O1_REGNUM, align 4
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %100, %76
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @SPARC_O5_REGNUM, align 4
  %90 = icmp sle i32 %88, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %87
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %92, %93
  %95 = load %struct.trad_frame_saved_reg*, %struct.trad_frame_saved_reg** %3, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %95, i64 %97
  %99 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %98, i32 0, i32 0
  store i32 %94, i32* %99, align 8
  br label %100

100:                                              ; preds = %91
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %87

103:                                              ; preds = %87
  %104 = load i32, i32* @SPARC_I7_REGNUM, align 4
  %105 = load %struct.trad_frame_saved_reg*, %struct.trad_frame_saved_reg** %3, align 8
  %106 = load i64, i64* @SPARC_O7_REGNUM, align 8
  %107 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %105, i64 %106
  %108 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %107, i32 0, i32 0
  store i32 %104, i32* %108, align 8
  %109 = load %struct.trad_frame_saved_reg*, %struct.trad_frame_saved_reg** %3, align 8
  %110 = load i64, i64* @SPARC_SP_REGNUM, align 8
  %111 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %109, i64 %110
  %112 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  store i8* %113, i8** %4, align 8
  %114 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %115 = load i8*, i8** %4, align 8
  %116 = call i64 @get_frame_memory_unsigned(%struct.frame_info* %114, i8* %115, i32 4)
  %117 = inttoptr i64 %116 to i8*
  store i8* %117, i8** %4, align 8
  %118 = load i32, i32* @SPARC_L0_REGNUM, align 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %130, %103
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @SPARC_I7_REGNUM, align 4
  %122 = icmp sle i32 %120, %121
  br i1 %122, label %123, label %135

123:                                              ; preds = %119
  %124 = load i8*, i8** %4, align 8
  %125 = load %struct.trad_frame_saved_reg*, %struct.trad_frame_saved_reg** %3, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %125, i64 %127
  %129 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %128, i32 0, i32 1
  store i8* %124, i8** %129, align 8
  br label %130

130:                                              ; preds = %123
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  %133 = load i8*, i8** %4, align 8
  %134 = getelementptr i8, i8* %133, i64 4
  store i8* %134, i8** %4, align 8
  br label %119

135:                                              ; preds = %119
  %136 = call i64 (...) @sparc_fetch_wcookie()
  store i64 %136, i64* %9, align 8
  %137 = load i64, i64* %9, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %155

139:                                              ; preds = %135
  %140 = load %struct.trad_frame_saved_reg*, %struct.trad_frame_saved_reg** %3, align 8
  %141 = load i32, i32* @SPARC_I7_REGNUM, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %140, i64 %142
  %144 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  store i8* %145, i8** %4, align 8
  %146 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %147 = load i8*, i8** %4, align 8
  %148 = call i64 @get_frame_memory_unsigned(%struct.frame_info* %146, i8* %147, i32 4)
  store i64 %148, i64* %10, align 8
  %149 = load %struct.trad_frame_saved_reg*, %struct.trad_frame_saved_reg** %3, align 8
  %150 = load i32, i32* @SPARC_I7_REGNUM, align 4
  %151 = load i64, i64* %10, align 8
  %152 = load i64, i64* %9, align 8
  %153 = xor i64 %151, %152
  %154 = call i32 @trad_frame_set_value(%struct.trad_frame_saved_reg* %149, i32 %150, i64 %153)
  br label %155

155:                                              ; preds = %139, %135
  %156 = load %struct.trad_frame_saved_reg*, %struct.trad_frame_saved_reg** %3, align 8
  %157 = load i64, i64* @SPARC32_PSR_REGNUM, align 8
  %158 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %156, i64 %157
  %159 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  store i8* %160, i8** %4, align 8
  %161 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %162 = load i8*, i8** %4, align 8
  %163 = call i64 @get_frame_memory_unsigned(%struct.frame_info* %161, i8* %162, i32 4)
  store i64 %163, i64* %8, align 8
  %164 = load i64, i64* %8, align 8
  %165 = and i64 %164, 4096
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %198

167:                                              ; preds = %155
  %168 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %169 = load i64, i64* @SPARC_SP_REGNUM, align 8
  %170 = call i8* @frame_unwind_register_unsigned(%struct.frame_info* %168, i64 %169)
  store i8* %170, i8** %11, align 8
  %171 = load i8*, i8** %11, align 8
  %172 = getelementptr i8, i8* %171, i64 96
  %173 = load %struct.trad_frame_saved_reg*, %struct.trad_frame_saved_reg** %3, align 8
  %174 = load i64, i64* @SPARC32_FSR_REGNUM, align 8
  %175 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %173, i64 %174
  %176 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %175, i32 0, i32 1
  store i8* %172, i8** %176, align 8
  %177 = load i32, i32* @SPARC_F0_REGNUM, align 4
  store i32 %177, i32* %6, align 4
  %178 = load i8*, i8** %11, align 8
  %179 = getelementptr i8, i8* %178, i64 96
  %180 = getelementptr i8, i8* %179, i64 8
  store i8* %180, i8** %4, align 8
  br label %181

181:                                              ; preds = %192, %167
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* @SPARC_F31_REGNUM, align 4
  %184 = icmp sle i32 %182, %183
  br i1 %184, label %185, label %197

185:                                              ; preds = %181
  %186 = load i8*, i8** %4, align 8
  %187 = load %struct.trad_frame_saved_reg*, %struct.trad_frame_saved_reg** %3, align 8
  %188 = load i32, i32* %6, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %187, i64 %189
  %191 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %190, i32 0, i32 1
  store i8* %186, i8** %191, align 8
  br label %192

192:                                              ; preds = %185
  %193 = load i32, i32* %6, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %6, align 4
  %195 = load i8*, i8** %4, align 8
  %196 = getelementptr i8, i8* %195, i64 4
  store i8* %196, i8** %4, align 8
  br label %181

197:                                              ; preds = %181
  br label %198

198:                                              ; preds = %197, %155
  %199 = load %struct.trad_frame_saved_reg*, %struct.trad_frame_saved_reg** %3, align 8
  ret %struct.trad_frame_saved_reg* %199
}

declare dso_local %struct.trad_frame_saved_reg* @trad_frame_alloc_saved_regs(%struct.frame_info*) #1

declare dso_local i8* @frame_unwind_register_unsigned(%struct.frame_info*, i64) #1

declare dso_local i64 @get_frame_memory_unsigned(%struct.frame_info*, i8*, i32) #1

declare dso_local i64 @sparc_fetch_wcookie(...) #1

declare dso_local i32 @trad_frame_set_value(%struct.trad_frame_saved_reg*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

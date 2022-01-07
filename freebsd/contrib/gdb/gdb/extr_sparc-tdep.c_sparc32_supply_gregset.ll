; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc32_supply_gregset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc32_supply_gregset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sparc_gregset = type { i32, i32, i32, i32, i32, i32 }
%struct.regcache = type { i32 }

@SPARC32_PSR_REGNUM = common dso_local global i32 0, align 4
@SPARC32_PC_REGNUM = common dso_local global i32 0, align 4
@SPARC32_NPC_REGNUM = common dso_local global i32 0, align 4
@SPARC32_Y_REGNUM = common dso_local global i32 0, align 4
@SPARC_G0_REGNUM = common dso_local global i32 0, align 4
@SPARC_G1_REGNUM = common dso_local global i32 0, align 4
@SPARC_O7_REGNUM = common dso_local global i32 0, align 4
@SPARC_L0_REGNUM = common dso_local global i32 0, align 4
@SPARC_I7_REGNUM = common dso_local global i32 0, align 4
@SPARC_SP_REGNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sparc32_supply_gregset(%struct.sparc_gregset* %0, %struct.regcache* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.sparc_gregset*, align 8
  %6 = alloca %struct.regcache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sparc_gregset* %0, %struct.sparc_gregset** %5, align 8
  store %struct.regcache* %1, %struct.regcache** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @SPARC32_PSR_REGNUM, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %31

21:                                               ; preds = %18, %4
  %22 = load %struct.regcache*, %struct.regcache** %6, align 8
  %23 = load i32, i32* @SPARC32_PSR_REGNUM, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.sparc_gregset*, %struct.sparc_gregset** %5, align 8
  %26 = getelementptr inbounds %struct.sparc_gregset, %struct.sparc_gregset* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %24, i64 %28
  %30 = call i32 @regcache_raw_supply(%struct.regcache* %22, i32 %23, i8* %29)
  br label %31

31:                                               ; preds = %21, %18
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @SPARC32_PC_REGNUM, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %48

38:                                               ; preds = %35, %31
  %39 = load %struct.regcache*, %struct.regcache** %6, align 8
  %40 = load i32, i32* @SPARC32_PC_REGNUM, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = load %struct.sparc_gregset*, %struct.sparc_gregset** %5, align 8
  %43 = getelementptr inbounds %struct.sparc_gregset, %struct.sparc_gregset* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %41, i64 %45
  %47 = call i32 @regcache_raw_supply(%struct.regcache* %39, i32 %40, i8* %46)
  br label %48

48:                                               ; preds = %38, %35
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @SPARC32_NPC_REGNUM, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %65

55:                                               ; preds = %52, %48
  %56 = load %struct.regcache*, %struct.regcache** %6, align 8
  %57 = load i32, i32* @SPARC32_NPC_REGNUM, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = load %struct.sparc_gregset*, %struct.sparc_gregset** %5, align 8
  %60 = getelementptr inbounds %struct.sparc_gregset, %struct.sparc_gregset* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  %64 = call i32 @regcache_raw_supply(%struct.regcache* %56, i32 %57, i8* %63)
  br label %65

65:                                               ; preds = %55, %52
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @SPARC32_Y_REGNUM, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %82

72:                                               ; preds = %69, %65
  %73 = load %struct.regcache*, %struct.regcache** %6, align 8
  %74 = load i32, i32* @SPARC32_Y_REGNUM, align 4
  %75 = load i8*, i8** %9, align 8
  %76 = load %struct.sparc_gregset*, %struct.sparc_gregset** %5, align 8
  %77 = getelementptr inbounds %struct.sparc_gregset, %struct.sparc_gregset* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %75, i64 %79
  %81 = call i32 @regcache_raw_supply(%struct.regcache* %73, i32 %74, i8* %80)
  br label %82

82:                                               ; preds = %72, %69
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @SPARC_G0_REGNUM, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %93

89:                                               ; preds = %86, %82
  %90 = load %struct.regcache*, %struct.regcache** %6, align 8
  %91 = load i32, i32* @SPARC_G0_REGNUM, align 4
  %92 = call i32 @regcache_raw_supply(%struct.regcache* %90, i32 %91, i8* null)
  br label %93

93:                                               ; preds = %89, %86
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @SPARC_G1_REGNUM, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @SPARC_O7_REGNUM, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %104, label %101

101:                                              ; preds = %97, %93
  %102 = load i32, i32* %7, align 4
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %135

104:                                              ; preds = %101, %97
  %105 = load %struct.sparc_gregset*, %struct.sparc_gregset** %5, align 8
  %106 = getelementptr inbounds %struct.sparc_gregset, %struct.sparc_gregset* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* @SPARC_G1_REGNUM, align 4
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %131, %104
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @SPARC_O7_REGNUM, align 4
  %112 = icmp sle i32 %110, %111
  br i1 %112, label %113, label %134

113:                                              ; preds = %109
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = load i32, i32* %7, align 4
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %128

120:                                              ; preds = %117, %113
  %121 = load %struct.regcache*, %struct.regcache** %6, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load i8*, i8** %9, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = call i32 @regcache_raw_supply(%struct.regcache* %121, i32 %122, i8* %126)
  br label %128

128:                                              ; preds = %120, %117
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 4
  store i32 %130, i32* %11, align 4
  br label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %109

134:                                              ; preds = %109
  br label %135

135:                                              ; preds = %134, %101
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @SPARC_L0_REGNUM, align 4
  %138 = icmp sge i32 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @SPARC_I7_REGNUM, align 4
  %142 = icmp sle i32 %140, %141
  br i1 %142, label %146, label %143

143:                                              ; preds = %139, %135
  %144 = load i32, i32* %7, align 4
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %146, label %191

146:                                              ; preds = %143, %139
  %147 = load %struct.sparc_gregset*, %struct.sparc_gregset** %5, align 8
  %148 = getelementptr inbounds %struct.sparc_gregset, %struct.sparc_gregset* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, -1
  br i1 %150, label %151, label %159

151:                                              ; preds = %146
  %152 = load %struct.regcache*, %struct.regcache** %6, align 8
  %153 = load i32, i32* @SPARC_SP_REGNUM, align 4
  %154 = call i32 @regcache_cooked_read_unsigned(%struct.regcache* %152, i32 %153, i32* %12)
  %155 = load %struct.regcache*, %struct.regcache** %6, align 8
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @sparc_supply_rwindow(%struct.regcache* %155, i32 %156, i32 %157)
  br label %190

159:                                              ; preds = %146
  %160 = load %struct.sparc_gregset*, %struct.sparc_gregset** %5, align 8
  %161 = getelementptr inbounds %struct.sparc_gregset, %struct.sparc_gregset* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %13, align 4
  %163 = load i32, i32* @SPARC_L0_REGNUM, align 4
  store i32 %163, i32* %10, align 4
  br label %164

164:                                              ; preds = %186, %159
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* @SPARC_I7_REGNUM, align 4
  %167 = icmp sle i32 %165, %166
  br i1 %167, label %168, label %189

168:                                              ; preds = %164
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* %10, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %175, label %172

172:                                              ; preds = %168
  %173 = load i32, i32* %7, align 4
  %174 = icmp eq i32 %173, -1
  br i1 %174, label %175, label %183

175:                                              ; preds = %172, %168
  %176 = load %struct.regcache*, %struct.regcache** %6, align 8
  %177 = load i32, i32* %10, align 4
  %178 = load i8*, i8** %9, align 8
  %179 = load i32, i32* %13, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %178, i64 %180
  %182 = call i32 @regcache_raw_supply(%struct.regcache* %176, i32 %177, i8* %181)
  br label %183

183:                                              ; preds = %175, %172
  %184 = load i32, i32* %13, align 4
  %185 = add nsw i32 %184, 4
  store i32 %185, i32* %13, align 4
  br label %186

186:                                              ; preds = %183
  %187 = load i32, i32* %10, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %10, align 4
  br label %164

189:                                              ; preds = %164
  br label %190

190:                                              ; preds = %189, %151
  br label %191

191:                                              ; preds = %190, %143
  ret void
}

declare dso_local i32 @regcache_raw_supply(%struct.regcache*, i32, i8*) #1

declare dso_local i32 @regcache_cooked_read_unsigned(%struct.regcache*, i32, i32*) #1

declare dso_local i32 @sparc_supply_rwindow(%struct.regcache*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

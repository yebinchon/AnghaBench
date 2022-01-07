; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc32_collect_gregset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc32_collect_gregset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sparc_gregset = type { i32, i32, i32, i32, i32, i32 }
%struct.regcache = type { i32 }

@SPARC32_PSR_REGNUM = common dso_local global i32 0, align 4
@SPARC32_PC_REGNUM = common dso_local global i32 0, align 4
@SPARC32_NPC_REGNUM = common dso_local global i32 0, align 4
@SPARC32_Y_REGNUM = common dso_local global i32 0, align 4
@SPARC_G1_REGNUM = common dso_local global i32 0, align 4
@SPARC_O7_REGNUM = common dso_local global i32 0, align 4
@SPARC_L0_REGNUM = common dso_local global i32 0, align 4
@SPARC_I7_REGNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sparc32_collect_gregset(%struct.sparc_gregset* %0, %struct.regcache* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.sparc_gregset*, align 8
  %6 = alloca %struct.regcache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sparc_gregset* %0, %struct.sparc_gregset** %5, align 8
  store %struct.regcache* %1, %struct.regcache** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  store i8* %13, i8** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @SPARC32_PSR_REGNUM, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %30

20:                                               ; preds = %17, %4
  %21 = load %struct.regcache*, %struct.regcache** %6, align 8
  %22 = load i32, i32* @SPARC32_PSR_REGNUM, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = load %struct.sparc_gregset*, %struct.sparc_gregset** %5, align 8
  %25 = getelementptr inbounds %struct.sparc_gregset, %struct.sparc_gregset* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %23, i64 %27
  %29 = call i32 @regcache_raw_collect(%struct.regcache* %21, i32 %22, i8* %28)
  br label %30

30:                                               ; preds = %20, %17
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @SPARC32_PC_REGNUM, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %47

37:                                               ; preds = %34, %30
  %38 = load %struct.regcache*, %struct.regcache** %6, align 8
  %39 = load i32, i32* @SPARC32_PC_REGNUM, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = load %struct.sparc_gregset*, %struct.sparc_gregset** %5, align 8
  %42 = getelementptr inbounds %struct.sparc_gregset, %struct.sparc_gregset* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %40, i64 %44
  %46 = call i32 @regcache_raw_collect(%struct.regcache* %38, i32 %39, i8* %45)
  br label %47

47:                                               ; preds = %37, %34
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @SPARC32_NPC_REGNUM, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %64

54:                                               ; preds = %51, %47
  %55 = load %struct.regcache*, %struct.regcache** %6, align 8
  %56 = load i32, i32* @SPARC32_NPC_REGNUM, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = load %struct.sparc_gregset*, %struct.sparc_gregset** %5, align 8
  %59 = getelementptr inbounds %struct.sparc_gregset, %struct.sparc_gregset* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %57, i64 %61
  %63 = call i32 @regcache_raw_collect(%struct.regcache* %55, i32 %56, i8* %62)
  br label %64

64:                                               ; preds = %54, %51
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @SPARC32_Y_REGNUM, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %81

71:                                               ; preds = %68, %64
  %72 = load %struct.regcache*, %struct.regcache** %6, align 8
  %73 = load i32, i32* @SPARC32_Y_REGNUM, align 4
  %74 = load i8*, i8** %9, align 8
  %75 = load %struct.sparc_gregset*, %struct.sparc_gregset** %5, align 8
  %76 = getelementptr inbounds %struct.sparc_gregset, %struct.sparc_gregset* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %74, i64 %78
  %80 = call i32 @regcache_raw_collect(%struct.regcache* %72, i32 %73, i8* %79)
  br label %81

81:                                               ; preds = %71, %68
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @SPARC_G1_REGNUM, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @SPARC_O7_REGNUM, align 4
  %88 = icmp sle i32 %86, %87
  br i1 %88, label %92, label %89

89:                                               ; preds = %85, %81
  %90 = load i32, i32* %7, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %123

92:                                               ; preds = %89, %85
  %93 = load %struct.sparc_gregset*, %struct.sparc_gregset** %5, align 8
  %94 = getelementptr inbounds %struct.sparc_gregset, %struct.sparc_gregset* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* @SPARC_G1_REGNUM, align 4
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %119, %92
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @SPARC_O7_REGNUM, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %97
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %7, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %116

108:                                              ; preds = %105, %101
  %109 = load %struct.regcache*, %struct.regcache** %6, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load i8*, i8** %9, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = call i32 @regcache_raw_collect(%struct.regcache* %109, i32 %110, i8* %114)
  br label %116

116:                                              ; preds = %108, %105
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 4
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %10, align 4
  br label %97

122:                                              ; preds = %97
  br label %123

123:                                              ; preds = %122, %89
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @SPARC_L0_REGNUM, align 4
  %126 = icmp sge i32 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @SPARC_I7_REGNUM, align 4
  %130 = icmp sle i32 %128, %129
  br i1 %130, label %134, label %131

131:                                              ; preds = %127, %123
  %132 = load i32, i32* %7, align 4
  %133 = icmp eq i32 %132, -1
  br i1 %133, label %134, label %171

134:                                              ; preds = %131, %127
  %135 = load %struct.sparc_gregset*, %struct.sparc_gregset** %5, align 8
  %136 = getelementptr inbounds %struct.sparc_gregset, %struct.sparc_gregset* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, -1
  br i1 %138, label %139, label %170

139:                                              ; preds = %134
  %140 = load %struct.sparc_gregset*, %struct.sparc_gregset** %5, align 8
  %141 = getelementptr inbounds %struct.sparc_gregset, %struct.sparc_gregset* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* @SPARC_L0_REGNUM, align 4
  store i32 %143, i32* %10, align 4
  br label %144

144:                                              ; preds = %166, %139
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @SPARC_I7_REGNUM, align 4
  %147 = icmp sle i32 %145, %146
  br i1 %147, label %148, label %169

148:                                              ; preds = %144
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %155, label %152

152:                                              ; preds = %148
  %153 = load i32, i32* %7, align 4
  %154 = icmp eq i32 %153, -1
  br i1 %154, label %155, label %163

155:                                              ; preds = %152, %148
  %156 = load %struct.regcache*, %struct.regcache** %6, align 8
  %157 = load i32, i32* %10, align 4
  %158 = load i8*, i8** %9, align 8
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  %162 = call i32 @regcache_raw_collect(%struct.regcache* %156, i32 %157, i8* %161)
  br label %163

163:                                              ; preds = %155, %152
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, 4
  store i32 %165, i32* %12, align 4
  br label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %10, align 4
  br label %144

169:                                              ; preds = %144
  br label %170

170:                                              ; preds = %169, %134
  br label %171

171:                                              ; preds = %170, %131
  ret void
}

declare dso_local i32 @regcache_raw_collect(%struct.regcache*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

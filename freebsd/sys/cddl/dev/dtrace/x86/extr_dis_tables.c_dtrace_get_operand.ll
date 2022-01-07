; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/x86/extr_dis_tables.c_dtrace_get_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/x86/extr_dis_tables.c_dtrace_get_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64, i64, i64, i64, %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i8*, i8* }

@REG_ONLY = common dso_local global i64 0, align 8
@SIZE16 = common dso_local global i64 0, align 8
@ESP_REGNO = common dso_local global i64 0, align 8
@REX_B = common dso_local global i32 0, align 4
@REX_X = common dso_local global i32 0, align 4
@EBP_REGNO = common dso_local global i64 0, align 8
@MODE_NONE = common dso_local global i8* null, align 8
@MODE_OFFSET = common dso_local global i8* null, align 8
@MODE_RIPREL = common dso_local global i8* null, align 8
@MODE_SIGNED = common dso_local global i8* null, align 8
@OPLEN = common dso_local global i32 0, align 4
@SIZE32 = common dso_local global i64 0, align 8
@dis_CONTROLREG = common dso_local global i8** null, align 8
@dis_DEBUGREG = common dso_local global i8** null, align 8
@dis_MMREG = common dso_local global i8** null, align 8
@dis_REG16 = common dso_local global i8** null, align 8
@dis_REG32 = common dso_local global i8** null, align 8
@dis_REG64 = common dso_local global i8** null, align 8
@dis_REG8 = common dso_local global i8** null, align 8
@dis_REG8_REX = common dso_local global i8** null, align 8
@dis_SEGREG = common dso_local global i8** null, align 8
@dis_TESTREG = common dso_local global i8** null, align 8
@dis_XMMREG = common dso_local global i8** null, align 8
@dis_YMMREG = common dso_local global i8** null, align 8
@dis_addr16 = common dso_local global i8*** null, align 8
@dis_addr32_mode0 = common dso_local global i8** null, align 8
@dis_addr32_mode12 = common dso_local global i8** null, align 8
@dis_addr64_mode0 = common dso_local global i8** null, align 8
@dis_addr64_mode12 = common dso_local global i8** null, align 8
@dis_scale_factor = common dso_local global i8** null, align 8
@dis_vscale_factor = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i64, i64, i32, i32)* @dtrace_get_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtrace_get_operand(%struct.TYPE_8__* %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %10, align 4
  %20 = add nsw i32 %19, 1
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %5
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %23, 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  br label %27

27:                                               ; preds = %22, %5
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 7
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %158

33:                                               ; preds = %27
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @REG_ONLY, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %158

38:                                               ; preds = %33
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @dtrace_check_override(%struct.TYPE_8__* %39, i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SIZE16, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %38
  %48 = load i64, i64* %7, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i64, i64* %8, align 8
  %52 = icmp eq i64 %51, 6
  br i1 %52, label %56, label %53

53:                                               ; preds = %50, %47
  %54 = load i64, i64* %7, align 8
  %55 = icmp eq i64 %54, 2
  br i1 %55, label %56, label %60

56:                                               ; preds = %53, %50
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @dtrace_imm_opnd(%struct.TYPE_8__* %57, i32 130, i32 2, i32 %58)
  br label %68

60:                                               ; preds = %53
  %61 = load i64, i64* %7, align 8
  %62 = icmp eq i64 %61, 1
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @dtrace_imm_opnd(%struct.TYPE_8__* %64, i32 137, i32 1, i32 %65)
  br label %67

67:                                               ; preds = %63, %60
  br label %68

68:                                               ; preds = %67, %56
  br label %158

69:                                               ; preds = %38
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* @ESP_REGNO, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* @ESP_REGNO, align 8
  %76 = add nsw i64 %75, 8
  %77 = icmp eq i64 %74, %76
  br i1 %77, label %78, label %114

78:                                               ; preds = %73, %69
  store i32 1, i32* %11, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %80 = call i32 @dtrace_get_SIB(%struct.TYPE_8__* %79, i64* %12, i64* %13, i64* %14)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 7
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %158

86:                                               ; preds = %78
  %87 = load i64, i64* %14, align 8
  %88 = icmp ne i64 %87, 5
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i64, i64* %7, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %89, %86
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @REX_B, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load i64, i64* %14, align 8
  %101 = add nsw i64 %100, 8
  store i64 %101, i64* %14, align 8
  br label %102

102:                                              ; preds = %99, %92
  br label %103

103:                                              ; preds = %102, %89
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @REX_X, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load i64, i64* %13, align 8
  %112 = add nsw i64 %111, 8
  store i64 %112, i64* %13, align 8
  br label %113

113:                                              ; preds = %110, %103
  br label %116

114:                                              ; preds = %73
  %115 = load i64, i64* %8, align 8
  store i64 %115, i64* %14, align 8
  br label %116

116:                                              ; preds = %114, %113
  store i32 0, i32* %15, align 4
  %117 = load i64, i64* %7, align 8
  %118 = icmp eq i64 %117, 1
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i32 1, i32* %15, align 4
  br label %140

120:                                              ; preds = %116
  %121 = load i64, i64* %7, align 8
  %122 = icmp eq i64 %121, 2
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i32 4, i32* %15, align 4
  br label %139

124:                                              ; preds = %120
  %125 = load i64, i64* %8, align 8
  %126 = and i64 %125, 7
  %127 = load i64, i64* @EBP_REGNO, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %137, label %129

129:                                              ; preds = %124
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %129
  %133 = load i64, i64* %14, align 8
  %134 = and i64 %133, 7
  %135 = load i64, i64* @EBP_REGNO, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %132, %124
  store i32 4, i32* %15, align 4
  br label %138

138:                                              ; preds = %137, %132, %129
  br label %139

139:                                              ; preds = %138, %123
  br label %140

140:                                              ; preds = %139, %119
  %141 = load i32, i32* %15, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %158

143:                                              ; preds = %140
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %145 = load i32, i32* %15, align 4
  %146 = icmp eq i32 %145, 4
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i32 134, i32 137
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @dtrace_imm_opnd(%struct.TYPE_8__* %144, i32 %148, i32 %149, i32 %150)
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 7
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %143
  br label %158

157:                                              ; preds = %143
  br label %158

158:                                              ; preds = %32, %37, %68, %85, %156, %157, %140
  ret void
}

declare dso_local i32 @dtrace_check_override(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @dtrace_imm_opnd(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @dtrace_get_SIB(%struct.TYPE_8__*, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

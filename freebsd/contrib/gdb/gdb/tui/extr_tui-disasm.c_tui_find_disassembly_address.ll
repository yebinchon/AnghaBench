; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-disasm.c_tui_find_disassembly_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-disasm.c_tui_find_disassembly_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_asm_line = type { i64, i32, i32 }
%struct.minimal_symbol = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @tui_find_disassembly_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tui_find_disassembly_address(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tui_asm_line*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.minimal_symbol*, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  br label %21

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = sub nsw i32 0, %19
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi i32 [ %17, %16 ], [ %20, %18 ]
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sle i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i64, i64* %4, align 8
  store i64 %26, i64* %3, align 8
  br label %166

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 16, %29
  %31 = trunc i64 %30 to i32
  %32 = call i64 @alloca(i32 %31)
  %33 = inttoptr i64 %32 to %struct.tui_asm_line*
  store %struct.tui_asm_line* %33, %struct.tui_asm_line** %9, align 8
  %34 = load %struct.tui_asm_line*, %struct.tui_asm_line** %9, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 16, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32 @memset(%struct.tui_asm_line* %34, i32 0, i32 %38)
  %40 = load i64, i64* %4, align 8
  store i64 %40, i64* %6, align 8
  %41 = load i32, i32* %5, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %27
  %44 = load %struct.tui_asm_line*, %struct.tui_asm_line** %9, align 8
  %45 = load i64, i64* %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i64 @tui_disassemble(%struct.tui_asm_line* %44, i64 %45, i32 %46)
  %48 = load %struct.tui_asm_line*, %struct.tui_asm_line** %9, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %48, i64 %51
  %53 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %6, align 8
  br label %141

55:                                               ; preds = %27
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %95, %55
  %59 = load i32, i32* %7, align 4
  %60 = mul nsw i32 1, %59
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %6, align 8
  %63 = sub nsw i64 %62, %61
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call %struct.minimal_symbol* @lookup_minimal_symbol_by_pc_section(i64 %64, i32 0)
  store %struct.minimal_symbol* %65, %struct.minimal_symbol** %12, align 8
  %66 = load %struct.minimal_symbol*, %struct.minimal_symbol** %12, align 8
  %67 = icmp ne %struct.minimal_symbol* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load %struct.minimal_symbol*, %struct.minimal_symbol** %12, align 8
  %70 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %69)
  store i64 %70, i64* %6, align 8
  br label %77

71:                                               ; preds = %58
  %72 = load i32, i32* %7, align 4
  %73 = mul nsw i32 1, %72
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %6, align 8
  %76 = add nsw i64 %75, %74
  store i64 %76, i64* %6, align 8
  br label %77

77:                                               ; preds = %71, %68
  %78 = load %struct.tui_asm_line*, %struct.tui_asm_line** %9, align 8
  %79 = load i64, i64* %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i64 @tui_disassemble(%struct.tui_asm_line* %78, i64 %79, i32 %80)
  %82 = load %struct.tui_asm_line*, %struct.tui_asm_line** %9, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %82, i64 %84
  %86 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %10, align 8
  br label %88

88:                                               ; preds = %77
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* %4, align 8
  %91 = icmp sgt i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load %struct.minimal_symbol*, %struct.minimal_symbol** %12, align 8
  %94 = icmp ne %struct.minimal_symbol* %93, null
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i1 [ false, %88 ], [ %94, %92 ]
  br i1 %96, label %58, label %97

97:                                               ; preds = %95
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* %4, align 8
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %101, label %127

101:                                              ; preds = %97
  br label %102

102:                                              ; preds = %122, %101
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp sge i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  store i32 0, i32* %11, align 4
  br label %109

109:                                              ; preds = %108, %102
  %110 = load %struct.tui_asm_line*, %struct.tui_asm_line** %9, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %110, i64 %112
  %114 = load i64, i64* %10, align 8
  %115 = call i64 @tui_disassemble(%struct.tui_asm_line* %113, i64 %114, i32 1)
  store i64 %115, i64* %13, align 8
  %116 = load i64, i64* %13, align 8
  %117 = load i64, i64* %10, align 8
  %118 = icmp sle i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %109
  br label %126

120:                                              ; preds = %109
  %121 = load i64, i64* %13, align 8
  store i64 %121, i64* %10, align 8
  br label %122

122:                                              ; preds = %120
  %123 = load i64, i64* %10, align 8
  %124 = load i64, i64* %4, align 8
  %125 = icmp sle i64 %123, %124
  br i1 %125, label %102, label %126

126:                                              ; preds = %122, %119
  br label %127

127:                                              ; preds = %126, %97
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp sge i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  store i32 0, i32* %11, align 4
  br label %134

134:                                              ; preds = %133, %127
  %135 = load %struct.tui_asm_line*, %struct.tui_asm_line** %9, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %135, i64 %137
  %139 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %6, align 8
  br label %141

141:                                              ; preds = %134, %43
  store i32 0, i32* %8, align 4
  br label %142

142:                                              ; preds = %161, %141
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %164

146:                                              ; preds = %142
  %147 = load %struct.tui_asm_line*, %struct.tui_asm_line** %9, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %147, i64 %149
  %151 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @xfree(i32 %152)
  %154 = load %struct.tui_asm_line*, %struct.tui_asm_line** %9, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %154, i64 %156
  %158 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @xfree(i32 %159)
  br label %161

161:                                              ; preds = %146
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %8, align 4
  br label %142

164:                                              ; preds = %142
  %165 = load i64, i64* %6, align 8
  store i64 %165, i64* %3, align 8
  br label %166

166:                                              ; preds = %164, %25
  %167 = load i64, i64* %3, align 8
  ret i64 %167
}

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @memset(%struct.tui_asm_line*, i32, i32) #1

declare dso_local i64 @tui_disassemble(%struct.tui_asm_line*, i64, i32) #1

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol_by_pc_section(i64, i32) #1

declare dso_local i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol*) #1

declare dso_local i32 @xfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

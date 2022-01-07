; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_print_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_print_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_pr = type { i32 }
%struct.format_opts = type { i32 }
%struct.show_state = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c" any\00", align 1
@F_OR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf_pr*, %struct.format_opts*, %struct.show_state*, i32*, i64, i32, i32)* @print_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_address(%struct.buf_pr* %0, %struct.format_opts* %1, %struct.show_state* %2, i32* %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.buf_pr*, align 8
  %9 = alloca %struct.format_opts*, align 8
  %10 = alloca %struct.show_state*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.buf_pr* %0, %struct.buf_pr** %8, align 8
  store %struct.format_opts* %1, %struct.format_opts** %9, align 8
  store %struct.show_state* %2, %struct.show_state** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  %20 = load %struct.show_state*, %struct.show_state** %10, align 8
  %21 = getelementptr inbounds %struct.show_state, %struct.show_state* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %17, align 4
  %25 = load %struct.show_state*, %struct.show_state** %10, align 8
  %26 = getelementptr inbounds %struct.show_state, %struct.show_state* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %15, align 8
  br label %30

30:                                               ; preds = %55, %7
  %31 = load i32, i32* %17, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %66

33:                                               ; preds = %30
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i64 @match_opcode(i32 %36, i32* %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* %16, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %16, align 4
  br label %54

44:                                               ; preds = %33
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* %18, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %18, align 4
  br label %53

53:                                               ; preds = %50, %44
  br label %54

54:                                               ; preds = %53, %41
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %57 = call i64 @F_LEN(%struct.TYPE_6__* %56)
  %58 = load i32, i32* %17, align 4
  %59 = sext i32 %58 to i64
  %60 = sub nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %17, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %63 = call i64 @F_LEN(%struct.TYPE_6__* %62)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %63
  store %struct.TYPE_6__* %65, %struct.TYPE_6__** %15, align 8
  br label %30

66:                                               ; preds = %30
  %67 = load i32, i32* %16, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.buf_pr*, %struct.buf_pr** %8, align 8
  %71 = call i32 @bprintf(%struct.buf_pr* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %66
  %73 = load %struct.show_state*, %struct.show_state** %10, align 8
  %74 = getelementptr inbounds %struct.show_state, %struct.show_state* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %17, align 4
  %78 = load %struct.show_state*, %struct.show_state** %10, align 8
  %79 = getelementptr inbounds %struct.show_state, %struct.show_state* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  store %struct.TYPE_6__* %82, %struct.TYPE_6__** %15, align 8
  br label %83

83:                                               ; preds = %116, %72
  %84 = load i32, i32* %17, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* %16, align 4
  %88 = icmp sgt i32 %87, 0
  br label %89

89:                                               ; preds = %86, %83
  %90 = phi i1 [ false, %83 ], [ %88, %86 ]
  br i1 %90, label %91, label %127

91:                                               ; preds = %89
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %11, align 8
  %96 = load i64, i64* %12, align 8
  %97 = call i64 @match_opcode(i32 %94, i32* %95, i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %91
  br label %116

100:                                              ; preds = %91
  %101 = load %struct.buf_pr*, %struct.buf_pr** %8, align 8
  %102 = load %struct.format_opts*, %struct.format_opts** %9, align 8
  %103 = load %struct.show_state*, %struct.show_state** %10, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %105 = call i32 @print_instruction(%struct.buf_pr* %101, %struct.format_opts* %102, %struct.show_state* %103, %struct.TYPE_6__* %104)
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @F_OR, align 4
  %110 = and i32 %108, %109
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %100
  br label %127

113:                                              ; preds = %100
  %114 = load i32, i32* %16, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %16, align 4
  br label %116

116:                                              ; preds = %113, %99
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %118 = call i64 @F_LEN(%struct.TYPE_6__* %117)
  %119 = load i32, i32* %17, align 4
  %120 = sext i32 %119 to i64
  %121 = sub nsw i64 %120, %118
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %17, align 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %124 = call i64 @F_LEN(%struct.TYPE_6__* %123)
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 %124
  store %struct.TYPE_6__* %126, %struct.TYPE_6__** %15, align 8
  br label %83

127:                                              ; preds = %112, %89
  %128 = load i32, i32* %18, align 4
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %185

130:                                              ; preds = %127
  %131 = load %struct.show_state*, %struct.show_state** %10, align 8
  %132 = getelementptr inbounds %struct.show_state, %struct.show_state* %131, i32 0, i32 1
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  store i32 %135, i32* %17, align 4
  %136 = load %struct.show_state*, %struct.show_state** %10, align 8
  %137 = getelementptr inbounds %struct.show_state, %struct.show_state* %136, i32 0, i32 1
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  store %struct.TYPE_6__* %140, %struct.TYPE_6__** %15, align 8
  store i32 0, i32* %19, align 4
  br label %141

141:                                              ; preds = %173, %130
  %142 = load i32, i32* %17, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %184

144:                                              ; preds = %141
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %13, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %144
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @F_OR, align 4
  %155 = and i32 %153, %154
  store i32 %155, i32* %19, align 4
  br label %173

156:                                              ; preds = %144
  %157 = load i32, i32* %19, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %172

159:                                              ; preds = %156
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @F_OR, align 4
  %164 = and i32 %162, %163
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %159
  %167 = load %struct.buf_pr*, %struct.buf_pr** %8, align 8
  %168 = load %struct.format_opts*, %struct.format_opts** %9, align 8
  %169 = load %struct.show_state*, %struct.show_state** %10, align 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %171 = call i32 @print_instruction(%struct.buf_pr* %167, %struct.format_opts* %168, %struct.show_state* %169, %struct.TYPE_6__* %170)
  br label %172

172:                                              ; preds = %166, %159, %156
  br label %184

173:                                              ; preds = %150
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %175 = call i64 @F_LEN(%struct.TYPE_6__* %174)
  %176 = load i32, i32* %17, align 4
  %177 = sext i32 %176 to i64
  %178 = sub nsw i64 %177, %175
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %17, align 4
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %181 = call i64 @F_LEN(%struct.TYPE_6__* %180)
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i64 %181
  store %struct.TYPE_6__* %183, %struct.TYPE_6__** %15, align 8
  br label %141

184:                                              ; preds = %172, %141
  br label %185

185:                                              ; preds = %184, %127
  %186 = load i32, i32* %14, align 4
  %187 = load %struct.show_state*, %struct.show_state** %10, align 8
  %188 = getelementptr inbounds %struct.show_state, %struct.show_state* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 8
  ret void
}

declare dso_local i64 @match_opcode(i32, i32*, i64) #1

declare dso_local i64 @F_LEN(%struct.TYPE_6__*) #1

declare dso_local i32 @bprintf(%struct.buf_pr*, i8*) #1

declare dso_local i32 @print_instruction(%struct.buf_pr*, %struct.format_opts*, %struct.show_state*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

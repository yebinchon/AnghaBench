; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_decode_rl_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_decode_rl_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@SYSMODE_PREFIX_ADDR = common dso_local global i32 0, align 4
@SYSMODE_SEG_DS_SS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.x86emu*)* @decode_rl_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @decode_rl_address(%struct.x86emu* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.x86emu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.x86emu* %0, %struct.x86emu** %3, align 8
  %7 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %8 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SYSMODE_PREFIX_ADDR, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %100

14:                                               ; preds = %1
  %15 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %16 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %74 [
    i32 0, label %18
    i32 1, label %23
    i32 2, label %28
    i32 3, label %33
    i32 4, label %38
    i32 5, label %44
    i32 6, label %64
    i32 7, label %69
  ]

18:                                               ; preds = %14
  %19 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %20 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 11
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %4, align 8
  br label %77

23:                                               ; preds = %14
  %24 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %25 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 10
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %4, align 8
  br label %77

28:                                               ; preds = %14
  %29 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %30 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 9
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %4, align 8
  br label %77

33:                                               ; preds = %14
  %34 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %35 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 8
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %4, align 8
  br label %77

38:                                               ; preds = %14
  %39 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %40 = call i64 @fetch_byte_imm(%struct.x86emu* %39)
  store i64 %40, i64* %5, align 8
  %41 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i64 @decode_sib_address(%struct.x86emu* %41, i64 %42, i32 0)
  store i64 %43, i64* %4, align 8
  br label %77

44:                                               ; preds = %14
  %45 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %46 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %51 = call i64 @fetch_long_imm(%struct.x86emu* %50)
  store i64 %51, i64* %4, align 8
  br label %63

52:                                               ; preds = %44
  %53 = load i32, i32* @SYSMODE_SEG_DS_SS, align 4
  %54 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %55 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %53
  store i32 %58, i32* %56, align 8
  %59 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %60 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 7
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %4, align 8
  br label %63

63:                                               ; preds = %52, %49
  br label %77

64:                                               ; preds = %14
  %65 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %66 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %4, align 8
  br label %77

69:                                               ; preds = %14
  %70 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %71 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %4, align 8
  br label %77

74:                                               ; preds = %14
  %75 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %76 = call i32 @x86emu_halt_sys(%struct.x86emu* %75)
  br label %77

77:                                               ; preds = %74, %69, %64, %63, %38, %33, %28, %23, %18
  %78 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %79 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %84 = call i64 @fetch_byte_imm(%struct.x86emu* %83)
  %85 = load i64, i64* %4, align 8
  %86 = add nsw i64 %85, %84
  store i64 %86, i64* %4, align 8
  br label %98

87:                                               ; preds = %77
  %88 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %89 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %94 = call i64 @fetch_long_imm(%struct.x86emu* %93)
  %95 = load i64, i64* %4, align 8
  %96 = add nsw i64 %95, %94
  store i64 %96, i64* %4, align 8
  br label %97

97:                                               ; preds = %92, %87
  br label %98

98:                                               ; preds = %97, %82
  %99 = load i64, i64* %4, align 8
  store i64 %99, i64* %2, align 8
  br label %217

100:                                              ; preds = %1
  %101 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %102 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  switch i32 %103, label %191 [
    i32 0, label %104
    i32 1, label %114
    i32 2, label %124
    i32 3, label %140
    i32 4, label %156
    i32 5, label %161
    i32 6, label %166
    i32 7, label %186
  ]

104:                                              ; preds = %100
  %105 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %106 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %110 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %108, %112
  store i64 %113, i64* %6, align 8
  br label %194

114:                                              ; preds = %100
  %115 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %116 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %120 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %118, %122
  store i64 %123, i64* %6, align 8
  br label %194

124:                                              ; preds = %100
  %125 = load i32, i32* @SYSMODE_SEG_DS_SS, align 4
  %126 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %127 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %125
  store i32 %130, i32* %128, align 8
  %131 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %132 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %136 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %134, %138
  store i64 %139, i64* %6, align 8
  br label %194

140:                                              ; preds = %100
  %141 = load i32, i32* @SYSMODE_SEG_DS_SS, align 4
  %142 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %143 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %141
  store i32 %146, i32* %144, align 8
  %147 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %148 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %152 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %150, %154
  store i64 %155, i64* %6, align 8
  br label %194

156:                                              ; preds = %100
  %157 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %158 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  store i64 %160, i64* %6, align 8
  br label %194

161:                                              ; preds = %100
  %162 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %163 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %6, align 8
  br label %194

166:                                              ; preds = %100
  %167 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %168 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %173 = call i64 @fetch_word_imm(%struct.x86emu* %172)
  store i64 %173, i64* %6, align 8
  br label %185

174:                                              ; preds = %166
  %175 = load i32, i32* @SYSMODE_SEG_DS_SS, align 4
  %176 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %177 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %175
  store i32 %180, i32* %178, align 8
  %181 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %182 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  store i64 %184, i64* %6, align 8
  br label %185

185:                                              ; preds = %174, %171
  br label %194

186:                                              ; preds = %100
  %187 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %188 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  store i64 %190, i64* %6, align 8
  br label %194

191:                                              ; preds = %100
  %192 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %193 = call i32 @x86emu_halt_sys(%struct.x86emu* %192)
  br label %194

194:                                              ; preds = %191, %186, %185, %161, %156, %140, %124, %114, %104
  %195 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %196 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 1
  br i1 %198, label %199, label %204

199:                                              ; preds = %194
  %200 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %201 = call i64 @fetch_byte_imm(%struct.x86emu* %200)
  %202 = load i64, i64* %6, align 8
  %203 = add nsw i64 %202, %201
  store i64 %203, i64* %6, align 8
  br label %215

204:                                              ; preds = %194
  %205 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %206 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp eq i32 %207, 2
  br i1 %208, label %209, label %214

209:                                              ; preds = %204
  %210 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %211 = call i64 @fetch_word_imm(%struct.x86emu* %210)
  %212 = load i64, i64* %6, align 8
  %213 = add nsw i64 %212, %211
  store i64 %213, i64* %6, align 8
  br label %214

214:                                              ; preds = %209, %204
  br label %215

215:                                              ; preds = %214, %199
  %216 = load i64, i64* %6, align 8
  store i64 %216, i64* %2, align 8
  br label %217

217:                                              ; preds = %215, %98
  %218 = load i64, i64* %2, align 8
  ret i64 %218
}

declare dso_local i64 @fetch_byte_imm(%struct.x86emu*) #1

declare dso_local i64 @decode_sib_address(%struct.x86emu*, i64, i32) #1

declare dso_local i64 @fetch_long_imm(%struct.x86emu*) #1

declare dso_local i32 @x86emu_halt_sys(%struct.x86emu*) #1

declare dso_local i64 @fetch_word_imm(%struct.x86emu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

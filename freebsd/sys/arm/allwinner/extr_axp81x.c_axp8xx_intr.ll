; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp81x.c_axp8xx_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp81x.c_axp8xx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AXP_IRQSTAT1 = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"AXP_IRQSTAT1 val: %x\0A\00", align 1
@AXP_IRQSTAT1_ACIN_HI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"PMU\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"AC\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"plugged\00", align 1
@AXP_IRQSTAT1_ACIN_LO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"unplugged\00", align 1
@AXP_IRQSTAT1_VBUS_HI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"USB\00", align 1
@AXP_IRQSTAT1_VBUS_LO = common dso_local global i32 0, align 4
@AXP_IRQSTAT2 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"AXP_IRQSTAT2 val: %x\0A\00", align 1
@AXP_IRQSTAT2_BATCHGD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"Battery\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"charged\00", align 1
@AXP_IRQSTAT2_BATCHGC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"charging\00", align 1
@AXP_IRQSTAT2_BAT_NO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"absent\00", align 1
@AXP_IRQSTAT2_BAT_IN = common dso_local global i32 0, align 4
@AXP_IRQSTAT3 = common dso_local global i32 0, align 4
@AXP_IRQSTAT4 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"AXP_IRQSTAT4 val: %x\0A\00", align 1
@AXP_IRQSTAT4_BATLVL_LO0 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [19 x i8] c"shutdown threshold\00", align 1
@AXP_IRQSTAT4_BATLVL_LO1 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"warning threshold\00", align 1
@AXP_IRQSTAT5 = common dso_local global i32 0, align 4
@AXP_IRQSTAT5_POKSIRQ = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [22 x i8] c"Power button pressed\0A\00", align 1
@RB_POWEROFF = common dso_local global i32 0, align 4
@AXP_IRQSTAT6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @axp8xx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axp8xx_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* @AXP_IRQSTAT1, align 4
  %9 = call i32 @axp8xx_read(i8* %7, i32 %8, i32* %4, i32 1)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %201

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %56

16:                                               ; preds = %13
  %17 = load i64, i64* @bootverbose, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (i8*, i8*, ...) @device_printf(i8* %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @AXP_IRQSTAT1_ACIN_HI, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @devctl_notify(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* null)
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @AXP_IRQSTAT1_ACIN_LO, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 @devctl_notify(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* null)
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @AXP_IRQSTAT1_VBUS_HI, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 @devctl_notify(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* null)
  br label %44

44:                                               ; preds = %42, %37
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @AXP_IRQSTAT1_VBUS_LO, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 @devctl_notify(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* null)
  br label %51

51:                                               ; preds = %49, %44
  %52 = load i8*, i8** %3, align 8
  %53 = load i32, i32* @AXP_IRQSTAT1, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @axp8xx_write(i8* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %13
  %57 = load i8*, i8** %3, align 8
  %58 = load i32, i32* @AXP_IRQSTAT2, align 4
  %59 = call i32 @axp8xx_read(i8* %57, i32 %58, i32* %4, i32 1)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %201

63:                                               ; preds = %56
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %106

66:                                               ; preds = %63
  %67 = load i64, i64* @bootverbose, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i8*, i8** %3, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 (i8*, i8*, ...) @device_printf(i8* %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %69, %66
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @AXP_IRQSTAT2_BATCHGD, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i32 @devctl_notify(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32* null)
  br label %80

80:                                               ; preds = %78, %73
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @AXP_IRQSTAT2_BATCHGC, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = call i32 @devctl_notify(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32* null)
  br label %87

87:                                               ; preds = %85, %80
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @AXP_IRQSTAT2_BAT_NO, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = call i32 @devctl_notify(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32* null)
  br label %94

94:                                               ; preds = %92, %87
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @AXP_IRQSTAT2_BAT_IN, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = call i32 @devctl_notify(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* null)
  br label %101

101:                                              ; preds = %99, %94
  %102 = load i8*, i8** %3, align 8
  %103 = load i32, i32* @AXP_IRQSTAT2, align 4
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @axp8xx_write(i8* %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %101, %63
  %107 = load i8*, i8** %3, align 8
  %108 = load i32, i32* @AXP_IRQSTAT3, align 4
  %109 = call i32 @axp8xx_read(i8* %107, i32 %108, i32* %4, i32 1)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %201

113:                                              ; preds = %106
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load i8*, i8** %3, align 8
  %118 = load i32, i32* @AXP_IRQSTAT3, align 4
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @axp8xx_write(i8* %117, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %116, %113
  %122 = load i8*, i8** %3, align 8
  %123 = load i32, i32* @AXP_IRQSTAT4, align 4
  %124 = call i32 @axp8xx_read(i8* %122, i32 %123, i32* %4, i32 1)
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %201

128:                                              ; preds = %121
  %129 = load i32, i32* %4, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %157

131:                                              ; preds = %128
  %132 = load i64, i64* @bootverbose, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load i8*, i8** %3, align 8
  %136 = load i32, i32* %4, align 4
  %137 = call i32 (i8*, i8*, ...) @device_printf(i8* %135, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %134, %131
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @AXP_IRQSTAT4_BATLVL_LO0, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = call i32 @devctl_notify(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32* null)
  br label %145

145:                                              ; preds = %143, %138
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* @AXP_IRQSTAT4_BATLVL_LO1, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = call i32 @devctl_notify(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32* null)
  br label %152

152:                                              ; preds = %150, %145
  %153 = load i8*, i8** %3, align 8
  %154 = load i32, i32* @AXP_IRQSTAT4, align 4
  %155 = load i32, i32* %4, align 4
  %156 = call i32 @axp8xx_write(i8* %153, i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %152, %128
  %158 = load i8*, i8** %3, align 8
  %159 = load i32, i32* @AXP_IRQSTAT5, align 4
  %160 = call i32 @axp8xx_read(i8* %158, i32 %159, i32* %4, i32 1)
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* %5, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %201

164:                                              ; preds = %157
  %165 = load i32, i32* %4, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %186

167:                                              ; preds = %164
  %168 = load i32, i32* %4, align 4
  %169 = load i32, i32* @AXP_IRQSTAT5_POKSIRQ, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %167
  %173 = load i64, i64* @bootverbose, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i8*, i8** %3, align 8
  %177 = call i32 (i8*, i8*, ...) @device_printf(i8* %176, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  br label %178

178:                                              ; preds = %175, %172
  %179 = load i32, i32* @RB_POWEROFF, align 4
  %180 = call i32 @shutdown_nice(i32 %179)
  br label %181

181:                                              ; preds = %178, %167
  %182 = load i8*, i8** %3, align 8
  %183 = load i32, i32* @AXP_IRQSTAT5, align 4
  %184 = load i32, i32* %4, align 4
  %185 = call i32 @axp8xx_write(i8* %182, i32 %183, i32 %184)
  br label %186

186:                                              ; preds = %181, %164
  %187 = load i8*, i8** %3, align 8
  %188 = load i32, i32* @AXP_IRQSTAT6, align 4
  %189 = call i32 @axp8xx_read(i8* %187, i32 %188, i32* %4, i32 1)
  store i32 %189, i32* %5, align 4
  %190 = load i32, i32* %5, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %186
  br label %201

193:                                              ; preds = %186
  %194 = load i32, i32* %4, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %193
  %197 = load i8*, i8** %3, align 8
  %198 = load i32, i32* @AXP_IRQSTAT6, align 4
  %199 = load i32, i32* %4, align 4
  %200 = call i32 @axp8xx_write(i8* %197, i32 %198, i32 %199)
  br label %201

201:                                              ; preds = %12, %62, %112, %127, %163, %192, %196, %193
  ret void
}

declare dso_local i32 @axp8xx_read(i8*, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i8*, i8*, ...) #1

declare dso_local i32 @devctl_notify(i8*, i8*, i8*, i32*) #1

declare dso_local i32 @axp8xx_write(i8*, i32, i32) #1

declare dso_local i32 @shutdown_nice(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pl310.c_pl310_print_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pl310.c_pl310_print_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl310_softc = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@PL310_AUX_CTRL = common dso_local global i32 0, align 4
@PL310_PREFETCH_CTRL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Early BRESP response: %s\0A\00", align 1
@AUX_CTRL_EARLY_BRESP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Instruction prefetch: %s\0A\00", align 1
@AUX_CTRL_INSTR_PREFETCH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Data prefetch: %s\0A\00", align 1
@AUX_CTRL_DATA_PREFETCH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Non-secure interrupt control: %s\0A\00", align 1
@AUX_CTRL_NS_INT_CTRL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"Non-secure lockdown: %s\0A\00", align 1
@AUX_CTRL_NS_LOCKDOWN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"Share override: %s\0A\00", align 1
@AUX_CTRL_SHARE_OVERRIDE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"Double linefill: %s\0A\00", align 1
@PREFETCH_CTRL_DL = common dso_local global i32 0, align 4
@PREFETCH_CTRL_INSTR_PREFETCH = common dso_local global i32 0, align 4
@PREFETCH_CTRL_DATA_PREFETCH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [37 x i8] c"Double linefill on WRAP request: %s\0A\00", align 1
@PREFETCH_CTRL_DL_ON_WRAP = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"Prefetch drop: %s\0A\00", align 1
@PREFETCH_CTRL_PREFETCH_DROP = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [26 x i8] c"Incr double Linefill: %s\0A\00", align 1
@PREFETCH_CTRL_INCR_DL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [39 x i8] c"Not same ID on exclusive sequence: %s\0A\00", align 1
@PREFETCH_CTRL_NOTSAMEID = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [21 x i8] c"Prefetch offset: %d\0A\00", align 1
@PREFETCH_CTRL_OFFSET_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pl310_softc*)* @pl310_print_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl310_print_config(%struct.pl310_softc* %0) #0 {
  %2 = alloca %struct.pl310_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.pl310_softc* %0, %struct.pl310_softc** %2, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %7 = load %struct.pl310_softc*, %struct.pl310_softc** %2, align 8
  %8 = load i32, i32* @PL310_AUX_CTRL, align 4
  %9 = call i32 @pl310_read4(%struct.pl310_softc* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.pl310_softc*, %struct.pl310_softc** %2, align 8
  %11 = load i32, i32* @PL310_PREFETCH_CTRL, align 4
  %12 = call i32 @pl310_read4(%struct.pl310_softc* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.pl310_softc*, %struct.pl310_softc** %2, align 8
  %14 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @AUX_CTRL_EARLY_BRESP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i8*, i8** %6, align 8
  br label %24

22:                                               ; preds = %1
  %23 = load i8*, i8** %5, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i8* [ %21, %20 ], [ %23, %22 ]
  %26 = call i32 (i32, i8*, ...) @device_printf(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  %27 = load %struct.pl310_softc*, %struct.pl310_softc** %2, align 8
  %28 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @AUX_CTRL_INSTR_PREFETCH, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i8*, i8** %6, align 8
  br label %38

36:                                               ; preds = %24
  %37 = load i8*, i8** %5, align 8
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i8* [ %35, %34 ], [ %37, %36 ]
  %40 = call i32 (i32, i8*, ...) @device_printf(i32 %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  %41 = load %struct.pl310_softc*, %struct.pl310_softc** %2, align 8
  %42 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @AUX_CTRL_DATA_PREFETCH, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i8*, i8** %6, align 8
  br label %52

50:                                               ; preds = %38
  %51 = load i8*, i8** %5, align 8
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i8* [ %49, %48 ], [ %51, %50 ]
  %54 = call i32 (i32, i8*, ...) @device_printf(i32 %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %53)
  %55 = load %struct.pl310_softc*, %struct.pl310_softc** %2, align 8
  %56 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @AUX_CTRL_NS_INT_CTRL, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load i8*, i8** %6, align 8
  br label %66

64:                                               ; preds = %52
  %65 = load i8*, i8** %5, align 8
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i8* [ %63, %62 ], [ %65, %64 ]
  %68 = call i32 (i32, i8*, ...) @device_printf(i32 %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %67)
  %69 = load %struct.pl310_softc*, %struct.pl310_softc** %2, align 8
  %70 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @AUX_CTRL_NS_LOCKDOWN, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load i8*, i8** %6, align 8
  br label %80

78:                                               ; preds = %66
  %79 = load i8*, i8** %5, align 8
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i8* [ %77, %76 ], [ %79, %78 ]
  %82 = call i32 (i32, i8*, ...) @device_printf(i32 %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %81)
  %83 = load %struct.pl310_softc*, %struct.pl310_softc** %2, align 8
  %84 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @AUX_CTRL_SHARE_OVERRIDE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %80
  %91 = load i8*, i8** %6, align 8
  br label %94

92:                                               ; preds = %80
  %93 = load i8*, i8** %5, align 8
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i8* [ %91, %90 ], [ %93, %92 ]
  %96 = call i32 (i32, i8*, ...) @device_printf(i32 %85, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %95)
  %97 = load %struct.pl310_softc*, %struct.pl310_softc** %2, align 8
  %98 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @PREFETCH_CTRL_DL, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %94
  %105 = load i8*, i8** %6, align 8
  br label %108

106:                                              ; preds = %94
  %107 = load i8*, i8** %5, align 8
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i8* [ %105, %104 ], [ %107, %106 ]
  %110 = call i32 (i32, i8*, ...) @device_printf(i32 %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %109)
  %111 = load %struct.pl310_softc*, %struct.pl310_softc** %2, align 8
  %112 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @PREFETCH_CTRL_INSTR_PREFETCH, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %108
  %119 = load i8*, i8** %6, align 8
  br label %122

120:                                              ; preds = %108
  %121 = load i8*, i8** %5, align 8
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i8* [ %119, %118 ], [ %121, %120 ]
  %124 = call i32 (i32, i8*, ...) @device_printf(i32 %113, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %123)
  %125 = load %struct.pl310_softc*, %struct.pl310_softc** %2, align 8
  %126 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* @PREFETCH_CTRL_DATA_PREFETCH, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %122
  %133 = load i8*, i8** %6, align 8
  br label %136

134:                                              ; preds = %122
  %135 = load i8*, i8** %5, align 8
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i8* [ %133, %132 ], [ %135, %134 ]
  %138 = call i32 (i32, i8*, ...) @device_printf(i32 %127, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %137)
  %139 = load %struct.pl310_softc*, %struct.pl310_softc** %2, align 8
  %140 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* @PREFETCH_CTRL_DL_ON_WRAP, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %136
  %147 = load i8*, i8** %6, align 8
  br label %150

148:                                              ; preds = %136
  %149 = load i8*, i8** %5, align 8
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi i8* [ %147, %146 ], [ %149, %148 ]
  %152 = call i32 (i32, i8*, ...) @device_printf(i32 %141, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i8* %151)
  %153 = load %struct.pl310_softc*, %struct.pl310_softc** %2, align 8
  %154 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* @PREFETCH_CTRL_PREFETCH_DROP, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %150
  %161 = load i8*, i8** %6, align 8
  br label %164

162:                                              ; preds = %150
  %163 = load i8*, i8** %5, align 8
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi i8* [ %161, %160 ], [ %163, %162 ]
  %166 = call i32 (i32, i8*, ...) @device_printf(i32 %155, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %165)
  %167 = load %struct.pl310_softc*, %struct.pl310_softc** %2, align 8
  %168 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* @PREFETCH_CTRL_INCR_DL, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %164
  %175 = load i8*, i8** %6, align 8
  br label %178

176:                                              ; preds = %164
  %177 = load i8*, i8** %5, align 8
  br label %178

178:                                              ; preds = %176, %174
  %179 = phi i8* [ %175, %174 ], [ %177, %176 ]
  %180 = call i32 (i32, i8*, ...) @device_printf(i32 %169, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i8* %179)
  %181 = load %struct.pl310_softc*, %struct.pl310_softc** %2, align 8
  %182 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %4, align 4
  %185 = load i32, i32* @PREFETCH_CTRL_NOTSAMEID, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %178
  %189 = load i8*, i8** %6, align 8
  br label %192

190:                                              ; preds = %178
  %191 = load i8*, i8** %5, align 8
  br label %192

192:                                              ; preds = %190, %188
  %193 = phi i8* [ %189, %188 ], [ %191, %190 ]
  %194 = call i32 (i32, i8*, ...) @device_printf(i32 %183, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i8* %193)
  %195 = load %struct.pl310_softc*, %struct.pl310_softc** %2, align 8
  %196 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %4, align 4
  %199 = load i32, i32* @PREFETCH_CTRL_OFFSET_MASK, align 4
  %200 = and i32 %198, %199
  %201 = call i32 (i32, i8*, ...) @device_printf(i32 %197, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %200)
  ret void
}

declare dso_local i32 @pl310_read4(%struct.pl310_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

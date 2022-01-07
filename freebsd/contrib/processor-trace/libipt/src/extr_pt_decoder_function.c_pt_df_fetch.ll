; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_decoder_function.c_pt_df_fetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_decoder_function.c_pt_df_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_decoder_function = type { i32 }
%struct.pt_config = type { i32*, i32* }

@pte_internal = common dso_local global i32 0, align 4
@pte_nosync = common dso_local global i32 0, align 4
@pte_eos = common dso_local global i32 0, align 4
@pt_opm_tnt_8 = common dso_local global i32 0, align 4
@pt_opc_tnt_8 = common dso_local global i32 0, align 4
@pt_decode_tnt_8 = common dso_local global %struct.pt_decoder_function zeroinitializer, align 4
@pt_opm_cyc = common dso_local global i32 0, align 4
@pt_opc_cyc = common dso_local global i32 0, align 4
@pt_decode_cyc = common dso_local global %struct.pt_decoder_function zeroinitializer, align 4
@pt_opm_tip = common dso_local global i32 0, align 4
@pt_opc_tip = common dso_local global i32 0, align 4
@pt_decode_tip = common dso_local global %struct.pt_decoder_function zeroinitializer, align 4
@pt_opm_fup = common dso_local global i32 0, align 4
@pt_opc_fup = common dso_local global i32 0, align 4
@pt_decode_fup = common dso_local global %struct.pt_decoder_function zeroinitializer, align 4
@pt_opc_tip_pge = common dso_local global i32 0, align 4
@pt_decode_tip_pge = common dso_local global %struct.pt_decoder_function zeroinitializer, align 4
@pt_opc_tip_pgd = common dso_local global i32 0, align 4
@pt_decode_tip_pgd = common dso_local global %struct.pt_decoder_function zeroinitializer, align 4
@pt_decode_unknown = common dso_local global %struct.pt_decoder_function zeroinitializer, align 4
@pt_decode_pad = common dso_local global %struct.pt_decoder_function zeroinitializer, align 4
@pt_decode_mode = common dso_local global %struct.pt_decoder_function zeroinitializer, align 4
@pt_decode_tsc = common dso_local global %struct.pt_decoder_function zeroinitializer, align 4
@pt_decode_mtc = common dso_local global %struct.pt_decoder_function zeroinitializer, align 4
@pt_opm_ptw = common dso_local global i32 0, align 4
@pt_ext_ptw = common dso_local global i32 0, align 4
@pt_decode_ptw = common dso_local global %struct.pt_decoder_function zeroinitializer, align 4
@pt_decode_psb = common dso_local global %struct.pt_decoder_function zeroinitializer, align 4
@pt_decode_ovf = common dso_local global %struct.pt_decoder_function zeroinitializer, align 4
@pt_decode_tnt_64 = common dso_local global %struct.pt_decoder_function zeroinitializer, align 4
@pt_decode_psbend = common dso_local global %struct.pt_decoder_function zeroinitializer, align 4
@pt_decode_cbr = common dso_local global %struct.pt_decoder_function zeroinitializer, align 4
@pt_decode_pip = common dso_local global %struct.pt_decoder_function zeroinitializer, align 4
@pt_decode_tma = common dso_local global %struct.pt_decoder_function zeroinitializer, align 4
@pt_decode_stop = common dso_local global %struct.pt_decoder_function zeroinitializer, align 4
@pt_decode_vmcs = common dso_local global %struct.pt_decoder_function zeroinitializer, align 4
@pt_decode_exstop = common dso_local global %struct.pt_decoder_function zeroinitializer, align 4
@pt_decode_mwait = common dso_local global %struct.pt_decoder_function zeroinitializer, align 4
@pt_decode_pwre = common dso_local global %struct.pt_decoder_function zeroinitializer, align 4
@pt_decode_pwrx = common dso_local global %struct.pt_decoder_function zeroinitializer, align 4
@pt_decode_mnt = common dso_local global %struct.pt_decoder_function zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_df_fetch(%struct.pt_decoder_function** %0, i32* %1, %struct.pt_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_decoder_function**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pt_config*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pt_decoder_function** %0, %struct.pt_decoder_function*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.pt_config* %2, %struct.pt_config** %7, align 8
  %13 = load %struct.pt_decoder_function**, %struct.pt_decoder_function*** %5, align 8
  %14 = icmp ne %struct.pt_decoder_function** %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %17 = icmp ne %struct.pt_config* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %3
  %19 = load i32, i32* @pte_internal, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %176

21:                                               ; preds = %15
  %22 = load %struct.pt_decoder_function**, %struct.pt_decoder_function*** %5, align 8
  store %struct.pt_decoder_function* null, %struct.pt_decoder_function** %22, align 8
  %23 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %24 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %8, align 8
  %26 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %27 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %21
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = icmp ult i32* %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32*, i32** %9, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = icmp ult i32* %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35, %31, %21
  %40 = load i32, i32* @pte_nosync, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %176

42:                                               ; preds = %35
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = icmp eq i32* %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @pte_eos, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %176

49:                                               ; preds = %42
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %6, align 8
  %52 = load i32, i32* %50, align 4
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  switch i32 %53, label %54 [
    i32 129, label %104
    i32 131, label %106
    i32 128, label %108
    i32 130, label %110
    i32 132, label %112
  ]

54:                                               ; preds = %49
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @pt_opm_tnt_8, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @pt_opc_tnt_8, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load %struct.pt_decoder_function**, %struct.pt_decoder_function*** %5, align 8
  store %struct.pt_decoder_function* @pt_decode_tnt_8, %struct.pt_decoder_function** %61, align 8
  store i32 0, i32* %4, align 4
  br label %176

62:                                               ; preds = %54
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @pt_opm_cyc, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* @pt_opc_cyc, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load %struct.pt_decoder_function**, %struct.pt_decoder_function*** %5, align 8
  store %struct.pt_decoder_function* @pt_decode_cyc, %struct.pt_decoder_function** %69, align 8
  store i32 0, i32* %4, align 4
  br label %176

70:                                               ; preds = %62
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @pt_opm_tip, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @pt_opc_tip, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load %struct.pt_decoder_function**, %struct.pt_decoder_function*** %5, align 8
  store %struct.pt_decoder_function* @pt_decode_tip, %struct.pt_decoder_function** %77, align 8
  store i32 0, i32* %4, align 4
  br label %176

78:                                               ; preds = %70
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @pt_opm_fup, align 4
  %81 = and i32 %79, %80
  %82 = load i32, i32* @pt_opc_fup, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load %struct.pt_decoder_function**, %struct.pt_decoder_function*** %5, align 8
  store %struct.pt_decoder_function* @pt_decode_fup, %struct.pt_decoder_function** %85, align 8
  store i32 0, i32* %4, align 4
  br label %176

86:                                               ; preds = %78
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @pt_opm_tip, align 4
  %89 = and i32 %87, %88
  %90 = load i32, i32* @pt_opc_tip_pge, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load %struct.pt_decoder_function**, %struct.pt_decoder_function*** %5, align 8
  store %struct.pt_decoder_function* @pt_decode_tip_pge, %struct.pt_decoder_function** %93, align 8
  store i32 0, i32* %4, align 4
  br label %176

94:                                               ; preds = %86
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @pt_opm_tip, align 4
  %97 = and i32 %95, %96
  %98 = load i32, i32* @pt_opc_tip_pgd, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load %struct.pt_decoder_function**, %struct.pt_decoder_function*** %5, align 8
  store %struct.pt_decoder_function* @pt_decode_tip_pgd, %struct.pt_decoder_function** %101, align 8
  store i32 0, i32* %4, align 4
  br label %176

102:                                              ; preds = %94
  %103 = load %struct.pt_decoder_function**, %struct.pt_decoder_function*** %5, align 8
  store %struct.pt_decoder_function* @pt_decode_unknown, %struct.pt_decoder_function** %103, align 8
  store i32 0, i32* %4, align 4
  br label %176

104:                                              ; preds = %49
  %105 = load %struct.pt_decoder_function**, %struct.pt_decoder_function*** %5, align 8
  store %struct.pt_decoder_function* @pt_decode_pad, %struct.pt_decoder_function** %105, align 8
  store i32 0, i32* %4, align 4
  br label %176

106:                                              ; preds = %49
  %107 = load %struct.pt_decoder_function**, %struct.pt_decoder_function*** %5, align 8
  store %struct.pt_decoder_function* @pt_decode_mode, %struct.pt_decoder_function** %107, align 8
  store i32 0, i32* %4, align 4
  br label %176

108:                                              ; preds = %49
  %109 = load %struct.pt_decoder_function**, %struct.pt_decoder_function*** %5, align 8
  store %struct.pt_decoder_function* @pt_decode_tsc, %struct.pt_decoder_function** %109, align 8
  store i32 0, i32* %4, align 4
  br label %176

110:                                              ; preds = %49
  %111 = load %struct.pt_decoder_function**, %struct.pt_decoder_function*** %5, align 8
  store %struct.pt_decoder_function* @pt_decode_mtc, %struct.pt_decoder_function** %111, align 8
  store i32 0, i32* %4, align 4
  br label %176

112:                                              ; preds = %49
  %113 = load i32*, i32** %6, align 8
  %114 = load i32*, i32** %9, align 8
  %115 = icmp eq i32* %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i32, i32* @pte_eos, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  br label %176

119:                                              ; preds = %112
  %120 = load i32*, i32** %6, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %6, align 8
  %122 = load i32, i32* %120, align 4
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  switch i32 %123, label %124 [
    i32 140, label %134
    i32 142, label %136
    i32 134, label %138
    i32 139, label %140
    i32 147, label %142
    i32 141, label %144
    i32 135, label %146
    i32 136, label %148
    i32 133, label %150
    i32 146, label %152
    i32 145, label %152
    i32 143, label %154
    i32 138, label %156
    i32 137, label %158
    i32 144, label %160
  ]

124:                                              ; preds = %119
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @pt_opm_ptw, align 4
  %127 = and i32 %125, %126
  %128 = load i32, i32* @pt_ext_ptw, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = load %struct.pt_decoder_function**, %struct.pt_decoder_function*** %5, align 8
  store %struct.pt_decoder_function* @pt_decode_ptw, %struct.pt_decoder_function** %131, align 8
  store i32 0, i32* %4, align 4
  br label %176

132:                                              ; preds = %124
  %133 = load %struct.pt_decoder_function**, %struct.pt_decoder_function*** %5, align 8
  store %struct.pt_decoder_function* @pt_decode_unknown, %struct.pt_decoder_function** %133, align 8
  store i32 0, i32* %4, align 4
  br label %176

134:                                              ; preds = %119
  %135 = load %struct.pt_decoder_function**, %struct.pt_decoder_function*** %5, align 8
  store %struct.pt_decoder_function* @pt_decode_psb, %struct.pt_decoder_function** %135, align 8
  store i32 0, i32* %4, align 4
  br label %176

136:                                              ; preds = %119
  %137 = load %struct.pt_decoder_function**, %struct.pt_decoder_function*** %5, align 8
  store %struct.pt_decoder_function* @pt_decode_ovf, %struct.pt_decoder_function** %137, align 8
  store i32 0, i32* %4, align 4
  br label %176

138:                                              ; preds = %119
  %139 = load %struct.pt_decoder_function**, %struct.pt_decoder_function*** %5, align 8
  store %struct.pt_decoder_function* @pt_decode_tnt_64, %struct.pt_decoder_function** %139, align 8
  store i32 0, i32* %4, align 4
  br label %176

140:                                              ; preds = %119
  %141 = load %struct.pt_decoder_function**, %struct.pt_decoder_function*** %5, align 8
  store %struct.pt_decoder_function* @pt_decode_psbend, %struct.pt_decoder_function** %141, align 8
  store i32 0, i32* %4, align 4
  br label %176

142:                                              ; preds = %119
  %143 = load %struct.pt_decoder_function**, %struct.pt_decoder_function*** %5, align 8
  store %struct.pt_decoder_function* @pt_decode_cbr, %struct.pt_decoder_function** %143, align 8
  store i32 0, i32* %4, align 4
  br label %176

144:                                              ; preds = %119
  %145 = load %struct.pt_decoder_function**, %struct.pt_decoder_function*** %5, align 8
  store %struct.pt_decoder_function* @pt_decode_pip, %struct.pt_decoder_function** %145, align 8
  store i32 0, i32* %4, align 4
  br label %176

146:                                              ; preds = %119
  %147 = load %struct.pt_decoder_function**, %struct.pt_decoder_function*** %5, align 8
  store %struct.pt_decoder_function* @pt_decode_tma, %struct.pt_decoder_function** %147, align 8
  store i32 0, i32* %4, align 4
  br label %176

148:                                              ; preds = %119
  %149 = load %struct.pt_decoder_function**, %struct.pt_decoder_function*** %5, align 8
  store %struct.pt_decoder_function* @pt_decode_stop, %struct.pt_decoder_function** %149, align 8
  store i32 0, i32* %4, align 4
  br label %176

150:                                              ; preds = %119
  %151 = load %struct.pt_decoder_function**, %struct.pt_decoder_function*** %5, align 8
  store %struct.pt_decoder_function* @pt_decode_vmcs, %struct.pt_decoder_function** %151, align 8
  store i32 0, i32* %4, align 4
  br label %176

152:                                              ; preds = %119, %119
  %153 = load %struct.pt_decoder_function**, %struct.pt_decoder_function*** %5, align 8
  store %struct.pt_decoder_function* @pt_decode_exstop, %struct.pt_decoder_function** %153, align 8
  store i32 0, i32* %4, align 4
  br label %176

154:                                              ; preds = %119
  %155 = load %struct.pt_decoder_function**, %struct.pt_decoder_function*** %5, align 8
  store %struct.pt_decoder_function* @pt_decode_mwait, %struct.pt_decoder_function** %155, align 8
  store i32 0, i32* %4, align 4
  br label %176

156:                                              ; preds = %119
  %157 = load %struct.pt_decoder_function**, %struct.pt_decoder_function*** %5, align 8
  store %struct.pt_decoder_function* @pt_decode_pwre, %struct.pt_decoder_function** %157, align 8
  store i32 0, i32* %4, align 4
  br label %176

158:                                              ; preds = %119
  %159 = load %struct.pt_decoder_function**, %struct.pt_decoder_function*** %5, align 8
  store %struct.pt_decoder_function* @pt_decode_pwrx, %struct.pt_decoder_function** %159, align 8
  store i32 0, i32* %4, align 4
  br label %176

160:                                              ; preds = %119
  %161 = load i32*, i32** %6, align 8
  %162 = load i32*, i32** %9, align 8
  %163 = icmp eq i32* %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = load i32, i32* @pte_eos, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %4, align 4
  br label %176

167:                                              ; preds = %160
  %168 = load i32*, i32** %6, align 8
  %169 = getelementptr inbounds i32, i32* %168, i32 1
  store i32* %169, i32** %6, align 8
  %170 = load i32, i32* %168, align 4
  store i32 %170, i32* %12, align 4
  %171 = load i32, i32* %12, align 4
  switch i32 %171, label %172 [
    i32 148, label %174
  ]

172:                                              ; preds = %167
  %173 = load %struct.pt_decoder_function**, %struct.pt_decoder_function*** %5, align 8
  store %struct.pt_decoder_function* @pt_decode_unknown, %struct.pt_decoder_function** %173, align 8
  store i32 0, i32* %4, align 4
  br label %176

174:                                              ; preds = %167
  %175 = load %struct.pt_decoder_function**, %struct.pt_decoder_function*** %5, align 8
  store %struct.pt_decoder_function* @pt_decode_mnt, %struct.pt_decoder_function** %175, align 8
  store i32 0, i32* %4, align 4
  br label %176

176:                                              ; preds = %174, %172, %164, %158, %156, %154, %152, %150, %148, %146, %144, %142, %140, %138, %136, %134, %132, %130, %116, %110, %108, %106, %104, %102, %100, %92, %84, %76, %68, %60, %46, %39, %18
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_node = type { i64, i32, i32, i64, %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.md_act = type { i32 (%struct.roff_node*)*, i32 (%struct.roff_node*)*, i64 (%struct.roff_node*)* }

@ROFFT_COMMENT = common dso_local global i64 0, align 8
@NODE_NOPRT = common dso_local global i32 0, align 4
@outflags = common dso_local global i32 0, align 4
@MD_nonl = common dso_local global i32 0, align 4
@MD_nl = common dso_local global i32 0, align 4
@MD_sp = common dso_local global i32 0, align 4
@MD_spc = common dso_local global i32 0, align 4
@NODE_LINE = common dso_local global i32 0, align 4
@NODE_ENDED = common dso_local global i32 0, align 4
@ROFFT_TEXT = common dso_local global i64 0, align 8
@NODE_DELIMC = common dso_local global i32 0, align 4
@MD_spc_force = common dso_local global i32 0, align 4
@MD_Sm = common dso_local global i32 0, align 4
@NODE_DELIMO = common dso_local global i32 0, align 4
@ROFF_MAX = common dso_local global i32 0, align 4
@ENDBODY_NOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roff_node*)* @md_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @md_node(%struct.roff_node* %0) #0 {
  %2 = alloca %struct.roff_node*, align 8
  %3 = alloca %struct.md_act*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.roff_node* %0, %struct.roff_node** %2, align 8
  %6 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %7 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ROFFT_COMMENT, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %13 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @NODE_NOPRT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11, %1
  br label %225

19:                                               ; preds = %11
  %20 = load i32, i32* @outflags, align 4
  %21 = load i32, i32* @MD_nonl, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load i32, i32* @MD_nl, align 4
  %26 = load i32, i32* @MD_sp, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* @outflags, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* @outflags, align 4
  br label %48

31:                                               ; preds = %19
  %32 = load i32, i32* @outflags, align 4
  %33 = load i32, i32* @MD_spc, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %38 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @NODE_LINE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @MD_nl, align 4
  %45 = load i32, i32* @outflags, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* @outflags, align 4
  br label %47

47:                                               ; preds = %43, %36, %31
  br label %48

48:                                               ; preds = %47, %24
  store %struct.md_act* null, %struct.md_act** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %49 = load i32, i32* @NODE_ENDED, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %52 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %56 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ROFFT_TEXT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %113

60:                                               ; preds = %48
  %61 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %62 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @NODE_DELIMC, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load i32, i32* @MD_spc, align 4
  %69 = load i32, i32* @MD_spc_force, align 4
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = load i32, i32* @outflags, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* @outflags, align 4
  br label %84

74:                                               ; preds = %60
  %75 = load i32, i32* @outflags, align 4
  %76 = load i32, i32* @MD_Sm, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* @MD_spc_force, align 4
  %81 = load i32, i32* @outflags, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* @outflags, align 4
  br label %83

83:                                               ; preds = %79, %74
  br label %84

84:                                               ; preds = %83, %67
  %85 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %86 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @md_word(i32 %87)
  %89 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %90 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @NODE_DELIMO, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %84
  %96 = load i32, i32* @MD_spc, align 4
  %97 = load i32, i32* @MD_spc_force, align 4
  %98 = or i32 %96, %97
  %99 = xor i32 %98, -1
  %100 = load i32, i32* @outflags, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* @outflags, align 4
  br label %112

102:                                              ; preds = %84
  %103 = load i32, i32* @outflags, align 4
  %104 = load i32, i32* @MD_Sm, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i32, i32* @MD_spc, align 4
  %109 = load i32, i32* @outflags, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* @outflags, align 4
  br label %111

111:                                              ; preds = %107, %102
  br label %112

112:                                              ; preds = %111, %95
  br label %176

113:                                              ; preds = %48
  %114 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %115 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @ROFF_MAX, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %113
  %120 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %121 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  switch i32 %122, label %129 [
    i32 129, label %123
    i32 128, label %126
  ]

123:                                              ; preds = %119
  %124 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %125 = call i32 @md_pre_br(%struct.roff_node* %124)
  store i32 %125, i32* %5, align 4
  br label %130

126:                                              ; preds = %119
  %127 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %128 = call i32 @md_pre_Pp(%struct.roff_node* %127)
  store i32 %128, i32* %5, align 4
  br label %130

129:                                              ; preds = %119
  store i32 0, i32* %5, align 4
  br label %130

130:                                              ; preds = %129, %126, %123
  br label %175

131:                                              ; preds = %113
  %132 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %133 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call %struct.md_act* @md_act(i32 %134)
  store %struct.md_act* %135, %struct.md_act** %3, align 8
  %136 = load %struct.md_act*, %struct.md_act** %3, align 8
  %137 = getelementptr inbounds %struct.md_act, %struct.md_act* %136, i32 0, i32 2
  %138 = load i64 (%struct.roff_node*)*, i64 (%struct.roff_node*)** %137, align 8
  %139 = icmp eq i64 (%struct.roff_node*)* %138, null
  br i1 %139, label %147, label %140

140:                                              ; preds = %131
  %141 = load %struct.md_act*, %struct.md_act** %3, align 8
  %142 = getelementptr inbounds %struct.md_act, %struct.md_act* %141, i32 0, i32 2
  %143 = load i64 (%struct.roff_node*)*, i64 (%struct.roff_node*)** %142, align 8
  %144 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %145 = call i64 %143(%struct.roff_node* %144)
  %146 = icmp ne i64 %145, 0
  br label %147

147:                                              ; preds = %140, %131
  %148 = phi i1 [ true, %131 ], [ %146, %140 ]
  %149 = zext i1 %148 to i32
  store i32 %149, i32* %4, align 4
  %150 = load i32, i32* %4, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %174

152:                                              ; preds = %147
  %153 = load %struct.md_act*, %struct.md_act** %3, align 8
  %154 = getelementptr inbounds %struct.md_act, %struct.md_act* %153, i32 0, i32 0
  %155 = load i32 (%struct.roff_node*)*, i32 (%struct.roff_node*)** %154, align 8
  %156 = icmp ne i32 (%struct.roff_node*)* %155, null
  br i1 %156, label %157, label %174

157:                                              ; preds = %152
  %158 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %159 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @ENDBODY_NOT, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %168, label %163

163:                                              ; preds = %157
  %164 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %165 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %164, i32 0, i32 5
  %166 = load i32*, i32** %165, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %174

168:                                              ; preds = %163, %157
  %169 = load %struct.md_act*, %struct.md_act** %3, align 8
  %170 = getelementptr inbounds %struct.md_act, %struct.md_act* %169, i32 0, i32 0
  %171 = load i32 (%struct.roff_node*)*, i32 (%struct.roff_node*)** %170, align 8
  %172 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %173 = call i32 %171(%struct.roff_node* %172)
  store i32 %173, i32* %5, align 4
  br label %174

174:                                              ; preds = %168, %163, %152, %147
  br label %175

175:                                              ; preds = %174, %130
  br label %176

176:                                              ; preds = %175, %112
  %177 = load i32, i32* %5, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %176
  %180 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %181 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %180, i32 0, i32 5
  %182 = load i32*, i32** %181, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %186 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %185, i32 0, i32 5
  %187 = load i32*, i32** %186, align 8
  %188 = call i32 @md_nodelist(i32* %187)
  br label %189

189:                                              ; preds = %184, %179, %176
  %190 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %191 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @NODE_ENDED, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %189
  br label %225

197:                                              ; preds = %189
  %198 = load i32, i32* %4, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %211

200:                                              ; preds = %197
  %201 = load %struct.md_act*, %struct.md_act** %3, align 8
  %202 = getelementptr inbounds %struct.md_act, %struct.md_act* %201, i32 0, i32 1
  %203 = load i32 (%struct.roff_node*)*, i32 (%struct.roff_node*)** %202, align 8
  %204 = icmp ne i32 (%struct.roff_node*)* %203, null
  br i1 %204, label %205, label %211

205:                                              ; preds = %200
  %206 = load %struct.md_act*, %struct.md_act** %3, align 8
  %207 = getelementptr inbounds %struct.md_act, %struct.md_act* %206, i32 0, i32 1
  %208 = load i32 (%struct.roff_node*)*, i32 (%struct.roff_node*)** %207, align 8
  %209 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %210 = call i32 %208(%struct.roff_node* %209)
  br label %211

211:                                              ; preds = %205, %200, %197
  %212 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %213 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @ENDBODY_NOT, align 8
  %216 = icmp ne i64 %214, %215
  br i1 %216, label %217, label %225

217:                                              ; preds = %211
  %218 = load i32, i32* @NODE_ENDED, align 4
  %219 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %220 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %219, i32 0, i32 4
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = or i32 %223, %218
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %18, %196, %217, %211
  ret void
}

declare dso_local i32 @md_word(i32) #1

declare dso_local i32 @md_pre_br(%struct.roff_node*) #1

declare dso_local i32 @md_pre_Pp(%struct.roff_node*) #1

declare dso_local %struct.md_act* @md_act(i32) #1

declare dso_local i32 @md_nodelist(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

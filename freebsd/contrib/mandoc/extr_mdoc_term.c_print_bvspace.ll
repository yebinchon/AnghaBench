; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_term.c_print_bvspace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_term.c_print_bvspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i32 }
%struct.roff_node = type { i64, i64, i32, i32*, %struct.roff_node*, %struct.roff_node*, %struct.TYPE_6__*, %struct.roff_node* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }

@MDOC_Bd = common dso_local global i64 0, align 8
@MDOC_Bl = common dso_local global i64 0, align 8
@ROFFT_COMMENT = common dso_local global i64 0, align 8
@NODE_NOPRT = common dso_local global i32 0, align 4
@ROFFT_ROOT = common dso_local global i64 0, align 8
@ROFFT_BLOCK = common dso_local global i64 0, align 8
@MDOC_Sh = common dso_local global i64 0, align 8
@MDOC_Ss = common dso_local global i64 0, align 8
@MDOC_It = common dso_local global i64 0, align 8
@LIST_item = common dso_local global i64 0, align 8
@LIST_column = common dso_local global i64 0, align 8
@LIST_diag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termp*, %struct.roff_node*, %struct.roff_node*)* @print_bvspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_bvspace(%struct.termp* %0, %struct.roff_node* %1, %struct.roff_node* %2) #0 {
  %4 = alloca %struct.termp*, align 8
  %5 = alloca %struct.roff_node*, align 8
  %6 = alloca %struct.roff_node*, align 8
  %7 = alloca %struct.roff_node*, align 8
  store %struct.termp* %0, %struct.termp** %4, align 8
  store %struct.roff_node* %1, %struct.roff_node** %5, align 8
  store %struct.roff_node* %2, %struct.roff_node** %6, align 8
  %8 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %9 = call i32 @assert(%struct.roff_node* %8)
  %10 = load %struct.termp*, %struct.termp** %4, align 8
  %11 = call i32 @term_newln(%struct.termp* %10)
  %12 = load i64, i64* @MDOC_Bd, align 8
  %13 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %14 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %19 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %18, i32 0, i32 6
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %210

26:                                               ; preds = %17, %3
  %27 = load i64, i64* @MDOC_Bl, align 8
  %28 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %29 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %34 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %33, i32 0, i32 6
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %210

41:                                               ; preds = %32, %26
  %42 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  store %struct.roff_node* %42, %struct.roff_node** %7, align 8
  br label %43

43:                                               ; preds = %69, %41
  %44 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %45 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %44, i32 0, i32 5
  %46 = load %struct.roff_node*, %struct.roff_node** %45, align 8
  %47 = icmp ne %struct.roff_node* %46, null
  br i1 %47, label %48, label %67

48:                                               ; preds = %43
  %49 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %50 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %49, i32 0, i32 5
  %51 = load %struct.roff_node*, %struct.roff_node** %50, align 8
  %52 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ROFFT_COMMENT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %65, label %56

56:                                               ; preds = %48
  %57 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %58 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %57, i32 0, i32 5
  %59 = load %struct.roff_node*, %struct.roff_node** %58, align 8
  %60 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @NODE_NOPRT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br label %65

65:                                               ; preds = %56, %48
  %66 = phi i1 [ true, %48 ], [ %64, %56 ]
  br label %67

67:                                               ; preds = %65, %43
  %68 = phi i1 [ false, %43 ], [ %66, %65 ]
  br i1 %68, label %69, label %73

69:                                               ; preds = %67
  %70 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %71 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %70, i32 0, i32 5
  %72 = load %struct.roff_node*, %struct.roff_node** %71, align 8
  store %struct.roff_node* %72, %struct.roff_node** %7, align 8
  br label %43

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %130, %73
  %75 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %76 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %75, i32 0, i32 5
  %77 = load %struct.roff_node*, %struct.roff_node** %76, align 8
  %78 = icmp eq %struct.roff_node* %77, null
  br i1 %78, label %79, label %131

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %91, %79
  %81 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %82 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %81, i32 0, i32 7
  %83 = load %struct.roff_node*, %struct.roff_node** %82, align 8
  store %struct.roff_node* %83, %struct.roff_node** %7, align 8
  %84 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %85 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @ROFFT_ROOT, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %210

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %93 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @ROFFT_BLOCK, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %80, label %97

97:                                               ; preds = %91
  %98 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %99 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @MDOC_Sh, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %109, label %103

103:                                              ; preds = %97
  %104 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %105 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @MDOC_Ss, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103, %97
  br label %210

110:                                              ; preds = %103
  %111 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %112 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @MDOC_It, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %130

116:                                              ; preds = %110
  %117 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %118 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %117, i32 0, i32 7
  %119 = load %struct.roff_node*, %struct.roff_node** %118, align 8
  %120 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %119, i32 0, i32 7
  %121 = load %struct.roff_node*, %struct.roff_node** %120, align 8
  %122 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %121, i32 0, i32 6
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @LIST_item, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %116
  br label %131

130:                                              ; preds = %116, %110
  br label %74

131:                                              ; preds = %129, %74
  %132 = load i64, i64* @MDOC_Bl, align 8
  %133 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %134 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %132, %135
  br i1 %136, label %137, label %161

137:                                              ; preds = %131
  %138 = load i64, i64* @LIST_column, align 8
  %139 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %140 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %139, i32 0, i32 6
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %138, %144
  br i1 %145, label %146, label %161

146:                                              ; preds = %137
  %147 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %148 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %147, i32 0, i32 5
  %149 = load %struct.roff_node*, %struct.roff_node** %148, align 8
  %150 = icmp ne %struct.roff_node* %149, null
  br i1 %150, label %151, label %160

151:                                              ; preds = %146
  %152 = load i64, i64* @MDOC_It, align 8
  %153 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %154 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %153, i32 0, i32 5
  %155 = load %struct.roff_node*, %struct.roff_node** %154, align 8
  %156 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %152, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %151
  br label %210

160:                                              ; preds = %151, %146
  br label %161

161:                                              ; preds = %160, %137, %131
  %162 = load i64, i64* @MDOC_Bl, align 8
  %163 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %164 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp eq i64 %162, %165
  br i1 %166, label %167, label %207

167:                                              ; preds = %161
  %168 = load i64, i64* @LIST_diag, align 8
  %169 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %170 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %169, i32 0, i32 6
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %168, %174
  br i1 %175, label %176, label %207

176:                                              ; preds = %167
  %177 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %178 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %177, i32 0, i32 5
  %179 = load %struct.roff_node*, %struct.roff_node** %178, align 8
  %180 = icmp ne %struct.roff_node* %179, null
  br i1 %180, label %181, label %206

181:                                              ; preds = %176
  %182 = load i64, i64* @MDOC_It, align 8
  %183 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %184 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %183, i32 0, i32 5
  %185 = load %struct.roff_node*, %struct.roff_node** %184, align 8
  %186 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp eq i64 %182, %187
  br i1 %188, label %189, label %206

189:                                              ; preds = %181
  %190 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %191 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %190, i32 0, i32 5
  %192 = load %struct.roff_node*, %struct.roff_node** %191, align 8
  %193 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %192, i32 0, i32 4
  %194 = load %struct.roff_node*, %struct.roff_node** %193, align 8
  %195 = call i32 @assert(%struct.roff_node* %194)
  %196 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %197 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %196, i32 0, i32 5
  %198 = load %struct.roff_node*, %struct.roff_node** %197, align 8
  %199 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %198, i32 0, i32 4
  %200 = load %struct.roff_node*, %struct.roff_node** %199, align 8
  %201 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %200, i32 0, i32 3
  %202 = load i32*, i32** %201, align 8
  %203 = icmp eq i32* null, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %189
  br label %210

205:                                              ; preds = %189
  br label %206

206:                                              ; preds = %205, %181, %176
  br label %207

207:                                              ; preds = %206, %167, %161
  %208 = load %struct.termp*, %struct.termp** %4, align 8
  %209 = call i32 @term_vspace(%struct.termp* %208)
  br label %210

210:                                              ; preds = %207, %204, %159, %109, %89, %40, %25
  ret void
}

declare dso_local i32 @assert(%struct.roff_node*) #1

declare dso_local i32 @term_newln(%struct.termp*) #1

declare dso_local i32 @term_vspace(%struct.termp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

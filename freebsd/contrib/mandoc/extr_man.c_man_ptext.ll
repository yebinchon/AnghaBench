; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_man.c_man_ptext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_man.c_man_ptext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64, i32, i32 }

@ROFF_NOFILL = common dso_local global i32 0, align 4
@MAN_ELINE = common dso_local global i32 0, align 4
@MAN_BLINE = common dso_local global i32 0, align 4
@MANDOCERR_BLK_BLANK = common dso_local global i32 0, align 4
@MAN_SH = common dso_local global i64 0, align 8
@MAN_SS = common dso_local global i64 0, align 8
@ROFFT_TEXT = common dso_local global i64 0, align 8
@ROFF_sp = common dso_local global i32 0, align 4
@ROFF_NEXT_SIBLING = common dso_local global i32 0, align 4
@MANDOCERR_SPACE_EOL = common dso_local global i32 0, align 4
@NODE_EOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff_man*, i32, i8*, i32)* @man_ptext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @man_ptext(%struct.roff_man* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.roff_man*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.roff_man* %0, %struct.roff_man** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %13 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ROFF_NOFILL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %4
  %19 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = call i32 @roff_word_alloc(%struct.roff_man* %19, i32 %20, i32 %21, i8* %25)
  %27 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = call i32 @man_descope(%struct.roff_man* %27, i32 %28, i32 %29, i8* %33)
  store i32 1, i32* %5, align 4
  br label %224

35:                                               ; preds = %4
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %46, %35
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 32
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %37

49:                                               ; preds = %37
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %114

57:                                               ; preds = %49
  %58 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %59 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @MAN_ELINE, align 4
  %62 = load i32, i32* @MAN_BLINE, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %60, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load i32, i32* @MANDOCERR_BLK_BLANK, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @mandoc_msg(i32 %67, i32 %68, i32 0, i32* null)
  store i32 1, i32* %5, align 4
  br label %224

70:                                               ; preds = %57
  %71 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %72 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @MAN_SH, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %86, label %78

78:                                               ; preds = %70
  %79 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %80 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @MAN_SS, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %78, %70
  store i32 1, i32* %5, align 4
  br label %224

87:                                               ; preds = %78
  %88 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %89 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @ROFFT_TEXT, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %87
  %96 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %97 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @man_hasc(i32 %100)
  store i8* %101, i8** %11, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = load i8*, i8** %11, align 8
  store i8 0, i8* %104, align 1
  store i32 1, i32* %5, align 4
  br label %224

105:                                              ; preds = %95, %87
  %106 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @ROFF_sp, align 4
  %110 = call i32 @roff_elem_alloc(%struct.roff_man* %106, i32 %107, i32 %108, i32 %109)
  %111 = load i32, i32* @ROFF_NEXT_SIBLING, align 4
  %112 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %113 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  store i32 1, i32* %5, align 4
  br label %224

114:                                              ; preds = %49
  %115 = load i8*, i8** %8, align 8
  %116 = call i64 @strlen(i8* %115)
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @assert(i32 %118)
  %120 = load i8*, i8** %8, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %120, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 32, %126
  br i1 %127, label %137, label %128

128:                                              ; preds = %114
  %129 = load i8*, i8** %8, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sub nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 9, %135
  br i1 %136, label %137, label %191

137:                                              ; preds = %128, %114
  %138 = load i32, i32* %10, align 4
  %139 = icmp sgt i32 %138, 1
  br i1 %139, label %140, label %155

140:                                              ; preds = %137
  %141 = load i8*, i8** %8, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sub nsw i32 %142, 2
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %141, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp ne i32 92, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %140
  %150 = load i32, i32* @MANDOCERR_SPACE_EOL, align 4
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %10, align 4
  %153 = sub nsw i32 %152, 1
  %154 = call i32 @mandoc_msg(i32 %150, i32 %151, i32 %153, i32* null)
  br label %155

155:                                              ; preds = %149, %140, %137
  %156 = load i32, i32* %10, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %10, align 4
  br label %158

158:                                              ; preds = %172, %155
  %159 = load i32, i32* %10, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %158
  %162 = load i8*, i8** %8, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 32, %167
  br label %169

169:                                              ; preds = %161, %158
  %170 = phi i1 [ false, %158 ], [ %168, %161 ]
  br i1 %170, label %171, label %175

171:                                              ; preds = %169
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %10, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %10, align 4
  br label %158

175:                                              ; preds = %169
  %176 = load i8*, i8** %8, align 8
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %176, i64 %178
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 92, %181
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i32 2, i32 1
  %185 = load i32, i32* %10, align 4
  %186 = add nsw i32 %185, %184
  store i32 %186, i32* %10, align 4
  %187 = load i8*, i8** %8, align 8
  %188 = load i32, i32* %10, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  store i8 0, i8* %190, align 1
  br label %191

191:                                              ; preds = %175, %128
  %192 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* %9, align 4
  %195 = load i8*, i8** %8, align 8
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %195, i64 %197
  %199 = call i32 @roff_word_alloc(%struct.roff_man* %192, i32 %193, i32 %194, i8* %198)
  %200 = load i32, i32* %10, align 4
  %201 = call i32 @assert(i32 %200)
  %202 = load i8*, i8** %8, align 8
  %203 = load i32, i32* %10, align 4
  %204 = sext i32 %203 to i64
  %205 = call i64 @mandoc_eos(i8* %202, i64 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %191
  %208 = load i32, i32* @NODE_EOS, align 4
  %209 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %210 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %209, i32 0, i32 1
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = or i32 %213, %208
  store i32 %214, i32* %212, align 8
  br label %215

215:                                              ; preds = %207, %191
  %216 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %217 = load i32, i32* %7, align 4
  %218 = load i32, i32* %9, align 4
  %219 = load i8*, i8** %8, align 8
  %220 = load i32, i32* %9, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %219, i64 %221
  %223 = call i32 @man_descope(%struct.roff_man* %216, i32 %217, i32 %218, i8* %222)
  store i32 1, i32* %5, align 4
  br label %224

224:                                              ; preds = %215, %105, %103, %86, %66, %18
  %225 = load i32, i32* %5, align 4
  ret i32 %225
}

declare dso_local i32 @roff_word_alloc(%struct.roff_man*, i32, i32, i8*) #1

declare dso_local i32 @man_descope(%struct.roff_man*, i32, i32, i8*) #1

declare dso_local i32 @mandoc_msg(i32, i32, i32, i32*) #1

declare dso_local i8* @man_hasc(i32) #1

declare dso_local i32 @roff_elem_alloc(%struct.roff_man*, i32, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @mandoc_eos(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

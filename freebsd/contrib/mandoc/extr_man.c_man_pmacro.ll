; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_man.c_man_pmacro.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_man.c_man_pmacro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { i32, %struct.roff_node*, i64, i32 }
%struct.roff_node = type { i64, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 (%struct.roff_man*, i32, i32, i32, i32*, i8*)* }

@TOKEN_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" \09\\\00", align 1
@MANDOCERR_MACRO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MANDOCERR_SPACE_EOL = common dso_local global i32 0, align 4
@MAN_BLINE = common dso_local global i32 0, align 4
@MAN_SH = common dso_local global i32 0, align 4
@ROFFT_BODY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@MAN_ELINE = common dso_local global i32 0, align 4
@MAN_NSCOPED = common dso_local global i32 0, align 4
@ROFF_NONOFILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff_man*, i32, i8*, i32)* @man_pmacro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @man_pmacro(%struct.roff_man* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.roff_man*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.roff_node*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.roff_man* %0, %struct.roff_man** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @TOKEN_NONE, align 4
  store i32 %17, i32* %13, align 4
  store i64 0, i64* %12, align 8
  br label %18

18:                                               ; preds = %34, %4
  %19 = load i64, i64* %12, align 8
  %20 = icmp ult i64 %19, 4
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = call i32* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8 signext %26)
  %28 = icmp eq i32* %27, null
  br label %29

29:                                               ; preds = %21, %18
  %30 = phi i1 [ false, %18 ], [ %28, %21 ]
  br i1 %30, label %31, label %37

31:                                               ; preds = %29
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %12, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %12, align 8
  br label %18

37:                                               ; preds = %29
  %38 = load i64, i64* %12, align 8
  %39 = icmp ugt i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load i64, i64* %12, align 8
  %42 = icmp ult i64 %41, 4
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %45 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i64, i64* %12, align 8
  %52 = call i32 @roffhash_find(i32 %46, i8* %50, i64 %51)
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %43, %40, %37
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @TOKEN_NONE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load i32, i32* @MANDOCERR_MACRO, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = getelementptr inbounds i8, i8* %64, i64 -1
  %66 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %58, i32 %59, i32 %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %65)
  store i32 1, i32* %5, align 4
  br label %236

67:                                               ; preds = %53
  %68 = load i8*, i8** %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  switch i32 %73, label %90 [
    i32 92, label %74
    i32 9, label %87
  ]

74:                                               ; preds = %67
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  store i8* %79, i8** %11, align 8
  %80 = call i32 @mandoc_escape(i8** %11, i32* null, i32* null)
  %81 = load i8*, i8** %11, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = ptrtoint i8* %81 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %9, align 4
  br label %91

87:                                               ; preds = %67
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %91

90:                                               ; preds = %67
  br label %91

91:                                               ; preds = %90, %87, %74
  br label %92

92:                                               ; preds = %100, %91
  %93 = load i8*, i8** %8, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 32
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %92

103:                                              ; preds = %92
  %104 = load i8*, i8** %8, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %103
  %112 = load i8*, i8** %8, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %112, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 32
  br i1 %119, label %120, label %126

120:                                              ; preds = %111
  %121 = load i32, i32* @MANDOCERR_SPACE_EOL, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %9, align 4
  %124 = sub nsw i32 %123, 1
  %125 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %121, i32 %122, i32 %124, i8* null)
  br label %126

126:                                              ; preds = %120, %111, %103
  %127 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @man_breakscope(%struct.roff_man* %127, i32 %128)
  %130 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %131 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @MAN_BLINE, align 4
  %134 = and i32 %132, %133
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %15, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %126
  %138 = load i8*, i8** %8, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = call i64 @man_hasc(i8* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  store i32 0, i32* %15, align 4
  br label %145

145:                                              ; preds = %144, %137, %126
  %146 = load i32, i32* %13, align 4
  %147 = call %struct.TYPE_6__* @man_macro(i32 %146)
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = load i32 (%struct.roff_man*, i32, i32, i32, i32*, i8*)*, i32 (%struct.roff_man*, i32, i32, i32, i32*, i8*)** %148, align 8
  %150 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %14, align 4
  %154 = load i8*, i8** %8, align 8
  %155 = call i32 %149(%struct.roff_man* %150, i32 %151, i32 %152, i32 %153, i32* %9, i8* %154)
  %156 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %157 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %185

160:                                              ; preds = %145
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* @MAN_SH, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %185

164:                                              ; preds = %160
  %165 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %166 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %165, i32 0, i32 1
  %167 = load %struct.roff_node*, %struct.roff_node** %166, align 8
  store %struct.roff_node* %167, %struct.roff_node** %10, align 8
  %168 = load %struct.roff_node*, %struct.roff_node** %10, align 8
  %169 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @ROFFT_BODY, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %184

173:                                              ; preds = %164
  %174 = load %struct.roff_node*, %struct.roff_node** %10, align 8
  %175 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %174, i32 0, i32 3
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i64 @strcmp(i32 %180, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %173
  store i32 2, i32* %5, align 4
  br label %236

184:                                              ; preds = %173, %164
  br label %185

185:                                              ; preds = %184, %160, %145
  %186 = load i32, i32* %15, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %210, label %188

188:                                              ; preds = %185
  %189 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %190 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @MAN_BLINE, align 4
  %193 = and i32 %191, %192
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %210, label %195

195:                                              ; preds = %188
  %196 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %197 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @MAN_ELINE, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %210, label %202

202:                                              ; preds = %195
  %203 = load i32, i32* %13, align 4
  %204 = call %struct.TYPE_6__* @man_macro(i32 %203)
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @MAN_NSCOPED, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %202, %195, %188, %185
  store i32 1, i32* %5, align 4
  br label %236

211:                                              ; preds = %202
  %212 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %213 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %214 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %213, i32 0, i32 1
  %215 = load %struct.roff_node*, %struct.roff_node** %214, align 8
  %216 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @man_unscope(%struct.roff_man* %212, i32 %217)
  %219 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %220 = load i32, i32* %7, align 4
  %221 = load i32, i32* %14, align 4
  %222 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %223 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %222, i32 0, i32 1
  %224 = load %struct.roff_node*, %struct.roff_node** %223, align 8
  %225 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @roff_body_alloc(%struct.roff_man* %219, i32 %220, i32 %221, i32 %226)
  %228 = load i32, i32* @MAN_BLINE, align 4
  %229 = load i32, i32* @ROFF_NONOFILL, align 4
  %230 = or i32 %228, %229
  %231 = xor i32 %230, -1
  %232 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %233 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = and i32 %234, %231
  store i32 %235, i32* %233, align 8
  store i32 1, i32* %5, align 4
  br label %236

236:                                              ; preds = %211, %210, %183, %57
  %237 = load i32, i32* %5, align 4
  ret i32 %237
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @roffhash_find(i32, i8*, i64) #1

declare dso_local i32 @mandoc_msg(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @mandoc_escape(i8**, i32*, i32*) #1

declare dso_local i32 @man_breakscope(%struct.roff_man*, i32) #1

declare dso_local i64 @man_hasc(i8*) #1

declare dso_local %struct.TYPE_6__* @man_macro(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @man_unscope(%struct.roff_man*, i32) #1

declare dso_local i32 @roff_body_alloc(%struct.roff_man*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

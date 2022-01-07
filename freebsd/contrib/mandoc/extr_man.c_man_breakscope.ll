; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_man.c_man_breakscope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_man.c_man_breakscope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { i32, %struct.roff_node* }
%struct.roff_node = type { i64, i32, i32, i32, %struct.roff_node* }
%struct.TYPE_2__ = type { i32 }

@MAN_ELINE = common dso_local global i32 0, align 4
@MAN_TH = common dso_local global i32 0, align 4
@MAN_NSCOPED = common dso_local global i32 0, align 4
@ROFFT_TEXT = common dso_local global i64 0, align 8
@MAN_ESCOPED = common dso_local global i32 0, align 4
@MANDOCERR_BLK_LINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s breaks %s\00", align 1
@roff_name = common dso_local global i32* null, align 8
@MAN_BLINE = common dso_local global i32 0, align 4
@ROFF_nf = common dso_local global i32 0, align 4
@ROFF_fi = common dso_local global i32 0, align 4
@MAN_SH = common dso_local global i64 0, align 8
@MAN_SS = common dso_local global i64 0, align 8
@ROFF_NONOFILL = common dso_local global i32 0, align 4
@MAN_XSCOPE = common dso_local global i32 0, align 4
@ROFFT_HEAD = common dso_local global i64 0, align 8
@ROFFT_BLOCK = common dso_local global i64 0, align 8
@MAN_BSCOPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @man_breakscope(%struct.roff_man* %0, i32 %1) #0 {
  %3 = alloca %struct.roff_man*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.roff_node*, align 8
  store %struct.roff_man* %0, %struct.roff_man** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %7 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @MAN_ELINE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %90

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @MAN_TH, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.TYPE_2__* @man_macro(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MAN_NSCOPED, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %90

24:                                               ; preds = %16, %12
  %25 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %26 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %25, i32 0, i32 1
  %27 = load %struct.roff_node*, %struct.roff_node** %26, align 8
  store %struct.roff_node* %27, %struct.roff_node** %5, align 8
  %28 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %29 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ROFFT_TEXT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %35 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %34, i32 0, i32 4
  %36 = load %struct.roff_node*, %struct.roff_node** %35, align 8
  store %struct.roff_node* %36, %struct.roff_node** %5, align 8
  br label %37

37:                                               ; preds = %33, %24
  %38 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %39 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MAN_TH, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %56, label %43

43:                                               ; preds = %37
  %44 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %45 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.TYPE_2__* @man_macro(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MAN_NSCOPED, align 4
  %51 = load i32, i32* @MAN_ESCOPED, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = load i32, i32* @MAN_NSCOPED, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %43, %37
  %57 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %58 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %57, i32 0, i32 4
  %59 = load %struct.roff_node*, %struct.roff_node** %58, align 8
  store %struct.roff_node* %59, %struct.roff_node** %5, align 8
  br label %60

60:                                               ; preds = %56, %43
  %61 = load i32, i32* @MANDOCERR_BLK_LINE, align 4
  %62 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %63 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %66 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** @roff_name, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** @roff_name, align 8
  %74 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %75 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @mandoc_msg(i32 %61, i32 %64, i32 %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %79)
  %81 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %82 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %83 = call i32 @roff_node_delete(%struct.roff_man* %81, %struct.roff_node* %82)
  %84 = load i32, i32* @MAN_ELINE, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %87 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %60, %16, %2
  %91 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %92 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @MAN_BLINE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %150

97:                                               ; preds = %90
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @ROFF_nf, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @ROFF_fi, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %150

105:                                              ; preds = %101, %97
  %106 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %107 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %106, i32 0, i32 1
  %108 = load %struct.roff_node*, %struct.roff_node** %107, align 8
  %109 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* @MAN_SH, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %123, label %114

114:                                              ; preds = %105
  %115 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %116 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %115, i32 0, i32 1
  %117 = load %struct.roff_node*, %struct.roff_node** %116, align 8
  %118 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* @MAN_SS, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %150

123:                                              ; preds = %114, %105
  %124 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %125 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %124, i32 0, i32 1
  %126 = load %struct.roff_node*, %struct.roff_node** %125, align 8
  store %struct.roff_node* %126, %struct.roff_node** %5, align 8
  %127 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %128 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %129 = call i32 @man_unscope(%struct.roff_man* %127, %struct.roff_node* %128)
  %130 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %131 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %132 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %135 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %138 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = call i32 @roff_body_alloc(%struct.roff_man* %130, i32 %133, i32 %136, i64 %140)
  %142 = load i32, i32* @MAN_BLINE, align 4
  %143 = load i32, i32* @ROFF_NONOFILL, align 4
  %144 = or i32 %142, %143
  %145 = xor i32 %144, -1
  %146 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %147 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = and i32 %148, %145
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %123, %114, %101, %90
  %151 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %152 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @MAN_BLINE, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %268

157:                                              ; preds = %150
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* @ROFF_nf, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %268

161:                                              ; preds = %157
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* @ROFF_fi, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %268

165:                                              ; preds = %161
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* @MAN_TH, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %177, label %169

169:                                              ; preds = %165
  %170 = load i32, i32* %4, align 4
  %171 = call %struct.TYPE_2__* @man_macro(i32 %170)
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @MAN_XSCOPE, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %268

177:                                              ; preds = %169, %165
  %178 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %179 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %178, i32 0, i32 1
  %180 = load %struct.roff_node*, %struct.roff_node** %179, align 8
  store %struct.roff_node* %180, %struct.roff_node** %5, align 8
  %181 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %182 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @ROFFT_TEXT, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %177
  %187 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %188 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %187, i32 0, i32 4
  %189 = load %struct.roff_node*, %struct.roff_node** %188, align 8
  store %struct.roff_node* %189, %struct.roff_node** %5, align 8
  br label %190

190:                                              ; preds = %186, %177
  %191 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %192 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @MAN_TH, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %206, label %196

196:                                              ; preds = %190
  %197 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %198 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = call %struct.TYPE_2__* @man_macro(i32 %199)
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @MAN_XSCOPE, align 4
  %204 = and i32 %202, %203
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %196, %190
  %207 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %208 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %207, i32 0, i32 4
  %209 = load %struct.roff_node*, %struct.roff_node** %208, align 8
  store %struct.roff_node* %209, %struct.roff_node** %5, align 8
  br label %210

210:                                              ; preds = %206, %196
  %211 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %212 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @ROFFT_HEAD, align 8
  %215 = icmp eq i64 %213, %214
  %216 = zext i1 %215 to i32
  %217 = call i32 @assert(i32 %216)
  %218 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %219 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %218, i32 0, i32 4
  %220 = load %struct.roff_node*, %struct.roff_node** %219, align 8
  store %struct.roff_node* %220, %struct.roff_node** %5, align 8
  %221 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %222 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @ROFFT_BLOCK, align 8
  %225 = icmp eq i64 %223, %224
  %226 = zext i1 %225 to i32
  %227 = call i32 @assert(i32 %226)
  %228 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %229 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = call %struct.TYPE_2__* @man_macro(i32 %230)
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @MAN_BSCOPED, align 4
  %235 = and i32 %233, %234
  %236 = call i32 @assert(i32 %235)
  %237 = load i32, i32* @MANDOCERR_BLK_LINE, align 4
  %238 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %239 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %242 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = load i32*, i32** @roff_name, align 8
  %245 = load i32, i32* %4, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = load i32*, i32** @roff_name, align 8
  %250 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %251 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %249, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @mandoc_msg(i32 %237, i32 %240, i32 %243, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %248, i32 %255)
  %257 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %258 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %259 = call i32 @roff_node_delete(%struct.roff_man* %257, %struct.roff_node* %258)
  %260 = load i32, i32* @MAN_BLINE, align 4
  %261 = load i32, i32* @ROFF_NONOFILL, align 4
  %262 = or i32 %260, %261
  %263 = xor i32 %262, -1
  %264 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %265 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = and i32 %266, %263
  store i32 %267, i32* %265, align 8
  br label %268

268:                                              ; preds = %210, %169, %161, %157, %150
  ret void
}

declare dso_local %struct.TYPE_2__* @man_macro(i32) #1

declare dso_local i32 @mandoc_msg(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @roff_node_delete(%struct.roff_man*, %struct.roff_node*) #1

declare dso_local i32 @man_unscope(%struct.roff_man*, %struct.roff_node*) #1

declare dso_local i32 @roff_body_alloc(%struct.roff_man*, i32, i32, i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

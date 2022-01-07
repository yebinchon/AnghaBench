; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_io.c_au_print_flags_tok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_io.c_au_print_flags_tok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_47__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @au_print_flags_tok(i32* %0, %struct.TYPE_47__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_47__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_47__* %1, %struct.TYPE_47__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %270 [
    i32 162, label %12
    i32 161, label %18
    i32 160, label %24
    i32 159, label %30
    i32 130, label %36
    i32 170, label %42
    i32 169, label %48
    i32 166, label %54
    i32 168, label %60
    i32 167, label %66
    i32 163, label %72
    i32 165, label %78
    i32 164, label %84
    i32 150, label %90
    i32 152, label %96
    i32 158, label %102
    i32 157, label %108
    i32 156, label %114
    i32 155, label %120
    i32 154, label %126
    i32 153, label %132
    i32 151, label %138
    i32 149, label %144
    i32 147, label %150
    i32 146, label %156
    i32 145, label %162
    i32 144, label %168
    i32 143, label %174
    i32 142, label %180
    i32 141, label %186
    i32 140, label %192
    i32 137, label %198
    i32 136, label %204
    i32 138, label %210
    i32 135, label %216
    i32 133, label %222
    i32 134, label %228
    i32 132, label %234
    i32 131, label %240
    i32 139, label %246
    i32 128, label %252
    i32 129, label %258
    i32 148, label %264
  ]

12:                                               ; preds = %4
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @print_header32_tok(i32* %13, %struct.TYPE_47__* %14, i8* %15, i32 %16)
  br label %276

18:                                               ; preds = %4
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @print_header32_ex_tok(i32* %19, %struct.TYPE_47__* %20, i8* %21, i32 %22)
  br label %276

24:                                               ; preds = %4
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @print_header64_tok(i32* %25, %struct.TYPE_47__* %26, i8* %27, i32 %28)
  br label %276

30:                                               ; preds = %4
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @print_header64_ex_tok(i32* %31, %struct.TYPE_47__* %32, i8* %33, i32 %34)
  br label %276

36:                                               ; preds = %4
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @print_trailer_tok(i32* %37, %struct.TYPE_47__* %38, i8* %39, i32 %40)
  br label %276

42:                                               ; preds = %4
  %43 = load i32*, i32** %5, align 8
  %44 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @print_arg32_tok(i32* %43, %struct.TYPE_47__* %44, i8* %45, i32 %46)
  br label %276

48:                                               ; preds = %4
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @print_arg64_tok(i32* %49, %struct.TYPE_47__* %50, i8* %51, i32 %52)
  br label %276

54:                                               ; preds = %4
  %55 = load i32*, i32** %5, align 8
  %56 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @print_arb_tok(i32* %55, %struct.TYPE_47__* %56, i8* %57, i32 %58)
  br label %276

60:                                               ; preds = %4
  %61 = load i32*, i32** %5, align 8
  %62 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @print_attr32_tok(i32* %61, %struct.TYPE_47__* %62, i8* %63, i32 %64)
  br label %276

66:                                               ; preds = %4
  %67 = load i32*, i32** %5, align 8
  %68 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @print_attr64_tok(i32* %67, %struct.TYPE_47__* %68, i8* %69, i32 %70)
  br label %276

72:                                               ; preds = %4
  %73 = load i32*, i32** %5, align 8
  %74 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @print_exit_tok(i32* %73, %struct.TYPE_47__* %74, i8* %75, i32 %76)
  br label %276

78:                                               ; preds = %4
  %79 = load i32*, i32** %5, align 8
  %80 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @print_execarg_tok(i32* %79, %struct.TYPE_47__* %80, i8* %81, i32 %82)
  br label %276

84:                                               ; preds = %4
  %85 = load i32*, i32** %5, align 8
  %86 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @print_execenv_tok(i32* %85, %struct.TYPE_47__* %86, i8* %87, i32 %88)
  br label %276

90:                                               ; preds = %4
  %91 = load i32*, i32** %5, align 8
  %92 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @print_file_tok(i32* %91, %struct.TYPE_47__* %92, i8* %93, i32 %94)
  br label %276

96:                                               ; preds = %4
  %97 = load i32*, i32** %5, align 8
  %98 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @print_newgroups_tok(i32* %97, %struct.TYPE_47__* %98, i8* %99, i32 %100)
  br label %276

102:                                              ; preds = %4
  %103 = load i32*, i32** %5, align 8
  %104 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @print_inaddr_tok(i32* %103, %struct.TYPE_47__* %104, i8* %105, i32 %106)
  br label %276

108:                                              ; preds = %4
  %109 = load i32*, i32** %5, align 8
  %110 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @print_inaddr_ex_tok(i32* %109, %struct.TYPE_47__* %110, i8* %111, i32 %112)
  br label %276

114:                                              ; preds = %4
  %115 = load i32*, i32** %5, align 8
  %116 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @print_ip_tok(i32* %115, %struct.TYPE_47__* %116, i8* %117, i32 %118)
  br label %276

120:                                              ; preds = %4
  %121 = load i32*, i32** %5, align 8
  %122 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %123 = load i8*, i8** %7, align 8
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @print_ipc_tok(i32* %121, %struct.TYPE_47__* %122, i8* %123, i32 %124)
  br label %276

126:                                              ; preds = %4
  %127 = load i32*, i32** %5, align 8
  %128 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %129 = load i8*, i8** %7, align 8
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @print_ipcperm_tok(i32* %127, %struct.TYPE_47__* %128, i8* %129, i32 %130)
  br label %276

132:                                              ; preds = %4
  %133 = load i32*, i32** %5, align 8
  %134 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %135 = load i8*, i8** %7, align 8
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @print_iport_tok(i32* %133, %struct.TYPE_47__* %134, i8* %135, i32 %136)
  br label %276

138:                                              ; preds = %4
  %139 = load i32*, i32** %5, align 8
  %140 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %141 = load i8*, i8** %7, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @print_opaque_tok(i32* %139, %struct.TYPE_47__* %140, i8* %141, i32 %142)
  br label %276

144:                                              ; preds = %4
  %145 = load i32*, i32** %5, align 8
  %146 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %147 = load i8*, i8** %7, align 8
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @print_path_tok(i32* %145, %struct.TYPE_47__* %146, i8* %147, i32 %148)
  br label %276

150:                                              ; preds = %4
  %151 = load i32*, i32** %5, align 8
  %152 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %153 = load i8*, i8** %7, align 8
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @print_process32_tok(i32* %151, %struct.TYPE_47__* %152, i8* %153, i32 %154)
  br label %276

156:                                              ; preds = %4
  %157 = load i32*, i32** %5, align 8
  %158 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %159 = load i8*, i8** %7, align 8
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @print_process32ex_tok(i32* %157, %struct.TYPE_47__* %158, i8* %159, i32 %160)
  br label %276

162:                                              ; preds = %4
  %163 = load i32*, i32** %5, align 8
  %164 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %165 = load i8*, i8** %7, align 8
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @print_process64_tok(i32* %163, %struct.TYPE_47__* %164, i8* %165, i32 %166)
  br label %276

168:                                              ; preds = %4
  %169 = load i32*, i32** %5, align 8
  %170 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %171 = load i8*, i8** %7, align 8
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @print_process64ex_tok(i32* %169, %struct.TYPE_47__* %170, i8* %171, i32 %172)
  br label %276

174:                                              ; preds = %4
  %175 = load i32*, i32** %5, align 8
  %176 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %177 = load i8*, i8** %7, align 8
  %178 = load i32, i32* %8, align 4
  %179 = call i32 @print_return32_tok(i32* %175, %struct.TYPE_47__* %176, i8* %177, i32 %178)
  br label %276

180:                                              ; preds = %4
  %181 = load i32*, i32** %5, align 8
  %182 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %183 = load i8*, i8** %7, align 8
  %184 = load i32, i32* %8, align 4
  %185 = call i32 @print_return64_tok(i32* %181, %struct.TYPE_47__* %182, i8* %183, i32 %184)
  br label %276

186:                                              ; preds = %4
  %187 = load i32*, i32** %5, align 8
  %188 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %189 = load i8*, i8** %7, align 8
  %190 = load i32, i32* %8, align 4
  %191 = call i32 @print_seq_tok(i32* %187, %struct.TYPE_47__* %188, i8* %189, i32 %190)
  br label %276

192:                                              ; preds = %4
  %193 = load i32*, i32** %5, align 8
  %194 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %195 = load i8*, i8** %7, align 8
  %196 = load i32, i32* %8, align 4
  %197 = call i32 @print_socket_tok(i32* %193, %struct.TYPE_47__* %194, i8* %195, i32 %196)
  br label %276

198:                                              ; preds = %4
  %199 = load i32*, i32** %5, align 8
  %200 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %201 = load i8*, i8** %7, align 8
  %202 = load i32, i32* %8, align 4
  %203 = call i32 @print_sock_inet32_tok(i32* %199, %struct.TYPE_47__* %200, i8* %201, i32 %202)
  br label %276

204:                                              ; preds = %4
  %205 = load i32*, i32** %5, align 8
  %206 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %207 = load i8*, i8** %7, align 8
  %208 = load i32, i32* %8, align 4
  %209 = call i32 @print_sock_unix_tok(i32* %205, %struct.TYPE_47__* %206, i8* %207, i32 %208)
  br label %276

210:                                              ; preds = %4
  %211 = load i32*, i32** %5, align 8
  %212 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %213 = load i8*, i8** %7, align 8
  %214 = load i32, i32* %8, align 4
  %215 = call i32 @print_sock_inet128_tok(i32* %211, %struct.TYPE_47__* %212, i8* %213, i32 %214)
  br label %276

216:                                              ; preds = %4
  %217 = load i32*, i32** %5, align 8
  %218 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %219 = load i8*, i8** %7, align 8
  %220 = load i32, i32* %8, align 4
  %221 = call i32 @print_subject32_tok(i32* %217, %struct.TYPE_47__* %218, i8* %219, i32 %220)
  br label %276

222:                                              ; preds = %4
  %223 = load i32*, i32** %5, align 8
  %224 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %225 = load i8*, i8** %7, align 8
  %226 = load i32, i32* %8, align 4
  %227 = call i32 @print_subject64_tok(i32* %223, %struct.TYPE_47__* %224, i8* %225, i32 %226)
  br label %276

228:                                              ; preds = %4
  %229 = load i32*, i32** %5, align 8
  %230 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %231 = load i8*, i8** %7, align 8
  %232 = load i32, i32* %8, align 4
  %233 = call i32 @print_subject32ex_tok(i32* %229, %struct.TYPE_47__* %230, i8* %231, i32 %232)
  br label %276

234:                                              ; preds = %4
  %235 = load i32*, i32** %5, align 8
  %236 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %237 = load i8*, i8** %7, align 8
  %238 = load i32, i32* %8, align 4
  %239 = call i32 @print_subject64ex_tok(i32* %235, %struct.TYPE_47__* %236, i8* %237, i32 %238)
  br label %276

240:                                              ; preds = %4
  %241 = load i32*, i32** %5, align 8
  %242 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %243 = load i8*, i8** %7, align 8
  %244 = load i32, i32* %8, align 4
  %245 = call i32 @print_text_tok(i32* %241, %struct.TYPE_47__* %242, i8* %243, i32 %244)
  br label %276

246:                                              ; preds = %4
  %247 = load i32*, i32** %5, align 8
  %248 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %249 = load i8*, i8** %7, align 8
  %250 = load i32, i32* %8, align 4
  %251 = call i32 @print_socketex32_tok(i32* %247, %struct.TYPE_47__* %248, i8* %249, i32 %250)
  br label %276

252:                                              ; preds = %4
  %253 = load i32*, i32** %5, align 8
  %254 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %255 = load i8*, i8** %7, align 8
  %256 = load i32, i32* %8, align 4
  %257 = call i32 @print_zonename_tok(i32* %253, %struct.TYPE_47__* %254, i8* %255, i32 %256)
  br label %276

258:                                              ; preds = %4
  %259 = load i32*, i32** %5, align 8
  %260 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %261 = load i8*, i8** %7, align 8
  %262 = load i32, i32* %8, align 4
  %263 = call i32 @print_upriv_tok(i32* %259, %struct.TYPE_47__* %260, i8* %261, i32 %262)
  br label %276

264:                                              ; preds = %4
  %265 = load i32*, i32** %5, align 8
  %266 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %267 = load i8*, i8** %7, align 8
  %268 = load i32, i32* %8, align 4
  %269 = call i32 @print_privset_tok(i32* %265, %struct.TYPE_47__* %266, i8* %267, i32 %268)
  br label %276

270:                                              ; preds = %4
  %271 = load i32*, i32** %5, align 8
  %272 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %273 = load i8*, i8** %7, align 8
  %274 = load i32, i32* %8, align 4
  %275 = call i32 @print_invalid_tok(i32* %271, %struct.TYPE_47__* %272, i8* %273, i32 %274)
  br label %276

276:                                              ; preds = %12, %18, %24, %30, %36, %42, %48, %54, %60, %66, %72, %78, %84, %90, %96, %102, %108, %114, %120, %126, %132, %138, %144, %150, %156, %162, %168, %174, %180, %186, %192, %198, %204, %210, %216, %222, %228, %234, %240, %246, %252, %258, %264, %270
  ret void
}

declare dso_local i32 @print_header32_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_header32_ex_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_header64_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_header64_ex_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_trailer_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_arg32_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_arg64_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_arb_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_attr32_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_attr64_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_exit_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_execarg_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_execenv_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_file_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_newgroups_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_inaddr_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_inaddr_ex_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_ip_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_ipc_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_ipcperm_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_iport_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_opaque_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_path_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_process32_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_process32ex_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_process64_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_process64ex_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_return32_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_return64_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_seq_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_socket_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_sock_inet32_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_sock_unix_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_sock_inet128_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_subject32_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_subject64_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_subject32ex_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_subject64ex_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_text_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_socketex32_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_zonename_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_upriv_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_privset_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

declare dso_local i32 @print_invalid_tok(i32*, %struct.TYPE_47__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_io.c_au_fetch_tok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_io.c_au_fetch_tok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_47__ = type { i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @au_fetch_tok(%struct.TYPE_47__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_47__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_47__* %0, %struct.TYPE_47__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %244

11:                                               ; preds = %3
  %12 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %15, i32 0, i32 1
  store i32* %14, i32** %16, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %239 [
    i32 162, label %24
    i32 161, label %29
    i32 160, label %34
    i32 159, label %39
    i32 130, label %44
    i32 170, label %49
    i32 169, label %54
    i32 168, label %59
    i32 167, label %64
    i32 163, label %69
    i32 165, label %74
    i32 164, label %79
    i32 150, label %84
    i32 152, label %89
    i32 158, label %94
    i32 157, label %99
    i32 156, label %104
    i32 155, label %109
    i32 154, label %114
    i32 153, label %119
    i32 151, label %124
    i32 149, label %129
    i32 147, label %134
    i32 146, label %139
    i32 145, label %144
    i32 144, label %149
    i32 143, label %154
    i32 142, label %159
    i32 141, label %164
    i32 140, label %169
    i32 137, label %174
    i32 136, label %179
    i32 138, label %184
    i32 135, label %189
    i32 134, label %194
    i32 133, label %199
    i32 132, label %204
    i32 131, label %209
    i32 139, label %214
    i32 166, label %219
    i32 128, label %224
    i32 129, label %229
    i32 148, label %234
  ]

24:                                               ; preds = %11
  %25 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @fetch_header32_tok(%struct.TYPE_47__* %25, i32* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %244

29:                                               ; preds = %11
  %30 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @fetch_header32_ex_tok(%struct.TYPE_47__* %30, i32* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %244

34:                                               ; preds = %11
  %35 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @fetch_header64_tok(%struct.TYPE_47__* %35, i32* %36, i32 %37)
  store i32 %38, i32* %4, align 4
  br label %244

39:                                               ; preds = %11
  %40 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @fetch_header64_ex_tok(%struct.TYPE_47__* %40, i32* %41, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %244

44:                                               ; preds = %11
  %45 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @fetch_trailer_tok(%struct.TYPE_47__* %45, i32* %46, i32 %47)
  store i32 %48, i32* %4, align 4
  br label %244

49:                                               ; preds = %11
  %50 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @fetch_arg32_tok(%struct.TYPE_47__* %50, i32* %51, i32 %52)
  store i32 %53, i32* %4, align 4
  br label %244

54:                                               ; preds = %11
  %55 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @fetch_arg64_tok(%struct.TYPE_47__* %55, i32* %56, i32 %57)
  store i32 %58, i32* %4, align 4
  br label %244

59:                                               ; preds = %11
  %60 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @fetch_attr32_tok(%struct.TYPE_47__* %60, i32* %61, i32 %62)
  store i32 %63, i32* %4, align 4
  br label %244

64:                                               ; preds = %11
  %65 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @fetch_attr64_tok(%struct.TYPE_47__* %65, i32* %66, i32 %67)
  store i32 %68, i32* %4, align 4
  br label %244

69:                                               ; preds = %11
  %70 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @fetch_exit_tok(%struct.TYPE_47__* %70, i32* %71, i32 %72)
  store i32 %73, i32* %4, align 4
  br label %244

74:                                               ; preds = %11
  %75 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @fetch_execarg_tok(%struct.TYPE_47__* %75, i32* %76, i32 %77)
  store i32 %78, i32* %4, align 4
  br label %244

79:                                               ; preds = %11
  %80 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @fetch_execenv_tok(%struct.TYPE_47__* %80, i32* %81, i32 %82)
  store i32 %83, i32* %4, align 4
  br label %244

84:                                               ; preds = %11
  %85 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @fetch_file_tok(%struct.TYPE_47__* %85, i32* %86, i32 %87)
  store i32 %88, i32* %4, align 4
  br label %244

89:                                               ; preds = %11
  %90 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @fetch_newgroups_tok(%struct.TYPE_47__* %90, i32* %91, i32 %92)
  store i32 %93, i32* %4, align 4
  br label %244

94:                                               ; preds = %11
  %95 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @fetch_inaddr_tok(%struct.TYPE_47__* %95, i32* %96, i32 %97)
  store i32 %98, i32* %4, align 4
  br label %244

99:                                               ; preds = %11
  %100 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @fetch_inaddr_ex_tok(%struct.TYPE_47__* %100, i32* %101, i32 %102)
  store i32 %103, i32* %4, align 4
  br label %244

104:                                              ; preds = %11
  %105 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @fetch_ip_tok(%struct.TYPE_47__* %105, i32* %106, i32 %107)
  store i32 %108, i32* %4, align 4
  br label %244

109:                                              ; preds = %11
  %110 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @fetch_ipc_tok(%struct.TYPE_47__* %110, i32* %111, i32 %112)
  store i32 %113, i32* %4, align 4
  br label %244

114:                                              ; preds = %11
  %115 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @fetch_ipcperm_tok(%struct.TYPE_47__* %115, i32* %116, i32 %117)
  store i32 %118, i32* %4, align 4
  br label %244

119:                                              ; preds = %11
  %120 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @fetch_iport_tok(%struct.TYPE_47__* %120, i32* %121, i32 %122)
  store i32 %123, i32* %4, align 4
  br label %244

124:                                              ; preds = %11
  %125 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %126 = load i32*, i32** %6, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @fetch_opaque_tok(%struct.TYPE_47__* %125, i32* %126, i32 %127)
  store i32 %128, i32* %4, align 4
  br label %244

129:                                              ; preds = %11
  %130 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %131 = load i32*, i32** %6, align 8
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @fetch_path_tok(%struct.TYPE_47__* %130, i32* %131, i32 %132)
  store i32 %133, i32* %4, align 4
  br label %244

134:                                              ; preds = %11
  %135 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @fetch_process32_tok(%struct.TYPE_47__* %135, i32* %136, i32 %137)
  store i32 %138, i32* %4, align 4
  br label %244

139:                                              ; preds = %11
  %140 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %141 = load i32*, i32** %6, align 8
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @fetch_process32ex_tok(%struct.TYPE_47__* %140, i32* %141, i32 %142)
  store i32 %143, i32* %4, align 4
  br label %244

144:                                              ; preds = %11
  %145 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %146 = load i32*, i32** %6, align 8
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @fetch_process64_tok(%struct.TYPE_47__* %145, i32* %146, i32 %147)
  store i32 %148, i32* %4, align 4
  br label %244

149:                                              ; preds = %11
  %150 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %151 = load i32*, i32** %6, align 8
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @fetch_process64ex_tok(%struct.TYPE_47__* %150, i32* %151, i32 %152)
  store i32 %153, i32* %4, align 4
  br label %244

154:                                              ; preds = %11
  %155 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %156 = load i32*, i32** %6, align 8
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @fetch_return32_tok(%struct.TYPE_47__* %155, i32* %156, i32 %157)
  store i32 %158, i32* %4, align 4
  br label %244

159:                                              ; preds = %11
  %160 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %161 = load i32*, i32** %6, align 8
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @fetch_return64_tok(%struct.TYPE_47__* %160, i32* %161, i32 %162)
  store i32 %163, i32* %4, align 4
  br label %244

164:                                              ; preds = %11
  %165 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %166 = load i32*, i32** %6, align 8
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @fetch_seq_tok(%struct.TYPE_47__* %165, i32* %166, i32 %167)
  store i32 %168, i32* %4, align 4
  br label %244

169:                                              ; preds = %11
  %170 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %171 = load i32*, i32** %6, align 8
  %172 = load i32, i32* %7, align 4
  %173 = call i32 @fetch_socket_tok(%struct.TYPE_47__* %170, i32* %171, i32 %172)
  store i32 %173, i32* %4, align 4
  br label %244

174:                                              ; preds = %11
  %175 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %176 = load i32*, i32** %6, align 8
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @fetch_sock_inet32_tok(%struct.TYPE_47__* %175, i32* %176, i32 %177)
  store i32 %178, i32* %4, align 4
  br label %244

179:                                              ; preds = %11
  %180 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %181 = load i32*, i32** %6, align 8
  %182 = load i32, i32* %7, align 4
  %183 = call i32 @fetch_sock_unix_tok(%struct.TYPE_47__* %180, i32* %181, i32 %182)
  store i32 %183, i32* %4, align 4
  br label %244

184:                                              ; preds = %11
  %185 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %186 = load i32*, i32** %6, align 8
  %187 = load i32, i32* %7, align 4
  %188 = call i32 @fetch_sock_inet128_tok(%struct.TYPE_47__* %185, i32* %186, i32 %187)
  store i32 %188, i32* %4, align 4
  br label %244

189:                                              ; preds = %11
  %190 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %191 = load i32*, i32** %6, align 8
  %192 = load i32, i32* %7, align 4
  %193 = call i32 @fetch_subject32_tok(%struct.TYPE_47__* %190, i32* %191, i32 %192)
  store i32 %193, i32* %4, align 4
  br label %244

194:                                              ; preds = %11
  %195 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %196 = load i32*, i32** %6, align 8
  %197 = load i32, i32* %7, align 4
  %198 = call i32 @fetch_subject32ex_tok(%struct.TYPE_47__* %195, i32* %196, i32 %197)
  store i32 %198, i32* %4, align 4
  br label %244

199:                                              ; preds = %11
  %200 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %201 = load i32*, i32** %6, align 8
  %202 = load i32, i32* %7, align 4
  %203 = call i32 @fetch_subject64_tok(%struct.TYPE_47__* %200, i32* %201, i32 %202)
  store i32 %203, i32* %4, align 4
  br label %244

204:                                              ; preds = %11
  %205 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %206 = load i32*, i32** %6, align 8
  %207 = load i32, i32* %7, align 4
  %208 = call i32 @fetch_subject64ex_tok(%struct.TYPE_47__* %205, i32* %206, i32 %207)
  store i32 %208, i32* %4, align 4
  br label %244

209:                                              ; preds = %11
  %210 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %211 = load i32*, i32** %6, align 8
  %212 = load i32, i32* %7, align 4
  %213 = call i32 @fetch_text_tok(%struct.TYPE_47__* %210, i32* %211, i32 %212)
  store i32 %213, i32* %4, align 4
  br label %244

214:                                              ; preds = %11
  %215 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %216 = load i32*, i32** %6, align 8
  %217 = load i32, i32* %7, align 4
  %218 = call i32 @fetch_socketex32_tok(%struct.TYPE_47__* %215, i32* %216, i32 %217)
  store i32 %218, i32* %4, align 4
  br label %244

219:                                              ; preds = %11
  %220 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %221 = load i32*, i32** %6, align 8
  %222 = load i32, i32* %7, align 4
  %223 = call i32 @fetch_arb_tok(%struct.TYPE_47__* %220, i32* %221, i32 %222)
  store i32 %223, i32* %4, align 4
  br label %244

224:                                              ; preds = %11
  %225 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %226 = load i32*, i32** %6, align 8
  %227 = load i32, i32* %7, align 4
  %228 = call i32 @fetch_zonename_tok(%struct.TYPE_47__* %225, i32* %226, i32 %227)
  store i32 %228, i32* %4, align 4
  br label %244

229:                                              ; preds = %11
  %230 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %231 = load i32*, i32** %6, align 8
  %232 = load i32, i32* %7, align 4
  %233 = call i32 @fetch_priv_tok(%struct.TYPE_47__* %230, i32* %231, i32 %232)
  store i32 %233, i32* %4, align 4
  br label %244

234:                                              ; preds = %11
  %235 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %236 = load i32*, i32** %6, align 8
  %237 = load i32, i32* %7, align 4
  %238 = call i32 @fetch_privset_tok(%struct.TYPE_47__* %235, i32* %236, i32 %237)
  store i32 %238, i32* %4, align 4
  br label %244

239:                                              ; preds = %11
  %240 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %241 = load i32*, i32** %6, align 8
  %242 = load i32, i32* %7, align 4
  %243 = call i32 @fetch_invalid_tok(%struct.TYPE_47__* %240, i32* %241, i32 %242)
  store i32 %243, i32* %4, align 4
  br label %244

244:                                              ; preds = %239, %234, %229, %224, %219, %214, %209, %204, %199, %194, %189, %184, %179, %174, %169, %164, %159, %154, %149, %144, %139, %134, %129, %124, %119, %114, %109, %104, %99, %94, %89, %84, %79, %74, %69, %64, %59, %54, %49, %44, %39, %34, %29, %24, %10
  %245 = load i32, i32* %4, align 4
  ret i32 %245
}

declare dso_local i32 @fetch_header32_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_header32_ex_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_header64_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_header64_ex_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_trailer_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_arg32_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_arg64_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_attr32_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_attr64_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_exit_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_execarg_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_execenv_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_file_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_newgroups_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_inaddr_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_inaddr_ex_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_ip_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_ipc_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_ipcperm_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_iport_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_opaque_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_path_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_process32_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_process32ex_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_process64_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_process64ex_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_return32_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_return64_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_seq_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_socket_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_sock_inet32_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_sock_unix_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_sock_inet128_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_subject32_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_subject32ex_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_subject64_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_subject64ex_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_text_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_socketex32_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_arb_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_zonename_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_priv_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_privset_tok(%struct.TYPE_47__*, i32*, i32) #1

declare dso_local i32 @fetch_invalid_tok(%struct.TYPE_47__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

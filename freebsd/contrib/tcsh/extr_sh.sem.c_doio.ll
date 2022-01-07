; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.sem.c_doio.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.sem.c_doio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i64, i64, i64 }

@didfds = common dso_local global i32 0, align 4
@F_REPEAT = common dso_local global i64 0, align 8
@F_READ = common dso_local global i64 0, align 8
@SHIN = common dso_local global i32 0, align 4
@SHOUT = common dso_local global i32 0, align 4
@SHDIAG = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_LARGEFILE = common dso_local global i32 0, align 4
@ERR_SYSTEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@F_PIPEIN = common dso_local global i64 0, align 8
@F_NOINTERRUPT = common dso_local global i64 0, align 8
@tpgrp = common dso_local global i32 0, align 4
@_PATH_DEVNULL = common dso_local global i8* null, align 8
@OLDSTD = common dso_local global i32 0, align 4
@F_APPEND = common dso_local global i64 0, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@L_XTND = common dso_local global i32 0, align 4
@F_OVERWRITE = common dso_local global i64 0, align 8
@no_clobber = common dso_local global i64 0, align 8
@is1atty = common dso_local global i64 0, align 8
@F_PIPEOUT = common dso_local global i64 0, align 8
@isoutatty = common dso_local global i64 0, align 8
@F_STDERR = common dso_local global i64 0, align 8
@is2atty = common dso_local global i64 0, align 8
@isdiagatty = common dso_local global i64 0, align 8
@O_APPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.command*, i32*, i32*)* @doio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doio(%struct.command* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.command*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.command* %0, %struct.command** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.command*, %struct.command** %4, align 8
  %13 = getelementptr inbounds %struct.command, %struct.command* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i32, i32* @didfds, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @F_REPEAT, align 8
  %20 = and i64 %18, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %3
  br label %246

23:                                               ; preds = %17
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @F_READ, align 8
  %26 = and i64 %24, %25
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %120

28:                                               ; preds = %23
  %29 = load %struct.command*, %struct.command** %4, align 8
  %30 = getelementptr inbounds %struct.command, %struct.command* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %77

33:                                               ; preds = %28
  %34 = load i32, i32* @SHIN, align 4
  %35 = call i32 @dcopy(i32 %34, i32 0)
  %36 = load i32, i32* @SHOUT, align 4
  %37 = call i32 @dcopy(i32 %36, i32 1)
  %38 = load i32, i32* @SHDIAG, align 4
  %39 = call i32 @dcopy(i32 %38, i32 2)
  %40 = load %struct.command*, %struct.command** %4, align 8
  %41 = load %struct.command*, %struct.command** %4, align 8
  %42 = getelementptr inbounds %struct.command, %struct.command* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i32* @splicepipe(%struct.command* %40, i64 %43)
  store i32* %44, i32** %8, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @short2str(i32* %45)
  %47 = call i8* @strsave(i32 %46)
  store i8* %47, i8** %10, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @xfree(i32* %48)
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @cleanup_push(i8* %50, i32 (i32*)* @xfree)
  %52 = load i8*, i8** %10, align 8
  %53 = load i32, i32* @O_RDONLY, align 4
  %54 = load i32, i32* @O_LARGEFILE, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @xopen(i8* %52, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %33
  %59 = load i32, i32* @ERR_SYSTEM, align 4
  %60 = load i8*, i8** %10, align 8
  %61 = load i32, i32* @errno, align 4
  %62 = call i32 @strerror(i32 %61)
  %63 = call i32 @stderror(i32 %59, i8* %60, i32 %62)
  br label %64

64:                                               ; preds = %58, %33
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @cleanup_until(i8* %65)
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @F_SETFL, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @F_GETFL, align 4
  %71 = call i32 (i32, i32, ...) @fcntl(i32 %69, i32 %70)
  %72 = load i32, i32* @O_LARGEFILE, align 4
  %73 = or i32 %71, %72
  %74 = call i32 (i32, i32, ...) @fcntl(i32 %67, i32 %68, i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @dmove(i32 %75, i32 0)
  br label %119

77:                                               ; preds = %28
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* @F_PIPEIN, align 8
  %80 = and i64 %78, %79
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %77
  %83 = call i32 @xclose(i32 0)
  %84 = load i32*, i32** %5, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dup(i32 %86)
  %88 = call i32 @TCSH_IGNORE(i32 %87)
  %89 = load i32*, i32** %5, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @xclose(i32 %91)
  %93 = load i32*, i32** %5, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @xclose(i32 %95)
  br label %118

97:                                               ; preds = %77
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* @F_NOINTERRUPT, align 8
  %100 = and i64 %98, %99
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = load i32, i32* @tpgrp, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = call i32 @xclose(i32 0)
  %107 = load i8*, i8** @_PATH_DEVNULL, align 8
  %108 = load i32, i32* @O_RDONLY, align 4
  %109 = load i32, i32* @O_LARGEFILE, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @xopen(i8* %107, i32 %110)
  br label %117

112:                                              ; preds = %102, %97
  %113 = call i32 @xclose(i32 0)
  %114 = load i32, i32* @OLDSTD, align 4
  %115 = call i32 @dup(i32 %114)
  %116 = call i32 @TCSH_IGNORE(i32 %115)
  br label %117

117:                                              ; preds = %112, %105
  br label %118

118:                                              ; preds = %117, %82
  br label %119

119:                                              ; preds = %118, %64
  br label %120

120:                                              ; preds = %119, %23
  %121 = load %struct.command*, %struct.command** %4, align 8
  %122 = getelementptr inbounds %struct.command, %struct.command* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %211

125:                                              ; preds = %120
  %126 = load %struct.command*, %struct.command** %4, align 8
  %127 = load %struct.command*, %struct.command** %4, align 8
  %128 = getelementptr inbounds %struct.command, %struct.command* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i32* @splicepipe(%struct.command* %126, i64 %129)
  store i32* %130, i32** %8, align 8
  %131 = load i32*, i32** %8, align 8
  %132 = call i32 @short2str(i32* %131)
  %133 = call i8* @strsave(i32 %132)
  store i8* %133, i8** %11, align 8
  %134 = load i32*, i32** %8, align 8
  %135 = call i32 @xfree(i32* %134)
  %136 = load i8*, i8** %11, align 8
  %137 = call i32 @cleanup_push(i8* %136, i32 (i32*)* @xfree)
  %138 = load i32, i32* @SHOUT, align 4
  %139 = call i32 @dcopy(i32 %138, i32 1)
  %140 = load i32, i32* @SHDIAG, align 4
  %141 = call i32 @dcopy(i32 %140, i32 2)
  %142 = load i64, i64* %9, align 8
  %143 = load i64, i64* @F_APPEND, align 8
  %144 = and i64 %142, %143
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %125
  %147 = load i8*, i8** %11, align 8
  %148 = load i32, i32* @O_WRONLY, align 4
  %149 = load i32, i32* @O_LARGEFILE, align 4
  %150 = or i32 %148, %149
  %151 = call i32 @xopen(i8* %147, i32 %150)
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* @L_XTND, align 4
  %154 = call i32 @lseek(i32 %152, i32 0, i32 %153)
  br label %156

155:                                              ; preds = %125
  store i32 0, i32* %7, align 4
  br label %156

156:                                              ; preds = %155, %146
  %157 = load i64, i64* %9, align 8
  %158 = load i64, i64* @F_APPEND, align 8
  %159 = and i64 %157, %158
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %156
  %162 = load i32, i32* %7, align 4
  %163 = icmp eq i32 %162, -1
  br i1 %163, label %164, label %205

164:                                              ; preds = %161, %156
  %165 = load i64, i64* %9, align 8
  %166 = load i64, i64* @F_OVERWRITE, align 8
  %167 = and i64 %165, %166
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %186, label %169

169:                                              ; preds = %164
  %170 = load i64, i64* @no_clobber, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %186

172:                                              ; preds = %169
  %173 = load i64, i64* %9, align 8
  %174 = load i64, i64* @F_APPEND, align 8
  %175 = and i64 %173, %174
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %172
  %178 = load i32, i32* @ERR_SYSTEM, align 4
  %179 = load i8*, i8** %11, align 8
  %180 = load i32, i32* @errno, align 4
  %181 = call i32 @strerror(i32 %180)
  %182 = call i32 @stderror(i32 %178, i8* %179, i32 %181)
  br label %183

183:                                              ; preds = %177, %172
  %184 = load i8*, i8** %11, align 8
  %185 = call i32 @chkclob(i8* %184)
  br label %186

186:                                              ; preds = %183, %169, %164
  %187 = load i8*, i8** %11, align 8
  %188 = call i32 @xcreat(i8* %187, i32 438)
  store i32 %188, i32* %7, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %186
  %191 = load i32, i32* @ERR_SYSTEM, align 4
  %192 = load i8*, i8** %11, align 8
  %193 = load i32, i32* @errno, align 4
  %194 = call i32 @strerror(i32 %193)
  %195 = call i32 @stderror(i32 %191, i8* %192, i32 %194)
  br label %196

196:                                              ; preds = %190, %186
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* @F_SETFL, align 4
  %199 = load i32, i32* %7, align 4
  %200 = load i32, i32* @F_GETFL, align 4
  %201 = call i32 (i32, i32, ...) @fcntl(i32 %199, i32 %200)
  %202 = load i32, i32* @O_LARGEFILE, align 4
  %203 = or i32 %201, %202
  %204 = call i32 (i32, i32, ...) @fcntl(i32 %197, i32 %198, i32 %203)
  br label %205

205:                                              ; preds = %196, %161
  %206 = load i8*, i8** %11, align 8
  %207 = call i32 @cleanup_until(i8* %206)
  %208 = load i32, i32* %7, align 4
  %209 = call i32 @dmove(i32 %208, i32 1)
  %210 = call i64 @isatty(i32 1)
  store i64 %210, i64* @is1atty, align 8
  br label %230

211:                                              ; preds = %120
  %212 = load i64, i64* %9, align 8
  %213 = load i64, i64* @F_PIPEOUT, align 8
  %214 = and i64 %212, %213
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %211
  %217 = call i32 @xclose(i32 1)
  %218 = load i32*, i32** %6, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @dup(i32 %220)
  %222 = call i32 @TCSH_IGNORE(i32 %221)
  store i64 0, i64* @is1atty, align 8
  br label %229

223:                                              ; preds = %211
  %224 = call i32 @xclose(i32 1)
  %225 = load i32, i32* @SHOUT, align 4
  %226 = call i32 @dup(i32 %225)
  %227 = call i32 @TCSH_IGNORE(i32 %226)
  %228 = load i64, i64* @isoutatty, align 8
  store i64 %228, i64* @is1atty, align 8
  br label %229

229:                                              ; preds = %223, %216
  br label %230

230:                                              ; preds = %229, %205
  %231 = call i32 @xclose(i32 2)
  %232 = load i64, i64* %9, align 8
  %233 = load i64, i64* @F_STDERR, align 8
  %234 = and i64 %232, %233
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %230
  %237 = call i32 @dup(i32 1)
  %238 = call i32 @TCSH_IGNORE(i32 %237)
  %239 = load i64, i64* @is1atty, align 8
  store i64 %239, i64* @is2atty, align 8
  br label %245

240:                                              ; preds = %230
  %241 = load i32, i32* @SHDIAG, align 4
  %242 = call i32 @dup(i32 %241)
  %243 = call i32 @TCSH_IGNORE(i32 %242)
  %244 = load i64, i64* @isdiagatty, align 8
  store i64 %244, i64* @is2atty, align 8
  br label %245

245:                                              ; preds = %240, %236
  store i32 1, i32* @didfds, align 4
  br label %246

246:                                              ; preds = %245, %22
  ret void
}

declare dso_local i32 @dcopy(i32, i32) #1

declare dso_local i32* @splicepipe(%struct.command*, i64) #1

declare dso_local i8* @strsave(i32) #1

declare dso_local i32 @short2str(i32*) #1

declare dso_local i32 @xfree(i32*) #1

declare dso_local i32 @cleanup_push(i8*, i32 (i32*)*) #1

declare dso_local i32 @xopen(i8*, i32) #1

declare dso_local i32 @stderror(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @cleanup_until(i8*) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i32 @dmove(i32, i32) #1

declare dso_local i32 @xclose(i32) #1

declare dso_local i32 @TCSH_IGNORE(i32) #1

declare dso_local i32 @dup(i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @chkclob(i8*) #1

declare dso_local i32 @xcreat(i8*, i32) #1

declare dso_local i64 @isatty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

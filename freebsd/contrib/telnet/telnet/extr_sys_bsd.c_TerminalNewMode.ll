; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_sys_bsd.c_TerminalNewMode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_sys_bsd.c_TerminalNewMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sgttyb = type { i32 }
%struct.tchars = type { i8*, i64, i64, i64, i64, i64 }
%struct.ltchars = type { i64, i64, i64 }
%struct.termio = type { i32, i32*, i32, i32, i32 }

@TerminalNewMode.prevmode = internal global i32 0, align 4
@MODE_FORCE = common dso_local global i32 0, align 4
@globalmode = common dso_local global i32 0, align 4
@SYNCHing = common dso_local global i32 0, align 4
@flushout = common dso_local global i32 0, align 4
@nttyb = common dso_local global %struct.sgttyb zeroinitializer, align 4
@ntc = common dso_local global %struct.tchars zeroinitializer, align 8
@nltc = common dso_local global %struct.ltchars zeroinitializer, align 8
@olmode = common dso_local global i32 0, align 4
@MODE_ECHO = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@MODE_FLOW = common dso_local global i32 0, align 4
@_POSIX_VDISABLE = common dso_local global i64 0, align 8
@MODE_TRAPSIG = common dso_local global i32 0, align 4
@localchars = common dso_local global i32 0, align 4
@MODE_EDIT = common dso_local global i32 0, align 4
@CBREAK = common dso_local global i32 0, align 4
@CRMOD = common dso_local global i32 0, align 4
@MODE_SOFT_TAB = common dso_local global i32 0, align 4
@XTABS = common dso_local global i32 0, align 4
@MODE_LIT_ECHO = common dso_local global i32 0, align 4
@LCTLECH = common dso_local global i32 0, align 4
@MODE_OUTBIN = common dso_local global i32 0, align 4
@LLITOUT = common dso_local global i32 0, align 4
@MODE_INBIN = common dso_local global i32 0, align 4
@LPASS8 = common dso_local global i32 0, align 4
@oltc = common dso_local global %struct.ltchars zeroinitializer, align 8
@otc = common dso_local global %struct.tchars zeroinitializer, align 8
@ottyb = common dso_local global %struct.sgttyb zeroinitializer, align 4
@tin = common dso_local global i32 0, align 4
@TIOCLSET = common dso_local global i32 0, align 4
@TIOCSLTC = common dso_local global i32 0, align 4
@TIOCSETC = common dso_local global i32 0, align 4
@TIOCSETN = common dso_local global i32 0, align 4
@FIONBIO = common dso_local global i32 0, align 4
@tout = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@ECHOCTL = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@ICRNL = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@IXANY = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@NOKERNINFO = common dso_local global i32 0, align 4
@ONLCR = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@OXTABS = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@SIGINFO = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGTSTP = common dso_local global i32 0, align 4
@TAB3 = common dso_local global i32 0, align 4
@TABDLY = common dso_local global i32 0, align 4
@TCSADRAIN = common dso_local global i32 0, align 4
@TCSANOW = common dso_local global i32 0, align 4
@VDSUSP = common dso_local global i64 0, align 8
@VEOL = common dso_local global i64 0, align 8
@VEOL2 = common dso_local global i64 0, align 8
@VLNEXT = common dso_local global i64 0, align 8
@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@ayt_status = common dso_local global i64 0, align 8
@crlf = common dso_local global i64 0, align 8
@escape = common dso_local global i64 0, align 8
@new_tc = common dso_local global %struct.termio zeroinitializer, align 8
@old_tc = common dso_local global %struct.termio zeroinitializer, align 8
@restartany = common dso_local global i64 0, align 8
@rlogin = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TerminalNewMode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tchars, align 8
  %4 = alloca %struct.ltchars, align 8
  %5 = alloca %struct.sgttyb, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @MODE_FORCE, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  store i32 %13, i32* @globalmode, align 4
  %14 = load i32, i32* @TerminalNewMode.prevmode, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %249

18:                                               ; preds = %1
  %19 = load i32, i32* @SYNCHing, align 4
  %20 = load i32, i32* @flushout, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @ttyflush(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %43

28:                                               ; preds = %25, %18
  br label %29

29:                                               ; preds = %40, %28
  %30 = load i32, i32* @SYNCHing, align 4
  %31 = load i32, i32* @flushout, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @ttyflush(i32 %32)
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = icmp sgt i32 %38, 1
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i1 [ true, %34 ], [ %39, %37 ]
  br i1 %41, label %29, label %42

42:                                               ; preds = %40
  br label %43

43:                                               ; preds = %42, %25
  %44 = load i32, i32* @TerminalNewMode.prevmode, align 4
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @MODE_FORCE, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  store i32 %48, i32* @TerminalNewMode.prevmode, align 4
  %49 = bitcast %struct.sgttyb* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 bitcast (%struct.sgttyb* @nttyb to i8*), i64 4, i1 false)
  %50 = bitcast %struct.tchars* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 bitcast (%struct.tchars* @ntc to i8*), i64 48, i1 false)
  %51 = bitcast %struct.ltchars* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 bitcast (%struct.ltchars* @nltc to i8*), i64 24, i1 false)
  %52 = load i32, i32* @olmode, align 4
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* @MODE_ECHO, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %43
  %58 = load i32, i32* @ECHO, align 4
  %59 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %5, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 4
  br label %68

62:                                               ; preds = %43
  %63 = load i32, i32* @ECHO, align 4
  %64 = xor i32 %63, -1
  %65 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %5, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %64
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %62, %57
  %69 = load i32, i32* %2, align 4
  %70 = load i32, i32* @MODE_FLOW, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i64, i64* @_POSIX_VDISABLE, align 8
  %75 = getelementptr inbounds %struct.tchars, %struct.tchars* %3, i32 0, i32 5
  store i64 %74, i64* %75, align 8
  %76 = load i64, i64* @_POSIX_VDISABLE, align 8
  %77 = getelementptr inbounds %struct.tchars, %struct.tchars* %3, i32 0, i32 4
  store i64 %76, i64* %77, align 8
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* @MODE_TRAPSIG, align 4
  %81 = and i32 %79, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %78
  %84 = load i64, i64* @_POSIX_VDISABLE, align 8
  %85 = getelementptr inbounds %struct.tchars, %struct.tchars* %3, i32 0, i32 3
  store i64 %84, i64* %85, align 8
  %86 = load i64, i64* @_POSIX_VDISABLE, align 8
  %87 = getelementptr inbounds %struct.tchars, %struct.tchars* %3, i32 0, i32 2
  store i64 %86, i64* %87, align 8
  %88 = load i64, i64* @_POSIX_VDISABLE, align 8
  %89 = getelementptr inbounds %struct.tchars, %struct.tchars* %3, i32 0, i32 1
  store i64 %88, i64* %89, align 8
  %90 = load i64, i64* @_POSIX_VDISABLE, align 8
  %91 = getelementptr inbounds %struct.ltchars, %struct.ltchars* %4, i32 0, i32 2
  store i64 %90, i64* %91, align 8
  %92 = load i64, i64* @_POSIX_VDISABLE, align 8
  %93 = getelementptr inbounds %struct.ltchars, %struct.ltchars* %4, i32 0, i32 0
  store i64 %92, i64* %93, align 8
  store i32 0, i32* @localchars, align 4
  br label %95

94:                                               ; preds = %78
  store i32 1, i32* @localchars, align 4
  br label %95

95:                                               ; preds = %94, %83
  %96 = load i32, i32* %2, align 4
  %97 = load i32, i32* @MODE_EDIT, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %95
  %101 = load i32, i32* @CBREAK, align 4
  %102 = xor i32 %101, -1
  %103 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %5, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, %102
  store i32 %105, i32* %103, align 4
  %106 = load i32, i32* @CRMOD, align 4
  %107 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %5, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %106
  store i32 %109, i32* %107, align 4
  br label %131

110:                                              ; preds = %95
  %111 = load i32, i32* @CBREAK, align 4
  %112 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %5, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %111
  store i32 %114, i32* %112, align 4
  %115 = load i32, i32* %2, align 4
  %116 = load i32, i32* @MODE_ECHO, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %110
  %120 = load i32, i32* @CRMOD, align 4
  %121 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %5, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %120
  store i32 %123, i32* %121, align 4
  br label %130

124:                                              ; preds = %110
  %125 = load i32, i32* @CRMOD, align 4
  %126 = xor i32 %125, -1
  %127 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %5, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, %126
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %124, %119
  br label %131

131:                                              ; preds = %130, %100
  %132 = load i32, i32* %2, align 4
  %133 = load i32, i32* @MODE_EDIT, align 4
  %134 = load i32, i32* @MODE_TRAPSIG, align 4
  %135 = or i32 %133, %134
  %136 = and i32 %132, %135
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load i64, i64* @_POSIX_VDISABLE, align 8
  %140 = getelementptr inbounds %struct.ltchars, %struct.ltchars* %4, i32 0, i32 1
  store i64 %139, i64* %140, align 8
  br label %141

141:                                              ; preds = %138, %131
  %142 = load i32, i32* %2, align 4
  %143 = load i32, i32* @MODE_SOFT_TAB, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load i32, i32* @XTABS, align 4
  %148 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %5, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %147
  store i32 %150, i32* %148, align 4
  br label %157

151:                                              ; preds = %141
  %152 = load i32, i32* @XTABS, align 4
  %153 = xor i32 %152, -1
  %154 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %5, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, %153
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %151, %146
  %158 = load i32, i32* %2, align 4
  %159 = load i32, i32* @MODE_LIT_ECHO, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = load i32, i32* @LCTLECH, align 4
  %164 = xor i32 %163, -1
  %165 = load i32, i32* %6, align 4
  %166 = and i32 %165, %164
  store i32 %166, i32* %6, align 4
  br label %171

167:                                              ; preds = %157
  %168 = load i32, i32* @LCTLECH, align 4
  %169 = load i32, i32* %6, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %167, %162
  %172 = load i32, i32* %2, align 4
  %173 = icmp eq i32 %172, -1
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  store i32 0, i32* %7, align 4
  br label %204

175:                                              ; preds = %171
  %176 = load i32, i32* %2, align 4
  %177 = load i32, i32* @MODE_OUTBIN, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %175
  %181 = load i32, i32* @LLITOUT, align 4
  %182 = load i32, i32* %6, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %6, align 4
  br label %189

184:                                              ; preds = %175
  %185 = load i32, i32* @LLITOUT, align 4
  %186 = xor i32 %185, -1
  %187 = load i32, i32* %6, align 4
  %188 = and i32 %187, %186
  store i32 %188, i32* %6, align 4
  br label %189

189:                                              ; preds = %184, %180
  %190 = load i32, i32* %2, align 4
  %191 = load i32, i32* @MODE_INBIN, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %189
  %195 = load i32, i32* @LPASS8, align 4
  %196 = load i32, i32* %6, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %6, align 4
  br label %203

198:                                              ; preds = %189
  %199 = load i32, i32* @LPASS8, align 4
  %200 = xor i32 %199, -1
  %201 = load i32, i32* %6, align 4
  %202 = and i32 %201, %200
  store i32 %202, i32* %6, align 4
  br label %203

203:                                              ; preds = %198, %194
  store i32 1, i32* %7, align 4
  br label %204

204:                                              ; preds = %203, %174
  %205 = load i32, i32* %2, align 4
  %206 = icmp ne i32 %205, -1
  br i1 %206, label %207, label %219

207:                                              ; preds = %204
  %208 = load i64, i64* @_POSIX_VDISABLE, align 8
  %209 = getelementptr inbounds %struct.ltchars, %struct.ltchars* %4, i32 0, i32 0
  store i64 %208, i64* %209, align 8
  %210 = getelementptr inbounds %struct.tchars, %struct.tchars* %3, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = load i64, i64* @_POSIX_VDISABLE, align 8
  %213 = inttoptr i64 %212 to i8*
  %214 = icmp eq i8* %211, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %207
  %216 = load i8*, i8** %9, align 8
  %217 = getelementptr inbounds %struct.tchars, %struct.tchars* %3, i32 0, i32 0
  store i8* %216, i8** %217, align 8
  br label %218

218:                                              ; preds = %215, %207
  br label %224

219:                                              ; preds = %204
  %220 = bitcast %struct.ltchars* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %220, i8* align 8 bitcast (%struct.ltchars* @oltc to i8*), i64 24, i1 false)
  %221 = bitcast %struct.tchars* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %221, i8* align 8 bitcast (%struct.tchars* @otc to i8*), i64 48, i1 false)
  %222 = bitcast %struct.sgttyb* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %222, i8* align 4 bitcast (%struct.sgttyb* @ottyb to i8*), i64 4, i1 false)
  %223 = load i32, i32* @olmode, align 4
  store i32 %223, i32* %6, align 4
  br label %224

224:                                              ; preds = %219, %218
  %225 = load i32, i32* @tin, align 4
  %226 = load i32, i32* @TIOCLSET, align 4
  %227 = bitcast i32* %6 to i8*
  %228 = call i32 @ioctl(i32 %225, i32 %226, i8* %227)
  %229 = load i32, i32* @tin, align 4
  %230 = load i32, i32* @TIOCSLTC, align 4
  %231 = bitcast %struct.ltchars* %4 to i8*
  %232 = call i32 @ioctl(i32 %229, i32 %230, i8* %231)
  %233 = load i32, i32* @tin, align 4
  %234 = load i32, i32* @TIOCSETC, align 4
  %235 = bitcast %struct.tchars* %3 to i8*
  %236 = call i32 @ioctl(i32 %233, i32 %234, i8* %235)
  %237 = load i32, i32* @tin, align 4
  %238 = load i32, i32* @TIOCSETN, align 4
  %239 = bitcast %struct.sgttyb* %5 to i8*
  %240 = call i32 @ioctl(i32 %237, i32 %238, i8* %239)
  %241 = load i32, i32* @tin, align 4
  %242 = load i32, i32* @FIONBIO, align 4
  %243 = bitcast i32* %7 to i8*
  %244 = call i32 @ioctl(i32 %241, i32 %242, i8* %243)
  %245 = load i32, i32* @tout, align 4
  %246 = load i32, i32* @FIONBIO, align 4
  %247 = bitcast i32* %7 to i8*
  %248 = call i32 @ioctl(i32 %245, i32 %246, i8* %247)
  br label %249

249:                                              ; preds = %224, %17
  ret void
}

declare dso_local i32 @ttyflush(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ioctl(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

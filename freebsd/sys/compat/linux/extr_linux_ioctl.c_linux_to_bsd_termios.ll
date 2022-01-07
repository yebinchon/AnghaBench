; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_linux_to_bsd_termios.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_linux_to_bsd_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_termios = type { i32, i32, i32, i32, i64* }
%struct.termios = type { i32, i64*, i32, i32, i32, i32, i32 }

@LINUX_IGNBRK = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@LINUX_BRKINT = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@LINUX_IGNPAR = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@LINUX_PARMRK = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@LINUX_INPCK = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@LINUX_ISTRIP = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@LINUX_INLCR = common dso_local global i32 0, align 4
@INLCR = common dso_local global i32 0, align 4
@LINUX_IGNCR = common dso_local global i32 0, align 4
@IGNCR = common dso_local global i32 0, align 4
@LINUX_ICRNL = common dso_local global i32 0, align 4
@ICRNL = common dso_local global i32 0, align 4
@LINUX_IXON = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@LINUX_IXANY = common dso_local global i32 0, align 4
@IXANY = common dso_local global i32 0, align 4
@LINUX_IXOFF = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@LINUX_IMAXBEL = common dso_local global i32 0, align 4
@IMAXBEL = common dso_local global i32 0, align 4
@LINUX_OPOST = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@LINUX_ONLCR = common dso_local global i32 0, align 4
@ONLCR = common dso_local global i32 0, align 4
@LINUX_XTABS = common dso_local global i32 0, align 4
@TAB3 = common dso_local global i32 0, align 4
@LINUX_CSIZE = common dso_local global i32 0, align 4
@LINUX_CSTOPB = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@LINUX_CREAD = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@LINUX_PARENB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@LINUX_PARODD = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@LINUX_HUPCL = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@LINUX_CLOCAL = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@LINUX_CRTSCTS = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@LINUX_ISIG = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@LINUX_ICANON = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@LINUX_ECHO = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@LINUX_ECHOE = common dso_local global i32 0, align 4
@ECHOE = common dso_local global i32 0, align 4
@LINUX_ECHOK = common dso_local global i32 0, align 4
@ECHOK = common dso_local global i32 0, align 4
@LINUX_ECHONL = common dso_local global i32 0, align 4
@ECHONL = common dso_local global i32 0, align 4
@LINUX_NOFLSH = common dso_local global i32 0, align 4
@NOFLSH = common dso_local global i32 0, align 4
@LINUX_TOSTOP = common dso_local global i32 0, align 4
@TOSTOP = common dso_local global i32 0, align 4
@LINUX_ECHOCTL = common dso_local global i32 0, align 4
@ECHOCTL = common dso_local global i32 0, align 4
@LINUX_ECHOPRT = common dso_local global i32 0, align 4
@ECHOPRT = common dso_local global i32 0, align 4
@LINUX_ECHOKE = common dso_local global i32 0, align 4
@ECHOKE = common dso_local global i32 0, align 4
@LINUX_FLUSHO = common dso_local global i32 0, align 4
@FLUSHO = common dso_local global i32 0, align 4
@LINUX_PENDIN = common dso_local global i32 0, align 4
@PENDIN = common dso_local global i32 0, align 4
@LINUX_IEXTEN = common dso_local global i32 0, align 4
@IEXTEN = common dso_local global i32 0, align 4
@NCCS = common dso_local global i32 0, align 4
@_POSIX_VDISABLE = common dso_local global i8* null, align 8
@LINUX_VINTR = common dso_local global i64 0, align 8
@VINTR = common dso_local global i64 0, align 8
@LINUX_VQUIT = common dso_local global i64 0, align 8
@VQUIT = common dso_local global i64 0, align 8
@LINUX_VERASE = common dso_local global i64 0, align 8
@VERASE = common dso_local global i64 0, align 8
@LINUX_VKILL = common dso_local global i64 0, align 8
@VKILL = common dso_local global i64 0, align 8
@LINUX_VEOF = common dso_local global i64 0, align 8
@VEOF = common dso_local global i64 0, align 8
@LINUX_VEOL = common dso_local global i64 0, align 8
@VEOL = common dso_local global i64 0, align 8
@LINUX_VMIN = common dso_local global i64 0, align 8
@VMIN = common dso_local global i64 0, align 8
@LINUX_VTIME = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@LINUX_VEOL2 = common dso_local global i64 0, align 8
@VEOL2 = common dso_local global i64 0, align 8
@LINUX_VSUSP = common dso_local global i64 0, align 8
@VSUSP = common dso_local global i64 0, align 8
@LINUX_VSTART = common dso_local global i64 0, align 8
@VSTART = common dso_local global i64 0, align 8
@LINUX_VSTOP = common dso_local global i64 0, align 8
@VSTOP = common dso_local global i64 0, align 8
@LINUX_VREPRINT = common dso_local global i64 0, align 8
@VREPRINT = common dso_local global i64 0, align 8
@LINUX_VDISCARD = common dso_local global i64 0, align 8
@VDISCARD = common dso_local global i64 0, align 8
@LINUX_VWERASE = common dso_local global i64 0, align 8
@VWERASE = common dso_local global i64 0, align 8
@LINUX_VLNEXT = common dso_local global i64 0, align 8
@VLNEXT = common dso_local global i64 0, align 8
@LINUX_POSIX_VDISABLE = common dso_local global i64 0, align 8
@LINUX_CBAUD = common dso_local global i32 0, align 4
@sptab = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.linux_termios*, %struct.termios*)* @linux_to_bsd_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linux_to_bsd_termios(%struct.linux_termios* %0, %struct.termios* %1) #0 {
  %3 = alloca %struct.linux_termios*, align 8
  %4 = alloca %struct.termios*, align 8
  %5 = alloca i32, align 4
  store %struct.linux_termios* %0, %struct.linux_termios** %3, align 8
  store %struct.termios* %1, %struct.termios** %4, align 8
  %6 = load %struct.termios*, %struct.termios** %4, align 8
  %7 = getelementptr inbounds %struct.termios, %struct.termios* %6, i32 0, i32 6
  store i32 0, i32* %7, align 8
  %8 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %9 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @LINUX_IGNBRK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* @IGNBRK, align 4
  %16 = load %struct.termios*, %struct.termios** %4, align 8
  %17 = getelementptr inbounds %struct.termios, %struct.termios* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  br label %20

20:                                               ; preds = %14, %2
  %21 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %22 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @LINUX_BRKINT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i32, i32* @BRKINT, align 4
  %29 = load %struct.termios*, %struct.termios** %4, align 8
  %30 = getelementptr inbounds %struct.termios, %struct.termios* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %27, %20
  %34 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %35 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @LINUX_IGNPAR, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i32, i32* @IGNPAR, align 4
  %42 = load %struct.termios*, %struct.termios** %4, align 8
  %43 = getelementptr inbounds %struct.termios, %struct.termios* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %40, %33
  %47 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %48 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @LINUX_PARMRK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load i32, i32* @PARMRK, align 4
  %55 = load %struct.termios*, %struct.termios** %4, align 8
  %56 = getelementptr inbounds %struct.termios, %struct.termios* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %53, %46
  %60 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %61 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @LINUX_INPCK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load i32, i32* @INPCK, align 4
  %68 = load %struct.termios*, %struct.termios** %4, align 8
  %69 = getelementptr inbounds %struct.termios, %struct.termios* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %66, %59
  %73 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %74 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @LINUX_ISTRIP, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load i32, i32* @ISTRIP, align 4
  %81 = load %struct.termios*, %struct.termios** %4, align 8
  %82 = getelementptr inbounds %struct.termios, %struct.termios* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %79, %72
  %86 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %87 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @LINUX_INLCR, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = load i32, i32* @INLCR, align 4
  %94 = load %struct.termios*, %struct.termios** %4, align 8
  %95 = getelementptr inbounds %struct.termios, %struct.termios* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %92, %85
  %99 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %100 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @LINUX_IGNCR, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load i32, i32* @IGNCR, align 4
  %107 = load %struct.termios*, %struct.termios** %4, align 8
  %108 = getelementptr inbounds %struct.termios, %struct.termios* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %105, %98
  %112 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %113 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @LINUX_ICRNL, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %111
  %119 = load i32, i32* @ICRNL, align 4
  %120 = load %struct.termios*, %struct.termios** %4, align 8
  %121 = getelementptr inbounds %struct.termios, %struct.termios* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %118, %111
  %125 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %126 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @LINUX_IXON, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %124
  %132 = load i32, i32* @IXON, align 4
  %133 = load %struct.termios*, %struct.termios** %4, align 8
  %134 = getelementptr inbounds %struct.termios, %struct.termios* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %131, %124
  %138 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %139 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @LINUX_IXANY, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %137
  %145 = load i32, i32* @IXANY, align 4
  %146 = load %struct.termios*, %struct.termios** %4, align 8
  %147 = getelementptr inbounds %struct.termios, %struct.termios* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %144, %137
  %151 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %152 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @LINUX_IXOFF, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %150
  %158 = load i32, i32* @IXOFF, align 4
  %159 = load %struct.termios*, %struct.termios** %4, align 8
  %160 = getelementptr inbounds %struct.termios, %struct.termios* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 8
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 8
  br label %163

163:                                              ; preds = %157, %150
  %164 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %165 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @LINUX_IMAXBEL, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %163
  %171 = load i32, i32* @IMAXBEL, align 4
  %172 = load %struct.termios*, %struct.termios** %4, align 8
  %173 = getelementptr inbounds %struct.termios, %struct.termios* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %170, %163
  %177 = load %struct.termios*, %struct.termios** %4, align 8
  %178 = getelementptr inbounds %struct.termios, %struct.termios* %177, i32 0, i32 5
  store i32 0, i32* %178, align 4
  %179 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %180 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @LINUX_OPOST, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %176
  %186 = load i32, i32* @OPOST, align 4
  %187 = load %struct.termios*, %struct.termios** %4, align 8
  %188 = getelementptr inbounds %struct.termios, %struct.termios* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 4
  br label %191

191:                                              ; preds = %185, %176
  %192 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %193 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @LINUX_ONLCR, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %191
  %199 = load i32, i32* @ONLCR, align 4
  %200 = load %struct.termios*, %struct.termios** %4, align 8
  %201 = getelementptr inbounds %struct.termios, %struct.termios* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, %199
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %198, %191
  %205 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %206 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @LINUX_XTABS, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %204
  %212 = load i32, i32* @TAB3, align 4
  %213 = load %struct.termios*, %struct.termios** %4, align 8
  %214 = getelementptr inbounds %struct.termios, %struct.termios* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %215, %212
  store i32 %216, i32* %214, align 4
  br label %217

217:                                              ; preds = %211, %204
  %218 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %219 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @LINUX_CSIZE, align 4
  %222 = and i32 %220, %221
  %223 = shl i32 %222, 4
  %224 = load %struct.termios*, %struct.termios** %4, align 8
  %225 = getelementptr inbounds %struct.termios, %struct.termios* %224, i32 0, i32 0
  store i32 %223, i32* %225, align 8
  %226 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %227 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @LINUX_CSTOPB, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %217
  %233 = load i32, i32* @CSTOPB, align 4
  %234 = load %struct.termios*, %struct.termios** %4, align 8
  %235 = getelementptr inbounds %struct.termios, %struct.termios* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = or i32 %236, %233
  store i32 %237, i32* %235, align 8
  br label %238

238:                                              ; preds = %232, %217
  %239 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %240 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @LINUX_CREAD, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %238
  %246 = load i32, i32* @CREAD, align 4
  %247 = load %struct.termios*, %struct.termios** %4, align 8
  %248 = getelementptr inbounds %struct.termios, %struct.termios* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = or i32 %249, %246
  store i32 %250, i32* %248, align 8
  br label %251

251:                                              ; preds = %245, %238
  %252 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %253 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @LINUX_PARENB, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %251
  %259 = load i32, i32* @PARENB, align 4
  %260 = load %struct.termios*, %struct.termios** %4, align 8
  %261 = getelementptr inbounds %struct.termios, %struct.termios* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = or i32 %262, %259
  store i32 %263, i32* %261, align 8
  br label %264

264:                                              ; preds = %258, %251
  %265 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %266 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @LINUX_PARODD, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %277

271:                                              ; preds = %264
  %272 = load i32, i32* @PARODD, align 4
  %273 = load %struct.termios*, %struct.termios** %4, align 8
  %274 = getelementptr inbounds %struct.termios, %struct.termios* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = or i32 %275, %272
  store i32 %276, i32* %274, align 8
  br label %277

277:                                              ; preds = %271, %264
  %278 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %279 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @LINUX_HUPCL, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %277
  %285 = load i32, i32* @HUPCL, align 4
  %286 = load %struct.termios*, %struct.termios** %4, align 8
  %287 = getelementptr inbounds %struct.termios, %struct.termios* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = or i32 %288, %285
  store i32 %289, i32* %287, align 8
  br label %290

290:                                              ; preds = %284, %277
  %291 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %292 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @LINUX_CLOCAL, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %303

297:                                              ; preds = %290
  %298 = load i32, i32* @CLOCAL, align 4
  %299 = load %struct.termios*, %struct.termios** %4, align 8
  %300 = getelementptr inbounds %struct.termios, %struct.termios* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = or i32 %301, %298
  store i32 %302, i32* %300, align 8
  br label %303

303:                                              ; preds = %297, %290
  %304 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %305 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* @LINUX_CRTSCTS, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %316

310:                                              ; preds = %303
  %311 = load i32, i32* @CRTSCTS, align 4
  %312 = load %struct.termios*, %struct.termios** %4, align 8
  %313 = getelementptr inbounds %struct.termios, %struct.termios* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = or i32 %314, %311
  store i32 %315, i32* %313, align 8
  br label %316

316:                                              ; preds = %310, %303
  %317 = load %struct.termios*, %struct.termios** %4, align 8
  %318 = getelementptr inbounds %struct.termios, %struct.termios* %317, i32 0, i32 4
  store i32 0, i32* %318, align 8
  %319 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %320 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @LINUX_ISIG, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %331

325:                                              ; preds = %316
  %326 = load i32, i32* @ISIG, align 4
  %327 = load %struct.termios*, %struct.termios** %4, align 8
  %328 = getelementptr inbounds %struct.termios, %struct.termios* %327, i32 0, i32 4
  %329 = load i32, i32* %328, align 8
  %330 = or i32 %329, %326
  store i32 %330, i32* %328, align 8
  br label %331

331:                                              ; preds = %325, %316
  %332 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %333 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* @LINUX_ICANON, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %344

338:                                              ; preds = %331
  %339 = load i32, i32* @ICANON, align 4
  %340 = load %struct.termios*, %struct.termios** %4, align 8
  %341 = getelementptr inbounds %struct.termios, %struct.termios* %340, i32 0, i32 4
  %342 = load i32, i32* %341, align 8
  %343 = or i32 %342, %339
  store i32 %343, i32* %341, align 8
  br label %344

344:                                              ; preds = %338, %331
  %345 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %346 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* @LINUX_ECHO, align 4
  %349 = and i32 %347, %348
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %357

351:                                              ; preds = %344
  %352 = load i32, i32* @ECHO, align 4
  %353 = load %struct.termios*, %struct.termios** %4, align 8
  %354 = getelementptr inbounds %struct.termios, %struct.termios* %353, i32 0, i32 4
  %355 = load i32, i32* %354, align 8
  %356 = or i32 %355, %352
  store i32 %356, i32* %354, align 8
  br label %357

357:                                              ; preds = %351, %344
  %358 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %359 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %358, i32 0, i32 3
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* @LINUX_ECHOE, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %370

364:                                              ; preds = %357
  %365 = load i32, i32* @ECHOE, align 4
  %366 = load %struct.termios*, %struct.termios** %4, align 8
  %367 = getelementptr inbounds %struct.termios, %struct.termios* %366, i32 0, i32 4
  %368 = load i32, i32* %367, align 8
  %369 = or i32 %368, %365
  store i32 %369, i32* %367, align 8
  br label %370

370:                                              ; preds = %364, %357
  %371 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %372 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %371, i32 0, i32 3
  %373 = load i32, i32* %372, align 4
  %374 = load i32, i32* @LINUX_ECHOK, align 4
  %375 = and i32 %373, %374
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %383

377:                                              ; preds = %370
  %378 = load i32, i32* @ECHOK, align 4
  %379 = load %struct.termios*, %struct.termios** %4, align 8
  %380 = getelementptr inbounds %struct.termios, %struct.termios* %379, i32 0, i32 4
  %381 = load i32, i32* %380, align 8
  %382 = or i32 %381, %378
  store i32 %382, i32* %380, align 8
  br label %383

383:                                              ; preds = %377, %370
  %384 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %385 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %384, i32 0, i32 3
  %386 = load i32, i32* %385, align 4
  %387 = load i32, i32* @LINUX_ECHONL, align 4
  %388 = and i32 %386, %387
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %396

390:                                              ; preds = %383
  %391 = load i32, i32* @ECHONL, align 4
  %392 = load %struct.termios*, %struct.termios** %4, align 8
  %393 = getelementptr inbounds %struct.termios, %struct.termios* %392, i32 0, i32 4
  %394 = load i32, i32* %393, align 8
  %395 = or i32 %394, %391
  store i32 %395, i32* %393, align 8
  br label %396

396:                                              ; preds = %390, %383
  %397 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %398 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %397, i32 0, i32 3
  %399 = load i32, i32* %398, align 4
  %400 = load i32, i32* @LINUX_NOFLSH, align 4
  %401 = and i32 %399, %400
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %409

403:                                              ; preds = %396
  %404 = load i32, i32* @NOFLSH, align 4
  %405 = load %struct.termios*, %struct.termios** %4, align 8
  %406 = getelementptr inbounds %struct.termios, %struct.termios* %405, i32 0, i32 4
  %407 = load i32, i32* %406, align 8
  %408 = or i32 %407, %404
  store i32 %408, i32* %406, align 8
  br label %409

409:                                              ; preds = %403, %396
  %410 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %411 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %410, i32 0, i32 3
  %412 = load i32, i32* %411, align 4
  %413 = load i32, i32* @LINUX_TOSTOP, align 4
  %414 = and i32 %412, %413
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %422

416:                                              ; preds = %409
  %417 = load i32, i32* @TOSTOP, align 4
  %418 = load %struct.termios*, %struct.termios** %4, align 8
  %419 = getelementptr inbounds %struct.termios, %struct.termios* %418, i32 0, i32 4
  %420 = load i32, i32* %419, align 8
  %421 = or i32 %420, %417
  store i32 %421, i32* %419, align 8
  br label %422

422:                                              ; preds = %416, %409
  %423 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %424 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %423, i32 0, i32 3
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* @LINUX_ECHOCTL, align 4
  %427 = and i32 %425, %426
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %435

429:                                              ; preds = %422
  %430 = load i32, i32* @ECHOCTL, align 4
  %431 = load %struct.termios*, %struct.termios** %4, align 8
  %432 = getelementptr inbounds %struct.termios, %struct.termios* %431, i32 0, i32 4
  %433 = load i32, i32* %432, align 8
  %434 = or i32 %433, %430
  store i32 %434, i32* %432, align 8
  br label %435

435:                                              ; preds = %429, %422
  %436 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %437 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %436, i32 0, i32 3
  %438 = load i32, i32* %437, align 4
  %439 = load i32, i32* @LINUX_ECHOPRT, align 4
  %440 = and i32 %438, %439
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %448

442:                                              ; preds = %435
  %443 = load i32, i32* @ECHOPRT, align 4
  %444 = load %struct.termios*, %struct.termios** %4, align 8
  %445 = getelementptr inbounds %struct.termios, %struct.termios* %444, i32 0, i32 4
  %446 = load i32, i32* %445, align 8
  %447 = or i32 %446, %443
  store i32 %447, i32* %445, align 8
  br label %448

448:                                              ; preds = %442, %435
  %449 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %450 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %449, i32 0, i32 3
  %451 = load i32, i32* %450, align 4
  %452 = load i32, i32* @LINUX_ECHOKE, align 4
  %453 = and i32 %451, %452
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %461

455:                                              ; preds = %448
  %456 = load i32, i32* @ECHOKE, align 4
  %457 = load %struct.termios*, %struct.termios** %4, align 8
  %458 = getelementptr inbounds %struct.termios, %struct.termios* %457, i32 0, i32 4
  %459 = load i32, i32* %458, align 8
  %460 = or i32 %459, %456
  store i32 %460, i32* %458, align 8
  br label %461

461:                                              ; preds = %455, %448
  %462 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %463 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %462, i32 0, i32 3
  %464 = load i32, i32* %463, align 4
  %465 = load i32, i32* @LINUX_FLUSHO, align 4
  %466 = and i32 %464, %465
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %474

468:                                              ; preds = %461
  %469 = load i32, i32* @FLUSHO, align 4
  %470 = load %struct.termios*, %struct.termios** %4, align 8
  %471 = getelementptr inbounds %struct.termios, %struct.termios* %470, i32 0, i32 4
  %472 = load i32, i32* %471, align 8
  %473 = or i32 %472, %469
  store i32 %473, i32* %471, align 8
  br label %474

474:                                              ; preds = %468, %461
  %475 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %476 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %475, i32 0, i32 3
  %477 = load i32, i32* %476, align 4
  %478 = load i32, i32* @LINUX_PENDIN, align 4
  %479 = and i32 %477, %478
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %487

481:                                              ; preds = %474
  %482 = load i32, i32* @PENDIN, align 4
  %483 = load %struct.termios*, %struct.termios** %4, align 8
  %484 = getelementptr inbounds %struct.termios, %struct.termios* %483, i32 0, i32 4
  %485 = load i32, i32* %484, align 8
  %486 = or i32 %485, %482
  store i32 %486, i32* %484, align 8
  br label %487

487:                                              ; preds = %481, %474
  %488 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %489 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %488, i32 0, i32 3
  %490 = load i32, i32* %489, align 4
  %491 = load i32, i32* @LINUX_IEXTEN, align 4
  %492 = and i32 %490, %491
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %500

494:                                              ; preds = %487
  %495 = load i32, i32* @IEXTEN, align 4
  %496 = load %struct.termios*, %struct.termios** %4, align 8
  %497 = getelementptr inbounds %struct.termios, %struct.termios* %496, i32 0, i32 4
  %498 = load i32, i32* %497, align 8
  %499 = or i32 %498, %495
  store i32 %499, i32* %497, align 8
  br label %500

500:                                              ; preds = %494, %487
  store i32 0, i32* %5, align 4
  br label %501

501:                                              ; preds = %514, %500
  %502 = load i32, i32* %5, align 4
  %503 = load i32, i32* @NCCS, align 4
  %504 = icmp slt i32 %502, %503
  br i1 %504, label %505, label %517

505:                                              ; preds = %501
  %506 = load i8*, i8** @_POSIX_VDISABLE, align 8
  %507 = ptrtoint i8* %506 to i64
  %508 = load %struct.termios*, %struct.termios** %4, align 8
  %509 = getelementptr inbounds %struct.termios, %struct.termios* %508, i32 0, i32 1
  %510 = load i64*, i64** %509, align 8
  %511 = load i32, i32* %5, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds i64, i64* %510, i64 %512
  store i64 %507, i64* %513, align 8
  br label %514

514:                                              ; preds = %505
  %515 = load i32, i32* %5, align 4
  %516 = add nsw i32 %515, 1
  store i32 %516, i32* %5, align 4
  br label %501

517:                                              ; preds = %501
  %518 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %519 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %518, i32 0, i32 4
  %520 = load i64*, i64** %519, align 8
  %521 = load i64, i64* @LINUX_VINTR, align 8
  %522 = getelementptr inbounds i64, i64* %520, i64 %521
  %523 = load i64, i64* %522, align 8
  %524 = load %struct.termios*, %struct.termios** %4, align 8
  %525 = getelementptr inbounds %struct.termios, %struct.termios* %524, i32 0, i32 1
  %526 = load i64*, i64** %525, align 8
  %527 = load i64, i64* @VINTR, align 8
  %528 = getelementptr inbounds i64, i64* %526, i64 %527
  store i64 %523, i64* %528, align 8
  %529 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %530 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %529, i32 0, i32 4
  %531 = load i64*, i64** %530, align 8
  %532 = load i64, i64* @LINUX_VQUIT, align 8
  %533 = getelementptr inbounds i64, i64* %531, i64 %532
  %534 = load i64, i64* %533, align 8
  %535 = load %struct.termios*, %struct.termios** %4, align 8
  %536 = getelementptr inbounds %struct.termios, %struct.termios* %535, i32 0, i32 1
  %537 = load i64*, i64** %536, align 8
  %538 = load i64, i64* @VQUIT, align 8
  %539 = getelementptr inbounds i64, i64* %537, i64 %538
  store i64 %534, i64* %539, align 8
  %540 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %541 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %540, i32 0, i32 4
  %542 = load i64*, i64** %541, align 8
  %543 = load i64, i64* @LINUX_VERASE, align 8
  %544 = getelementptr inbounds i64, i64* %542, i64 %543
  %545 = load i64, i64* %544, align 8
  %546 = load %struct.termios*, %struct.termios** %4, align 8
  %547 = getelementptr inbounds %struct.termios, %struct.termios* %546, i32 0, i32 1
  %548 = load i64*, i64** %547, align 8
  %549 = load i64, i64* @VERASE, align 8
  %550 = getelementptr inbounds i64, i64* %548, i64 %549
  store i64 %545, i64* %550, align 8
  %551 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %552 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %551, i32 0, i32 4
  %553 = load i64*, i64** %552, align 8
  %554 = load i64, i64* @LINUX_VKILL, align 8
  %555 = getelementptr inbounds i64, i64* %553, i64 %554
  %556 = load i64, i64* %555, align 8
  %557 = load %struct.termios*, %struct.termios** %4, align 8
  %558 = getelementptr inbounds %struct.termios, %struct.termios* %557, i32 0, i32 1
  %559 = load i64*, i64** %558, align 8
  %560 = load i64, i64* @VKILL, align 8
  %561 = getelementptr inbounds i64, i64* %559, i64 %560
  store i64 %556, i64* %561, align 8
  %562 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %563 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %562, i32 0, i32 4
  %564 = load i64*, i64** %563, align 8
  %565 = load i64, i64* @LINUX_VEOF, align 8
  %566 = getelementptr inbounds i64, i64* %564, i64 %565
  %567 = load i64, i64* %566, align 8
  %568 = load %struct.termios*, %struct.termios** %4, align 8
  %569 = getelementptr inbounds %struct.termios, %struct.termios* %568, i32 0, i32 1
  %570 = load i64*, i64** %569, align 8
  %571 = load i64, i64* @VEOF, align 8
  %572 = getelementptr inbounds i64, i64* %570, i64 %571
  store i64 %567, i64* %572, align 8
  %573 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %574 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %573, i32 0, i32 4
  %575 = load i64*, i64** %574, align 8
  %576 = load i64, i64* @LINUX_VEOL, align 8
  %577 = getelementptr inbounds i64, i64* %575, i64 %576
  %578 = load i64, i64* %577, align 8
  %579 = load %struct.termios*, %struct.termios** %4, align 8
  %580 = getelementptr inbounds %struct.termios, %struct.termios* %579, i32 0, i32 1
  %581 = load i64*, i64** %580, align 8
  %582 = load i64, i64* @VEOL, align 8
  %583 = getelementptr inbounds i64, i64* %581, i64 %582
  store i64 %578, i64* %583, align 8
  %584 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %585 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %584, i32 0, i32 4
  %586 = load i64*, i64** %585, align 8
  %587 = load i64, i64* @LINUX_VMIN, align 8
  %588 = getelementptr inbounds i64, i64* %586, i64 %587
  %589 = load i64, i64* %588, align 8
  %590 = load %struct.termios*, %struct.termios** %4, align 8
  %591 = getelementptr inbounds %struct.termios, %struct.termios* %590, i32 0, i32 1
  %592 = load i64*, i64** %591, align 8
  %593 = load i64, i64* @VMIN, align 8
  %594 = getelementptr inbounds i64, i64* %592, i64 %593
  store i64 %589, i64* %594, align 8
  %595 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %596 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %595, i32 0, i32 4
  %597 = load i64*, i64** %596, align 8
  %598 = load i64, i64* @LINUX_VTIME, align 8
  %599 = getelementptr inbounds i64, i64* %597, i64 %598
  %600 = load i64, i64* %599, align 8
  %601 = load %struct.termios*, %struct.termios** %4, align 8
  %602 = getelementptr inbounds %struct.termios, %struct.termios* %601, i32 0, i32 1
  %603 = load i64*, i64** %602, align 8
  %604 = load i64, i64* @VTIME, align 8
  %605 = getelementptr inbounds i64, i64* %603, i64 %604
  store i64 %600, i64* %605, align 8
  %606 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %607 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %606, i32 0, i32 4
  %608 = load i64*, i64** %607, align 8
  %609 = load i64, i64* @LINUX_VEOL2, align 8
  %610 = getelementptr inbounds i64, i64* %608, i64 %609
  %611 = load i64, i64* %610, align 8
  %612 = load %struct.termios*, %struct.termios** %4, align 8
  %613 = getelementptr inbounds %struct.termios, %struct.termios* %612, i32 0, i32 1
  %614 = load i64*, i64** %613, align 8
  %615 = load i64, i64* @VEOL2, align 8
  %616 = getelementptr inbounds i64, i64* %614, i64 %615
  store i64 %611, i64* %616, align 8
  %617 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %618 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %617, i32 0, i32 4
  %619 = load i64*, i64** %618, align 8
  %620 = load i64, i64* @LINUX_VSUSP, align 8
  %621 = getelementptr inbounds i64, i64* %619, i64 %620
  %622 = load i64, i64* %621, align 8
  %623 = load %struct.termios*, %struct.termios** %4, align 8
  %624 = getelementptr inbounds %struct.termios, %struct.termios* %623, i32 0, i32 1
  %625 = load i64*, i64** %624, align 8
  %626 = load i64, i64* @VSUSP, align 8
  %627 = getelementptr inbounds i64, i64* %625, i64 %626
  store i64 %622, i64* %627, align 8
  %628 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %629 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %628, i32 0, i32 4
  %630 = load i64*, i64** %629, align 8
  %631 = load i64, i64* @LINUX_VSTART, align 8
  %632 = getelementptr inbounds i64, i64* %630, i64 %631
  %633 = load i64, i64* %632, align 8
  %634 = load %struct.termios*, %struct.termios** %4, align 8
  %635 = getelementptr inbounds %struct.termios, %struct.termios* %634, i32 0, i32 1
  %636 = load i64*, i64** %635, align 8
  %637 = load i64, i64* @VSTART, align 8
  %638 = getelementptr inbounds i64, i64* %636, i64 %637
  store i64 %633, i64* %638, align 8
  %639 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %640 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %639, i32 0, i32 4
  %641 = load i64*, i64** %640, align 8
  %642 = load i64, i64* @LINUX_VSTOP, align 8
  %643 = getelementptr inbounds i64, i64* %641, i64 %642
  %644 = load i64, i64* %643, align 8
  %645 = load %struct.termios*, %struct.termios** %4, align 8
  %646 = getelementptr inbounds %struct.termios, %struct.termios* %645, i32 0, i32 1
  %647 = load i64*, i64** %646, align 8
  %648 = load i64, i64* @VSTOP, align 8
  %649 = getelementptr inbounds i64, i64* %647, i64 %648
  store i64 %644, i64* %649, align 8
  %650 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %651 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %650, i32 0, i32 4
  %652 = load i64*, i64** %651, align 8
  %653 = load i64, i64* @LINUX_VREPRINT, align 8
  %654 = getelementptr inbounds i64, i64* %652, i64 %653
  %655 = load i64, i64* %654, align 8
  %656 = load %struct.termios*, %struct.termios** %4, align 8
  %657 = getelementptr inbounds %struct.termios, %struct.termios* %656, i32 0, i32 1
  %658 = load i64*, i64** %657, align 8
  %659 = load i64, i64* @VREPRINT, align 8
  %660 = getelementptr inbounds i64, i64* %658, i64 %659
  store i64 %655, i64* %660, align 8
  %661 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %662 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %661, i32 0, i32 4
  %663 = load i64*, i64** %662, align 8
  %664 = load i64, i64* @LINUX_VDISCARD, align 8
  %665 = getelementptr inbounds i64, i64* %663, i64 %664
  %666 = load i64, i64* %665, align 8
  %667 = load %struct.termios*, %struct.termios** %4, align 8
  %668 = getelementptr inbounds %struct.termios, %struct.termios* %667, i32 0, i32 1
  %669 = load i64*, i64** %668, align 8
  %670 = load i64, i64* @VDISCARD, align 8
  %671 = getelementptr inbounds i64, i64* %669, i64 %670
  store i64 %666, i64* %671, align 8
  %672 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %673 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %672, i32 0, i32 4
  %674 = load i64*, i64** %673, align 8
  %675 = load i64, i64* @LINUX_VWERASE, align 8
  %676 = getelementptr inbounds i64, i64* %674, i64 %675
  %677 = load i64, i64* %676, align 8
  %678 = load %struct.termios*, %struct.termios** %4, align 8
  %679 = getelementptr inbounds %struct.termios, %struct.termios* %678, i32 0, i32 1
  %680 = load i64*, i64** %679, align 8
  %681 = load i64, i64* @VWERASE, align 8
  %682 = getelementptr inbounds i64, i64* %680, i64 %681
  store i64 %677, i64* %682, align 8
  %683 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %684 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %683, i32 0, i32 4
  %685 = load i64*, i64** %684, align 8
  %686 = load i64, i64* @LINUX_VLNEXT, align 8
  %687 = getelementptr inbounds i64, i64* %685, i64 %686
  %688 = load i64, i64* %687, align 8
  %689 = load %struct.termios*, %struct.termios** %4, align 8
  %690 = getelementptr inbounds %struct.termios, %struct.termios* %689, i32 0, i32 1
  %691 = load i64*, i64** %690, align 8
  %692 = load i64, i64* @VLNEXT, align 8
  %693 = getelementptr inbounds i64, i64* %691, i64 %692
  store i64 %688, i64* %693, align 8
  store i32 0, i32* %5, align 4
  br label %694

694:                                              ; preds = %728, %517
  %695 = load i32, i32* %5, align 4
  %696 = load i32, i32* @NCCS, align 4
  %697 = icmp slt i32 %695, %696
  br i1 %697, label %698, label %731

698:                                              ; preds = %694
  %699 = load i32, i32* %5, align 4
  %700 = sext i32 %699 to i64
  %701 = load i64, i64* @VMIN, align 8
  %702 = icmp ne i64 %700, %701
  br i1 %702, label %703, label %727

703:                                              ; preds = %698
  %704 = load i32, i32* %5, align 4
  %705 = sext i32 %704 to i64
  %706 = load i64, i64* @VTIME, align 8
  %707 = icmp ne i64 %705, %706
  br i1 %707, label %708, label %727

708:                                              ; preds = %703
  %709 = load %struct.termios*, %struct.termios** %4, align 8
  %710 = getelementptr inbounds %struct.termios, %struct.termios* %709, i32 0, i32 1
  %711 = load i64*, i64** %710, align 8
  %712 = load i32, i32* %5, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds i64, i64* %711, i64 %713
  %715 = load i64, i64* %714, align 8
  %716 = load i64, i64* @LINUX_POSIX_VDISABLE, align 8
  %717 = icmp eq i64 %715, %716
  br i1 %717, label %718, label %727

718:                                              ; preds = %708
  %719 = load i8*, i8** @_POSIX_VDISABLE, align 8
  %720 = ptrtoint i8* %719 to i64
  %721 = load %struct.termios*, %struct.termios** %4, align 8
  %722 = getelementptr inbounds %struct.termios, %struct.termios* %721, i32 0, i32 1
  %723 = load i64*, i64** %722, align 8
  %724 = load i32, i32* %5, align 4
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds i64, i64* %723, i64 %725
  store i64 %720, i64* %726, align 8
  br label %727

727:                                              ; preds = %718, %708, %703, %698
  br label %728

728:                                              ; preds = %727
  %729 = load i32, i32* %5, align 4
  %730 = add nsw i32 %729, 1
  store i32 %730, i32* %5, align 4
  br label %694

731:                                              ; preds = %694
  %732 = load %struct.linux_termios*, %struct.linux_termios** %3, align 8
  %733 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %732, i32 0, i32 2
  %734 = load i32, i32* %733, align 8
  %735 = load i32, i32* @LINUX_CBAUD, align 4
  %736 = and i32 %734, %735
  %737 = load i32, i32* @sptab, align 4
  %738 = call i32 @linux_to_bsd_speed(i32 %736, i32 %737)
  %739 = load %struct.termios*, %struct.termios** %4, align 8
  %740 = getelementptr inbounds %struct.termios, %struct.termios* %739, i32 0, i32 2
  store i32 %738, i32* %740, align 8
  %741 = load %struct.termios*, %struct.termios** %4, align 8
  %742 = getelementptr inbounds %struct.termios, %struct.termios* %741, i32 0, i32 3
  store i32 %738, i32* %742, align 4
  ret void
}

declare dso_local i32 @linux_to_bsd_speed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

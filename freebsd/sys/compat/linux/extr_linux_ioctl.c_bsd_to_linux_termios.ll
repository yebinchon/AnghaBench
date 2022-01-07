; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_bsd_to_linux_termios.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_bsd_to_linux_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32, i32, i32, i32, i64*, i32 }
%struct.linux_termios = type { i32, i64*, i64, i32, i32, i32 }

@IGNBRK = common dso_local global i32 0, align 4
@LINUX_IGNBRK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@LINUX_BRKINT = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@LINUX_IGNPAR = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@LINUX_PARMRK = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@LINUX_INPCK = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@LINUX_ISTRIP = common dso_local global i32 0, align 4
@INLCR = common dso_local global i32 0, align 4
@LINUX_INLCR = common dso_local global i32 0, align 4
@IGNCR = common dso_local global i32 0, align 4
@LINUX_IGNCR = common dso_local global i32 0, align 4
@ICRNL = common dso_local global i32 0, align 4
@LINUX_ICRNL = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@LINUX_IXON = common dso_local global i32 0, align 4
@IXANY = common dso_local global i32 0, align 4
@LINUX_IXANY = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@LINUX_IXOFF = common dso_local global i32 0, align 4
@IMAXBEL = common dso_local global i32 0, align 4
@LINUX_IMAXBEL = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@LINUX_OPOST = common dso_local global i32 0, align 4
@ONLCR = common dso_local global i32 0, align 4
@LINUX_ONLCR = common dso_local global i32 0, align 4
@TAB3 = common dso_local global i32 0, align 4
@LINUX_XTABS = common dso_local global i32 0, align 4
@sptab = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@LINUX_CSTOPB = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@LINUX_CREAD = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@LINUX_PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@LINUX_PARODD = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@LINUX_HUPCL = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@LINUX_CLOCAL = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@LINUX_CRTSCTS = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@LINUX_ISIG = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@LINUX_ICANON = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@LINUX_ECHO = common dso_local global i32 0, align 4
@ECHOE = common dso_local global i32 0, align 4
@LINUX_ECHOE = common dso_local global i32 0, align 4
@ECHOK = common dso_local global i32 0, align 4
@LINUX_ECHOK = common dso_local global i32 0, align 4
@ECHONL = common dso_local global i32 0, align 4
@LINUX_ECHONL = common dso_local global i32 0, align 4
@NOFLSH = common dso_local global i32 0, align 4
@LINUX_NOFLSH = common dso_local global i32 0, align 4
@TOSTOP = common dso_local global i32 0, align 4
@LINUX_TOSTOP = common dso_local global i32 0, align 4
@ECHOCTL = common dso_local global i32 0, align 4
@LINUX_ECHOCTL = common dso_local global i32 0, align 4
@ECHOPRT = common dso_local global i32 0, align 4
@LINUX_ECHOPRT = common dso_local global i32 0, align 4
@ECHOKE = common dso_local global i32 0, align 4
@LINUX_ECHOKE = common dso_local global i32 0, align 4
@FLUSHO = common dso_local global i32 0, align 4
@LINUX_FLUSHO = common dso_local global i32 0, align 4
@PENDIN = common dso_local global i32 0, align 4
@LINUX_PENDIN = common dso_local global i32 0, align 4
@IEXTEN = common dso_local global i32 0, align 4
@LINUX_IEXTEN = common dso_local global i32 0, align 4
@LINUX_NCCS = common dso_local global i32 0, align 4
@LINUX_POSIX_VDISABLE = common dso_local global i8* null, align 8
@VINTR = common dso_local global i64 0, align 8
@LINUX_VINTR = common dso_local global i64 0, align 8
@VQUIT = common dso_local global i64 0, align 8
@LINUX_VQUIT = common dso_local global i64 0, align 8
@VERASE = common dso_local global i64 0, align 8
@LINUX_VERASE = common dso_local global i64 0, align 8
@VKILL = common dso_local global i64 0, align 8
@LINUX_VKILL = common dso_local global i64 0, align 8
@VEOF = common dso_local global i64 0, align 8
@LINUX_VEOF = common dso_local global i64 0, align 8
@VEOL = common dso_local global i64 0, align 8
@LINUX_VEOL = common dso_local global i64 0, align 8
@VMIN = common dso_local global i64 0, align 8
@LINUX_VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@LINUX_VTIME = common dso_local global i64 0, align 8
@VEOL2 = common dso_local global i64 0, align 8
@LINUX_VEOL2 = common dso_local global i64 0, align 8
@VSUSP = common dso_local global i64 0, align 8
@LINUX_VSUSP = common dso_local global i64 0, align 8
@VSTART = common dso_local global i64 0, align 8
@LINUX_VSTART = common dso_local global i64 0, align 8
@VSTOP = common dso_local global i64 0, align 8
@LINUX_VSTOP = common dso_local global i64 0, align 8
@VREPRINT = common dso_local global i64 0, align 8
@LINUX_VREPRINT = common dso_local global i64 0, align 8
@VDISCARD = common dso_local global i64 0, align 8
@LINUX_VDISCARD = common dso_local global i64 0, align 8
@VWERASE = common dso_local global i64 0, align 8
@LINUX_VWERASE = common dso_local global i64 0, align 8
@VLNEXT = common dso_local global i64 0, align 8
@LINUX_VLNEXT = common dso_local global i64 0, align 8
@_POSIX_VDISABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termios*, %struct.linux_termios*)* @bsd_to_linux_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bsd_to_linux_termios(%struct.termios* %0, %struct.linux_termios* %1) #0 {
  %3 = alloca %struct.termios*, align 8
  %4 = alloca %struct.linux_termios*, align 8
  %5 = alloca i32, align 4
  store %struct.termios* %0, %struct.termios** %3, align 8
  store %struct.linux_termios* %1, %struct.linux_termios** %4, align 8
  %6 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %7 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %6, i32 0, i32 5
  store i32 0, i32* %7, align 8
  %8 = load %struct.termios*, %struct.termios** %3, align 8
  %9 = getelementptr inbounds %struct.termios, %struct.termios* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @IGNBRK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* @LINUX_IGNBRK, align 4
  %16 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %17 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  br label %20

20:                                               ; preds = %14, %2
  %21 = load %struct.termios*, %struct.termios** %3, align 8
  %22 = getelementptr inbounds %struct.termios, %struct.termios* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BRKINT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i32, i32* @LINUX_BRKINT, align 4
  %29 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %30 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %27, %20
  %34 = load %struct.termios*, %struct.termios** %3, align 8
  %35 = getelementptr inbounds %struct.termios, %struct.termios* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IGNPAR, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i32, i32* @LINUX_IGNPAR, align 4
  %42 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %43 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %40, %33
  %47 = load %struct.termios*, %struct.termios** %3, align 8
  %48 = getelementptr inbounds %struct.termios, %struct.termios* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @PARMRK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load i32, i32* @LINUX_PARMRK, align 4
  %55 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %56 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %53, %46
  %60 = load %struct.termios*, %struct.termios** %3, align 8
  %61 = getelementptr inbounds %struct.termios, %struct.termios* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @INPCK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load i32, i32* @LINUX_INPCK, align 4
  %68 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %69 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %66, %59
  %73 = load %struct.termios*, %struct.termios** %3, align 8
  %74 = getelementptr inbounds %struct.termios, %struct.termios* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @ISTRIP, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load i32, i32* @LINUX_ISTRIP, align 4
  %81 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %82 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %79, %72
  %86 = load %struct.termios*, %struct.termios** %3, align 8
  %87 = getelementptr inbounds %struct.termios, %struct.termios* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @INLCR, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = load i32, i32* @LINUX_INLCR, align 4
  %94 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %95 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %92, %85
  %99 = load %struct.termios*, %struct.termios** %3, align 8
  %100 = getelementptr inbounds %struct.termios, %struct.termios* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @IGNCR, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load i32, i32* @LINUX_IGNCR, align 4
  %107 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %108 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %105, %98
  %112 = load %struct.termios*, %struct.termios** %3, align 8
  %113 = getelementptr inbounds %struct.termios, %struct.termios* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @ICRNL, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %111
  %119 = load i32, i32* @LINUX_ICRNL, align 4
  %120 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %121 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %118, %111
  %125 = load %struct.termios*, %struct.termios** %3, align 8
  %126 = getelementptr inbounds %struct.termios, %struct.termios* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @IXON, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %124
  %132 = load i32, i32* @LINUX_IXON, align 4
  %133 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %134 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %131, %124
  %138 = load %struct.termios*, %struct.termios** %3, align 8
  %139 = getelementptr inbounds %struct.termios, %struct.termios* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @IXANY, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %137
  %145 = load i32, i32* @LINUX_IXANY, align 4
  %146 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %147 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %144, %137
  %151 = load %struct.termios*, %struct.termios** %3, align 8
  %152 = getelementptr inbounds %struct.termios, %struct.termios* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @IXOFF, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %150
  %158 = load i32, i32* @LINUX_IXOFF, align 4
  %159 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %160 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 8
  br label %163

163:                                              ; preds = %157, %150
  %164 = load %struct.termios*, %struct.termios** %3, align 8
  %165 = getelementptr inbounds %struct.termios, %struct.termios* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @IMAXBEL, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %163
  %171 = load i32, i32* @LINUX_IMAXBEL, align 4
  %172 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %173 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %170, %163
  %177 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %178 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %177, i32 0, i32 4
  store i32 0, i32* %178, align 4
  %179 = load %struct.termios*, %struct.termios** %3, align 8
  %180 = getelementptr inbounds %struct.termios, %struct.termios* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @OPOST, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %176
  %186 = load i32, i32* @LINUX_OPOST, align 4
  %187 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %188 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 4
  br label %191

191:                                              ; preds = %185, %176
  %192 = load %struct.termios*, %struct.termios** %3, align 8
  %193 = getelementptr inbounds %struct.termios, %struct.termios* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @ONLCR, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %191
  %199 = load i32, i32* @LINUX_ONLCR, align 4
  %200 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %201 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, %199
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %198, %191
  %205 = load %struct.termios*, %struct.termios** %3, align 8
  %206 = getelementptr inbounds %struct.termios, %struct.termios* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @TAB3, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %204
  %212 = load i32, i32* @LINUX_XTABS, align 4
  %213 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %214 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %215, %212
  store i32 %216, i32* %214, align 4
  br label %217

217:                                              ; preds = %211, %204
  %218 = load %struct.termios*, %struct.termios** %3, align 8
  %219 = getelementptr inbounds %struct.termios, %struct.termios* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @sptab, align 4
  %222 = call i32 @bsd_to_linux_speed(i32 %220, i32 %221)
  %223 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %224 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 8
  %225 = load %struct.termios*, %struct.termios** %3, align 8
  %226 = getelementptr inbounds %struct.termios, %struct.termios* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @CSIZE, align 4
  %229 = and i32 %227, %228
  %230 = ashr i32 %229, 4
  %231 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %232 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = or i32 %233, %230
  store i32 %234, i32* %232, align 8
  %235 = load %struct.termios*, %struct.termios** %3, align 8
  %236 = getelementptr inbounds %struct.termios, %struct.termios* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @CSTOPB, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %217
  %242 = load i32, i32* @LINUX_CSTOPB, align 4
  %243 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %244 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = or i32 %245, %242
  store i32 %246, i32* %244, align 8
  br label %247

247:                                              ; preds = %241, %217
  %248 = load %struct.termios*, %struct.termios** %3, align 8
  %249 = getelementptr inbounds %struct.termios, %struct.termios* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @CREAD, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %247
  %255 = load i32, i32* @LINUX_CREAD, align 4
  %256 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %257 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = or i32 %258, %255
  store i32 %259, i32* %257, align 8
  br label %260

260:                                              ; preds = %254, %247
  %261 = load %struct.termios*, %struct.termios** %3, align 8
  %262 = getelementptr inbounds %struct.termios, %struct.termios* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @PARENB, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %260
  %268 = load i32, i32* @LINUX_PARENB, align 4
  %269 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %270 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = or i32 %271, %268
  store i32 %272, i32* %270, align 8
  br label %273

273:                                              ; preds = %267, %260
  %274 = load %struct.termios*, %struct.termios** %3, align 8
  %275 = getelementptr inbounds %struct.termios, %struct.termios* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @PARODD, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %273
  %281 = load i32, i32* @LINUX_PARODD, align 4
  %282 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %283 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = or i32 %284, %281
  store i32 %285, i32* %283, align 8
  br label %286

286:                                              ; preds = %280, %273
  %287 = load %struct.termios*, %struct.termios** %3, align 8
  %288 = getelementptr inbounds %struct.termios, %struct.termios* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @HUPCL, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %286
  %294 = load i32, i32* @LINUX_HUPCL, align 4
  %295 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %296 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = or i32 %297, %294
  store i32 %298, i32* %296, align 8
  br label %299

299:                                              ; preds = %293, %286
  %300 = load %struct.termios*, %struct.termios** %3, align 8
  %301 = getelementptr inbounds %struct.termios, %struct.termios* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @CLOCAL, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %312

306:                                              ; preds = %299
  %307 = load i32, i32* @LINUX_CLOCAL, align 4
  %308 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %309 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = or i32 %310, %307
  store i32 %311, i32* %309, align 8
  br label %312

312:                                              ; preds = %306, %299
  %313 = load %struct.termios*, %struct.termios** %3, align 8
  %314 = getelementptr inbounds %struct.termios, %struct.termios* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* @CRTSCTS, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %325

319:                                              ; preds = %312
  %320 = load i32, i32* @LINUX_CRTSCTS, align 4
  %321 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %322 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = or i32 %323, %320
  store i32 %324, i32* %322, align 8
  br label %325

325:                                              ; preds = %319, %312
  %326 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %327 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %326, i32 0, i32 3
  store i32 0, i32* %327, align 8
  %328 = load %struct.termios*, %struct.termios** %3, align 8
  %329 = getelementptr inbounds %struct.termios, %struct.termios* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* @ISIG, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %340

334:                                              ; preds = %325
  %335 = load i32, i32* @LINUX_ISIG, align 4
  %336 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %337 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 8
  %339 = or i32 %338, %335
  store i32 %339, i32* %337, align 8
  br label %340

340:                                              ; preds = %334, %325
  %341 = load %struct.termios*, %struct.termios** %3, align 8
  %342 = getelementptr inbounds %struct.termios, %struct.termios* %341, i32 0, i32 3
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* @ICANON, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %353

347:                                              ; preds = %340
  %348 = load i32, i32* @LINUX_ICANON, align 4
  %349 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %350 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %349, i32 0, i32 3
  %351 = load i32, i32* %350, align 8
  %352 = or i32 %351, %348
  store i32 %352, i32* %350, align 8
  br label %353

353:                                              ; preds = %347, %340
  %354 = load %struct.termios*, %struct.termios** %3, align 8
  %355 = getelementptr inbounds %struct.termios, %struct.termios* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* @ECHO, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %366

360:                                              ; preds = %353
  %361 = load i32, i32* @LINUX_ECHO, align 4
  %362 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %363 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %362, i32 0, i32 3
  %364 = load i32, i32* %363, align 8
  %365 = or i32 %364, %361
  store i32 %365, i32* %363, align 8
  br label %366

366:                                              ; preds = %360, %353
  %367 = load %struct.termios*, %struct.termios** %3, align 8
  %368 = getelementptr inbounds %struct.termios, %struct.termios* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* @ECHOE, align 4
  %371 = and i32 %369, %370
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %379

373:                                              ; preds = %366
  %374 = load i32, i32* @LINUX_ECHOE, align 4
  %375 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %376 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %375, i32 0, i32 3
  %377 = load i32, i32* %376, align 8
  %378 = or i32 %377, %374
  store i32 %378, i32* %376, align 8
  br label %379

379:                                              ; preds = %373, %366
  %380 = load %struct.termios*, %struct.termios** %3, align 8
  %381 = getelementptr inbounds %struct.termios, %struct.termios* %380, i32 0, i32 3
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* @ECHOK, align 4
  %384 = and i32 %382, %383
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %392

386:                                              ; preds = %379
  %387 = load i32, i32* @LINUX_ECHOK, align 4
  %388 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %389 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %388, i32 0, i32 3
  %390 = load i32, i32* %389, align 8
  %391 = or i32 %390, %387
  store i32 %391, i32* %389, align 8
  br label %392

392:                                              ; preds = %386, %379
  %393 = load %struct.termios*, %struct.termios** %3, align 8
  %394 = getelementptr inbounds %struct.termios, %struct.termios* %393, i32 0, i32 3
  %395 = load i32, i32* %394, align 4
  %396 = load i32, i32* @ECHONL, align 4
  %397 = and i32 %395, %396
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %405

399:                                              ; preds = %392
  %400 = load i32, i32* @LINUX_ECHONL, align 4
  %401 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %402 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %401, i32 0, i32 3
  %403 = load i32, i32* %402, align 8
  %404 = or i32 %403, %400
  store i32 %404, i32* %402, align 8
  br label %405

405:                                              ; preds = %399, %392
  %406 = load %struct.termios*, %struct.termios** %3, align 8
  %407 = getelementptr inbounds %struct.termios, %struct.termios* %406, i32 0, i32 3
  %408 = load i32, i32* %407, align 4
  %409 = load i32, i32* @NOFLSH, align 4
  %410 = and i32 %408, %409
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %418

412:                                              ; preds = %405
  %413 = load i32, i32* @LINUX_NOFLSH, align 4
  %414 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %415 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %414, i32 0, i32 3
  %416 = load i32, i32* %415, align 8
  %417 = or i32 %416, %413
  store i32 %417, i32* %415, align 8
  br label %418

418:                                              ; preds = %412, %405
  %419 = load %struct.termios*, %struct.termios** %3, align 8
  %420 = getelementptr inbounds %struct.termios, %struct.termios* %419, i32 0, i32 3
  %421 = load i32, i32* %420, align 4
  %422 = load i32, i32* @TOSTOP, align 4
  %423 = and i32 %421, %422
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %431

425:                                              ; preds = %418
  %426 = load i32, i32* @LINUX_TOSTOP, align 4
  %427 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %428 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %427, i32 0, i32 3
  %429 = load i32, i32* %428, align 8
  %430 = or i32 %429, %426
  store i32 %430, i32* %428, align 8
  br label %431

431:                                              ; preds = %425, %418
  %432 = load %struct.termios*, %struct.termios** %3, align 8
  %433 = getelementptr inbounds %struct.termios, %struct.termios* %432, i32 0, i32 3
  %434 = load i32, i32* %433, align 4
  %435 = load i32, i32* @ECHOCTL, align 4
  %436 = and i32 %434, %435
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %444

438:                                              ; preds = %431
  %439 = load i32, i32* @LINUX_ECHOCTL, align 4
  %440 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %441 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %440, i32 0, i32 3
  %442 = load i32, i32* %441, align 8
  %443 = or i32 %442, %439
  store i32 %443, i32* %441, align 8
  br label %444

444:                                              ; preds = %438, %431
  %445 = load %struct.termios*, %struct.termios** %3, align 8
  %446 = getelementptr inbounds %struct.termios, %struct.termios* %445, i32 0, i32 3
  %447 = load i32, i32* %446, align 4
  %448 = load i32, i32* @ECHOPRT, align 4
  %449 = and i32 %447, %448
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %457

451:                                              ; preds = %444
  %452 = load i32, i32* @LINUX_ECHOPRT, align 4
  %453 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %454 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %453, i32 0, i32 3
  %455 = load i32, i32* %454, align 8
  %456 = or i32 %455, %452
  store i32 %456, i32* %454, align 8
  br label %457

457:                                              ; preds = %451, %444
  %458 = load %struct.termios*, %struct.termios** %3, align 8
  %459 = getelementptr inbounds %struct.termios, %struct.termios* %458, i32 0, i32 3
  %460 = load i32, i32* %459, align 4
  %461 = load i32, i32* @ECHOKE, align 4
  %462 = and i32 %460, %461
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %470

464:                                              ; preds = %457
  %465 = load i32, i32* @LINUX_ECHOKE, align 4
  %466 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %467 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %466, i32 0, i32 3
  %468 = load i32, i32* %467, align 8
  %469 = or i32 %468, %465
  store i32 %469, i32* %467, align 8
  br label %470

470:                                              ; preds = %464, %457
  %471 = load %struct.termios*, %struct.termios** %3, align 8
  %472 = getelementptr inbounds %struct.termios, %struct.termios* %471, i32 0, i32 3
  %473 = load i32, i32* %472, align 4
  %474 = load i32, i32* @FLUSHO, align 4
  %475 = and i32 %473, %474
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %483

477:                                              ; preds = %470
  %478 = load i32, i32* @LINUX_FLUSHO, align 4
  %479 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %480 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %479, i32 0, i32 3
  %481 = load i32, i32* %480, align 8
  %482 = or i32 %481, %478
  store i32 %482, i32* %480, align 8
  br label %483

483:                                              ; preds = %477, %470
  %484 = load %struct.termios*, %struct.termios** %3, align 8
  %485 = getelementptr inbounds %struct.termios, %struct.termios* %484, i32 0, i32 3
  %486 = load i32, i32* %485, align 4
  %487 = load i32, i32* @PENDIN, align 4
  %488 = and i32 %486, %487
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %496

490:                                              ; preds = %483
  %491 = load i32, i32* @LINUX_PENDIN, align 4
  %492 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %493 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %492, i32 0, i32 3
  %494 = load i32, i32* %493, align 8
  %495 = or i32 %494, %491
  store i32 %495, i32* %493, align 8
  br label %496

496:                                              ; preds = %490, %483
  %497 = load %struct.termios*, %struct.termios** %3, align 8
  %498 = getelementptr inbounds %struct.termios, %struct.termios* %497, i32 0, i32 3
  %499 = load i32, i32* %498, align 4
  %500 = load i32, i32* @IEXTEN, align 4
  %501 = and i32 %499, %500
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %509

503:                                              ; preds = %496
  %504 = load i32, i32* @LINUX_IEXTEN, align 4
  %505 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %506 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %505, i32 0, i32 3
  %507 = load i32, i32* %506, align 8
  %508 = or i32 %507, %504
  store i32 %508, i32* %506, align 8
  br label %509

509:                                              ; preds = %503, %496
  store i32 0, i32* %5, align 4
  br label %510

510:                                              ; preds = %523, %509
  %511 = load i32, i32* %5, align 4
  %512 = load i32, i32* @LINUX_NCCS, align 4
  %513 = icmp slt i32 %511, %512
  br i1 %513, label %514, label %526

514:                                              ; preds = %510
  %515 = load i8*, i8** @LINUX_POSIX_VDISABLE, align 8
  %516 = ptrtoint i8* %515 to i64
  %517 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %518 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %517, i32 0, i32 1
  %519 = load i64*, i64** %518, align 8
  %520 = load i32, i32* %5, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds i64, i64* %519, i64 %521
  store i64 %516, i64* %522, align 8
  br label %523

523:                                              ; preds = %514
  %524 = load i32, i32* %5, align 4
  %525 = add nsw i32 %524, 1
  store i32 %525, i32* %5, align 4
  br label %510

526:                                              ; preds = %510
  %527 = load %struct.termios*, %struct.termios** %3, align 8
  %528 = getelementptr inbounds %struct.termios, %struct.termios* %527, i32 0, i32 4
  %529 = load i64*, i64** %528, align 8
  %530 = load i64, i64* @VINTR, align 8
  %531 = getelementptr inbounds i64, i64* %529, i64 %530
  %532 = load i64, i64* %531, align 8
  %533 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %534 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %533, i32 0, i32 1
  %535 = load i64*, i64** %534, align 8
  %536 = load i64, i64* @LINUX_VINTR, align 8
  %537 = getelementptr inbounds i64, i64* %535, i64 %536
  store i64 %532, i64* %537, align 8
  %538 = load %struct.termios*, %struct.termios** %3, align 8
  %539 = getelementptr inbounds %struct.termios, %struct.termios* %538, i32 0, i32 4
  %540 = load i64*, i64** %539, align 8
  %541 = load i64, i64* @VQUIT, align 8
  %542 = getelementptr inbounds i64, i64* %540, i64 %541
  %543 = load i64, i64* %542, align 8
  %544 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %545 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %544, i32 0, i32 1
  %546 = load i64*, i64** %545, align 8
  %547 = load i64, i64* @LINUX_VQUIT, align 8
  %548 = getelementptr inbounds i64, i64* %546, i64 %547
  store i64 %543, i64* %548, align 8
  %549 = load %struct.termios*, %struct.termios** %3, align 8
  %550 = getelementptr inbounds %struct.termios, %struct.termios* %549, i32 0, i32 4
  %551 = load i64*, i64** %550, align 8
  %552 = load i64, i64* @VERASE, align 8
  %553 = getelementptr inbounds i64, i64* %551, i64 %552
  %554 = load i64, i64* %553, align 8
  %555 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %556 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %555, i32 0, i32 1
  %557 = load i64*, i64** %556, align 8
  %558 = load i64, i64* @LINUX_VERASE, align 8
  %559 = getelementptr inbounds i64, i64* %557, i64 %558
  store i64 %554, i64* %559, align 8
  %560 = load %struct.termios*, %struct.termios** %3, align 8
  %561 = getelementptr inbounds %struct.termios, %struct.termios* %560, i32 0, i32 4
  %562 = load i64*, i64** %561, align 8
  %563 = load i64, i64* @VKILL, align 8
  %564 = getelementptr inbounds i64, i64* %562, i64 %563
  %565 = load i64, i64* %564, align 8
  %566 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %567 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %566, i32 0, i32 1
  %568 = load i64*, i64** %567, align 8
  %569 = load i64, i64* @LINUX_VKILL, align 8
  %570 = getelementptr inbounds i64, i64* %568, i64 %569
  store i64 %565, i64* %570, align 8
  %571 = load %struct.termios*, %struct.termios** %3, align 8
  %572 = getelementptr inbounds %struct.termios, %struct.termios* %571, i32 0, i32 4
  %573 = load i64*, i64** %572, align 8
  %574 = load i64, i64* @VEOF, align 8
  %575 = getelementptr inbounds i64, i64* %573, i64 %574
  %576 = load i64, i64* %575, align 8
  %577 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %578 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %577, i32 0, i32 1
  %579 = load i64*, i64** %578, align 8
  %580 = load i64, i64* @LINUX_VEOF, align 8
  %581 = getelementptr inbounds i64, i64* %579, i64 %580
  store i64 %576, i64* %581, align 8
  %582 = load %struct.termios*, %struct.termios** %3, align 8
  %583 = getelementptr inbounds %struct.termios, %struct.termios* %582, i32 0, i32 4
  %584 = load i64*, i64** %583, align 8
  %585 = load i64, i64* @VEOL, align 8
  %586 = getelementptr inbounds i64, i64* %584, i64 %585
  %587 = load i64, i64* %586, align 8
  %588 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %589 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %588, i32 0, i32 1
  %590 = load i64*, i64** %589, align 8
  %591 = load i64, i64* @LINUX_VEOL, align 8
  %592 = getelementptr inbounds i64, i64* %590, i64 %591
  store i64 %587, i64* %592, align 8
  %593 = load %struct.termios*, %struct.termios** %3, align 8
  %594 = getelementptr inbounds %struct.termios, %struct.termios* %593, i32 0, i32 4
  %595 = load i64*, i64** %594, align 8
  %596 = load i64, i64* @VMIN, align 8
  %597 = getelementptr inbounds i64, i64* %595, i64 %596
  %598 = load i64, i64* %597, align 8
  %599 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %600 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %599, i32 0, i32 1
  %601 = load i64*, i64** %600, align 8
  %602 = load i64, i64* @LINUX_VMIN, align 8
  %603 = getelementptr inbounds i64, i64* %601, i64 %602
  store i64 %598, i64* %603, align 8
  %604 = load %struct.termios*, %struct.termios** %3, align 8
  %605 = getelementptr inbounds %struct.termios, %struct.termios* %604, i32 0, i32 4
  %606 = load i64*, i64** %605, align 8
  %607 = load i64, i64* @VTIME, align 8
  %608 = getelementptr inbounds i64, i64* %606, i64 %607
  %609 = load i64, i64* %608, align 8
  %610 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %611 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %610, i32 0, i32 1
  %612 = load i64*, i64** %611, align 8
  %613 = load i64, i64* @LINUX_VTIME, align 8
  %614 = getelementptr inbounds i64, i64* %612, i64 %613
  store i64 %609, i64* %614, align 8
  %615 = load %struct.termios*, %struct.termios** %3, align 8
  %616 = getelementptr inbounds %struct.termios, %struct.termios* %615, i32 0, i32 4
  %617 = load i64*, i64** %616, align 8
  %618 = load i64, i64* @VEOL2, align 8
  %619 = getelementptr inbounds i64, i64* %617, i64 %618
  %620 = load i64, i64* %619, align 8
  %621 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %622 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %621, i32 0, i32 1
  %623 = load i64*, i64** %622, align 8
  %624 = load i64, i64* @LINUX_VEOL2, align 8
  %625 = getelementptr inbounds i64, i64* %623, i64 %624
  store i64 %620, i64* %625, align 8
  %626 = load %struct.termios*, %struct.termios** %3, align 8
  %627 = getelementptr inbounds %struct.termios, %struct.termios* %626, i32 0, i32 4
  %628 = load i64*, i64** %627, align 8
  %629 = load i64, i64* @VSUSP, align 8
  %630 = getelementptr inbounds i64, i64* %628, i64 %629
  %631 = load i64, i64* %630, align 8
  %632 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %633 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %632, i32 0, i32 1
  %634 = load i64*, i64** %633, align 8
  %635 = load i64, i64* @LINUX_VSUSP, align 8
  %636 = getelementptr inbounds i64, i64* %634, i64 %635
  store i64 %631, i64* %636, align 8
  %637 = load %struct.termios*, %struct.termios** %3, align 8
  %638 = getelementptr inbounds %struct.termios, %struct.termios* %637, i32 0, i32 4
  %639 = load i64*, i64** %638, align 8
  %640 = load i64, i64* @VSTART, align 8
  %641 = getelementptr inbounds i64, i64* %639, i64 %640
  %642 = load i64, i64* %641, align 8
  %643 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %644 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %643, i32 0, i32 1
  %645 = load i64*, i64** %644, align 8
  %646 = load i64, i64* @LINUX_VSTART, align 8
  %647 = getelementptr inbounds i64, i64* %645, i64 %646
  store i64 %642, i64* %647, align 8
  %648 = load %struct.termios*, %struct.termios** %3, align 8
  %649 = getelementptr inbounds %struct.termios, %struct.termios* %648, i32 0, i32 4
  %650 = load i64*, i64** %649, align 8
  %651 = load i64, i64* @VSTOP, align 8
  %652 = getelementptr inbounds i64, i64* %650, i64 %651
  %653 = load i64, i64* %652, align 8
  %654 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %655 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %654, i32 0, i32 1
  %656 = load i64*, i64** %655, align 8
  %657 = load i64, i64* @LINUX_VSTOP, align 8
  %658 = getelementptr inbounds i64, i64* %656, i64 %657
  store i64 %653, i64* %658, align 8
  %659 = load %struct.termios*, %struct.termios** %3, align 8
  %660 = getelementptr inbounds %struct.termios, %struct.termios* %659, i32 0, i32 4
  %661 = load i64*, i64** %660, align 8
  %662 = load i64, i64* @VREPRINT, align 8
  %663 = getelementptr inbounds i64, i64* %661, i64 %662
  %664 = load i64, i64* %663, align 8
  %665 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %666 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %665, i32 0, i32 1
  %667 = load i64*, i64** %666, align 8
  %668 = load i64, i64* @LINUX_VREPRINT, align 8
  %669 = getelementptr inbounds i64, i64* %667, i64 %668
  store i64 %664, i64* %669, align 8
  %670 = load %struct.termios*, %struct.termios** %3, align 8
  %671 = getelementptr inbounds %struct.termios, %struct.termios* %670, i32 0, i32 4
  %672 = load i64*, i64** %671, align 8
  %673 = load i64, i64* @VDISCARD, align 8
  %674 = getelementptr inbounds i64, i64* %672, i64 %673
  %675 = load i64, i64* %674, align 8
  %676 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %677 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %676, i32 0, i32 1
  %678 = load i64*, i64** %677, align 8
  %679 = load i64, i64* @LINUX_VDISCARD, align 8
  %680 = getelementptr inbounds i64, i64* %678, i64 %679
  store i64 %675, i64* %680, align 8
  %681 = load %struct.termios*, %struct.termios** %3, align 8
  %682 = getelementptr inbounds %struct.termios, %struct.termios* %681, i32 0, i32 4
  %683 = load i64*, i64** %682, align 8
  %684 = load i64, i64* @VWERASE, align 8
  %685 = getelementptr inbounds i64, i64* %683, i64 %684
  %686 = load i64, i64* %685, align 8
  %687 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %688 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %687, i32 0, i32 1
  %689 = load i64*, i64** %688, align 8
  %690 = load i64, i64* @LINUX_VWERASE, align 8
  %691 = getelementptr inbounds i64, i64* %689, i64 %690
  store i64 %686, i64* %691, align 8
  %692 = load %struct.termios*, %struct.termios** %3, align 8
  %693 = getelementptr inbounds %struct.termios, %struct.termios* %692, i32 0, i32 4
  %694 = load i64*, i64** %693, align 8
  %695 = load i64, i64* @VLNEXT, align 8
  %696 = getelementptr inbounds i64, i64* %694, i64 %695
  %697 = load i64, i64* %696, align 8
  %698 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %699 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %698, i32 0, i32 1
  %700 = load i64*, i64** %699, align 8
  %701 = load i64, i64* @LINUX_VLNEXT, align 8
  %702 = getelementptr inbounds i64, i64* %700, i64 %701
  store i64 %697, i64* %702, align 8
  store i32 0, i32* %5, align 4
  br label %703

703:                                              ; preds = %737, %526
  %704 = load i32, i32* %5, align 4
  %705 = load i32, i32* @LINUX_NCCS, align 4
  %706 = icmp slt i32 %704, %705
  br i1 %706, label %707, label %740

707:                                              ; preds = %703
  %708 = load i32, i32* %5, align 4
  %709 = sext i32 %708 to i64
  %710 = load i64, i64* @LINUX_VMIN, align 8
  %711 = icmp ne i64 %709, %710
  br i1 %711, label %712, label %736

712:                                              ; preds = %707
  %713 = load i32, i32* %5, align 4
  %714 = sext i32 %713 to i64
  %715 = load i64, i64* @LINUX_VTIME, align 8
  %716 = icmp ne i64 %714, %715
  br i1 %716, label %717, label %736

717:                                              ; preds = %712
  %718 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %719 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %718, i32 0, i32 1
  %720 = load i64*, i64** %719, align 8
  %721 = load i32, i32* %5, align 4
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds i64, i64* %720, i64 %722
  %724 = load i64, i64* %723, align 8
  %725 = load i64, i64* @_POSIX_VDISABLE, align 8
  %726 = icmp eq i64 %724, %725
  br i1 %726, label %727, label %736

727:                                              ; preds = %717
  %728 = load i8*, i8** @LINUX_POSIX_VDISABLE, align 8
  %729 = ptrtoint i8* %728 to i64
  %730 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %731 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %730, i32 0, i32 1
  %732 = load i64*, i64** %731, align 8
  %733 = load i32, i32* %5, align 4
  %734 = sext i32 %733 to i64
  %735 = getelementptr inbounds i64, i64* %732, i64 %734
  store i64 %729, i64* %735, align 8
  br label %736

736:                                              ; preds = %727, %717, %712, %707
  br label %737

737:                                              ; preds = %736
  %738 = load i32, i32* %5, align 4
  %739 = add nsw i32 %738, 1
  store i32 %739, i32* %5, align 4
  br label %703

740:                                              ; preds = %703
  %741 = load %struct.linux_termios*, %struct.linux_termios** %4, align 8
  %742 = getelementptr inbounds %struct.linux_termios, %struct.linux_termios* %741, i32 0, i32 2
  store i64 0, i64* %742, align 8
  ret void
}

declare dso_local i32 @bsd_to_linux_speed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

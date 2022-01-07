; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_linux_ioctl_console.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_linux_ioctl_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_ioctl_args = type { i32, i64, i32 }
%struct.file = type { i32 }
%struct.vt_mode = type { i32, i8*, i8* }
%struct.ioctl_args = type { i32 }

@cap_ioctl_rights = common dso_local global i32 0, align 4
@KIOCSOUND = common dso_local global i32 0, align 4
@KDMKTONE = common dso_local global i32 0, align 4
@KDGETLED = common dso_local global i32 0, align 4
@KDSETLED = common dso_local global i32 0, align 4
@KDSETMODE = common dso_local global i32 0, align 4
@KDGETMODE = common dso_local global i32 0, align 4
@KDGKBMODE = common dso_local global i32 0, align 4
@K_RAW = common dso_local global i32 0, align 4
@K_XLATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KDSKBMODE = common dso_local global i32 0, align 4
@VT_OPENQRY = common dso_local global i32 0, align 4
@VT_GETMODE = common dso_local global i32 0, align 4
@VT_SETMODE = common dso_local global i32 0, align 4
@VT_GETACTIVE = common dso_local global i32 0, align 4
@VT_RELDISP = common dso_local global i32 0, align 4
@VT_ACTIVATE = common dso_local global i32 0, align 4
@VT_WAITACTIVE = common dso_local global i32 0, align 4
@ENOIOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.linux_ioctl_args*)* @linux_ioctl_console to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_ioctl_console(%struct.thread* %0, %struct.linux_ioctl_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_ioctl_args*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vt_mode, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_ioctl_args* %1, %struct.linux_ioctl_args** %5, align 8
  %10 = load %struct.thread*, %struct.thread** %4, align 8
  %11 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %12 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @fget(%struct.thread* %10, i32 %13, i32* @cap_ioctl_rights, %struct.file** %6)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %208

19:                                               ; preds = %2
  %20 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %21 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, 65535
  switch i32 %23, label %201 [
    i32 135, label %24
    i32 139, label %32
    i32 142, label %40
    i32 138, label %48
    i32 137, label %56
    i32 141, label %64
    i32 140, label %72
    i32 136, label %80
    i32 131, label %104
    i32 133, label %112
    i32 129, label %120
    i32 132, label %169
    i32 130, label %177
    i32 134, label %185
    i32 128, label %193
  ]

24:                                               ; preds = %19
  %25 = load i32, i32* @KIOCSOUND, align 4
  %26 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %27 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.thread*, %struct.thread** %4, align 8
  %29 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %30 = bitcast %struct.linux_ioctl_args* %29 to %struct.ioctl_args*
  %31 = call i32 @sys_ioctl(%struct.thread* %28, %struct.ioctl_args* %30)
  store i32 %31, i32* %7, align 4
  br label %203

32:                                               ; preds = %19
  %33 = load i32, i32* @KDMKTONE, align 4
  %34 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %35 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.thread*, %struct.thread** %4, align 8
  %37 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %38 = bitcast %struct.linux_ioctl_args* %37 to %struct.ioctl_args*
  %39 = call i32 @sys_ioctl(%struct.thread* %36, %struct.ioctl_args* %38)
  store i32 %39, i32* %7, align 4
  br label %203

40:                                               ; preds = %19
  %41 = load i32, i32* @KDGETLED, align 4
  %42 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %43 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.thread*, %struct.thread** %4, align 8
  %45 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %46 = bitcast %struct.linux_ioctl_args* %45 to %struct.ioctl_args*
  %47 = call i32 @sys_ioctl(%struct.thread* %44, %struct.ioctl_args* %46)
  store i32 %47, i32* %7, align 4
  br label %203

48:                                               ; preds = %19
  %49 = load i32, i32* @KDSETLED, align 4
  %50 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %51 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.thread*, %struct.thread** %4, align 8
  %53 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %54 = bitcast %struct.linux_ioctl_args* %53 to %struct.ioctl_args*
  %55 = call i32 @sys_ioctl(%struct.thread* %52, %struct.ioctl_args* %54)
  store i32 %55, i32* %7, align 4
  br label %203

56:                                               ; preds = %19
  %57 = load i32, i32* @KDSETMODE, align 4
  %58 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %59 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.thread*, %struct.thread** %4, align 8
  %61 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %62 = bitcast %struct.linux_ioctl_args* %61 to %struct.ioctl_args*
  %63 = call i32 @sys_ioctl(%struct.thread* %60, %struct.ioctl_args* %62)
  store i32 %63, i32* %7, align 4
  br label %203

64:                                               ; preds = %19
  %65 = load i32, i32* @KDGETMODE, align 4
  %66 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %67 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.thread*, %struct.thread** %4, align 8
  %69 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %70 = bitcast %struct.linux_ioctl_args* %69 to %struct.ioctl_args*
  %71 = call i32 @sys_ioctl(%struct.thread* %68, %struct.ioctl_args* %70)
  store i32 %71, i32* %7, align 4
  br label %203

72:                                               ; preds = %19
  %73 = load i32, i32* @KDGKBMODE, align 4
  %74 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %75 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.thread*, %struct.thread** %4, align 8
  %77 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %78 = bitcast %struct.linux_ioctl_args* %77 to %struct.ioctl_args*
  %79 = call i32 @sys_ioctl(%struct.thread* %76, %struct.ioctl_args* %78)
  store i32 %79, i32* %7, align 4
  br label %203

80:                                               ; preds = %19
  %81 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %82 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  switch i64 %83, label %90 [
    i64 144, label %84
    i64 143, label %86
    i64 145, label %88
  ]

84:                                               ; preds = %80
  %85 = load i32, i32* @K_RAW, align 4
  store i32 %85, i32* %8, align 4
  br label %95

86:                                               ; preds = %80
  %87 = load i32, i32* @K_XLATE, align 4
  store i32 %87, i32* %8, align 4
  br label %95

88:                                               ; preds = %80
  %89 = load i32, i32* @K_RAW, align 4
  store i32 %89, i32* %8, align 4
  br label %95

90:                                               ; preds = %80
  %91 = load %struct.file*, %struct.file** %6, align 8
  %92 = load %struct.thread*, %struct.thread** %4, align 8
  %93 = call i32 @fdrop(%struct.file* %91, %struct.thread* %92)
  %94 = load i32, i32* @EINVAL, align 4
  store i32 %94, i32* %3, align 4
  br label %208

95:                                               ; preds = %88, %86, %84
  %96 = load %struct.file*, %struct.file** %6, align 8
  %97 = load i32, i32* @KDSKBMODE, align 4
  %98 = ptrtoint i32* %8 to i32
  %99 = load %struct.thread*, %struct.thread** %4, align 8
  %100 = getelementptr inbounds %struct.thread, %struct.thread* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.thread*, %struct.thread** %4, align 8
  %103 = call i32 @fo_ioctl(%struct.file* %96, i32 %97, i32 %98, i32 %101, %struct.thread* %102)
  store i32 %103, i32* %7, align 4
  br label %203

104:                                              ; preds = %19
  %105 = load i32, i32* @VT_OPENQRY, align 4
  %106 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %107 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.thread*, %struct.thread** %4, align 8
  %109 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %110 = bitcast %struct.linux_ioctl_args* %109 to %struct.ioctl_args*
  %111 = call i32 @sys_ioctl(%struct.thread* %108, %struct.ioctl_args* %110)
  store i32 %111, i32* %7, align 4
  br label %203

112:                                              ; preds = %19
  %113 = load i32, i32* @VT_GETMODE, align 4
  %114 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %115 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.thread*, %struct.thread** %4, align 8
  %117 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %118 = bitcast %struct.linux_ioctl_args* %117 to %struct.ioctl_args*
  %119 = call i32 @sys_ioctl(%struct.thread* %116, %struct.ioctl_args* %118)
  store i32 %119, i32* %7, align 4
  br label %203

120:                                              ; preds = %19
  %121 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %122 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to i8*
  %125 = call i32 @copyin(i8* %124, %struct.vt_mode* %9, i32 24)
  store i32 %125, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  br label %203

128:                                              ; preds = %120
  %129 = getelementptr inbounds %struct.vt_mode, %struct.vt_mode* %9, i32 0, i32 2
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @LINUX_SIG_VALID(i8* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.vt_mode, %struct.vt_mode* %9, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = call i8* @linux_to_bsd_signal(i8* %135)
  %137 = getelementptr inbounds %struct.vt_mode, %struct.vt_mode* %9, i32 0, i32 2
  store i8* %136, i8** %137, align 8
  br label %140

138:                                              ; preds = %128
  %139 = getelementptr inbounds %struct.vt_mode, %struct.vt_mode* %9, i32 0, i32 2
  store i8* null, i8** %139, align 8
  br label %140

140:                                              ; preds = %138, %133
  %141 = getelementptr inbounds %struct.vt_mode, %struct.vt_mode* %9, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @LINUX_SIG_VALID(i8* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.vt_mode, %struct.vt_mode* %9, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = call i8* @linux_to_bsd_signal(i8* %147)
  %149 = getelementptr inbounds %struct.vt_mode, %struct.vt_mode* %9, i32 0, i32 1
  store i8* %148, i8** %149, align 8
  br label %152

150:                                              ; preds = %140
  %151 = getelementptr inbounds %struct.vt_mode, %struct.vt_mode* %9, i32 0, i32 1
  store i8* null, i8** %151, align 8
  br label %152

152:                                              ; preds = %150, %145
  %153 = getelementptr inbounds %struct.vt_mode, %struct.vt_mode* %9, i32 0, i32 0
  store i32 0, i32* %153, align 8
  %154 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %155 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = inttoptr i64 %156 to i8*
  %158 = call i32 @copyout(%struct.vt_mode* %9, i8* %157, i32 24)
  store i32 %158, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %152
  br label %203

161:                                              ; preds = %152
  %162 = load i32, i32* @VT_SETMODE, align 4
  %163 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %164 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load %struct.thread*, %struct.thread** %4, align 8
  %166 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %167 = bitcast %struct.linux_ioctl_args* %166 to %struct.ioctl_args*
  %168 = call i32 @sys_ioctl(%struct.thread* %165, %struct.ioctl_args* %167)
  store i32 %168, i32* %7, align 4
  br label %203

169:                                              ; preds = %19
  %170 = load i32, i32* @VT_GETACTIVE, align 4
  %171 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %172 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  %173 = load %struct.thread*, %struct.thread** %4, align 8
  %174 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %175 = bitcast %struct.linux_ioctl_args* %174 to %struct.ioctl_args*
  %176 = call i32 @sys_ioctl(%struct.thread* %173, %struct.ioctl_args* %175)
  store i32 %176, i32* %7, align 4
  br label %203

177:                                              ; preds = %19
  %178 = load i32, i32* @VT_RELDISP, align 4
  %179 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %180 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  %181 = load %struct.thread*, %struct.thread** %4, align 8
  %182 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %183 = bitcast %struct.linux_ioctl_args* %182 to %struct.ioctl_args*
  %184 = call i32 @sys_ioctl(%struct.thread* %181, %struct.ioctl_args* %183)
  store i32 %184, i32* %7, align 4
  br label %203

185:                                              ; preds = %19
  %186 = load i32, i32* @VT_ACTIVATE, align 4
  %187 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %188 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 8
  %189 = load %struct.thread*, %struct.thread** %4, align 8
  %190 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %191 = bitcast %struct.linux_ioctl_args* %190 to %struct.ioctl_args*
  %192 = call i32 @sys_ioctl(%struct.thread* %189, %struct.ioctl_args* %191)
  store i32 %192, i32* %7, align 4
  br label %203

193:                                              ; preds = %19
  %194 = load i32, i32* @VT_WAITACTIVE, align 4
  %195 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %196 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 8
  %197 = load %struct.thread*, %struct.thread** %4, align 8
  %198 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %199 = bitcast %struct.linux_ioctl_args* %198 to %struct.ioctl_args*
  %200 = call i32 @sys_ioctl(%struct.thread* %197, %struct.ioctl_args* %199)
  store i32 %200, i32* %7, align 4
  br label %203

201:                                              ; preds = %19
  %202 = load i32, i32* @ENOIOCTL, align 4
  store i32 %202, i32* %7, align 4
  br label %203

203:                                              ; preds = %201, %193, %185, %177, %169, %161, %160, %127, %112, %104, %95, %72, %64, %56, %48, %40, %32, %24
  %204 = load %struct.file*, %struct.file** %6, align 8
  %205 = load %struct.thread*, %struct.thread** %4, align 8
  %206 = call i32 @fdrop(%struct.file* %204, %struct.thread* %205)
  %207 = load i32, i32* %7, align 4
  store i32 %207, i32* %3, align 4
  br label %208

208:                                              ; preds = %203, %90, %17
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local i32 @fget(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @sys_ioctl(%struct.thread*, %struct.ioctl_args*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i32 @fo_ioctl(%struct.file*, i32, i32, i32, %struct.thread*) #1

declare dso_local i32 @copyin(i8*, %struct.vt_mode*, i32) #1

declare dso_local i32 @LINUX_SIG_VALID(i8*) #1

declare dso_local i8* @linux_to_bsd_signal(i8*) #1

declare dso_local i32 @copyout(%struct.vt_mode*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_common_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_common_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, i32, %struct.proc* }
%struct.proc = type { i32 }
%struct.file = type { i64 }

@LINUX_O_ACCMODE = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@LINUX_O_NDELAY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@LINUX_O_APPEND = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@LINUX_O_SYNC = common dso_local global i32 0, align 4
@O_FSYNC = common dso_local global i32 0, align 4
@LINUX_O_CLOEXEC = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@LINUX_O_NONBLOCK = common dso_local global i32 0, align 4
@LINUX_FASYNC = common dso_local global i32 0, align 4
@O_ASYNC = common dso_local global i32 0, align 4
@LINUX_O_CREAT = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@LINUX_O_TRUNC = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@LINUX_O_EXCL = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@LINUX_O_NOCTTY = common dso_local global i32 0, align 4
@O_NOCTTY = common dso_local global i32 0, align 4
@LINUX_O_DIRECT = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@LINUX_O_NOFOLLOW = common dso_local global i32 0, align 4
@O_NOFOLLOW = common dso_local global i32 0, align 4
@LINUX_O_DIRECTORY = common dso_local global i32 0, align 4
@O_DIRECTORY = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@cap_ioctl_rights = common dso_local global i32 0, align 4
@DTYPE_VNODE = common dso_local global i64 0, align 8
@proctree_lock = common dso_local global i32 0, align 4
@P_CONTROLT = common dso_local global i32 0, align 4
@TIOCSCTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, i8*, i32, i32)* @linux_common_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_common_open(%struct.thread* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.proc*, align 8
  %12 = alloca %struct.file*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.thread*, %struct.thread** %6, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 2
  %18 = load %struct.proc*, %struct.proc** %17, align 8
  store %struct.proc* %18, %struct.proc** %11, align 8
  store i32 0, i32* %14, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @LINUX_O_ACCMODE, align 4
  %21 = and i32 %19, %20
  switch i32 %21, label %30 [
    i32 128, label %22
    i32 129, label %26
  ]

22:                                               ; preds = %5
  %23 = load i32, i32* @O_WRONLY, align 4
  %24 = load i32, i32* %14, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %14, align 4
  br label %34

26:                                               ; preds = %5
  %27 = load i32, i32* @O_RDWR, align 4
  %28 = load i32, i32* %14, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %14, align 4
  br label %34

30:                                               ; preds = %5
  %31 = load i32, i32* @O_RDONLY, align 4
  %32 = load i32, i32* %14, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %14, align 4
  br label %34

34:                                               ; preds = %30, %26, %22
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @LINUX_O_NDELAY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @O_NONBLOCK, align 4
  %41 = load i32, i32* %14, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %14, align 4
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @LINUX_O_APPEND, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @O_APPEND, align 4
  %50 = load i32, i32* %14, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %14, align 4
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @LINUX_O_SYNC, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* @O_FSYNC, align 4
  %59 = load i32, i32* %14, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %14, align 4
  br label %61

61:                                               ; preds = %57, %52
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @LINUX_O_CLOEXEC, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* @O_CLOEXEC, align 4
  %68 = load i32, i32* %14, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %14, align 4
  br label %70

70:                                               ; preds = %66, %61
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @LINUX_O_NONBLOCK, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* @O_NONBLOCK, align 4
  %77 = load i32, i32* %14, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %14, align 4
  br label %79

79:                                               ; preds = %75, %70
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @LINUX_FASYNC, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* @O_ASYNC, align 4
  %86 = load i32, i32* %14, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %14, align 4
  br label %88

88:                                               ; preds = %84, %79
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @LINUX_O_CREAT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* @O_CREAT, align 4
  %95 = load i32, i32* %14, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %14, align 4
  br label %97

97:                                               ; preds = %93, %88
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @LINUX_O_TRUNC, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i32, i32* @O_TRUNC, align 4
  %104 = load i32, i32* %14, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %14, align 4
  br label %106

106:                                              ; preds = %102, %97
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @LINUX_O_EXCL, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32, i32* @O_EXCL, align 4
  %113 = load i32, i32* %14, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %14, align 4
  br label %115

115:                                              ; preds = %111, %106
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @LINUX_O_NOCTTY, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* @O_NOCTTY, align 4
  %122 = load i32, i32* %14, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %14, align 4
  br label %124

124:                                              ; preds = %120, %115
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @LINUX_O_DIRECT, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load i32, i32* @O_DIRECT, align 4
  %131 = load i32, i32* %14, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %14, align 4
  br label %133

133:                                              ; preds = %129, %124
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @LINUX_O_NOFOLLOW, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load i32, i32* @O_NOFOLLOW, align 4
  %140 = load i32, i32* %14, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %14, align 4
  br label %142

142:                                              ; preds = %138, %133
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @LINUX_O_DIRECTORY, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load i32, i32* @O_DIRECTORY, align 4
  %149 = load i32, i32* %14, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %14, align 4
  br label %151

151:                                              ; preds = %147, %142
  %152 = load %struct.thread*, %struct.thread** %6, align 8
  %153 = load i32, i32* %7, align 4
  %154 = load i8*, i8** %8, align 8
  %155 = load i32, i32* @UIO_SYSSPACE, align 4
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @kern_openat(%struct.thread* %152, i32 %153, i8* %154, i32 %155, i32 %156, i32 %157)
  store i32 %158, i32* %15, align 4
  %159 = load i32, i32* %15, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %151
  br label %222

162:                                              ; preds = %151
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* @O_NOCTTY, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %222

168:                                              ; preds = %162
  %169 = load %struct.thread*, %struct.thread** %6, align 8
  %170 = getelementptr inbounds %struct.thread, %struct.thread* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %13, align 4
  %174 = load %struct.thread*, %struct.thread** %6, align 8
  %175 = load i32, i32* %13, align 4
  %176 = call i64 @fget(%struct.thread* %174, i32 %175, i32* @cap_ioctl_rights, %struct.file** %12)
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %221

178:                                              ; preds = %168
  %179 = load %struct.file*, %struct.file** %12, align 8
  %180 = getelementptr inbounds %struct.file, %struct.file* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @DTYPE_VNODE, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %178
  %185 = load %struct.file*, %struct.file** %12, align 8
  %186 = load %struct.thread*, %struct.thread** %6, align 8
  %187 = call i32 @fdrop(%struct.file* %185, %struct.thread* %186)
  br label %222

188:                                              ; preds = %178
  %189 = call i32 @sx_slock(i32* @proctree_lock)
  %190 = load %struct.proc*, %struct.proc** %11, align 8
  %191 = call i32 @PROC_LOCK(%struct.proc* %190)
  %192 = load %struct.proc*, %struct.proc** %11, align 8
  %193 = call i64 @SESS_LEADER(%struct.proc* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %213

195:                                              ; preds = %188
  %196 = load %struct.proc*, %struct.proc** %11, align 8
  %197 = getelementptr inbounds %struct.proc, %struct.proc* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @P_CONTROLT, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %213, label %202

202:                                              ; preds = %195
  %203 = load %struct.proc*, %struct.proc** %11, align 8
  %204 = call i32 @PROC_UNLOCK(%struct.proc* %203)
  %205 = call i32 @sx_sunlock(i32* @proctree_lock)
  %206 = load %struct.file*, %struct.file** %12, align 8
  %207 = load i32, i32* @TIOCSCTTY, align 4
  %208 = load %struct.thread*, %struct.thread** %6, align 8
  %209 = getelementptr inbounds %struct.thread, %struct.thread* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.thread*, %struct.thread** %6, align 8
  %212 = call i32 @fo_ioctl(%struct.file* %206, i32 %207, i32 0, i32 %210, %struct.thread* %211)
  br label %217

213:                                              ; preds = %195, %188
  %214 = load %struct.proc*, %struct.proc** %11, align 8
  %215 = call i32 @PROC_UNLOCK(%struct.proc* %214)
  %216 = call i32 @sx_sunlock(i32* @proctree_lock)
  br label %217

217:                                              ; preds = %213, %202
  %218 = load %struct.file*, %struct.file** %12, align 8
  %219 = load %struct.thread*, %struct.thread** %6, align 8
  %220 = call i32 @fdrop(%struct.file* %218, %struct.thread* %219)
  br label %221

221:                                              ; preds = %217, %168
  br label %222

222:                                              ; preds = %221, %184, %167, %161
  %223 = load i8*, i8** %8, align 8
  %224 = call i32 @LFREEPATH(i8* %223)
  %225 = load i32, i32* %15, align 4
  ret i32 %225
}

declare dso_local i32 @kern_openat(%struct.thread*, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @fget(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i32 @sx_slock(i32*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i64 @SESS_LEADER(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @sx_sunlock(i32*) #1

declare dso_local i32 @fo_ioctl(%struct.file*, i32, i32, i32, %struct.thread*) #1

declare dso_local i32 @LFREEPATH(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

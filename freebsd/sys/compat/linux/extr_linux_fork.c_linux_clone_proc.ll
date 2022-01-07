; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_fork.c_linux_clone_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_fork.c_linux_clone_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.linux_clone_args = type { i32, i32, i32, i32*, i32* }
%struct.fork_req = type { i32, %struct.proc** }
%struct.proc = type { i32, i32 }
%struct.linux_emuldata = type { i32*, i32* }

@RFPROC = common dso_local global i32 0, align 4
@RFSTOPPED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LINUX_CLONE_VM = common dso_local global i32 0, align 4
@RFMEM = common dso_local global i32 0, align 4
@LINUX_CLONE_SIGHAND = common dso_local global i32 0, align 4
@RFSIGSHARE = common dso_local global i32 0, align 4
@LINUX_CLONE_FILES = common dso_local global i32 0, align 4
@LINUX_CLONE_FS = common dso_local global i32 0, align 4
@RFFDG = common dso_local global i32 0, align 4
@LINUX_CLONE_PARENT_SETTID = common dso_local global i32 0, align 4
@LINUX_CLONE_VFORK = common dso_local global i32 0, align 4
@RFPPWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"clone_proc: emuldata not found.\0A\00", align 1
@LINUX_CLONE_CHILD_SETTID = common dso_local global i32 0, align 4
@LINUX_CLONE_CHILD_CLEARTID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"copyout p_pid failed!\00", align 1
@LINUX_CLONE_SETTLS = common dso_local global i32 0, align 4
@LINUX_CLONE_PARENT = common dso_local global i32 0, align 4
@proctree_lock = common dso_local global i32 0, align 4
@SRQ_BORING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.linux_clone_args*)* @linux_clone_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_clone_proc(%struct.thread* %0, %struct.linux_clone_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_clone_args*, align 8
  %6 = alloca %struct.fork_req, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.proc*, align 8
  %10 = alloca %struct.thread*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.linux_emuldata*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_clone_args* %1, %struct.linux_clone_args** %5, align 8
  %13 = load i32, i32* @RFPROC, align 4
  %14 = load i32, i32* @RFSTOPPED, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.linux_clone_args*, %struct.linux_clone_args** %5, align 8
  %17 = getelementptr inbounds %struct.linux_clone_args, %struct.linux_clone_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 255
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i64 @LINUX_SIG_VALID(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @linux_to_bsd_signal(i32 %24)
  store i32 %25, i32* %11, align 4
  br label %32

26:                                               ; preds = %2
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %3, align 4
  br label %234

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %23
  %33 = load %struct.linux_clone_args*, %struct.linux_clone_args** %5, align 8
  %34 = getelementptr inbounds %struct.linux_clone_args, %struct.linux_clone_args* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @LINUX_CLONE_VM, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32, i32* @RFMEM, align 4
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %39, %32
  %44 = load %struct.linux_clone_args*, %struct.linux_clone_args** %5, align 8
  %45 = getelementptr inbounds %struct.linux_clone_args, %struct.linux_clone_args* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @LINUX_CLONE_SIGHAND, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32, i32* @RFSIGSHARE, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %50, %43
  %55 = load %struct.linux_clone_args*, %struct.linux_clone_args** %5, align 8
  %56 = getelementptr inbounds %struct.linux_clone_args, %struct.linux_clone_args* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @LINUX_CLONE_FILES, align 4
  %59 = load i32, i32* @LINUX_CLONE_FS, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %54
  %64 = load i32, i32* @RFFDG, align 4
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %63, %54
  %68 = load %struct.linux_clone_args*, %struct.linux_clone_args** %5, align 8
  %69 = getelementptr inbounds %struct.linux_clone_args, %struct.linux_clone_args* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @LINUX_CLONE_PARENT_SETTID, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %67
  %75 = load %struct.linux_clone_args*, %struct.linux_clone_args** %5, align 8
  %76 = getelementptr inbounds %struct.linux_clone_args, %struct.linux_clone_args* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @EINVAL, align 4
  store i32 %80, i32* %3, align 4
  br label %234

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %67
  %83 = load %struct.linux_clone_args*, %struct.linux_clone_args** %5, align 8
  %84 = getelementptr inbounds %struct.linux_clone_args, %struct.linux_clone_args* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @LINUX_CLONE_VFORK, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load i32, i32* @RFPPWAIT, align 4
  %91 = load i32, i32* %8, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %89, %82
  %94 = call i32 @bzero(%struct.fork_req* %6, i32 16)
  %95 = load i32, i32* %8, align 4
  %96 = getelementptr inbounds %struct.fork_req, %struct.fork_req* %6, i32 0, i32 0
  store i32 %95, i32* %96, align 8
  %97 = getelementptr inbounds %struct.fork_req, %struct.fork_req* %6, i32 0, i32 1
  store %struct.proc** %9, %struct.proc*** %97, align 8
  %98 = load %struct.thread*, %struct.thread** %4, align 8
  %99 = call i32 @fork1(%struct.thread* %98, %struct.fork_req* %6)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %93
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %3, align 4
  br label %234

104:                                              ; preds = %93
  %105 = load %struct.proc*, %struct.proc** %9, align 8
  %106 = call %struct.thread* @FIRST_THREAD_IN_PROC(%struct.proc* %105)
  store %struct.thread* %106, %struct.thread** %10, align 8
  %107 = load %struct.thread*, %struct.thread** %4, align 8
  %108 = load %struct.thread*, %struct.thread** %10, align 8
  %109 = load %struct.linux_clone_args*, %struct.linux_clone_args** %5, align 8
  %110 = getelementptr inbounds %struct.linux_clone_args, %struct.linux_clone_args* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @linux_proc_init(%struct.thread* %107, %struct.thread* %108, i32 %111)
  %113 = load %struct.thread*, %struct.thread** %10, align 8
  %114 = call %struct.linux_emuldata* @em_find(%struct.thread* %113)
  store %struct.linux_emuldata* %114, %struct.linux_emuldata** %12, align 8
  %115 = load %struct.linux_emuldata*, %struct.linux_emuldata** %12, align 8
  %116 = icmp ne %struct.linux_emuldata* %115, null
  %117 = zext i1 %116 to i32
  %118 = call i32 @KASSERT(i32 %117, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %119 = load %struct.linux_clone_args*, %struct.linux_clone_args** %5, align 8
  %120 = getelementptr inbounds %struct.linux_clone_args, %struct.linux_clone_args* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @LINUX_CLONE_CHILD_SETTID, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %104
  %126 = load %struct.linux_clone_args*, %struct.linux_clone_args** %5, align 8
  %127 = getelementptr inbounds %struct.linux_clone_args, %struct.linux_clone_args* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.linux_emuldata*, %struct.linux_emuldata** %12, align 8
  %130 = getelementptr inbounds %struct.linux_emuldata, %struct.linux_emuldata* %129, i32 0, i32 1
  store i32* %128, i32** %130, align 8
  br label %134

131:                                              ; preds = %104
  %132 = load %struct.linux_emuldata*, %struct.linux_emuldata** %12, align 8
  %133 = getelementptr inbounds %struct.linux_emuldata, %struct.linux_emuldata* %132, i32 0, i32 1
  store i32* null, i32** %133, align 8
  br label %134

134:                                              ; preds = %131, %125
  %135 = load %struct.linux_clone_args*, %struct.linux_clone_args** %5, align 8
  %136 = getelementptr inbounds %struct.linux_clone_args, %struct.linux_clone_args* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @LINUX_CLONE_CHILD_CLEARTID, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %134
  %142 = load %struct.linux_clone_args*, %struct.linux_clone_args** %5, align 8
  %143 = getelementptr inbounds %struct.linux_clone_args, %struct.linux_clone_args* %142, i32 0, i32 4
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.linux_emuldata*, %struct.linux_emuldata** %12, align 8
  %146 = getelementptr inbounds %struct.linux_emuldata, %struct.linux_emuldata* %145, i32 0, i32 0
  store i32* %144, i32** %146, align 8
  br label %150

147:                                              ; preds = %134
  %148 = load %struct.linux_emuldata*, %struct.linux_emuldata** %12, align 8
  %149 = getelementptr inbounds %struct.linux_emuldata, %struct.linux_emuldata* %148, i32 0, i32 0
  store i32* null, i32** %149, align 8
  br label %150

150:                                              ; preds = %147, %141
  %151 = load %struct.linux_clone_args*, %struct.linux_clone_args** %5, align 8
  %152 = getelementptr inbounds %struct.linux_clone_args, %struct.linux_clone_args* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @LINUX_CLONE_PARENT_SETTID, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %170

157:                                              ; preds = %150
  %158 = load %struct.proc*, %struct.proc** %9, align 8
  %159 = getelementptr inbounds %struct.proc, %struct.proc* %158, i32 0, i32 1
  %160 = load %struct.linux_clone_args*, %struct.linux_clone_args** %5, align 8
  %161 = getelementptr inbounds %struct.linux_clone_args, %struct.linux_clone_args* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @copyout(i32* %159, i32* %162, i32 4)
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* %7, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %157
  %167 = load %struct.thread*, %struct.thread** %4, align 8
  %168 = call i32 @linux_msg(%struct.thread* %167, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %169

169:                                              ; preds = %166, %157
  br label %170

170:                                              ; preds = %169, %150
  %171 = load %struct.proc*, %struct.proc** %9, align 8
  %172 = call i32 @PROC_LOCK(%struct.proc* %171)
  %173 = load i32, i32* %11, align 4
  %174 = load %struct.proc*, %struct.proc** %9, align 8
  %175 = getelementptr inbounds %struct.proc, %struct.proc* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 4
  %176 = load %struct.proc*, %struct.proc** %9, align 8
  %177 = call i32 @PROC_UNLOCK(%struct.proc* %176)
  %178 = load %struct.thread*, %struct.thread** %10, align 8
  %179 = load %struct.linux_clone_args*, %struct.linux_clone_args** %5, align 8
  %180 = getelementptr inbounds %struct.linux_clone_args, %struct.linux_clone_args* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @PTROUT(i32 %181)
  %183 = call i32 @linux_set_upcall_kse(%struct.thread* %178, i32 %182)
  %184 = load %struct.linux_clone_args*, %struct.linux_clone_args** %5, align 8
  %185 = getelementptr inbounds %struct.linux_clone_args, %struct.linux_clone_args* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @LINUX_CLONE_SETTLS, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %170
  %191 = load %struct.thread*, %struct.thread** %10, align 8
  %192 = load %struct.linux_clone_args*, %struct.linux_clone_args** %5, align 8
  %193 = getelementptr inbounds %struct.linux_clone_args, %struct.linux_clone_args* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @linux_set_cloned_tls(%struct.thread* %191, i32 %194)
  br label %196

196:                                              ; preds = %190, %170
  %197 = load %struct.linux_clone_args*, %struct.linux_clone_args** %5, align 8
  %198 = getelementptr inbounds %struct.linux_clone_args, %struct.linux_clone_args* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @LINUX_CLONE_PARENT, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %217

203:                                              ; preds = %196
  %204 = call i32 @sx_xlock(i32* @proctree_lock)
  %205 = load %struct.proc*, %struct.proc** %9, align 8
  %206 = call i32 @PROC_LOCK(%struct.proc* %205)
  %207 = load %struct.proc*, %struct.proc** %9, align 8
  %208 = load %struct.thread*, %struct.thread** %4, align 8
  %209 = getelementptr inbounds %struct.thread, %struct.thread* %208, i32 0, i32 1
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @proc_reparent(%struct.proc* %207, i32 %212, i32 1)
  %214 = load %struct.proc*, %struct.proc** %9, align 8
  %215 = call i32 @PROC_UNLOCK(%struct.proc* %214)
  %216 = call i32 @sx_xunlock(i32* @proctree_lock)
  br label %217

217:                                              ; preds = %203, %196
  %218 = load %struct.thread*, %struct.thread** %10, align 8
  %219 = call i32 @thread_lock(%struct.thread* %218)
  %220 = load %struct.thread*, %struct.thread** %10, align 8
  %221 = call i32 @TD_SET_CAN_RUN(%struct.thread* %220)
  %222 = load %struct.thread*, %struct.thread** %10, align 8
  %223 = load i32, i32* @SRQ_BORING, align 4
  %224 = call i32 @sched_add(%struct.thread* %222, i32 %223)
  %225 = load %struct.thread*, %struct.thread** %10, align 8
  %226 = call i32 @thread_unlock(%struct.thread* %225)
  %227 = load %struct.proc*, %struct.proc** %9, align 8
  %228 = getelementptr inbounds %struct.proc, %struct.proc* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.thread*, %struct.thread** %4, align 8
  %231 = getelementptr inbounds %struct.thread, %struct.thread* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  store i32 %229, i32* %233, align 4
  store i32 0, i32* %3, align 4
  br label %234

234:                                              ; preds = %217, %102, %79, %29
  %235 = load i32, i32* %3, align 4
  ret i32 %235
}

declare dso_local i64 @LINUX_SIG_VALID(i32) #1

declare dso_local i32 @linux_to_bsd_signal(i32) #1

declare dso_local i32 @bzero(%struct.fork_req*, i32) #1

declare dso_local i32 @fork1(%struct.thread*, %struct.fork_req*) #1

declare dso_local %struct.thread* @FIRST_THREAD_IN_PROC(%struct.proc*) #1

declare dso_local i32 @linux_proc_init(%struct.thread*, %struct.thread*, i32) #1

declare dso_local %struct.linux_emuldata* @em_find(%struct.thread*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @copyout(i32*, i32*, i32) #1

declare dso_local i32 @linux_msg(%struct.thread*, i8*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @linux_set_upcall_kse(%struct.thread*, i32) #1

declare dso_local i32 @PTROUT(i32) #1

declare dso_local i32 @linux_set_cloned_tls(%struct.thread*, i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @proc_reparent(%struct.proc*, i32, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @TD_SET_CAN_RUN(%struct.thread*) #1

declare dso_local i32 @sched_add(%struct.thread*, i32) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

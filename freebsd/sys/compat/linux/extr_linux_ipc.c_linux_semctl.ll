; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ipc.c_linux_semctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ipc.c_linux_semctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.thread = type { i32* }
%struct.linux_semctl_args = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.l_semid64_ds = type { i32, i32, i32 }
%struct.l_seminfo = type { i32, i32, i32 }
%struct.semid_ds = type { i32 }
%union.semun = type { i8* }

@LINUX_IPC_64 = common dso_local global i32 0, align 4
@IPC_RMID = common dso_local global i32 0, align 4
@GETNCNT = common dso_local global i32 0, align 4
@GETPID = common dso_local global i32 0, align 4
@GETVAL = common dso_local global i32 0, align 4
@GETZCNT = common dso_local global i32 0, align 4
@SETVAL = common dso_local global i32 0, align 4
@IPC_SET = common dso_local global i32 0, align 4
@IPC_STAT = common dso_local global i32 0, align 4
@SEM_STAT = common dso_local global i32 0, align 4
@seminfo = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@GETALL = common dso_local global i32 0, align 4
@SETALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ipc type %d is not implemented\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_semctl(%struct.thread* %0, %struct.linux_semctl_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_semctl_args*, align 8
  %6 = alloca %struct.l_semid64_ds, align 4
  %7 = alloca %struct.l_seminfo, align 4
  %8 = alloca %struct.semid_ds, align 4
  %9 = alloca %union.semun, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_semctl_args* %1, %struct.linux_semctl_args** %5, align 8
  %13 = call i32 @memset(%struct.l_seminfo* %7, i32 0, i32 12)
  %14 = bitcast %struct.l_semid64_ds* %6 to %struct.l_seminfo*
  %15 = call i32 @memset(%struct.l_seminfo* %14, i32 0, i32 12)
  %16 = load %struct.linux_semctl_args*, %struct.linux_semctl_args** %5, align 8
  %17 = getelementptr inbounds %struct.linux_semctl_args, %struct.linux_semctl_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @LINUX_IPC_64, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  switch i32 %21, label %183 [
    i32 134, label %22
    i32 139, label %24
    i32 138, label %26
    i32 137, label %28
    i32 136, label %30
    i32 128, label %32
    i32 133, label %39
    i32 132, label %73
    i32 130, label %104
    i32 135, label %145
    i32 131, label %145
    i32 140, label %167
    i32 129, label %175
  ]

22:                                               ; preds = %2
  %23 = load i32, i32* @IPC_RMID, align 4
  store i32 %23, i32* %11, align 4
  br label %193

24:                                               ; preds = %2
  %25 = load i32, i32* @GETNCNT, align 4
  store i32 %25, i32* %11, align 4
  br label %193

26:                                               ; preds = %2
  %27 = load i32, i32* @GETPID, align 4
  store i32 %27, i32* %11, align 4
  br label %193

28:                                               ; preds = %2
  %29 = load i32, i32* @GETVAL, align 4
  store i32 %29, i32* %11, align 4
  br label %193

30:                                               ; preds = %2
  %31 = load i32, i32* @GETZCNT, align 4
  store i32 %31, i32* %11, align 4
  br label %193

32:                                               ; preds = %2
  %33 = load i32, i32* @SETVAL, align 4
  store i32 %33, i32* %11, align 4
  %34 = load %struct.linux_semctl_args*, %struct.linux_semctl_args** %5, align 8
  %35 = getelementptr inbounds %struct.linux_semctl_args, %struct.linux_semctl_args* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = bitcast %union.semun* %9 to i32*
  store i32 %37, i32* %38, align 8
  br label %193

39:                                               ; preds = %2
  %40 = load i32, i32* @IPC_SET, align 4
  store i32 %40, i32* %11, align 4
  %41 = load %struct.linux_semctl_args*, %struct.linux_semctl_args** %5, align 8
  %42 = getelementptr inbounds %struct.linux_semctl_args, %struct.linux_semctl_args* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @LINUX_IPC_64, align 4
  %45 = and i32 %43, %44
  %46 = bitcast %struct.l_semid64_ds* %6 to %struct.l_seminfo*
  %47 = load %struct.linux_semctl_args*, %struct.linux_semctl_args** %5, align 8
  %48 = getelementptr inbounds %struct.linux_semctl_args, %struct.linux_semctl_args* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @PTRIN(i32 %50)
  %52 = call i32 @linux_semid_pullup(i32 %45, %struct.l_seminfo* %46, i8* %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %39
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %3, align 4
  br label %206

57:                                               ; preds = %39
  %58 = bitcast %struct.l_semid64_ds* %6 to %struct.l_seminfo*
  %59 = call i32 @linux_to_bsd_semid_ds(%struct.l_seminfo* %58, %struct.semid_ds* %8)
  %60 = bitcast %union.semun* %9 to %struct.semid_ds**
  store %struct.semid_ds* %8, %struct.semid_ds** %60, align 8
  %61 = load %struct.thread*, %struct.thread** %4, align 8
  %62 = load %struct.linux_semctl_args*, %struct.linux_semctl_args** %5, align 8
  %63 = getelementptr inbounds %struct.linux_semctl_args, %struct.linux_semctl_args* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.linux_semctl_args*, %struct.linux_semctl_args** %5, align 8
  %66 = getelementptr inbounds %struct.linux_semctl_args, %struct.linux_semctl_args* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.thread*, %struct.thread** %4, align 8
  %70 = getelementptr inbounds %struct.thread, %struct.thread* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @kern_semctl(%struct.thread* %61, i32 %64, i32 %67, i32 %68, %union.semun* %9, i32* %71)
  store i32 %72, i32* %3, align 4
  br label %206

73:                                               ; preds = %2
  %74 = load i32, i32* @IPC_STAT, align 4
  store i32 %74, i32* %11, align 4
  %75 = bitcast %union.semun* %9 to %struct.semid_ds**
  store %struct.semid_ds* %8, %struct.semid_ds** %75, align 8
  %76 = load %struct.thread*, %struct.thread** %4, align 8
  %77 = load %struct.linux_semctl_args*, %struct.linux_semctl_args** %5, align 8
  %78 = getelementptr inbounds %struct.linux_semctl_args, %struct.linux_semctl_args* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.linux_semctl_args*, %struct.linux_semctl_args** %5, align 8
  %81 = getelementptr inbounds %struct.linux_semctl_args, %struct.linux_semctl_args* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @kern_semctl(%struct.thread* %76, i32 %79, i32 %82, i32 %83, %union.semun* %9, i32* %10)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %73
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %3, align 4
  br label %206

89:                                               ; preds = %73
  %90 = bitcast %struct.l_semid64_ds* %6 to %struct.l_seminfo*
  %91 = call i32 @bsd_to_linux_semid_ds(%struct.semid_ds* %8, %struct.l_seminfo* %90)
  %92 = load %struct.linux_semctl_args*, %struct.linux_semctl_args** %5, align 8
  %93 = getelementptr inbounds %struct.linux_semctl_args, %struct.linux_semctl_args* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @LINUX_IPC_64, align 4
  %96 = and i32 %94, %95
  %97 = bitcast %struct.l_semid64_ds* %6 to %struct.l_seminfo*
  %98 = load %struct.linux_semctl_args*, %struct.linux_semctl_args** %5, align 8
  %99 = getelementptr inbounds %struct.linux_semctl_args, %struct.linux_semctl_args* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @PTRIN(i32 %101)
  %103 = call i32 @linux_semid_pushdown(i32 %96, %struct.l_seminfo* %97, i8* %102)
  store i32 %103, i32* %3, align 4
  br label %206

104:                                              ; preds = %2
  %105 = load i32, i32* @SEM_STAT, align 4
  store i32 %105, i32* %11, align 4
  %106 = bitcast %union.semun* %9 to %struct.semid_ds**
  store %struct.semid_ds* %8, %struct.semid_ds** %106, align 8
  %107 = load %struct.thread*, %struct.thread** %4, align 8
  %108 = load %struct.linux_semctl_args*, %struct.linux_semctl_args** %5, align 8
  %109 = getelementptr inbounds %struct.linux_semctl_args, %struct.linux_semctl_args* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.linux_semctl_args*, %struct.linux_semctl_args** %5, align 8
  %112 = getelementptr inbounds %struct.linux_semctl_args, %struct.linux_semctl_args* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @kern_semctl(%struct.thread* %107, i32 %110, i32 %113, i32 %114, %union.semun* %9, i32* %10)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %104
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %3, align 4
  br label %206

120:                                              ; preds = %104
  %121 = bitcast %struct.l_semid64_ds* %6 to %struct.l_seminfo*
  %122 = call i32 @bsd_to_linux_semid_ds(%struct.semid_ds* %8, %struct.l_seminfo* %121)
  %123 = load %struct.linux_semctl_args*, %struct.linux_semctl_args** %5, align 8
  %124 = getelementptr inbounds %struct.linux_semctl_args, %struct.linux_semctl_args* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @LINUX_IPC_64, align 4
  %127 = and i32 %125, %126
  %128 = bitcast %struct.l_semid64_ds* %6 to %struct.l_seminfo*
  %129 = load %struct.linux_semctl_args*, %struct.linux_semctl_args** %5, align 8
  %130 = getelementptr inbounds %struct.linux_semctl_args, %struct.linux_semctl_args* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @PTRIN(i32 %132)
  %134 = call i32 @linux_semid_pushdown(i32 %127, %struct.l_seminfo* %128, i8* %133)
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %120
  %138 = load i32, i32* %10, align 4
  %139 = load %struct.thread*, %struct.thread** %4, align 8
  %140 = getelementptr inbounds %struct.thread, %struct.thread* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  store i32 %138, i32* %142, align 4
  br label %143

143:                                              ; preds = %137, %120
  %144 = load i32, i32* %12, align 4
  store i32 %144, i32* %3, align 4
  br label %206

145:                                              ; preds = %2, %2
  %146 = getelementptr inbounds %struct.l_seminfo, %struct.l_seminfo* %7, i32 0, i32 2
  %147 = call i32 @bcopy(%struct.TYPE_5__* @seminfo, i32* %146, i32 8)
  %148 = getelementptr inbounds %struct.l_seminfo, %struct.l_seminfo* %7, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct.l_seminfo, %struct.l_seminfo* %7, i32 0, i32 1
  store i32 %149, i32* %150, align 4
  %151 = load %struct.linux_semctl_args*, %struct.linux_semctl_args** %5, align 8
  %152 = getelementptr inbounds %struct.linux_semctl_args, %struct.linux_semctl_args* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i8* @PTRIN(i32 %154)
  %156 = call i32 @copyout(%struct.l_seminfo* %7, i8* %155, i32 12)
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %145
  %160 = load i32, i32* %12, align 4
  store i32 %160, i32* %3, align 4
  br label %206

161:                                              ; preds = %145
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @seminfo, i32 0, i32 0), align 4
  %163 = load %struct.thread*, %struct.thread** %4, align 8
  %164 = getelementptr inbounds %struct.thread, %struct.thread* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  store i32 %162, i32* %166, align 4
  store i32 0, i32* %3, align 4
  br label %206

167:                                              ; preds = %2
  %168 = load i32, i32* @GETALL, align 4
  store i32 %168, i32* %11, align 4
  %169 = load %struct.linux_semctl_args*, %struct.linux_semctl_args** %5, align 8
  %170 = getelementptr inbounds %struct.linux_semctl_args, %struct.linux_semctl_args* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i8* @PTRIN(i32 %172)
  %174 = bitcast %union.semun* %9 to i8**
  store i8* %173, i8** %174, align 8
  br label %193

175:                                              ; preds = %2
  %176 = load i32, i32* @SETALL, align 4
  store i32 %176, i32* %11, align 4
  %177 = load %struct.linux_semctl_args*, %struct.linux_semctl_args** %5, align 8
  %178 = getelementptr inbounds %struct.linux_semctl_args, %struct.linux_semctl_args* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i8* @PTRIN(i32 %180)
  %182 = bitcast %union.semun* %9 to i8**
  store i8* %181, i8** %182, align 8
  br label %193

183:                                              ; preds = %2
  %184 = load %struct.thread*, %struct.thread** %4, align 8
  %185 = load %struct.linux_semctl_args*, %struct.linux_semctl_args** %5, align 8
  %186 = getelementptr inbounds %struct.linux_semctl_args, %struct.linux_semctl_args* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @LINUX_IPC_64, align 4
  %189 = xor i32 %188, -1
  %190 = and i32 %187, %189
  %191 = call i32 @linux_msg(%struct.thread* %184, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %190)
  %192 = load i32, i32* @EINVAL, align 4
  store i32 %192, i32* %3, align 4
  br label %206

193:                                              ; preds = %175, %167, %32, %30, %28, %26, %24, %22
  %194 = load %struct.thread*, %struct.thread** %4, align 8
  %195 = load %struct.linux_semctl_args*, %struct.linux_semctl_args** %5, align 8
  %196 = getelementptr inbounds %struct.linux_semctl_args, %struct.linux_semctl_args* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.linux_semctl_args*, %struct.linux_semctl_args** %5, align 8
  %199 = getelementptr inbounds %struct.linux_semctl_args, %struct.linux_semctl_args* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %11, align 4
  %202 = load %struct.thread*, %struct.thread** %4, align 8
  %203 = getelementptr inbounds %struct.thread, %struct.thread* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = call i32 @kern_semctl(%struct.thread* %194, i32 %197, i32 %200, i32 %201, %union.semun* %9, i32* %204)
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %193, %183, %161, %159, %143, %118, %89, %87, %57, %55
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local i32 @memset(%struct.l_seminfo*, i32, i32) #1

declare dso_local i32 @linux_semid_pullup(i32, %struct.l_seminfo*, i8*) #1

declare dso_local i8* @PTRIN(i32) #1

declare dso_local i32 @linux_to_bsd_semid_ds(%struct.l_seminfo*, %struct.semid_ds*) #1

declare dso_local i32 @kern_semctl(%struct.thread*, i32, i32, i32, %union.semun*, i32*) #1

declare dso_local i32 @bsd_to_linux_semid_ds(%struct.semid_ds*, %struct.l_seminfo*) #1

declare dso_local i32 @linux_semid_pushdown(i32, %struct.l_seminfo*, i8*) #1

declare dso_local i32 @bcopy(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @copyout(%struct.l_seminfo*, i8*, i32) #1

declare dso_local i32 @linux_msg(%struct.thread*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_uw-thread.c_libthread_stub.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_uw-thread.c_libthread_stub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 (i64, i8*, i32, i32, i32*, %struct.TYPE_14__*)* }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i64 }
%struct.thread_map = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.thread_info = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@null_ptid = common dso_local global i64 0, align 8
@DECR_PC_AFTER_BREAK = common dso_local global i64 0, align 8
@thr_brk_addr = common dso_local global i64 0, align 8
@SP_REGNUM = common dso_local global i32 0, align 4
@base_ops = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@SP_ARG0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"[Exited %s]\0A\00", align 1
@inferior_ptid = common dso_local global i64 0, align 8
@switchto_thread = common dso_local global %struct.TYPE_13__* null, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"unexpected condition in libthread_stub()\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"libthread_stub(%s): %s %s %s\00", align 1
@pid = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @libthread_stub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @libthread_stub(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread_map, align 4
  %8 = alloca %struct.TYPE_12__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.thread_info*, align 8
  store i64 %0, i64* %2, align 8
  %12 = load i64, i64* @null_ptid, align 8
  store i64 %12, i64* %10, align 8
  %13 = load i64, i64* %2, align 8
  %14 = call i64 @read_pc_pid(i64 %13)
  %15 = load i64, i64* @DECR_PC_AFTER_BREAK, align 8
  %16 = sub nsw i64 %14, %15
  %17 = load i64, i64* @thr_brk_addr, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %189

20:                                               ; preds = %1
  %21 = load i32, i32* @SP_REGNUM, align 4
  %22 = load i64, i64* %2, align 8
  %23 = call i64 @read_register_pid(i32 %21, i64 %22)
  store i64 %23, i64* %3, align 8
  %24 = load i32 (i64, i8*, i32, i32, i32*, %struct.TYPE_14__*)*, i32 (i64, i8*, i32, i32, i32*, %struct.TYPE_14__*)** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @base_ops, i32 0, i32 0), align 8
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @SP_ARG0, align 8
  %27 = add nsw i64 %25, %26
  %28 = bitcast i64* %4 to i8*
  %29 = call i32 %24(i64 %27, i8* %28, i32 8, i32 0, i32* null, %struct.TYPE_14__* @base_ops)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  br label %170

32:                                               ; preds = %20
  %33 = load i32 (i64, i8*, i32, i32, i32*, %struct.TYPE_14__*)*, i32 (i64, i8*, i32, i32, i32*, %struct.TYPE_14__*)** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @base_ops, i32 0, i32 0), align 8
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* @SP_ARG0, align 8
  %36 = add nsw i64 %34, %35
  %37 = add i64 %36, 8
  %38 = bitcast i32* %6 to i8*
  %39 = call i32 %33(i64 %37, i8* %38, i32 4, i32 0, i32* null, %struct.TYPE_14__* @base_ops)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %32
  br label %170

42:                                               ; preds = %32
  %43 = call i64 (...) @find_main()
  store i64 %43, i64* %5, align 8
  %44 = load i32, i32* %6, align 4
  switch i32 %44, label %172 [
    i32 134, label %45
    i32 131, label %51
    i32 130, label %51
    i32 133, label %119
    i32 136, label %119
    i32 135, label %169
    i32 129, label %169
    i32 128, label %169
    i32 132, label %169
  ]

45:                                               ; preds = %42
  %46 = load i64, i64* %4, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = load i64, i64* %5, align 8
  store i64 %49, i64* %4, align 8
  br label %50

50:                                               ; preds = %48, %45
  br label %51

51:                                               ; preds = %42, %42, %50
  %52 = load i64, i64* %4, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  br label %172

55:                                               ; preds = %51
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @read_map(i64 %56, %struct.thread_map* %7)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  br label %170

60:                                               ; preds = %55
  %61 = load i64, i64* %2, align 8
  %62 = call i32 @PIDGET(i64 %61)
  %63 = getelementptr inbounds %struct.thread_map, %struct.thread_map* %7, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @MKTID(i32 %62, i32 %64)
  store i64 %65, i64* %10, align 8
  %66 = load i32, i32* %6, align 4
  switch i32 %66, label %117 [
    i32 131, label %67
    i32 130, label %90
    i32 134, label %103
  ]

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.thread_map, %struct.thread_map* %7, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  store i32 0, i32* %9, align 4
  br label %83

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.thread_map, %struct.thread_map* %7, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = call i32 @read_lwp(i64 %75, %struct.TYPE_12__* %8)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  br label %170

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %79
  br label %83

83:                                               ; preds = %82, %71
  %84 = getelementptr inbounds %struct.thread_map, %struct.thread_map* %7, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i64, i64* %4, align 8
  %88 = load i64, i64* %10, align 8
  %89 = call i32 @add_thread_uw(i32 %85, i32 %86, i64 %87, i64 %88)
  br label %118

90:                                               ; preds = %60
  %91 = load i64, i64* %10, align 8
  %92 = call i32 @target_pid_to_str(i64 %91)
  %93 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load i64, i64* %10, align 8
  %95 = call i32 @delete_thread(i64 %94)
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* @inferior_ptid, align 8
  %98 = call i32 @ptid_equal(i64 %96, i64 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %90
  %101 = load i64, i64* %2, align 8
  store i64 %101, i64* @inferior_ptid, align 8
  br label %102

102:                                              ; preds = %100, %90
  br label %118

103:                                              ; preds = %60
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** @switchto_thread, align 8
  %105 = icmp ne %struct.TYPE_13__* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %170

107:                                              ; preds = %103
  %108 = load i64, i64* %10, align 8
  %109 = call %struct.TYPE_13__* @find_thread_pid(i64 %108)
  store %struct.TYPE_13__* %109, %struct.TYPE_13__** @switchto_thread, align 8
  %110 = icmp ne %struct.TYPE_13__* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  br label %170

112:                                              ; preds = %107
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** @switchto_thread, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  store i32 0, i32* %116, align 8
  br label %118

117:                                              ; preds = %60
  br label %118

118:                                              ; preds = %117, %112, %102, %83
  br label %172

119:                                              ; preds = %42, %42
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** @switchto_thread, align 8
  %121 = icmp ne %struct.TYPE_13__* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %119
  br label %170

123:                                              ; preds = %119
  %124 = load i32, i32* %6, align 4
  %125 = icmp eq i32 %124, 133
  br i1 %125, label %126, label %164

126:                                              ; preds = %123
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** @switchto_thread, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @read_map(i64 %131, %struct.thread_map* %7)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %126
  br label %170

135:                                              ; preds = %126
  %136 = getelementptr inbounds %struct.thread_map, %struct.thread_map* %7, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %163

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.thread_map, %struct.thread_map* %7, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = call i32 @read_lwp(i64 %142, %struct.TYPE_12__* %8)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %139
  br label %170

146:                                              ; preds = %139
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call %struct.thread_info* @find_thread_lwp(i32 %148)
  store %struct.thread_info* %149, %struct.thread_info** %11, align 8
  %150 = icmp ne %struct.thread_info* %149, null
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load %struct.thread_info*, %struct.thread_info** %11, align 8
  %153 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %152, i32 0, i32 0
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  store i32 0, i32* %155, align 4
  br label %156

156:                                              ; preds = %151, %146
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** @switchto_thread, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 1
  store i32 %158, i32* %162, align 4
  br label %163

163:                                              ; preds = %156, %135
  br label %164

164:                                              ; preds = %163, %123
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** @switchto_thread, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  store i32 1, i32* %168, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** @switchto_thread, align 8
  br label %172

169:                                              ; preds = %42, %42, %42, %42
  br label %170

170:                                              ; preds = %169, %145, %134, %122, %111, %106, %78, %59, %41, %31
  %171 = call i32 @DBG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %172

172:                                              ; preds = %42, %170, %164, %118, %54
  %173 = load i64, i64* @pid, align 8
  %174 = call i32 @dbgpid(i64 %173)
  %175 = load i64, i64* %10, align 8
  %176 = call i32 @dbgpid(i64 %175)
  %177 = load i32, i32* %6, align 4
  %178 = call i32 @dbgchange(i32 %177)
  %179 = load i64, i64* %10, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %172
  %182 = getelementptr inbounds %struct.thread_map, %struct.thread_map* %7, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i8* @dbgstate(i32 %183)
  br label %186

185:                                              ; preds = %172
  br label %186

186:                                              ; preds = %185, %181
  %187 = phi i8* [ %184, %181 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %185 ]
  %188 = call i32 @DBG2(i8* %187)
  br label %189

189:                                              ; preds = %186, %19
  ret void
}

declare dso_local i64 @read_pc_pid(i64) #1

declare dso_local i64 @read_register_pid(i32, i64) #1

declare dso_local i64 @find_main(...) #1

declare dso_local i32 @read_map(i64, %struct.thread_map*) #1

declare dso_local i64 @MKTID(i32, i32) #1

declare dso_local i32 @PIDGET(i64) #1

declare dso_local i32 @read_lwp(i64, %struct.TYPE_12__*) #1

declare dso_local i32 @add_thread_uw(i32, i32, i64, i64) #1

declare dso_local i32 @printf_unfiltered(i8*, i32) #1

declare dso_local i32 @target_pid_to_str(i64) #1

declare dso_local i32 @delete_thread(i64) #1

declare dso_local i32 @ptid_equal(i64, i64) #1

declare dso_local %struct.TYPE_13__* @find_thread_pid(i64) #1

declare dso_local %struct.thread_info* @find_thread_lwp(i32) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @DBG2(i8*) #1

declare dso_local i32 @dbgpid(i64) #1

declare dso_local i32 @dbgchange(i32) #1

declare dso_local i8* @dbgstate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

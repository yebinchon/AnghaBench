; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_fasttrap.c_fasttrap_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_fasttrap.c_fasttrap_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@fasttrap_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"dtrace/fasttrap\00", align 1
@fasttrap_cdev = common dso_local global i32 0, align 4
@fasttrap_cleanup_mtx = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"fasttrap clean\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"dtrace\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@fasttrap_count_mtx = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"fasttrap count mtx\00", align 1
@MUTEX_DEFAULT = common dso_local global i32 0, align 4
@fasttrap_total = common dso_local global i64 0, align 8
@tpoints_hash_size = common dso_local global i32 0, align 4
@FASTTRAP_TPOINTS_DEFAULT_SIZE = common dso_local global i32 0, align 4
@fasttrap_tpoints = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"tracepoints bucket mtx\00", align 1
@FASTTRAP_PROVIDERS_DEFAULT_SIZE = common dso_local global i32 0, align 4
@fasttrap_provs = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"providers bucket mtx\00", align 1
@fasttrap_pid_cleanup_cb = common dso_local global i32 0, align 4
@fasttrap_cleanup_proc = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"ftcleanup\00", align 1
@FASTTRAP_PROCS_DEFAULT_SIZE = common dso_local global i32 0, align 4
@fasttrap_procs = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"processes bucket mtx\00", align 1
@fasttrap_tp_lock = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"fasttrap tracepoint\00", align 1
@thread_dtor = common dso_local global i32 0, align 4
@fasttrap_thread_dtor = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_FIRST = common dso_local global i32 0, align 4
@fasttrap_thread_dtor_tag = common dso_local global i32 0, align 4
@fasttrap_fork = common dso_local global i32 0, align 4
@dtrace_fasttrap_fork = common dso_local global i32* null, align 8
@fasttrap_exec_exit = common dso_local global i32 0, align 4
@dtrace_fasttrap_exit = common dso_local global i32* null, align 8
@dtrace_fasttrap_exec = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"fasttrap\00", align 1
@fasttrap_mops = common dso_local global i32 0, align 4
@fasttrap_meta_id = common dso_local global i32 0, align 4
@DDI_DEV_T_ANY = common dso_local global i32 0, align 4
@DDI_PROP_DONTPASS = common dso_local global i32 0, align 4
@FASTTRAP_MAX_DEFAULT = common dso_local global i32 0, align 4
@devi = common dso_local global i32 0, align 4
@fasttrap_max = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @fasttrap_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fasttrap_load() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @UID_ROOT, align 4
  %6 = load i32, i32* @GID_WHEEL, align 4
  %7 = call i32 @make_dev(i32* @fasttrap_cdevsw, i32 0, i32 %5, i32 %6, i32 384, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %7, i32* @fasttrap_cdev, align 4
  %8 = load i32, i32* @MTX_DEF, align 4
  %9 = call i32 @mtx_init(i32* @fasttrap_cleanup_mtx, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @MUTEX_DEFAULT, align 4
  %11 = call i32 @mutex_init(i32* @fasttrap_count_mtx, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %10, i32* null)
  store i64 0, i64* @fasttrap_total, align 8
  %12 = load i32, i32* @tpoints_hash_size, align 4
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %0
  %16 = load i32, i32* %2, align 4
  %17 = icmp sgt i32 %16, 16777216
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %0
  %19 = load i32, i32* @FASTTRAP_TPOINTS_DEFAULT_SIZE, align 4
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i32, i32* %2, align 4
  store i32 %21, i32* @tpoints_hash_size, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i64 @ISP2(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %2, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fasttrap_tpoints, i32 0, i32 0), align 8
  br label %31

27:                                               ; preds = %20
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @fasttrap_highbit(i32 %28)
  %30 = shl i32 1, %29
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fasttrap_tpoints, i32 0, i32 0), align 8
  br label %31

31:                                               ; preds = %27, %25
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fasttrap_tpoints, i32 0, i32 0), align 8
  %33 = icmp sgt i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34)
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fasttrap_tpoints, i32 0, i32 0), align 8
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fasttrap_tpoints, i32 0, i32 1), align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fasttrap_tpoints, i32 0, i32 0), align 8
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* @KM_SLEEP, align 4
  %43 = call i8* @kmem_zalloc(i32 %41, i32 %42)
  %44 = bitcast i8* %43 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fasttrap_tpoints, i32 0, i32 2), align 8
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %57, %31
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fasttrap_tpoints, i32 0, i32 0), align 8
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fasttrap_tpoints, i32 0, i32 2), align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* @MUTEX_DEFAULT, align 4
  %56 = call i32 @mutex_init(i32* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %55, i32* null)
  br label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %45

60:                                               ; preds = %45
  %61 = load i32, i32* @FASTTRAP_PROVIDERS_DEFAULT_SIZE, align 4
  store i32 %61, i32* %2, align 4
  %62 = load i32, i32* %2, align 4
  %63 = call i64 @ISP2(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %2, align 4
  store i32 %66, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fasttrap_provs, i32 0, i32 0), align 8
  br label %71

67:                                               ; preds = %60
  %68 = load i32, i32* %2, align 4
  %69 = call i32 @fasttrap_highbit(i32 %68)
  %70 = shl i32 1, %69
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fasttrap_provs, i32 0, i32 0), align 8
  br label %71

71:                                               ; preds = %67, %65
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fasttrap_provs, i32 0, i32 0), align 8
  %73 = icmp sgt i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @ASSERT(i32 %74)
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fasttrap_provs, i32 0, i32 0), align 8
  %77 = sub nsw i32 %76, 1
  store i32 %77, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fasttrap_provs, i32 0, i32 1), align 4
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fasttrap_provs, i32 0, i32 0), align 8
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 4
  %81 = trunc i64 %80 to i32
  %82 = load i32, i32* @KM_SLEEP, align 4
  %83 = call i8* @kmem_zalloc(i32 %81, i32 %82)
  %84 = bitcast i8* %83 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %84, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fasttrap_provs, i32 0, i32 2), align 8
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %97, %71
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fasttrap_provs, i32 0, i32 0), align 8
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %85
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fasttrap_provs, i32 0, i32 2), align 8
  %91 = load i32, i32* %3, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* @MUTEX_DEFAULT, align 4
  %96 = call i32 @mutex_init(i32* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %95, i32* null)
  br label %97

97:                                               ; preds = %89
  %98 = load i32, i32* %3, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %3, align 4
  br label %85

100:                                              ; preds = %85
  %101 = load i32, i32* @fasttrap_pid_cleanup_cb, align 4
  %102 = call i32 @kproc_create(i32 %101, i32* null, i32* @fasttrap_cleanup_proc, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %147

105:                                              ; preds = %100
  %106 = load i32, i32* @fasttrap_cdev, align 4
  %107 = call i32 @destroy_dev(i32 %106)
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %119, %105
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fasttrap_provs, i32 0, i32 0), align 8
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %108
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fasttrap_provs, i32 0, i32 2), align 8
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = call i32 @mutex_destroy(i32* %117)
  br label %119

119:                                              ; preds = %112
  %120 = load i32, i32* %3, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %3, align 4
  br label %108

122:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %134, %122
  %124 = load i32, i32* %3, align 4
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fasttrap_tpoints, i32 0, i32 0), align 8
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %137

127:                                              ; preds = %123
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fasttrap_tpoints, i32 0, i32 2), align 8
  %129 = load i32, i32* %3, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = call i32 @mutex_destroy(i32* %132)
  br label %134

134:                                              ; preds = %127
  %135 = load i32, i32* %3, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %3, align 4
  br label %123

137:                                              ; preds = %123
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fasttrap_provs, i32 0, i32 2), align 8
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fasttrap_provs, i32 0, i32 0), align 8
  %140 = sext i32 %139 to i64
  %141 = mul i64 %140, 4
  %142 = trunc i64 %141 to i32
  %143 = call i32 @kmem_free(%struct.TYPE_9__* %138, i32 %142)
  %144 = call i32 @mtx_destroy(i32* @fasttrap_cleanup_mtx)
  %145 = call i32 @mutex_destroy(i32* @fasttrap_count_mtx)
  %146 = load i32, i32* %4, align 4
  store i32 %146, i32* %1, align 4
  br label %194

147:                                              ; preds = %100
  %148 = load i32, i32* @FASTTRAP_PROCS_DEFAULT_SIZE, align 4
  store i32 %148, i32* %2, align 4
  %149 = load i32, i32* %2, align 4
  %150 = call i64 @ISP2(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = load i32, i32* %2, align 4
  store i32 %153, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fasttrap_procs, i32 0, i32 0), align 8
  br label %158

154:                                              ; preds = %147
  %155 = load i32, i32* %2, align 4
  %156 = call i32 @fasttrap_highbit(i32 %155)
  %157 = shl i32 1, %156
  store i32 %157, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fasttrap_procs, i32 0, i32 0), align 8
  br label %158

158:                                              ; preds = %154, %152
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fasttrap_procs, i32 0, i32 0), align 8
  %160 = icmp sgt i32 %159, 0
  %161 = zext i1 %160 to i32
  %162 = call i32 @ASSERT(i32 %161)
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fasttrap_procs, i32 0, i32 0), align 8
  %164 = sub nsw i32 %163, 1
  store i32 %164, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fasttrap_procs, i32 0, i32 1), align 4
  %165 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fasttrap_procs, i32 0, i32 0), align 8
  %166 = sext i32 %165 to i64
  %167 = mul i64 %166, 4
  %168 = trunc i64 %167 to i32
  %169 = load i32, i32* @KM_SLEEP, align 4
  %170 = call i8* @kmem_zalloc(i32 %168, i32 %169)
  %171 = bitcast i8* %170 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %171, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fasttrap_procs, i32 0, i32 2), align 8
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %184, %158
  %173 = load i32, i32* %3, align 4
  %174 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fasttrap_procs, i32 0, i32 0), align 8
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %187

176:                                              ; preds = %172
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fasttrap_procs, i32 0, i32 2), align 8
  %178 = load i32, i32* %3, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i32, i32* @MUTEX_DEFAULT, align 4
  %183 = call i32 @mutex_init(i32* %181, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %182, i32* null)
  br label %184

184:                                              ; preds = %176
  %185 = load i32, i32* %3, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %3, align 4
  br label %172

187:                                              ; preds = %172
  %188 = call i32 @rm_init(i32* @fasttrap_tp_lock, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %189 = load i32, i32* @thread_dtor, align 4
  %190 = load i32, i32* @fasttrap_thread_dtor, align 4
  %191 = load i32, i32* @EVENTHANDLER_PRI_FIRST, align 4
  %192 = call i32 @EVENTHANDLER_REGISTER(i32 %189, i32 %190, i32* null, i32 %191)
  store i32 %192, i32* @fasttrap_thread_dtor_tag, align 4
  store i32* @fasttrap_fork, i32** @dtrace_fasttrap_fork, align 8
  store i32* @fasttrap_exec_exit, i32** @dtrace_fasttrap_exit, align 8
  store i32* @fasttrap_exec_exit, i32** @dtrace_fasttrap_exec, align 8
  %193 = call i32 @dtrace_meta_register(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32* @fasttrap_mops, i32* null, i32* @fasttrap_meta_id)
  store i32 0, i32* %1, align 4
  br label %194

194:                                              ; preds = %187, %137
  %195 = load i32, i32* %1, align 4
  ret i32 %195
}

declare dso_local i32 @make_dev(i32*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i8*, i32) #1

declare dso_local i32 @mutex_init(i32*, i8*, i32, i32*) #1

declare dso_local i64 @ISP2(i32) #1

declare dso_local i32 @fasttrap_highbit(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i8* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @kproc_create(i32, i32*, i32*, i32, i32, i8*) #1

declare dso_local i32 @destroy_dev(i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @rm_init(i32*, i8*) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

declare dso_local i32 @dtrace_meta_register(i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

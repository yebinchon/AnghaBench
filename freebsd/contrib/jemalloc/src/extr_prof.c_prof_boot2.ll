; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_prof.c_prof_boot2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_prof.c_prof_boot2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@config_prof = common dso_local global i32 0, align 4
@opt_prof = common dso_local global i64 0, align 8
@opt_lg_prof_sample = common dso_local global i32 0, align 4
@lg_prof_sample = common dso_local global i32 0, align 4
@opt_prof_active = common dso_local global i32 0, align 4
@prof_active = common dso_local global i32 0, align 4
@prof_active_mtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"prof_active\00", align 1
@WITNESS_RANK_PROF_ACTIVE = common dso_local global i32 0, align 4
@malloc_mutex_rank_exclusive = common dso_local global i32 0, align 4
@opt_prof_gdump = common dso_local global i32 0, align 4
@prof_gdump_val = common dso_local global i32 0, align 4
@prof_gdump_mtx = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"prof_gdump\00", align 1
@WITNESS_RANK_PROF_GDUMP = common dso_local global i32 0, align 4
@opt_prof_thread_active_init = common dso_local global i32 0, align 4
@prof_thread_active_init = common dso_local global i32 0, align 4
@prof_thread_active_init_mtx = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"prof_thread_active_init\00", align 1
@WITNESS_RANK_PROF_THREAD_ACTIVE_INIT = common dso_local global i32 0, align 4
@bt2gctx = common dso_local global i32 0, align 4
@PROF_CKH_MINITEMS = common dso_local global i32 0, align 4
@prof_bt_hash = common dso_local global i32 0, align 4
@prof_bt_keycomp = common dso_local global i32 0, align 4
@bt2gctx_mtx = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"prof_bt2gctx\00", align 1
@WITNESS_RANK_PROF_BT2GCTX = common dso_local global i32 0, align 4
@tdatas = common dso_local global i32 0, align 4
@tdatas_mtx = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"prof_tdatas\00", align 1
@WITNESS_RANK_PROF_TDATAS = common dso_local global i32 0, align 4
@next_thr_uid = common dso_local global i64 0, align 8
@next_thr_uid_mtx = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"prof_next_thr_uid\00", align 1
@WITNESS_RANK_PROF_NEXT_THR_UID = common dso_local global i32 0, align 4
@prof_dump_seq_mtx = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"prof_dump_seq\00", align 1
@WITNESS_RANK_PROF_DUMP_SEQ = common dso_local global i32 0, align 4
@prof_dump_mtx = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"prof_dump\00", align 1
@WITNESS_RANK_PROF_DUMP = common dso_local global i32 0, align 4
@opt_prof_final = common dso_local global i64 0, align 8
@opt_prof_prefix = common dso_local global i8* null, align 8
@prof_fdump = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"<jemalloc>: Error in atexit()\0A\00", align 1
@opt_abort = common dso_local global i64 0, align 8
@PROF_NCTX_LOCKS = common dso_local global i32 0, align 4
@CACHELINE = common dso_local global i32 0, align 4
@gctx_locks = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [10 x i8] c"prof_gctx\00", align 1
@WITNESS_RANK_PROF_GCTX = common dso_local global i32 0, align 4
@PROF_NTDATA_LOCKS = common dso_local global i32 0, align 4
@tdata_locks = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"prof_tdata\00", align 1
@WITNESS_RANK_PROF_TDATA = common dso_local global i32 0, align 4
@prof_booted = common dso_local global i32 0, align 4
@prof_unwind_init_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prof_boot2(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32, i32* @config_prof, align 4
  %6 = call i32 @cassert(i32 %5)
  %7 = load i64, i64* @opt_prof, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %157

9:                                                ; preds = %1
  %10 = load i32, i32* @opt_lg_prof_sample, align 4
  store i32 %10, i32* @lg_prof_sample, align 4
  %11 = load i32, i32* @opt_prof_active, align 4
  store i32 %11, i32* @prof_active, align 4
  %12 = load i32, i32* @WITNESS_RANK_PROF_ACTIVE, align 4
  %13 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %14 = call i64 @malloc_mutex_init(i32* @prof_active_mtx, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %158

17:                                               ; preds = %9
  %18 = load i32, i32* @opt_prof_gdump, align 4
  store i32 %18, i32* @prof_gdump_val, align 4
  %19 = load i32, i32* @WITNESS_RANK_PROF_GDUMP, align 4
  %20 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %21 = call i64 @malloc_mutex_init(i32* @prof_gdump_mtx, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %158

24:                                               ; preds = %17
  %25 = load i32, i32* @opt_prof_thread_active_init, align 4
  store i32 %25, i32* @prof_thread_active_init, align 4
  %26 = load i32, i32* @WITNESS_RANK_PROF_THREAD_ACTIVE_INIT, align 4
  %27 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %28 = call i64 @malloc_mutex_init(i32* @prof_thread_active_init_mtx, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %158

31:                                               ; preds = %24
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @PROF_CKH_MINITEMS, align 4
  %34 = load i32, i32* @prof_bt_hash, align 4
  %35 = load i32, i32* @prof_bt_keycomp, align 4
  %36 = call i64 @ckh_new(i32* %32, i32* @bt2gctx, i32 %33, i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %158

39:                                               ; preds = %31
  %40 = load i32, i32* @WITNESS_RANK_PROF_BT2GCTX, align 4
  %41 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %42 = call i64 @malloc_mutex_init(i32* @bt2gctx_mtx, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %158

45:                                               ; preds = %39
  %46 = call i32 @tdata_tree_new(i32* @tdatas)
  %47 = load i32, i32* @WITNESS_RANK_PROF_TDATAS, align 4
  %48 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %49 = call i64 @malloc_mutex_init(i32* @tdatas_mtx, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 1, i32* %2, align 4
  br label %158

52:                                               ; preds = %45
  store i64 0, i64* @next_thr_uid, align 8
  %53 = load i32, i32* @WITNESS_RANK_PROF_NEXT_THR_UID, align 4
  %54 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %55 = call i64 @malloc_mutex_init(i32* @next_thr_uid_mtx, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 1, i32* %2, align 4
  br label %158

58:                                               ; preds = %52
  %59 = load i32, i32* @WITNESS_RANK_PROF_DUMP_SEQ, align 4
  %60 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %61 = call i64 @malloc_mutex_init(i32* @prof_dump_seq_mtx, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 1, i32* %2, align 4
  br label %158

64:                                               ; preds = %58
  %65 = load i32, i32* @WITNESS_RANK_PROF_DUMP, align 4
  %66 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %67 = call i64 @malloc_mutex_init(i32* @prof_dump_mtx, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 1, i32* %2, align 4
  br label %158

70:                                               ; preds = %64
  %71 = load i64, i64* @opt_prof_final, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %70
  %74 = load i8*, i8** @opt_prof_prefix, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %73
  %80 = load i32, i32* @prof_fdump, align 4
  %81 = call i64 @atexit(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = call i32 @malloc_write(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %85 = load i64, i64* @opt_abort, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = call i32 (...) @abort() #3
  unreachable

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89, %79, %73, %70
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @tsd_tsdn(i32* %91)
  %93 = call i32 (...) @b0get()
  %94 = load i32, i32* @PROF_NCTX_LOCKS, align 4
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 4
  %97 = trunc i64 %96 to i32
  %98 = load i32, i32* @CACHELINE, align 4
  %99 = call i64 @base_alloc(i32 %92, i32 %93, i32 %97, i32 %98)
  %100 = inttoptr i64 %99 to i32*
  store i32* %100, i32** @gctx_locks, align 8
  %101 = load i32*, i32** @gctx_locks, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %90
  store i32 1, i32* %2, align 4
  br label %158

104:                                              ; preds = %90
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %120, %104
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @PROF_NCTX_LOCKS, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %105
  %110 = load i32*, i32** @gctx_locks, align 8
  %111 = load i32, i32* %4, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* @WITNESS_RANK_PROF_GCTX, align 4
  %115 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %116 = call i64 @malloc_mutex_init(i32* %113, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  store i32 1, i32* %2, align 4
  br label %158

119:                                              ; preds = %109
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %4, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %4, align 4
  br label %105

123:                                              ; preds = %105
  %124 = load i32*, i32** %3, align 8
  %125 = call i32 @tsd_tsdn(i32* %124)
  %126 = call i32 (...) @b0get()
  %127 = load i32, i32* @PROF_NTDATA_LOCKS, align 4
  %128 = sext i32 %127 to i64
  %129 = mul i64 %128, 4
  %130 = trunc i64 %129 to i32
  %131 = load i32, i32* @CACHELINE, align 4
  %132 = call i64 @base_alloc(i32 %125, i32 %126, i32 %130, i32 %131)
  %133 = inttoptr i64 %132 to i32*
  store i32* %133, i32** @tdata_locks, align 8
  %134 = load i32*, i32** @tdata_locks, align 8
  %135 = icmp eq i32* %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %123
  store i32 1, i32* %2, align 4
  br label %158

137:                                              ; preds = %123
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %153, %137
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @PROF_NTDATA_LOCKS, align 4
  %141 = icmp ult i32 %139, %140
  br i1 %141, label %142, label %156

142:                                              ; preds = %138
  %143 = load i32*, i32** @tdata_locks, align 8
  %144 = load i32, i32* %4, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* @WITNESS_RANK_PROF_TDATA, align 4
  %148 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %149 = call i64 @malloc_mutex_init(i32* %146, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  store i32 1, i32* %2, align 4
  br label %158

152:                                              ; preds = %142
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %4, align 4
  %155 = add i32 %154, 1
  store i32 %155, i32* %4, align 4
  br label %138

156:                                              ; preds = %138
  br label %157

157:                                              ; preds = %156, %1
  store i32 1, i32* @prof_booted, align 4
  store i32 0, i32* %2, align 4
  br label %158

158:                                              ; preds = %157, %151, %136, %118, %103, %69, %63, %57, %51, %44, %38, %30, %23, %16
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @cassert(i32) #1

declare dso_local i64 @malloc_mutex_init(i32*, i8*, i32, i32) #1

declare dso_local i64 @ckh_new(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @tdata_tree_new(i32*) #1

declare dso_local i64 @atexit(i32) #1

declare dso_local i32 @malloc_write(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @base_alloc(i32, i32, i32, i32) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i32 @b0get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

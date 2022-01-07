; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_trgt.c_kgdb_trgt_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_trgt.c_kgdb_trgt_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cleanup = type { i32 }
%struct.thread_info = type { i32 }
%struct.kthr = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"No vmcore file specified.\00", align 1
@exec_bfd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Can't open a vmcore without a kernel\00", align 1
@current_directory = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@write_files = common dso_local global i64 0, align 8
@O_RDWR = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@kvm_err = common dso_local global i32 0, align 4
@kgdb_resolve_symbol = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to open vmcore: %s\00", align 1
@kgdb_trgt_ops = common dso_local global i32 0, align 4
@kvm = common dso_local global i32* null, align 8
@vmcore = common dso_local global i8* null, align 8
@curkthr = common dso_local global %struct.TYPE_2__* null, align 8
@inferior_ptid = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [87 x i8] c"you won't be able to access this vmcore until you terminate\0Ayour %s; do ``info files''\00", align 1
@target_longname = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @kgdb_trgt_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kgdb_trgt_open(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cleanup*, align 8
  %6 = alloca %struct.thread_info*, align 8
  %7 = alloca %struct.kthr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @target_preopen(i32 %11)
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %2
  %18 = load i32, i32* @exec_bfd, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i8*, i8** %3, align 8
  %24 = call i8* @tilde_expand(i8* %23)
  store i8* %24, i8** %3, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 47
  br i1 %29, label %30, label %37

30:                                               ; preds = %22
  %31 = load i32, i32* @current_directory, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = call i8* @concat(i32 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %32, i32* null)
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @xfree(i8* %34)
  %36 = load i8*, i8** %9, align 8
  store i8* %36, i8** %3, align 8
  br label %37

37:                                               ; preds = %30, %22
  %38 = load i8*, i8** %3, align 8
  %39 = call %struct.cleanup* @make_cleanup(i32 (i8*)* @xfree, i8* %38)
  store %struct.cleanup* %39, %struct.cleanup** %5, align 8
  %40 = load i32, i32* @exec_bfd, align 4
  %41 = call i32 @bfd_get_filename(i32 %40)
  %42 = load i8*, i8** %3, align 8
  %43 = load i64, i64* @write_files, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @O_RDWR, align 4
  br label %49

47:                                               ; preds = %37
  %48 = load i32, i32* @O_RDONLY, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = load i32, i32* @kvm_err, align 4
  %52 = load i32, i32* @kgdb_resolve_symbol, align 4
  %53 = call i32* @kvm_open2(i32 %41, i8* %42, i32 %50, i32 %51, i32 %52)
  store i32* %53, i32** %8, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32, i32* @kvm_err, align 4
  %58 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %56, %49
  %60 = load %struct.cleanup*, %struct.cleanup** %5, align 8
  %61 = call i32 @discard_cleanups(%struct.cleanup* %60)
  %62 = call i32 @unpush_target(i32* @kgdb_trgt_ops)
  %63 = load i32*, i32** %8, align 8
  store i32* %63, i32** @kvm, align 8
  %64 = load i8*, i8** %3, align 8
  store i8* %64, i8** @vmcore, align 8
  %65 = call %struct.cleanup* @make_cleanup(i32 (i8*)* @kgdb_core_cleanup, i8* null)
  store %struct.cleanup* %65, %struct.cleanup** %5, align 8
  %66 = call i32 @push_target(i32* @kgdb_trgt_ops)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %10, align 4
  %70 = load %struct.cleanup*, %struct.cleanup** %5, align 8
  %71 = call i32 @discard_cleanups(%struct.cleanup* %70)
  %72 = call i32 (...) @kgdb_dmesg()
  %73 = call i32 (...) @init_thread_list()
  %74 = call %struct.kthr* (...) @kgdb_thr_init()
  store %struct.kthr* %74, %struct.kthr** %7, align 8
  br label %75

75:                                               ; preds = %78, %59
  %76 = load %struct.kthr*, %struct.kthr** %7, align 8
  %77 = icmp ne %struct.kthr* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load %struct.kthr*, %struct.kthr** %7, align 8
  %80 = getelementptr inbounds %struct.kthr, %struct.kthr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @pid_to_ptid(i32 %81)
  %83 = call %struct.thread_info* @add_thread(i32 %82)
  store %struct.thread_info* %83, %struct.thread_info** %6, align 8
  %84 = load %struct.kthr*, %struct.kthr** %7, align 8
  %85 = call %struct.kthr* @kgdb_thr_next(%struct.kthr* %84)
  store %struct.kthr* %85, %struct.kthr** %7, align 8
  br label %75

86:                                               ; preds = %75
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curkthr, align 8
  %88 = icmp ne %struct.TYPE_2__* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curkthr, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @pid_to_ptid(i32 %92)
  store i32 %93, i32* @inferior_ptid, align 4
  br label %94

94:                                               ; preds = %89, %86
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = call i32 (...) @kld_init()
  %99 = call i32 (...) @flush_cached_frames()
  %100 = call i32 (...) @get_current_frame()
  %101 = call i32 @select_frame(i32 %100)
  %102 = call i32 (...) @get_selected_frame()
  %103 = call i32 (...) @get_selected_frame()
  %104 = call i32 @frame_relative_level(i32 %103)
  %105 = call i32 @print_stack_frame(i32 %102, i32 %104, i32 1)
  br label %109

106:                                              ; preds = %94
  %107 = load i32, i32* @target_longname, align 4
  %108 = call i32 @warning(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %106, %97
  ret void
}

declare dso_local i32 @target_preopen(i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i8* @tilde_expand(i8*) #1

declare dso_local i8* @concat(i32, i8*, i8*, i32*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32 (i8*)*, i8*) #1

declare dso_local i32* @kvm_open2(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @bfd_get_filename(i32) #1

declare dso_local i32 @discard_cleanups(%struct.cleanup*) #1

declare dso_local i32 @unpush_target(i32*) #1

declare dso_local i32 @kgdb_core_cleanup(i8*) #1

declare dso_local i32 @push_target(i32*) #1

declare dso_local i32 @kgdb_dmesg(...) #1

declare dso_local i32 @init_thread_list(...) #1

declare dso_local %struct.kthr* @kgdb_thr_init(...) #1

declare dso_local %struct.thread_info* @add_thread(i32) #1

declare dso_local i32 @pid_to_ptid(i32) #1

declare dso_local %struct.kthr* @kgdb_thr_next(%struct.kthr*) #1

declare dso_local i32 @kld_init(...) #1

declare dso_local i32 @flush_cached_frames(...) #1

declare dso_local i32 @select_frame(i32) #1

declare dso_local i32 @get_current_frame(...) #1

declare dso_local i32 @print_stack_frame(i32, i32, i32) #1

declare dso_local i32 @get_selected_frame(...) #1

declare dso_local i32 @frame_relative_level(i32) #1

declare dso_local i32 @warning(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

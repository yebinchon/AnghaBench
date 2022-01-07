; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi64/extr_cloudabi64_systrace_args.c_systrace_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi64/extr_cloudabi64_systrace_args.c_systrace_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cloudabi_sys_clock_res_get_args = type { i32 }
%struct.cloudabi_sys_clock_time_get_args = type { i32, i32 }
%struct.cloudabi_sys_condvar_signal_args = type { i32, i32, i32 }
%struct.cloudabi_sys_fd_close_args = type { i32 }
%struct.cloudabi_sys_fd_create1_args = type { i32 }
%struct.cloudabi_sys_fd_create2_args = type { i32 }
%struct.cloudabi_sys_fd_datasync_args = type { i32 }
%struct.cloudabi_sys_fd_dup_args = type { i32 }
%struct.cloudabi64_sys_fd_pread_args = type { i64, i32, i32, i32 }
%struct.cloudabi64_sys_fd_pwrite_args = type { i64, i32, i32, i32 }
%struct.cloudabi64_sys_fd_read_args = type { i64, i32, i32 }
%struct.cloudabi_sys_fd_replace_args = type { i32, i32 }
%struct.cloudabi_sys_fd_seek_args = type { i32, i32, i32 }
%struct.cloudabi_sys_fd_stat_get_args = type { i32, i32 }
%struct.cloudabi_sys_fd_stat_put_args = type { i32, i32, i32 }
%struct.cloudabi_sys_fd_sync_args = type { i32 }
%struct.cloudabi64_sys_fd_write_args = type { i64, i32, i32 }
%struct.cloudabi_sys_file_advise_args = type { i32, i32, i32, i32 }
%struct.cloudabi_sys_file_allocate_args = type { i32, i32, i32 }
%struct.cloudabi_sys_file_create_args = type { i64, i32, i32, i32 }
%struct.cloudabi_sys_file_link_args = type { i64, i64, i32, i32, i32, i32 }
%struct.cloudabi_sys_file_open_args = type { i64, i32, i32, i32, i32 }
%struct.cloudabi_sys_file_readdir_args = type { i64, i32, i32, i32 }
%struct.cloudabi_sys_file_readlink_args = type { i64, i64, i32, i32, i32 }
%struct.cloudabi_sys_file_rename_args = type { i64, i64, i32, i32, i32, i32 }
%struct.cloudabi_sys_file_stat_fget_args = type { i32, i32 }
%struct.cloudabi_sys_file_stat_fput_args = type { i32, i32, i32 }
%struct.cloudabi_sys_file_stat_get_args = type { i64, i32, i32, i32 }
%struct.cloudabi_sys_file_stat_put_args = type { i64, i32, i32, i32, i32 }
%struct.cloudabi_sys_file_symlink_args = type { i64, i64, i32, i32, i32 }
%struct.cloudabi_sys_file_unlink_args = type { i64, i32, i32, i32 }
%struct.cloudabi_sys_lock_unlock_args = type { i32, i32 }
%struct.cloudabi_sys_mem_advise_args = type { i64, i32, i32 }
%struct.cloudabi_sys_mem_map_args = type { i64, i32, i32, i32, i32, i32 }
%struct.cloudabi_sys_mem_protect_args = type { i64, i32, i32 }
%struct.cloudabi_sys_mem_sync_args = type { i64, i32, i32 }
%struct.cloudabi_sys_mem_unmap_args = type { i64, i32 }
%struct.cloudabi64_sys_poll_args = type { i64, i32, i32 }
%struct.cloudabi_sys_proc_exec_args = type { i64, i64, i32, i32, i32 }
%struct.cloudabi_sys_proc_exit_args = type { i32 }
%struct.cloudabi_sys_proc_raise_args = type { i32 }
%struct.cloudabi_sys_random_get_args = type { i64, i32 }
%struct.cloudabi64_sys_sock_recv_args = type { i32, i32, i32 }
%struct.cloudabi64_sys_sock_send_args = type { i32, i32, i32 }
%struct.cloudabi_sys_sock_shutdown_args = type { i32, i32 }
%struct.cloudabi64_sys_thread_create_args = type { i32 }
%struct.cloudabi_sys_thread_exit_args = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i64*, i32*)* @systrace_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @systrace_args(i32 %0, i8* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.cloudabi_sys_clock_res_get_args*, align 8
  %11 = alloca %struct.cloudabi_sys_clock_time_get_args*, align 8
  %12 = alloca %struct.cloudabi_sys_condvar_signal_args*, align 8
  %13 = alloca %struct.cloudabi_sys_fd_close_args*, align 8
  %14 = alloca %struct.cloudabi_sys_fd_create1_args*, align 8
  %15 = alloca %struct.cloudabi_sys_fd_create2_args*, align 8
  %16 = alloca %struct.cloudabi_sys_fd_datasync_args*, align 8
  %17 = alloca %struct.cloudabi_sys_fd_dup_args*, align 8
  %18 = alloca %struct.cloudabi64_sys_fd_pread_args*, align 8
  %19 = alloca %struct.cloudabi64_sys_fd_pwrite_args*, align 8
  %20 = alloca %struct.cloudabi64_sys_fd_read_args*, align 8
  %21 = alloca %struct.cloudabi_sys_fd_replace_args*, align 8
  %22 = alloca %struct.cloudabi_sys_fd_seek_args*, align 8
  %23 = alloca %struct.cloudabi_sys_fd_stat_get_args*, align 8
  %24 = alloca %struct.cloudabi_sys_fd_stat_put_args*, align 8
  %25 = alloca %struct.cloudabi_sys_fd_sync_args*, align 8
  %26 = alloca %struct.cloudabi64_sys_fd_write_args*, align 8
  %27 = alloca %struct.cloudabi_sys_file_advise_args*, align 8
  %28 = alloca %struct.cloudabi_sys_file_allocate_args*, align 8
  %29 = alloca %struct.cloudabi_sys_file_create_args*, align 8
  %30 = alloca %struct.cloudabi_sys_file_link_args*, align 8
  %31 = alloca %struct.cloudabi_sys_file_open_args*, align 8
  %32 = alloca %struct.cloudabi_sys_file_readdir_args*, align 8
  %33 = alloca %struct.cloudabi_sys_file_readlink_args*, align 8
  %34 = alloca %struct.cloudabi_sys_file_rename_args*, align 8
  %35 = alloca %struct.cloudabi_sys_file_stat_fget_args*, align 8
  %36 = alloca %struct.cloudabi_sys_file_stat_fput_args*, align 8
  %37 = alloca %struct.cloudabi_sys_file_stat_get_args*, align 8
  %38 = alloca %struct.cloudabi_sys_file_stat_put_args*, align 8
  %39 = alloca %struct.cloudabi_sys_file_symlink_args*, align 8
  %40 = alloca %struct.cloudabi_sys_file_unlink_args*, align 8
  %41 = alloca %struct.cloudabi_sys_lock_unlock_args*, align 8
  %42 = alloca %struct.cloudabi_sys_mem_advise_args*, align 8
  %43 = alloca %struct.cloudabi_sys_mem_map_args*, align 8
  %44 = alloca %struct.cloudabi_sys_mem_protect_args*, align 8
  %45 = alloca %struct.cloudabi_sys_mem_sync_args*, align 8
  %46 = alloca %struct.cloudabi_sys_mem_unmap_args*, align 8
  %47 = alloca %struct.cloudabi64_sys_poll_args*, align 8
  %48 = alloca %struct.cloudabi_sys_proc_exec_args*, align 8
  %49 = alloca %struct.cloudabi_sys_proc_exit_args*, align 8
  %50 = alloca %struct.cloudabi_sys_proc_raise_args*, align 8
  %51 = alloca %struct.cloudabi_sys_random_get_args*, align 8
  %52 = alloca %struct.cloudabi64_sys_sock_recv_args*, align 8
  %53 = alloca %struct.cloudabi64_sys_sock_send_args*, align 8
  %54 = alloca %struct.cloudabi_sys_sock_shutdown_args*, align 8
  %55 = alloca %struct.cloudabi64_sys_thread_create_args*, align 8
  %56 = alloca %struct.cloudabi_sys_thread_exit_args*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  %57 = load i64*, i64** %7, align 8
  %58 = bitcast i64* %57 to i32*
  store i32* %58, i32** %9, align 8
  %59 = load i32, i32* %5, align 4
  switch i32 %59, label %985 [
    i32 0, label %60
    i32 1, label %69
    i32 2, label %83
    i32 3, label %103
    i32 4, label %112
    i32 5, label %121
    i32 6, label %130
    i32 7, label %139
    i32 8, label %148
    i32 9, label %173
    i32 10, label %198
    i32 11, label %218
    i32 12, label %232
    i32 13, label %251
    i32 14, label %266
    i32 15, label %286
    i32 16, label %295
    i32 17, label %315
    i32 18, label %339
    i32 19, label %358
    i32 20, label %383
    i32 21, label %419
    i32 22, label %450
    i32 23, label %475
    i32 24, label %506
    i32 25, label %542
    i32 26, label %557
    i32 27, label %577
    i32 28, label %603
    i32 29, label %634
    i32 30, label %665
    i32 31, label %690
    i32 32, label %705
    i32 33, label %725
    i32 34, label %760
    i32 35, label %780
    i32 36, label %800
    i32 37, label %815
    i32 38, label %836
    i32 39, label %867
    i32 40, label %876
    i32 41, label %878
    i32 42, label %887
    i32 43, label %902
    i32 44, label %923
    i32 45, label %944
    i32 46, label %958
    i32 47, label %968
    i32 48, label %983
  ]

60:                                               ; preds = %4
  %61 = load i8*, i8** %6, align 8
  %62 = bitcast i8* %61 to %struct.cloudabi_sys_clock_res_get_args*
  store %struct.cloudabi_sys_clock_res_get_args* %62, %struct.cloudabi_sys_clock_res_get_args** %10, align 8
  %63 = load %struct.cloudabi_sys_clock_res_get_args*, %struct.cloudabi_sys_clock_res_get_args** %10, align 8
  %64 = getelementptr inbounds %struct.cloudabi_sys_clock_res_get_args, %struct.cloudabi_sys_clock_res_get_args* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %65, i32* %67, align 4
  %68 = load i32*, i32** %8, align 8
  store i32 1, i32* %68, align 4
  br label %987

69:                                               ; preds = %4
  %70 = load i8*, i8** %6, align 8
  %71 = bitcast i8* %70 to %struct.cloudabi_sys_clock_time_get_args*
  store %struct.cloudabi_sys_clock_time_get_args* %71, %struct.cloudabi_sys_clock_time_get_args** %11, align 8
  %72 = load %struct.cloudabi_sys_clock_time_get_args*, %struct.cloudabi_sys_clock_time_get_args** %11, align 8
  %73 = getelementptr inbounds %struct.cloudabi_sys_clock_time_get_args, %struct.cloudabi_sys_clock_time_get_args* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.cloudabi_sys_clock_time_get_args*, %struct.cloudabi_sys_clock_time_get_args** %11, align 8
  %78 = getelementptr inbounds %struct.cloudabi_sys_clock_time_get_args, %struct.cloudabi_sys_clock_time_get_args* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32 %79, i32* %81, align 4
  %82 = load i32*, i32** %8, align 8
  store i32 2, i32* %82, align 4
  br label %987

83:                                               ; preds = %4
  %84 = load i8*, i8** %6, align 8
  %85 = bitcast i8* %84 to %struct.cloudabi_sys_condvar_signal_args*
  store %struct.cloudabi_sys_condvar_signal_args* %85, %struct.cloudabi_sys_condvar_signal_args** %12, align 8
  %86 = load %struct.cloudabi_sys_condvar_signal_args*, %struct.cloudabi_sys_condvar_signal_args** %12, align 8
  %87 = getelementptr inbounds %struct.cloudabi_sys_condvar_signal_args, %struct.cloudabi_sys_condvar_signal_args* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64*, i64** %7, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 0
  store i64 %89, i64* %91, align 8
  %92 = load %struct.cloudabi_sys_condvar_signal_args*, %struct.cloudabi_sys_condvar_signal_args** %12, align 8
  %93 = getelementptr inbounds %struct.cloudabi_sys_condvar_signal_args, %struct.cloudabi_sys_condvar_signal_args* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %9, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.cloudabi_sys_condvar_signal_args*, %struct.cloudabi_sys_condvar_signal_args** %12, align 8
  %98 = getelementptr inbounds %struct.cloudabi_sys_condvar_signal_args, %struct.cloudabi_sys_condvar_signal_args* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %9, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  store i32 %99, i32* %101, align 4
  %102 = load i32*, i32** %8, align 8
  store i32 3, i32* %102, align 4
  br label %987

103:                                              ; preds = %4
  %104 = load i8*, i8** %6, align 8
  %105 = bitcast i8* %104 to %struct.cloudabi_sys_fd_close_args*
  store %struct.cloudabi_sys_fd_close_args* %105, %struct.cloudabi_sys_fd_close_args** %13, align 8
  %106 = load %struct.cloudabi_sys_fd_close_args*, %struct.cloudabi_sys_fd_close_args** %13, align 8
  %107 = getelementptr inbounds %struct.cloudabi_sys_fd_close_args, %struct.cloudabi_sys_fd_close_args* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %9, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  store i32 %108, i32* %110, align 4
  %111 = load i32*, i32** %8, align 8
  store i32 1, i32* %111, align 4
  br label %987

112:                                              ; preds = %4
  %113 = load i8*, i8** %6, align 8
  %114 = bitcast i8* %113 to %struct.cloudabi_sys_fd_create1_args*
  store %struct.cloudabi_sys_fd_create1_args* %114, %struct.cloudabi_sys_fd_create1_args** %14, align 8
  %115 = load %struct.cloudabi_sys_fd_create1_args*, %struct.cloudabi_sys_fd_create1_args** %14, align 8
  %116 = getelementptr inbounds %struct.cloudabi_sys_fd_create1_args, %struct.cloudabi_sys_fd_create1_args* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %9, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  store i32 %117, i32* %119, align 4
  %120 = load i32*, i32** %8, align 8
  store i32 1, i32* %120, align 4
  br label %987

121:                                              ; preds = %4
  %122 = load i8*, i8** %6, align 8
  %123 = bitcast i8* %122 to %struct.cloudabi_sys_fd_create2_args*
  store %struct.cloudabi_sys_fd_create2_args* %123, %struct.cloudabi_sys_fd_create2_args** %15, align 8
  %124 = load %struct.cloudabi_sys_fd_create2_args*, %struct.cloudabi_sys_fd_create2_args** %15, align 8
  %125 = getelementptr inbounds %struct.cloudabi_sys_fd_create2_args, %struct.cloudabi_sys_fd_create2_args* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %9, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  store i32 %126, i32* %128, align 4
  %129 = load i32*, i32** %8, align 8
  store i32 1, i32* %129, align 4
  br label %987

130:                                              ; preds = %4
  %131 = load i8*, i8** %6, align 8
  %132 = bitcast i8* %131 to %struct.cloudabi_sys_fd_datasync_args*
  store %struct.cloudabi_sys_fd_datasync_args* %132, %struct.cloudabi_sys_fd_datasync_args** %16, align 8
  %133 = load %struct.cloudabi_sys_fd_datasync_args*, %struct.cloudabi_sys_fd_datasync_args** %16, align 8
  %134 = getelementptr inbounds %struct.cloudabi_sys_fd_datasync_args, %struct.cloudabi_sys_fd_datasync_args* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %9, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  store i32 %135, i32* %137, align 4
  %138 = load i32*, i32** %8, align 8
  store i32 1, i32* %138, align 4
  br label %987

139:                                              ; preds = %4
  %140 = load i8*, i8** %6, align 8
  %141 = bitcast i8* %140 to %struct.cloudabi_sys_fd_dup_args*
  store %struct.cloudabi_sys_fd_dup_args* %141, %struct.cloudabi_sys_fd_dup_args** %17, align 8
  %142 = load %struct.cloudabi_sys_fd_dup_args*, %struct.cloudabi_sys_fd_dup_args** %17, align 8
  %143 = getelementptr inbounds %struct.cloudabi_sys_fd_dup_args, %struct.cloudabi_sys_fd_dup_args* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %9, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  store i32 %144, i32* %146, align 4
  %147 = load i32*, i32** %8, align 8
  store i32 1, i32* %147, align 4
  br label %987

148:                                              ; preds = %4
  %149 = load i8*, i8** %6, align 8
  %150 = bitcast i8* %149 to %struct.cloudabi64_sys_fd_pread_args*
  store %struct.cloudabi64_sys_fd_pread_args* %150, %struct.cloudabi64_sys_fd_pread_args** %18, align 8
  %151 = load %struct.cloudabi64_sys_fd_pread_args*, %struct.cloudabi64_sys_fd_pread_args** %18, align 8
  %152 = getelementptr inbounds %struct.cloudabi64_sys_fd_pread_args, %struct.cloudabi64_sys_fd_pread_args* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = load i32*, i32** %9, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  store i32 %153, i32* %155, align 4
  %156 = load %struct.cloudabi64_sys_fd_pread_args*, %struct.cloudabi64_sys_fd_pread_args** %18, align 8
  %157 = getelementptr inbounds %struct.cloudabi64_sys_fd_pread_args, %struct.cloudabi64_sys_fd_pread_args* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = load i64*, i64** %7, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 1
  store i64 %159, i64* %161, align 8
  %162 = load %struct.cloudabi64_sys_fd_pread_args*, %struct.cloudabi64_sys_fd_pread_args** %18, align 8
  %163 = getelementptr inbounds %struct.cloudabi64_sys_fd_pread_args, %struct.cloudabi64_sys_fd_pread_args* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64*, i64** %7, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 2
  store i64 %164, i64* %166, align 8
  %167 = load %struct.cloudabi64_sys_fd_pread_args*, %struct.cloudabi64_sys_fd_pread_args** %18, align 8
  %168 = getelementptr inbounds %struct.cloudabi64_sys_fd_pread_args, %struct.cloudabi64_sys_fd_pread_args* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load i32*, i32** %9, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 3
  store i32 %169, i32* %171, align 4
  %172 = load i32*, i32** %8, align 8
  store i32 4, i32* %172, align 4
  br label %987

173:                                              ; preds = %4
  %174 = load i8*, i8** %6, align 8
  %175 = bitcast i8* %174 to %struct.cloudabi64_sys_fd_pwrite_args*
  store %struct.cloudabi64_sys_fd_pwrite_args* %175, %struct.cloudabi64_sys_fd_pwrite_args** %19, align 8
  %176 = load %struct.cloudabi64_sys_fd_pwrite_args*, %struct.cloudabi64_sys_fd_pwrite_args** %19, align 8
  %177 = getelementptr inbounds %struct.cloudabi64_sys_fd_pwrite_args, %struct.cloudabi64_sys_fd_pwrite_args* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = load i32*, i32** %9, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  store i32 %178, i32* %180, align 4
  %181 = load %struct.cloudabi64_sys_fd_pwrite_args*, %struct.cloudabi64_sys_fd_pwrite_args** %19, align 8
  %182 = getelementptr inbounds %struct.cloudabi64_sys_fd_pwrite_args, %struct.cloudabi64_sys_fd_pwrite_args* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = load i64*, i64** %7, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 1
  store i64 %184, i64* %186, align 8
  %187 = load %struct.cloudabi64_sys_fd_pwrite_args*, %struct.cloudabi64_sys_fd_pwrite_args** %19, align 8
  %188 = getelementptr inbounds %struct.cloudabi64_sys_fd_pwrite_args, %struct.cloudabi64_sys_fd_pwrite_args* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64*, i64** %7, align 8
  %191 = getelementptr inbounds i64, i64* %190, i64 2
  store i64 %189, i64* %191, align 8
  %192 = load %struct.cloudabi64_sys_fd_pwrite_args*, %struct.cloudabi64_sys_fd_pwrite_args** %19, align 8
  %193 = getelementptr inbounds %struct.cloudabi64_sys_fd_pwrite_args, %struct.cloudabi64_sys_fd_pwrite_args* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load i32*, i32** %9, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 3
  store i32 %194, i32* %196, align 4
  %197 = load i32*, i32** %8, align 8
  store i32 4, i32* %197, align 4
  br label %987

198:                                              ; preds = %4
  %199 = load i8*, i8** %6, align 8
  %200 = bitcast i8* %199 to %struct.cloudabi64_sys_fd_read_args*
  store %struct.cloudabi64_sys_fd_read_args* %200, %struct.cloudabi64_sys_fd_read_args** %20, align 8
  %201 = load %struct.cloudabi64_sys_fd_read_args*, %struct.cloudabi64_sys_fd_read_args** %20, align 8
  %202 = getelementptr inbounds %struct.cloudabi64_sys_fd_read_args, %struct.cloudabi64_sys_fd_read_args* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load i32*, i32** %9, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  store i32 %203, i32* %205, align 4
  %206 = load %struct.cloudabi64_sys_fd_read_args*, %struct.cloudabi64_sys_fd_read_args** %20, align 8
  %207 = getelementptr inbounds %struct.cloudabi64_sys_fd_read_args, %struct.cloudabi64_sys_fd_read_args* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = load i64*, i64** %7, align 8
  %211 = getelementptr inbounds i64, i64* %210, i64 1
  store i64 %209, i64* %211, align 8
  %212 = load %struct.cloudabi64_sys_fd_read_args*, %struct.cloudabi64_sys_fd_read_args** %20, align 8
  %213 = getelementptr inbounds %struct.cloudabi64_sys_fd_read_args, %struct.cloudabi64_sys_fd_read_args* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64*, i64** %7, align 8
  %216 = getelementptr inbounds i64, i64* %215, i64 2
  store i64 %214, i64* %216, align 8
  %217 = load i32*, i32** %8, align 8
  store i32 3, i32* %217, align 4
  br label %987

218:                                              ; preds = %4
  %219 = load i8*, i8** %6, align 8
  %220 = bitcast i8* %219 to %struct.cloudabi_sys_fd_replace_args*
  store %struct.cloudabi_sys_fd_replace_args* %220, %struct.cloudabi_sys_fd_replace_args** %21, align 8
  %221 = load %struct.cloudabi_sys_fd_replace_args*, %struct.cloudabi_sys_fd_replace_args** %21, align 8
  %222 = getelementptr inbounds %struct.cloudabi_sys_fd_replace_args, %struct.cloudabi_sys_fd_replace_args* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load i32*, i32** %9, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  store i32 %223, i32* %225, align 4
  %226 = load %struct.cloudabi_sys_fd_replace_args*, %struct.cloudabi_sys_fd_replace_args** %21, align 8
  %227 = getelementptr inbounds %struct.cloudabi_sys_fd_replace_args, %struct.cloudabi_sys_fd_replace_args* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32*, i32** %9, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 1
  store i32 %228, i32* %230, align 4
  %231 = load i32*, i32** %8, align 8
  store i32 2, i32* %231, align 4
  br label %987

232:                                              ; preds = %4
  %233 = load i8*, i8** %6, align 8
  %234 = bitcast i8* %233 to %struct.cloudabi_sys_fd_seek_args*
  store %struct.cloudabi_sys_fd_seek_args* %234, %struct.cloudabi_sys_fd_seek_args** %22, align 8
  %235 = load %struct.cloudabi_sys_fd_seek_args*, %struct.cloudabi_sys_fd_seek_args** %22, align 8
  %236 = getelementptr inbounds %struct.cloudabi_sys_fd_seek_args, %struct.cloudabi_sys_fd_seek_args* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = load i32*, i32** %9, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 0
  store i32 %237, i32* %239, align 4
  %240 = load %struct.cloudabi_sys_fd_seek_args*, %struct.cloudabi_sys_fd_seek_args** %22, align 8
  %241 = getelementptr inbounds %struct.cloudabi_sys_fd_seek_args, %struct.cloudabi_sys_fd_seek_args* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load i32*, i32** %9, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 1
  store i32 %242, i32* %244, align 4
  %245 = load %struct.cloudabi_sys_fd_seek_args*, %struct.cloudabi_sys_fd_seek_args** %22, align 8
  %246 = getelementptr inbounds %struct.cloudabi_sys_fd_seek_args, %struct.cloudabi_sys_fd_seek_args* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32*, i32** %9, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 2
  store i32 %247, i32* %249, align 4
  %250 = load i32*, i32** %8, align 8
  store i32 3, i32* %250, align 4
  br label %987

251:                                              ; preds = %4
  %252 = load i8*, i8** %6, align 8
  %253 = bitcast i8* %252 to %struct.cloudabi_sys_fd_stat_get_args*
  store %struct.cloudabi_sys_fd_stat_get_args* %253, %struct.cloudabi_sys_fd_stat_get_args** %23, align 8
  %254 = load %struct.cloudabi_sys_fd_stat_get_args*, %struct.cloudabi_sys_fd_stat_get_args** %23, align 8
  %255 = getelementptr inbounds %struct.cloudabi_sys_fd_stat_get_args, %struct.cloudabi_sys_fd_stat_get_args* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load i32*, i32** %9, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 0
  store i32 %256, i32* %258, align 4
  %259 = load %struct.cloudabi_sys_fd_stat_get_args*, %struct.cloudabi_sys_fd_stat_get_args** %23, align 8
  %260 = getelementptr inbounds %struct.cloudabi_sys_fd_stat_get_args, %struct.cloudabi_sys_fd_stat_get_args* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = sext i32 %261 to i64
  %263 = load i64*, i64** %7, align 8
  %264 = getelementptr inbounds i64, i64* %263, i64 1
  store i64 %262, i64* %264, align 8
  %265 = load i32*, i32** %8, align 8
  store i32 2, i32* %265, align 4
  br label %987

266:                                              ; preds = %4
  %267 = load i8*, i8** %6, align 8
  %268 = bitcast i8* %267 to %struct.cloudabi_sys_fd_stat_put_args*
  store %struct.cloudabi_sys_fd_stat_put_args* %268, %struct.cloudabi_sys_fd_stat_put_args** %24, align 8
  %269 = load %struct.cloudabi_sys_fd_stat_put_args*, %struct.cloudabi_sys_fd_stat_put_args** %24, align 8
  %270 = getelementptr inbounds %struct.cloudabi_sys_fd_stat_put_args, %struct.cloudabi_sys_fd_stat_put_args* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = load i32*, i32** %9, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 0
  store i32 %271, i32* %273, align 4
  %274 = load %struct.cloudabi_sys_fd_stat_put_args*, %struct.cloudabi_sys_fd_stat_put_args** %24, align 8
  %275 = getelementptr inbounds %struct.cloudabi_sys_fd_stat_put_args, %struct.cloudabi_sys_fd_stat_put_args* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = sext i32 %276 to i64
  %278 = load i64*, i64** %7, align 8
  %279 = getelementptr inbounds i64, i64* %278, i64 1
  store i64 %277, i64* %279, align 8
  %280 = load %struct.cloudabi_sys_fd_stat_put_args*, %struct.cloudabi_sys_fd_stat_put_args** %24, align 8
  %281 = getelementptr inbounds %struct.cloudabi_sys_fd_stat_put_args, %struct.cloudabi_sys_fd_stat_put_args* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load i32*, i32** %9, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 2
  store i32 %282, i32* %284, align 4
  %285 = load i32*, i32** %8, align 8
  store i32 3, i32* %285, align 4
  br label %987

286:                                              ; preds = %4
  %287 = load i8*, i8** %6, align 8
  %288 = bitcast i8* %287 to %struct.cloudabi_sys_fd_sync_args*
  store %struct.cloudabi_sys_fd_sync_args* %288, %struct.cloudabi_sys_fd_sync_args** %25, align 8
  %289 = load %struct.cloudabi_sys_fd_sync_args*, %struct.cloudabi_sys_fd_sync_args** %25, align 8
  %290 = getelementptr inbounds %struct.cloudabi_sys_fd_sync_args, %struct.cloudabi_sys_fd_sync_args* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = load i32*, i32** %9, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 0
  store i32 %291, i32* %293, align 4
  %294 = load i32*, i32** %8, align 8
  store i32 1, i32* %294, align 4
  br label %987

295:                                              ; preds = %4
  %296 = load i8*, i8** %6, align 8
  %297 = bitcast i8* %296 to %struct.cloudabi64_sys_fd_write_args*
  store %struct.cloudabi64_sys_fd_write_args* %297, %struct.cloudabi64_sys_fd_write_args** %26, align 8
  %298 = load %struct.cloudabi64_sys_fd_write_args*, %struct.cloudabi64_sys_fd_write_args** %26, align 8
  %299 = getelementptr inbounds %struct.cloudabi64_sys_fd_write_args, %struct.cloudabi64_sys_fd_write_args* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = load i32*, i32** %9, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 0
  store i32 %300, i32* %302, align 4
  %303 = load %struct.cloudabi64_sys_fd_write_args*, %struct.cloudabi64_sys_fd_write_args** %26, align 8
  %304 = getelementptr inbounds %struct.cloudabi64_sys_fd_write_args, %struct.cloudabi64_sys_fd_write_args* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = sext i32 %305 to i64
  %307 = load i64*, i64** %7, align 8
  %308 = getelementptr inbounds i64, i64* %307, i64 1
  store i64 %306, i64* %308, align 8
  %309 = load %struct.cloudabi64_sys_fd_write_args*, %struct.cloudabi64_sys_fd_write_args** %26, align 8
  %310 = getelementptr inbounds %struct.cloudabi64_sys_fd_write_args, %struct.cloudabi64_sys_fd_write_args* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load i64*, i64** %7, align 8
  %313 = getelementptr inbounds i64, i64* %312, i64 2
  store i64 %311, i64* %313, align 8
  %314 = load i32*, i32** %8, align 8
  store i32 3, i32* %314, align 4
  br label %987

315:                                              ; preds = %4
  %316 = load i8*, i8** %6, align 8
  %317 = bitcast i8* %316 to %struct.cloudabi_sys_file_advise_args*
  store %struct.cloudabi_sys_file_advise_args* %317, %struct.cloudabi_sys_file_advise_args** %27, align 8
  %318 = load %struct.cloudabi_sys_file_advise_args*, %struct.cloudabi_sys_file_advise_args** %27, align 8
  %319 = getelementptr inbounds %struct.cloudabi_sys_file_advise_args, %struct.cloudabi_sys_file_advise_args* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 4
  %321 = load i32*, i32** %9, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 0
  store i32 %320, i32* %322, align 4
  %323 = load %struct.cloudabi_sys_file_advise_args*, %struct.cloudabi_sys_file_advise_args** %27, align 8
  %324 = getelementptr inbounds %struct.cloudabi_sys_file_advise_args, %struct.cloudabi_sys_file_advise_args* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 4
  %326 = load i32*, i32** %9, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 1
  store i32 %325, i32* %327, align 4
  %328 = load %struct.cloudabi_sys_file_advise_args*, %struct.cloudabi_sys_file_advise_args** %27, align 8
  %329 = getelementptr inbounds %struct.cloudabi_sys_file_advise_args, %struct.cloudabi_sys_file_advise_args* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = load i32*, i32** %9, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 2
  store i32 %330, i32* %332, align 4
  %333 = load %struct.cloudabi_sys_file_advise_args*, %struct.cloudabi_sys_file_advise_args** %27, align 8
  %334 = getelementptr inbounds %struct.cloudabi_sys_file_advise_args, %struct.cloudabi_sys_file_advise_args* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = load i32*, i32** %9, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 3
  store i32 %335, i32* %337, align 4
  %338 = load i32*, i32** %8, align 8
  store i32 4, i32* %338, align 4
  br label %987

339:                                              ; preds = %4
  %340 = load i8*, i8** %6, align 8
  %341 = bitcast i8* %340 to %struct.cloudabi_sys_file_allocate_args*
  store %struct.cloudabi_sys_file_allocate_args* %341, %struct.cloudabi_sys_file_allocate_args** %28, align 8
  %342 = load %struct.cloudabi_sys_file_allocate_args*, %struct.cloudabi_sys_file_allocate_args** %28, align 8
  %343 = getelementptr inbounds %struct.cloudabi_sys_file_allocate_args, %struct.cloudabi_sys_file_allocate_args* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 4
  %345 = load i32*, i32** %9, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 0
  store i32 %344, i32* %346, align 4
  %347 = load %struct.cloudabi_sys_file_allocate_args*, %struct.cloudabi_sys_file_allocate_args** %28, align 8
  %348 = getelementptr inbounds %struct.cloudabi_sys_file_allocate_args, %struct.cloudabi_sys_file_allocate_args* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = load i32*, i32** %9, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 1
  store i32 %349, i32* %351, align 4
  %352 = load %struct.cloudabi_sys_file_allocate_args*, %struct.cloudabi_sys_file_allocate_args** %28, align 8
  %353 = getelementptr inbounds %struct.cloudabi_sys_file_allocate_args, %struct.cloudabi_sys_file_allocate_args* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = load i32*, i32** %9, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 2
  store i32 %354, i32* %356, align 4
  %357 = load i32*, i32** %8, align 8
  store i32 3, i32* %357, align 4
  br label %987

358:                                              ; preds = %4
  %359 = load i8*, i8** %6, align 8
  %360 = bitcast i8* %359 to %struct.cloudabi_sys_file_create_args*
  store %struct.cloudabi_sys_file_create_args* %360, %struct.cloudabi_sys_file_create_args** %29, align 8
  %361 = load %struct.cloudabi_sys_file_create_args*, %struct.cloudabi_sys_file_create_args** %29, align 8
  %362 = getelementptr inbounds %struct.cloudabi_sys_file_create_args, %struct.cloudabi_sys_file_create_args* %361, i32 0, i32 3
  %363 = load i32, i32* %362, align 8
  %364 = load i32*, i32** %9, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 0
  store i32 %363, i32* %365, align 4
  %366 = load %struct.cloudabi_sys_file_create_args*, %struct.cloudabi_sys_file_create_args** %29, align 8
  %367 = getelementptr inbounds %struct.cloudabi_sys_file_create_args, %struct.cloudabi_sys_file_create_args* %366, i32 0, i32 2
  %368 = load i32, i32* %367, align 4
  %369 = sext i32 %368 to i64
  %370 = load i64*, i64** %7, align 8
  %371 = getelementptr inbounds i64, i64* %370, i64 1
  store i64 %369, i64* %371, align 8
  %372 = load %struct.cloudabi_sys_file_create_args*, %struct.cloudabi_sys_file_create_args** %29, align 8
  %373 = getelementptr inbounds %struct.cloudabi_sys_file_create_args, %struct.cloudabi_sys_file_create_args* %372, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = load i64*, i64** %7, align 8
  %376 = getelementptr inbounds i64, i64* %375, i64 2
  store i64 %374, i64* %376, align 8
  %377 = load %struct.cloudabi_sys_file_create_args*, %struct.cloudabi_sys_file_create_args** %29, align 8
  %378 = getelementptr inbounds %struct.cloudabi_sys_file_create_args, %struct.cloudabi_sys_file_create_args* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 8
  %380 = load i32*, i32** %9, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 3
  store i32 %379, i32* %381, align 4
  %382 = load i32*, i32** %8, align 8
  store i32 4, i32* %382, align 4
  br label %987

383:                                              ; preds = %4
  %384 = load i8*, i8** %6, align 8
  %385 = bitcast i8* %384 to %struct.cloudabi_sys_file_link_args*
  store %struct.cloudabi_sys_file_link_args* %385, %struct.cloudabi_sys_file_link_args** %30, align 8
  %386 = load %struct.cloudabi_sys_file_link_args*, %struct.cloudabi_sys_file_link_args** %30, align 8
  %387 = getelementptr inbounds %struct.cloudabi_sys_file_link_args, %struct.cloudabi_sys_file_link_args* %386, i32 0, i32 5
  %388 = load i32, i32* %387, align 4
  %389 = load i32*, i32** %9, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 0
  store i32 %388, i32* %390, align 4
  %391 = load %struct.cloudabi_sys_file_link_args*, %struct.cloudabi_sys_file_link_args** %30, align 8
  %392 = getelementptr inbounds %struct.cloudabi_sys_file_link_args, %struct.cloudabi_sys_file_link_args* %391, i32 0, i32 4
  %393 = load i32, i32* %392, align 8
  %394 = sext i32 %393 to i64
  %395 = load i64*, i64** %7, align 8
  %396 = getelementptr inbounds i64, i64* %395, i64 1
  store i64 %394, i64* %396, align 8
  %397 = load %struct.cloudabi_sys_file_link_args*, %struct.cloudabi_sys_file_link_args** %30, align 8
  %398 = getelementptr inbounds %struct.cloudabi_sys_file_link_args, %struct.cloudabi_sys_file_link_args* %397, i32 0, i32 0
  %399 = load i64, i64* %398, align 8
  %400 = load i64*, i64** %7, align 8
  %401 = getelementptr inbounds i64, i64* %400, i64 2
  store i64 %399, i64* %401, align 8
  %402 = load %struct.cloudabi_sys_file_link_args*, %struct.cloudabi_sys_file_link_args** %30, align 8
  %403 = getelementptr inbounds %struct.cloudabi_sys_file_link_args, %struct.cloudabi_sys_file_link_args* %402, i32 0, i32 3
  %404 = load i32, i32* %403, align 4
  %405 = load i32*, i32** %9, align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 3
  store i32 %404, i32* %406, align 4
  %407 = load %struct.cloudabi_sys_file_link_args*, %struct.cloudabi_sys_file_link_args** %30, align 8
  %408 = getelementptr inbounds %struct.cloudabi_sys_file_link_args, %struct.cloudabi_sys_file_link_args* %407, i32 0, i32 2
  %409 = load i32, i32* %408, align 8
  %410 = sext i32 %409 to i64
  %411 = load i64*, i64** %7, align 8
  %412 = getelementptr inbounds i64, i64* %411, i64 4
  store i64 %410, i64* %412, align 8
  %413 = load %struct.cloudabi_sys_file_link_args*, %struct.cloudabi_sys_file_link_args** %30, align 8
  %414 = getelementptr inbounds %struct.cloudabi_sys_file_link_args, %struct.cloudabi_sys_file_link_args* %413, i32 0, i32 1
  %415 = load i64, i64* %414, align 8
  %416 = load i64*, i64** %7, align 8
  %417 = getelementptr inbounds i64, i64* %416, i64 5
  store i64 %415, i64* %417, align 8
  %418 = load i32*, i32** %8, align 8
  store i32 6, i32* %418, align 4
  br label %987

419:                                              ; preds = %4
  %420 = load i8*, i8** %6, align 8
  %421 = bitcast i8* %420 to %struct.cloudabi_sys_file_open_args*
  store %struct.cloudabi_sys_file_open_args* %421, %struct.cloudabi_sys_file_open_args** %31, align 8
  %422 = load %struct.cloudabi_sys_file_open_args*, %struct.cloudabi_sys_file_open_args** %31, align 8
  %423 = getelementptr inbounds %struct.cloudabi_sys_file_open_args, %struct.cloudabi_sys_file_open_args* %422, i32 0, i32 4
  %424 = load i32, i32* %423, align 4
  %425 = load i32*, i32** %9, align 8
  %426 = getelementptr inbounds i32, i32* %425, i64 0
  store i32 %424, i32* %426, align 4
  %427 = load %struct.cloudabi_sys_file_open_args*, %struct.cloudabi_sys_file_open_args** %31, align 8
  %428 = getelementptr inbounds %struct.cloudabi_sys_file_open_args, %struct.cloudabi_sys_file_open_args* %427, i32 0, i32 3
  %429 = load i32, i32* %428, align 8
  %430 = sext i32 %429 to i64
  %431 = load i64*, i64** %7, align 8
  %432 = getelementptr inbounds i64, i64* %431, i64 1
  store i64 %430, i64* %432, align 8
  %433 = load %struct.cloudabi_sys_file_open_args*, %struct.cloudabi_sys_file_open_args** %31, align 8
  %434 = getelementptr inbounds %struct.cloudabi_sys_file_open_args, %struct.cloudabi_sys_file_open_args* %433, i32 0, i32 0
  %435 = load i64, i64* %434, align 8
  %436 = load i64*, i64** %7, align 8
  %437 = getelementptr inbounds i64, i64* %436, i64 2
  store i64 %435, i64* %437, align 8
  %438 = load %struct.cloudabi_sys_file_open_args*, %struct.cloudabi_sys_file_open_args** %31, align 8
  %439 = getelementptr inbounds %struct.cloudabi_sys_file_open_args, %struct.cloudabi_sys_file_open_args* %438, i32 0, i32 2
  %440 = load i32, i32* %439, align 4
  %441 = load i32*, i32** %9, align 8
  %442 = getelementptr inbounds i32, i32* %441, i64 3
  store i32 %440, i32* %442, align 4
  %443 = load %struct.cloudabi_sys_file_open_args*, %struct.cloudabi_sys_file_open_args** %31, align 8
  %444 = getelementptr inbounds %struct.cloudabi_sys_file_open_args, %struct.cloudabi_sys_file_open_args* %443, i32 0, i32 1
  %445 = load i32, i32* %444, align 8
  %446 = sext i32 %445 to i64
  %447 = load i64*, i64** %7, align 8
  %448 = getelementptr inbounds i64, i64* %447, i64 4
  store i64 %446, i64* %448, align 8
  %449 = load i32*, i32** %8, align 8
  store i32 5, i32* %449, align 4
  br label %987

450:                                              ; preds = %4
  %451 = load i8*, i8** %6, align 8
  %452 = bitcast i8* %451 to %struct.cloudabi_sys_file_readdir_args*
  store %struct.cloudabi_sys_file_readdir_args* %452, %struct.cloudabi_sys_file_readdir_args** %32, align 8
  %453 = load %struct.cloudabi_sys_file_readdir_args*, %struct.cloudabi_sys_file_readdir_args** %32, align 8
  %454 = getelementptr inbounds %struct.cloudabi_sys_file_readdir_args, %struct.cloudabi_sys_file_readdir_args* %453, i32 0, i32 3
  %455 = load i32, i32* %454, align 8
  %456 = load i32*, i32** %9, align 8
  %457 = getelementptr inbounds i32, i32* %456, i64 0
  store i32 %455, i32* %457, align 4
  %458 = load %struct.cloudabi_sys_file_readdir_args*, %struct.cloudabi_sys_file_readdir_args** %32, align 8
  %459 = getelementptr inbounds %struct.cloudabi_sys_file_readdir_args, %struct.cloudabi_sys_file_readdir_args* %458, i32 0, i32 2
  %460 = load i32, i32* %459, align 4
  %461 = sext i32 %460 to i64
  %462 = load i64*, i64** %7, align 8
  %463 = getelementptr inbounds i64, i64* %462, i64 1
  store i64 %461, i64* %463, align 8
  %464 = load %struct.cloudabi_sys_file_readdir_args*, %struct.cloudabi_sys_file_readdir_args** %32, align 8
  %465 = getelementptr inbounds %struct.cloudabi_sys_file_readdir_args, %struct.cloudabi_sys_file_readdir_args* %464, i32 0, i32 0
  %466 = load i64, i64* %465, align 8
  %467 = load i64*, i64** %7, align 8
  %468 = getelementptr inbounds i64, i64* %467, i64 2
  store i64 %466, i64* %468, align 8
  %469 = load %struct.cloudabi_sys_file_readdir_args*, %struct.cloudabi_sys_file_readdir_args** %32, align 8
  %470 = getelementptr inbounds %struct.cloudabi_sys_file_readdir_args, %struct.cloudabi_sys_file_readdir_args* %469, i32 0, i32 1
  %471 = load i32, i32* %470, align 8
  %472 = load i32*, i32** %9, align 8
  %473 = getelementptr inbounds i32, i32* %472, i64 3
  store i32 %471, i32* %473, align 4
  %474 = load i32*, i32** %8, align 8
  store i32 4, i32* %474, align 4
  br label %987

475:                                              ; preds = %4
  %476 = load i8*, i8** %6, align 8
  %477 = bitcast i8* %476 to %struct.cloudabi_sys_file_readlink_args*
  store %struct.cloudabi_sys_file_readlink_args* %477, %struct.cloudabi_sys_file_readlink_args** %33, align 8
  %478 = load %struct.cloudabi_sys_file_readlink_args*, %struct.cloudabi_sys_file_readlink_args** %33, align 8
  %479 = getelementptr inbounds %struct.cloudabi_sys_file_readlink_args, %struct.cloudabi_sys_file_readlink_args* %478, i32 0, i32 4
  %480 = load i32, i32* %479, align 8
  %481 = load i32*, i32** %9, align 8
  %482 = getelementptr inbounds i32, i32* %481, i64 0
  store i32 %480, i32* %482, align 4
  %483 = load %struct.cloudabi_sys_file_readlink_args*, %struct.cloudabi_sys_file_readlink_args** %33, align 8
  %484 = getelementptr inbounds %struct.cloudabi_sys_file_readlink_args, %struct.cloudabi_sys_file_readlink_args* %483, i32 0, i32 3
  %485 = load i32, i32* %484, align 4
  %486 = sext i32 %485 to i64
  %487 = load i64*, i64** %7, align 8
  %488 = getelementptr inbounds i64, i64* %487, i64 1
  store i64 %486, i64* %488, align 8
  %489 = load %struct.cloudabi_sys_file_readlink_args*, %struct.cloudabi_sys_file_readlink_args** %33, align 8
  %490 = getelementptr inbounds %struct.cloudabi_sys_file_readlink_args, %struct.cloudabi_sys_file_readlink_args* %489, i32 0, i32 0
  %491 = load i64, i64* %490, align 8
  %492 = load i64*, i64** %7, align 8
  %493 = getelementptr inbounds i64, i64* %492, i64 2
  store i64 %491, i64* %493, align 8
  %494 = load %struct.cloudabi_sys_file_readlink_args*, %struct.cloudabi_sys_file_readlink_args** %33, align 8
  %495 = getelementptr inbounds %struct.cloudabi_sys_file_readlink_args, %struct.cloudabi_sys_file_readlink_args* %494, i32 0, i32 2
  %496 = load i32, i32* %495, align 8
  %497 = sext i32 %496 to i64
  %498 = load i64*, i64** %7, align 8
  %499 = getelementptr inbounds i64, i64* %498, i64 3
  store i64 %497, i64* %499, align 8
  %500 = load %struct.cloudabi_sys_file_readlink_args*, %struct.cloudabi_sys_file_readlink_args** %33, align 8
  %501 = getelementptr inbounds %struct.cloudabi_sys_file_readlink_args, %struct.cloudabi_sys_file_readlink_args* %500, i32 0, i32 1
  %502 = load i64, i64* %501, align 8
  %503 = load i64*, i64** %7, align 8
  %504 = getelementptr inbounds i64, i64* %503, i64 4
  store i64 %502, i64* %504, align 8
  %505 = load i32*, i32** %8, align 8
  store i32 5, i32* %505, align 4
  br label %987

506:                                              ; preds = %4
  %507 = load i8*, i8** %6, align 8
  %508 = bitcast i8* %507 to %struct.cloudabi_sys_file_rename_args*
  store %struct.cloudabi_sys_file_rename_args* %508, %struct.cloudabi_sys_file_rename_args** %34, align 8
  %509 = load %struct.cloudabi_sys_file_rename_args*, %struct.cloudabi_sys_file_rename_args** %34, align 8
  %510 = getelementptr inbounds %struct.cloudabi_sys_file_rename_args, %struct.cloudabi_sys_file_rename_args* %509, i32 0, i32 5
  %511 = load i32, i32* %510, align 4
  %512 = load i32*, i32** %9, align 8
  %513 = getelementptr inbounds i32, i32* %512, i64 0
  store i32 %511, i32* %513, align 4
  %514 = load %struct.cloudabi_sys_file_rename_args*, %struct.cloudabi_sys_file_rename_args** %34, align 8
  %515 = getelementptr inbounds %struct.cloudabi_sys_file_rename_args, %struct.cloudabi_sys_file_rename_args* %514, i32 0, i32 4
  %516 = load i32, i32* %515, align 8
  %517 = sext i32 %516 to i64
  %518 = load i64*, i64** %7, align 8
  %519 = getelementptr inbounds i64, i64* %518, i64 1
  store i64 %517, i64* %519, align 8
  %520 = load %struct.cloudabi_sys_file_rename_args*, %struct.cloudabi_sys_file_rename_args** %34, align 8
  %521 = getelementptr inbounds %struct.cloudabi_sys_file_rename_args, %struct.cloudabi_sys_file_rename_args* %520, i32 0, i32 0
  %522 = load i64, i64* %521, align 8
  %523 = load i64*, i64** %7, align 8
  %524 = getelementptr inbounds i64, i64* %523, i64 2
  store i64 %522, i64* %524, align 8
  %525 = load %struct.cloudabi_sys_file_rename_args*, %struct.cloudabi_sys_file_rename_args** %34, align 8
  %526 = getelementptr inbounds %struct.cloudabi_sys_file_rename_args, %struct.cloudabi_sys_file_rename_args* %525, i32 0, i32 3
  %527 = load i32, i32* %526, align 4
  %528 = load i32*, i32** %9, align 8
  %529 = getelementptr inbounds i32, i32* %528, i64 3
  store i32 %527, i32* %529, align 4
  %530 = load %struct.cloudabi_sys_file_rename_args*, %struct.cloudabi_sys_file_rename_args** %34, align 8
  %531 = getelementptr inbounds %struct.cloudabi_sys_file_rename_args, %struct.cloudabi_sys_file_rename_args* %530, i32 0, i32 2
  %532 = load i32, i32* %531, align 8
  %533 = sext i32 %532 to i64
  %534 = load i64*, i64** %7, align 8
  %535 = getelementptr inbounds i64, i64* %534, i64 4
  store i64 %533, i64* %535, align 8
  %536 = load %struct.cloudabi_sys_file_rename_args*, %struct.cloudabi_sys_file_rename_args** %34, align 8
  %537 = getelementptr inbounds %struct.cloudabi_sys_file_rename_args, %struct.cloudabi_sys_file_rename_args* %536, i32 0, i32 1
  %538 = load i64, i64* %537, align 8
  %539 = load i64*, i64** %7, align 8
  %540 = getelementptr inbounds i64, i64* %539, i64 5
  store i64 %538, i64* %540, align 8
  %541 = load i32*, i32** %8, align 8
  store i32 6, i32* %541, align 4
  br label %987

542:                                              ; preds = %4
  %543 = load i8*, i8** %6, align 8
  %544 = bitcast i8* %543 to %struct.cloudabi_sys_file_stat_fget_args*
  store %struct.cloudabi_sys_file_stat_fget_args* %544, %struct.cloudabi_sys_file_stat_fget_args** %35, align 8
  %545 = load %struct.cloudabi_sys_file_stat_fget_args*, %struct.cloudabi_sys_file_stat_fget_args** %35, align 8
  %546 = getelementptr inbounds %struct.cloudabi_sys_file_stat_fget_args, %struct.cloudabi_sys_file_stat_fget_args* %545, i32 0, i32 1
  %547 = load i32, i32* %546, align 4
  %548 = load i32*, i32** %9, align 8
  %549 = getelementptr inbounds i32, i32* %548, i64 0
  store i32 %547, i32* %549, align 4
  %550 = load %struct.cloudabi_sys_file_stat_fget_args*, %struct.cloudabi_sys_file_stat_fget_args** %35, align 8
  %551 = getelementptr inbounds %struct.cloudabi_sys_file_stat_fget_args, %struct.cloudabi_sys_file_stat_fget_args* %550, i32 0, i32 0
  %552 = load i32, i32* %551, align 4
  %553 = sext i32 %552 to i64
  %554 = load i64*, i64** %7, align 8
  %555 = getelementptr inbounds i64, i64* %554, i64 1
  store i64 %553, i64* %555, align 8
  %556 = load i32*, i32** %8, align 8
  store i32 2, i32* %556, align 4
  br label %987

557:                                              ; preds = %4
  %558 = load i8*, i8** %6, align 8
  %559 = bitcast i8* %558 to %struct.cloudabi_sys_file_stat_fput_args*
  store %struct.cloudabi_sys_file_stat_fput_args* %559, %struct.cloudabi_sys_file_stat_fput_args** %36, align 8
  %560 = load %struct.cloudabi_sys_file_stat_fput_args*, %struct.cloudabi_sys_file_stat_fput_args** %36, align 8
  %561 = getelementptr inbounds %struct.cloudabi_sys_file_stat_fput_args, %struct.cloudabi_sys_file_stat_fput_args* %560, i32 0, i32 2
  %562 = load i32, i32* %561, align 4
  %563 = load i32*, i32** %9, align 8
  %564 = getelementptr inbounds i32, i32* %563, i64 0
  store i32 %562, i32* %564, align 4
  %565 = load %struct.cloudabi_sys_file_stat_fput_args*, %struct.cloudabi_sys_file_stat_fput_args** %36, align 8
  %566 = getelementptr inbounds %struct.cloudabi_sys_file_stat_fput_args, %struct.cloudabi_sys_file_stat_fput_args* %565, i32 0, i32 1
  %567 = load i32, i32* %566, align 4
  %568 = sext i32 %567 to i64
  %569 = load i64*, i64** %7, align 8
  %570 = getelementptr inbounds i64, i64* %569, i64 1
  store i64 %568, i64* %570, align 8
  %571 = load %struct.cloudabi_sys_file_stat_fput_args*, %struct.cloudabi_sys_file_stat_fput_args** %36, align 8
  %572 = getelementptr inbounds %struct.cloudabi_sys_file_stat_fput_args, %struct.cloudabi_sys_file_stat_fput_args* %571, i32 0, i32 0
  %573 = load i32, i32* %572, align 4
  %574 = load i32*, i32** %9, align 8
  %575 = getelementptr inbounds i32, i32* %574, i64 2
  store i32 %573, i32* %575, align 4
  %576 = load i32*, i32** %8, align 8
  store i32 3, i32* %576, align 4
  br label %987

577:                                              ; preds = %4
  %578 = load i8*, i8** %6, align 8
  %579 = bitcast i8* %578 to %struct.cloudabi_sys_file_stat_get_args*
  store %struct.cloudabi_sys_file_stat_get_args* %579, %struct.cloudabi_sys_file_stat_get_args** %37, align 8
  %580 = load %struct.cloudabi_sys_file_stat_get_args*, %struct.cloudabi_sys_file_stat_get_args** %37, align 8
  %581 = getelementptr inbounds %struct.cloudabi_sys_file_stat_get_args, %struct.cloudabi_sys_file_stat_get_args* %580, i32 0, i32 3
  %582 = load i32, i32* %581, align 8
  %583 = load i32*, i32** %9, align 8
  %584 = getelementptr inbounds i32, i32* %583, i64 0
  store i32 %582, i32* %584, align 4
  %585 = load %struct.cloudabi_sys_file_stat_get_args*, %struct.cloudabi_sys_file_stat_get_args** %37, align 8
  %586 = getelementptr inbounds %struct.cloudabi_sys_file_stat_get_args, %struct.cloudabi_sys_file_stat_get_args* %585, i32 0, i32 2
  %587 = load i32, i32* %586, align 4
  %588 = sext i32 %587 to i64
  %589 = load i64*, i64** %7, align 8
  %590 = getelementptr inbounds i64, i64* %589, i64 1
  store i64 %588, i64* %590, align 8
  %591 = load %struct.cloudabi_sys_file_stat_get_args*, %struct.cloudabi_sys_file_stat_get_args** %37, align 8
  %592 = getelementptr inbounds %struct.cloudabi_sys_file_stat_get_args, %struct.cloudabi_sys_file_stat_get_args* %591, i32 0, i32 0
  %593 = load i64, i64* %592, align 8
  %594 = load i64*, i64** %7, align 8
  %595 = getelementptr inbounds i64, i64* %594, i64 2
  store i64 %593, i64* %595, align 8
  %596 = load %struct.cloudabi_sys_file_stat_get_args*, %struct.cloudabi_sys_file_stat_get_args** %37, align 8
  %597 = getelementptr inbounds %struct.cloudabi_sys_file_stat_get_args, %struct.cloudabi_sys_file_stat_get_args* %596, i32 0, i32 1
  %598 = load i32, i32* %597, align 8
  %599 = sext i32 %598 to i64
  %600 = load i64*, i64** %7, align 8
  %601 = getelementptr inbounds i64, i64* %600, i64 3
  store i64 %599, i64* %601, align 8
  %602 = load i32*, i32** %8, align 8
  store i32 4, i32* %602, align 4
  br label %987

603:                                              ; preds = %4
  %604 = load i8*, i8** %6, align 8
  %605 = bitcast i8* %604 to %struct.cloudabi_sys_file_stat_put_args*
  store %struct.cloudabi_sys_file_stat_put_args* %605, %struct.cloudabi_sys_file_stat_put_args** %38, align 8
  %606 = load %struct.cloudabi_sys_file_stat_put_args*, %struct.cloudabi_sys_file_stat_put_args** %38, align 8
  %607 = getelementptr inbounds %struct.cloudabi_sys_file_stat_put_args, %struct.cloudabi_sys_file_stat_put_args* %606, i32 0, i32 4
  %608 = load i32, i32* %607, align 4
  %609 = load i32*, i32** %9, align 8
  %610 = getelementptr inbounds i32, i32* %609, i64 0
  store i32 %608, i32* %610, align 4
  %611 = load %struct.cloudabi_sys_file_stat_put_args*, %struct.cloudabi_sys_file_stat_put_args** %38, align 8
  %612 = getelementptr inbounds %struct.cloudabi_sys_file_stat_put_args, %struct.cloudabi_sys_file_stat_put_args* %611, i32 0, i32 3
  %613 = load i32, i32* %612, align 8
  %614 = sext i32 %613 to i64
  %615 = load i64*, i64** %7, align 8
  %616 = getelementptr inbounds i64, i64* %615, i64 1
  store i64 %614, i64* %616, align 8
  %617 = load %struct.cloudabi_sys_file_stat_put_args*, %struct.cloudabi_sys_file_stat_put_args** %38, align 8
  %618 = getelementptr inbounds %struct.cloudabi_sys_file_stat_put_args, %struct.cloudabi_sys_file_stat_put_args* %617, i32 0, i32 0
  %619 = load i64, i64* %618, align 8
  %620 = load i64*, i64** %7, align 8
  %621 = getelementptr inbounds i64, i64* %620, i64 2
  store i64 %619, i64* %621, align 8
  %622 = load %struct.cloudabi_sys_file_stat_put_args*, %struct.cloudabi_sys_file_stat_put_args** %38, align 8
  %623 = getelementptr inbounds %struct.cloudabi_sys_file_stat_put_args, %struct.cloudabi_sys_file_stat_put_args* %622, i32 0, i32 2
  %624 = load i32, i32* %623, align 4
  %625 = sext i32 %624 to i64
  %626 = load i64*, i64** %7, align 8
  %627 = getelementptr inbounds i64, i64* %626, i64 3
  store i64 %625, i64* %627, align 8
  %628 = load %struct.cloudabi_sys_file_stat_put_args*, %struct.cloudabi_sys_file_stat_put_args** %38, align 8
  %629 = getelementptr inbounds %struct.cloudabi_sys_file_stat_put_args, %struct.cloudabi_sys_file_stat_put_args* %628, i32 0, i32 1
  %630 = load i32, i32* %629, align 8
  %631 = load i32*, i32** %9, align 8
  %632 = getelementptr inbounds i32, i32* %631, i64 4
  store i32 %630, i32* %632, align 4
  %633 = load i32*, i32** %8, align 8
  store i32 5, i32* %633, align 4
  br label %987

634:                                              ; preds = %4
  %635 = load i8*, i8** %6, align 8
  %636 = bitcast i8* %635 to %struct.cloudabi_sys_file_symlink_args*
  store %struct.cloudabi_sys_file_symlink_args* %636, %struct.cloudabi_sys_file_symlink_args** %39, align 8
  %637 = load %struct.cloudabi_sys_file_symlink_args*, %struct.cloudabi_sys_file_symlink_args** %39, align 8
  %638 = getelementptr inbounds %struct.cloudabi_sys_file_symlink_args, %struct.cloudabi_sys_file_symlink_args* %637, i32 0, i32 4
  %639 = load i32, i32* %638, align 8
  %640 = sext i32 %639 to i64
  %641 = load i64*, i64** %7, align 8
  %642 = getelementptr inbounds i64, i64* %641, i64 0
  store i64 %640, i64* %642, align 8
  %643 = load %struct.cloudabi_sys_file_symlink_args*, %struct.cloudabi_sys_file_symlink_args** %39, align 8
  %644 = getelementptr inbounds %struct.cloudabi_sys_file_symlink_args, %struct.cloudabi_sys_file_symlink_args* %643, i32 0, i32 0
  %645 = load i64, i64* %644, align 8
  %646 = load i64*, i64** %7, align 8
  %647 = getelementptr inbounds i64, i64* %646, i64 1
  store i64 %645, i64* %647, align 8
  %648 = load %struct.cloudabi_sys_file_symlink_args*, %struct.cloudabi_sys_file_symlink_args** %39, align 8
  %649 = getelementptr inbounds %struct.cloudabi_sys_file_symlink_args, %struct.cloudabi_sys_file_symlink_args* %648, i32 0, i32 3
  %650 = load i32, i32* %649, align 4
  %651 = load i32*, i32** %9, align 8
  %652 = getelementptr inbounds i32, i32* %651, i64 2
  store i32 %650, i32* %652, align 4
  %653 = load %struct.cloudabi_sys_file_symlink_args*, %struct.cloudabi_sys_file_symlink_args** %39, align 8
  %654 = getelementptr inbounds %struct.cloudabi_sys_file_symlink_args, %struct.cloudabi_sys_file_symlink_args* %653, i32 0, i32 2
  %655 = load i32, i32* %654, align 8
  %656 = sext i32 %655 to i64
  %657 = load i64*, i64** %7, align 8
  %658 = getelementptr inbounds i64, i64* %657, i64 3
  store i64 %656, i64* %658, align 8
  %659 = load %struct.cloudabi_sys_file_symlink_args*, %struct.cloudabi_sys_file_symlink_args** %39, align 8
  %660 = getelementptr inbounds %struct.cloudabi_sys_file_symlink_args, %struct.cloudabi_sys_file_symlink_args* %659, i32 0, i32 1
  %661 = load i64, i64* %660, align 8
  %662 = load i64*, i64** %7, align 8
  %663 = getelementptr inbounds i64, i64* %662, i64 4
  store i64 %661, i64* %663, align 8
  %664 = load i32*, i32** %8, align 8
  store i32 5, i32* %664, align 4
  br label %987

665:                                              ; preds = %4
  %666 = load i8*, i8** %6, align 8
  %667 = bitcast i8* %666 to %struct.cloudabi_sys_file_unlink_args*
  store %struct.cloudabi_sys_file_unlink_args* %667, %struct.cloudabi_sys_file_unlink_args** %40, align 8
  %668 = load %struct.cloudabi_sys_file_unlink_args*, %struct.cloudabi_sys_file_unlink_args** %40, align 8
  %669 = getelementptr inbounds %struct.cloudabi_sys_file_unlink_args, %struct.cloudabi_sys_file_unlink_args* %668, i32 0, i32 3
  %670 = load i32, i32* %669, align 8
  %671 = load i32*, i32** %9, align 8
  %672 = getelementptr inbounds i32, i32* %671, i64 0
  store i32 %670, i32* %672, align 4
  %673 = load %struct.cloudabi_sys_file_unlink_args*, %struct.cloudabi_sys_file_unlink_args** %40, align 8
  %674 = getelementptr inbounds %struct.cloudabi_sys_file_unlink_args, %struct.cloudabi_sys_file_unlink_args* %673, i32 0, i32 2
  %675 = load i32, i32* %674, align 4
  %676 = sext i32 %675 to i64
  %677 = load i64*, i64** %7, align 8
  %678 = getelementptr inbounds i64, i64* %677, i64 1
  store i64 %676, i64* %678, align 8
  %679 = load %struct.cloudabi_sys_file_unlink_args*, %struct.cloudabi_sys_file_unlink_args** %40, align 8
  %680 = getelementptr inbounds %struct.cloudabi_sys_file_unlink_args, %struct.cloudabi_sys_file_unlink_args* %679, i32 0, i32 0
  %681 = load i64, i64* %680, align 8
  %682 = load i64*, i64** %7, align 8
  %683 = getelementptr inbounds i64, i64* %682, i64 2
  store i64 %681, i64* %683, align 8
  %684 = load %struct.cloudabi_sys_file_unlink_args*, %struct.cloudabi_sys_file_unlink_args** %40, align 8
  %685 = getelementptr inbounds %struct.cloudabi_sys_file_unlink_args, %struct.cloudabi_sys_file_unlink_args* %684, i32 0, i32 1
  %686 = load i32, i32* %685, align 8
  %687 = load i32*, i32** %9, align 8
  %688 = getelementptr inbounds i32, i32* %687, i64 3
  store i32 %686, i32* %688, align 4
  %689 = load i32*, i32** %8, align 8
  store i32 4, i32* %689, align 4
  br label %987

690:                                              ; preds = %4
  %691 = load i8*, i8** %6, align 8
  %692 = bitcast i8* %691 to %struct.cloudabi_sys_lock_unlock_args*
  store %struct.cloudabi_sys_lock_unlock_args* %692, %struct.cloudabi_sys_lock_unlock_args** %41, align 8
  %693 = load %struct.cloudabi_sys_lock_unlock_args*, %struct.cloudabi_sys_lock_unlock_args** %41, align 8
  %694 = getelementptr inbounds %struct.cloudabi_sys_lock_unlock_args, %struct.cloudabi_sys_lock_unlock_args* %693, i32 0, i32 1
  %695 = load i32, i32* %694, align 4
  %696 = sext i32 %695 to i64
  %697 = load i64*, i64** %7, align 8
  %698 = getelementptr inbounds i64, i64* %697, i64 0
  store i64 %696, i64* %698, align 8
  %699 = load %struct.cloudabi_sys_lock_unlock_args*, %struct.cloudabi_sys_lock_unlock_args** %41, align 8
  %700 = getelementptr inbounds %struct.cloudabi_sys_lock_unlock_args, %struct.cloudabi_sys_lock_unlock_args* %699, i32 0, i32 0
  %701 = load i32, i32* %700, align 4
  %702 = load i32*, i32** %9, align 8
  %703 = getelementptr inbounds i32, i32* %702, i64 1
  store i32 %701, i32* %703, align 4
  %704 = load i32*, i32** %8, align 8
  store i32 2, i32* %704, align 4
  br label %987

705:                                              ; preds = %4
  %706 = load i8*, i8** %6, align 8
  %707 = bitcast i8* %706 to %struct.cloudabi_sys_mem_advise_args*
  store %struct.cloudabi_sys_mem_advise_args* %707, %struct.cloudabi_sys_mem_advise_args** %42, align 8
  %708 = load %struct.cloudabi_sys_mem_advise_args*, %struct.cloudabi_sys_mem_advise_args** %42, align 8
  %709 = getelementptr inbounds %struct.cloudabi_sys_mem_advise_args, %struct.cloudabi_sys_mem_advise_args* %708, i32 0, i32 2
  %710 = load i32, i32* %709, align 4
  %711 = sext i32 %710 to i64
  %712 = load i64*, i64** %7, align 8
  %713 = getelementptr inbounds i64, i64* %712, i64 0
  store i64 %711, i64* %713, align 8
  %714 = load %struct.cloudabi_sys_mem_advise_args*, %struct.cloudabi_sys_mem_advise_args** %42, align 8
  %715 = getelementptr inbounds %struct.cloudabi_sys_mem_advise_args, %struct.cloudabi_sys_mem_advise_args* %714, i32 0, i32 0
  %716 = load i64, i64* %715, align 8
  %717 = load i64*, i64** %7, align 8
  %718 = getelementptr inbounds i64, i64* %717, i64 1
  store i64 %716, i64* %718, align 8
  %719 = load %struct.cloudabi_sys_mem_advise_args*, %struct.cloudabi_sys_mem_advise_args** %42, align 8
  %720 = getelementptr inbounds %struct.cloudabi_sys_mem_advise_args, %struct.cloudabi_sys_mem_advise_args* %719, i32 0, i32 1
  %721 = load i32, i32* %720, align 8
  %722 = load i32*, i32** %9, align 8
  %723 = getelementptr inbounds i32, i32* %722, i64 2
  store i32 %721, i32* %723, align 4
  %724 = load i32*, i32** %8, align 8
  store i32 3, i32* %724, align 4
  br label %987

725:                                              ; preds = %4
  %726 = load i8*, i8** %6, align 8
  %727 = bitcast i8* %726 to %struct.cloudabi_sys_mem_map_args*
  store %struct.cloudabi_sys_mem_map_args* %727, %struct.cloudabi_sys_mem_map_args** %43, align 8
  %728 = load %struct.cloudabi_sys_mem_map_args*, %struct.cloudabi_sys_mem_map_args** %43, align 8
  %729 = getelementptr inbounds %struct.cloudabi_sys_mem_map_args, %struct.cloudabi_sys_mem_map_args* %728, i32 0, i32 5
  %730 = load i32, i32* %729, align 8
  %731 = sext i32 %730 to i64
  %732 = load i64*, i64** %7, align 8
  %733 = getelementptr inbounds i64, i64* %732, i64 0
  store i64 %731, i64* %733, align 8
  %734 = load %struct.cloudabi_sys_mem_map_args*, %struct.cloudabi_sys_mem_map_args** %43, align 8
  %735 = getelementptr inbounds %struct.cloudabi_sys_mem_map_args, %struct.cloudabi_sys_mem_map_args* %734, i32 0, i32 0
  %736 = load i64, i64* %735, align 8
  %737 = load i64*, i64** %7, align 8
  %738 = getelementptr inbounds i64, i64* %737, i64 1
  store i64 %736, i64* %738, align 8
  %739 = load %struct.cloudabi_sys_mem_map_args*, %struct.cloudabi_sys_mem_map_args** %43, align 8
  %740 = getelementptr inbounds %struct.cloudabi_sys_mem_map_args, %struct.cloudabi_sys_mem_map_args* %739, i32 0, i32 4
  %741 = load i32, i32* %740, align 4
  %742 = load i32*, i32** %9, align 8
  %743 = getelementptr inbounds i32, i32* %742, i64 2
  store i32 %741, i32* %743, align 4
  %744 = load %struct.cloudabi_sys_mem_map_args*, %struct.cloudabi_sys_mem_map_args** %43, align 8
  %745 = getelementptr inbounds %struct.cloudabi_sys_mem_map_args, %struct.cloudabi_sys_mem_map_args* %744, i32 0, i32 3
  %746 = load i32, i32* %745, align 8
  %747 = load i32*, i32** %9, align 8
  %748 = getelementptr inbounds i32, i32* %747, i64 3
  store i32 %746, i32* %748, align 4
  %749 = load %struct.cloudabi_sys_mem_map_args*, %struct.cloudabi_sys_mem_map_args** %43, align 8
  %750 = getelementptr inbounds %struct.cloudabi_sys_mem_map_args, %struct.cloudabi_sys_mem_map_args* %749, i32 0, i32 2
  %751 = load i32, i32* %750, align 4
  %752 = load i32*, i32** %9, align 8
  %753 = getelementptr inbounds i32, i32* %752, i64 4
  store i32 %751, i32* %753, align 4
  %754 = load %struct.cloudabi_sys_mem_map_args*, %struct.cloudabi_sys_mem_map_args** %43, align 8
  %755 = getelementptr inbounds %struct.cloudabi_sys_mem_map_args, %struct.cloudabi_sys_mem_map_args* %754, i32 0, i32 1
  %756 = load i32, i32* %755, align 8
  %757 = load i32*, i32** %9, align 8
  %758 = getelementptr inbounds i32, i32* %757, i64 5
  store i32 %756, i32* %758, align 4
  %759 = load i32*, i32** %8, align 8
  store i32 6, i32* %759, align 4
  br label %987

760:                                              ; preds = %4
  %761 = load i8*, i8** %6, align 8
  %762 = bitcast i8* %761 to %struct.cloudabi_sys_mem_protect_args*
  store %struct.cloudabi_sys_mem_protect_args* %762, %struct.cloudabi_sys_mem_protect_args** %44, align 8
  %763 = load %struct.cloudabi_sys_mem_protect_args*, %struct.cloudabi_sys_mem_protect_args** %44, align 8
  %764 = getelementptr inbounds %struct.cloudabi_sys_mem_protect_args, %struct.cloudabi_sys_mem_protect_args* %763, i32 0, i32 2
  %765 = load i32, i32* %764, align 4
  %766 = sext i32 %765 to i64
  %767 = load i64*, i64** %7, align 8
  %768 = getelementptr inbounds i64, i64* %767, i64 0
  store i64 %766, i64* %768, align 8
  %769 = load %struct.cloudabi_sys_mem_protect_args*, %struct.cloudabi_sys_mem_protect_args** %44, align 8
  %770 = getelementptr inbounds %struct.cloudabi_sys_mem_protect_args, %struct.cloudabi_sys_mem_protect_args* %769, i32 0, i32 0
  %771 = load i64, i64* %770, align 8
  %772 = load i64*, i64** %7, align 8
  %773 = getelementptr inbounds i64, i64* %772, i64 1
  store i64 %771, i64* %773, align 8
  %774 = load %struct.cloudabi_sys_mem_protect_args*, %struct.cloudabi_sys_mem_protect_args** %44, align 8
  %775 = getelementptr inbounds %struct.cloudabi_sys_mem_protect_args, %struct.cloudabi_sys_mem_protect_args* %774, i32 0, i32 1
  %776 = load i32, i32* %775, align 8
  %777 = load i32*, i32** %9, align 8
  %778 = getelementptr inbounds i32, i32* %777, i64 2
  store i32 %776, i32* %778, align 4
  %779 = load i32*, i32** %8, align 8
  store i32 3, i32* %779, align 4
  br label %987

780:                                              ; preds = %4
  %781 = load i8*, i8** %6, align 8
  %782 = bitcast i8* %781 to %struct.cloudabi_sys_mem_sync_args*
  store %struct.cloudabi_sys_mem_sync_args* %782, %struct.cloudabi_sys_mem_sync_args** %45, align 8
  %783 = load %struct.cloudabi_sys_mem_sync_args*, %struct.cloudabi_sys_mem_sync_args** %45, align 8
  %784 = getelementptr inbounds %struct.cloudabi_sys_mem_sync_args, %struct.cloudabi_sys_mem_sync_args* %783, i32 0, i32 2
  %785 = load i32, i32* %784, align 4
  %786 = sext i32 %785 to i64
  %787 = load i64*, i64** %7, align 8
  %788 = getelementptr inbounds i64, i64* %787, i64 0
  store i64 %786, i64* %788, align 8
  %789 = load %struct.cloudabi_sys_mem_sync_args*, %struct.cloudabi_sys_mem_sync_args** %45, align 8
  %790 = getelementptr inbounds %struct.cloudabi_sys_mem_sync_args, %struct.cloudabi_sys_mem_sync_args* %789, i32 0, i32 0
  %791 = load i64, i64* %790, align 8
  %792 = load i64*, i64** %7, align 8
  %793 = getelementptr inbounds i64, i64* %792, i64 1
  store i64 %791, i64* %793, align 8
  %794 = load %struct.cloudabi_sys_mem_sync_args*, %struct.cloudabi_sys_mem_sync_args** %45, align 8
  %795 = getelementptr inbounds %struct.cloudabi_sys_mem_sync_args, %struct.cloudabi_sys_mem_sync_args* %794, i32 0, i32 1
  %796 = load i32, i32* %795, align 8
  %797 = load i32*, i32** %9, align 8
  %798 = getelementptr inbounds i32, i32* %797, i64 2
  store i32 %796, i32* %798, align 4
  %799 = load i32*, i32** %8, align 8
  store i32 3, i32* %799, align 4
  br label %987

800:                                              ; preds = %4
  %801 = load i8*, i8** %6, align 8
  %802 = bitcast i8* %801 to %struct.cloudabi_sys_mem_unmap_args*
  store %struct.cloudabi_sys_mem_unmap_args* %802, %struct.cloudabi_sys_mem_unmap_args** %46, align 8
  %803 = load %struct.cloudabi_sys_mem_unmap_args*, %struct.cloudabi_sys_mem_unmap_args** %46, align 8
  %804 = getelementptr inbounds %struct.cloudabi_sys_mem_unmap_args, %struct.cloudabi_sys_mem_unmap_args* %803, i32 0, i32 1
  %805 = load i32, i32* %804, align 8
  %806 = sext i32 %805 to i64
  %807 = load i64*, i64** %7, align 8
  %808 = getelementptr inbounds i64, i64* %807, i64 0
  store i64 %806, i64* %808, align 8
  %809 = load %struct.cloudabi_sys_mem_unmap_args*, %struct.cloudabi_sys_mem_unmap_args** %46, align 8
  %810 = getelementptr inbounds %struct.cloudabi_sys_mem_unmap_args, %struct.cloudabi_sys_mem_unmap_args* %809, i32 0, i32 0
  %811 = load i64, i64* %810, align 8
  %812 = load i64*, i64** %7, align 8
  %813 = getelementptr inbounds i64, i64* %812, i64 1
  store i64 %811, i64* %813, align 8
  %814 = load i32*, i32** %8, align 8
  store i32 2, i32* %814, align 4
  br label %987

815:                                              ; preds = %4
  %816 = load i8*, i8** %6, align 8
  %817 = bitcast i8* %816 to %struct.cloudabi64_sys_poll_args*
  store %struct.cloudabi64_sys_poll_args* %817, %struct.cloudabi64_sys_poll_args** %47, align 8
  %818 = load %struct.cloudabi64_sys_poll_args*, %struct.cloudabi64_sys_poll_args** %47, align 8
  %819 = getelementptr inbounds %struct.cloudabi64_sys_poll_args, %struct.cloudabi64_sys_poll_args* %818, i32 0, i32 2
  %820 = load i32, i32* %819, align 4
  %821 = sext i32 %820 to i64
  %822 = load i64*, i64** %7, align 8
  %823 = getelementptr inbounds i64, i64* %822, i64 0
  store i64 %821, i64* %823, align 8
  %824 = load %struct.cloudabi64_sys_poll_args*, %struct.cloudabi64_sys_poll_args** %47, align 8
  %825 = getelementptr inbounds %struct.cloudabi64_sys_poll_args, %struct.cloudabi64_sys_poll_args* %824, i32 0, i32 1
  %826 = load i32, i32* %825, align 8
  %827 = sext i32 %826 to i64
  %828 = load i64*, i64** %7, align 8
  %829 = getelementptr inbounds i64, i64* %828, i64 1
  store i64 %827, i64* %829, align 8
  %830 = load %struct.cloudabi64_sys_poll_args*, %struct.cloudabi64_sys_poll_args** %47, align 8
  %831 = getelementptr inbounds %struct.cloudabi64_sys_poll_args, %struct.cloudabi64_sys_poll_args* %830, i32 0, i32 0
  %832 = load i64, i64* %831, align 8
  %833 = load i64*, i64** %7, align 8
  %834 = getelementptr inbounds i64, i64* %833, i64 2
  store i64 %832, i64* %834, align 8
  %835 = load i32*, i32** %8, align 8
  store i32 3, i32* %835, align 4
  br label %987

836:                                              ; preds = %4
  %837 = load i8*, i8** %6, align 8
  %838 = bitcast i8* %837 to %struct.cloudabi_sys_proc_exec_args*
  store %struct.cloudabi_sys_proc_exec_args* %838, %struct.cloudabi_sys_proc_exec_args** %48, align 8
  %839 = load %struct.cloudabi_sys_proc_exec_args*, %struct.cloudabi_sys_proc_exec_args** %48, align 8
  %840 = getelementptr inbounds %struct.cloudabi_sys_proc_exec_args, %struct.cloudabi_sys_proc_exec_args* %839, i32 0, i32 4
  %841 = load i32, i32* %840, align 8
  %842 = load i32*, i32** %9, align 8
  %843 = getelementptr inbounds i32, i32* %842, i64 0
  store i32 %841, i32* %843, align 4
  %844 = load %struct.cloudabi_sys_proc_exec_args*, %struct.cloudabi_sys_proc_exec_args** %48, align 8
  %845 = getelementptr inbounds %struct.cloudabi_sys_proc_exec_args, %struct.cloudabi_sys_proc_exec_args* %844, i32 0, i32 3
  %846 = load i32, i32* %845, align 4
  %847 = sext i32 %846 to i64
  %848 = load i64*, i64** %7, align 8
  %849 = getelementptr inbounds i64, i64* %848, i64 1
  store i64 %847, i64* %849, align 8
  %850 = load %struct.cloudabi_sys_proc_exec_args*, %struct.cloudabi_sys_proc_exec_args** %48, align 8
  %851 = getelementptr inbounds %struct.cloudabi_sys_proc_exec_args, %struct.cloudabi_sys_proc_exec_args* %850, i32 0, i32 0
  %852 = load i64, i64* %851, align 8
  %853 = load i64*, i64** %7, align 8
  %854 = getelementptr inbounds i64, i64* %853, i64 2
  store i64 %852, i64* %854, align 8
  %855 = load %struct.cloudabi_sys_proc_exec_args*, %struct.cloudabi_sys_proc_exec_args** %48, align 8
  %856 = getelementptr inbounds %struct.cloudabi_sys_proc_exec_args, %struct.cloudabi_sys_proc_exec_args* %855, i32 0, i32 2
  %857 = load i32, i32* %856, align 8
  %858 = sext i32 %857 to i64
  %859 = load i64*, i64** %7, align 8
  %860 = getelementptr inbounds i64, i64* %859, i64 3
  store i64 %858, i64* %860, align 8
  %861 = load %struct.cloudabi_sys_proc_exec_args*, %struct.cloudabi_sys_proc_exec_args** %48, align 8
  %862 = getelementptr inbounds %struct.cloudabi_sys_proc_exec_args, %struct.cloudabi_sys_proc_exec_args* %861, i32 0, i32 1
  %863 = load i64, i64* %862, align 8
  %864 = load i64*, i64** %7, align 8
  %865 = getelementptr inbounds i64, i64* %864, i64 4
  store i64 %863, i64* %865, align 8
  %866 = load i32*, i32** %8, align 8
  store i32 5, i32* %866, align 4
  br label %987

867:                                              ; preds = %4
  %868 = load i8*, i8** %6, align 8
  %869 = bitcast i8* %868 to %struct.cloudabi_sys_proc_exit_args*
  store %struct.cloudabi_sys_proc_exit_args* %869, %struct.cloudabi_sys_proc_exit_args** %49, align 8
  %870 = load %struct.cloudabi_sys_proc_exit_args*, %struct.cloudabi_sys_proc_exit_args** %49, align 8
  %871 = getelementptr inbounds %struct.cloudabi_sys_proc_exit_args, %struct.cloudabi_sys_proc_exit_args* %870, i32 0, i32 0
  %872 = load i32, i32* %871, align 4
  %873 = load i32*, i32** %9, align 8
  %874 = getelementptr inbounds i32, i32* %873, i64 0
  store i32 %872, i32* %874, align 4
  %875 = load i32*, i32** %8, align 8
  store i32 1, i32* %875, align 4
  br label %987

876:                                              ; preds = %4
  %877 = load i32*, i32** %8, align 8
  store i32 0, i32* %877, align 4
  br label %987

878:                                              ; preds = %4
  %879 = load i8*, i8** %6, align 8
  %880 = bitcast i8* %879 to %struct.cloudabi_sys_proc_raise_args*
  store %struct.cloudabi_sys_proc_raise_args* %880, %struct.cloudabi_sys_proc_raise_args** %50, align 8
  %881 = load %struct.cloudabi_sys_proc_raise_args*, %struct.cloudabi_sys_proc_raise_args** %50, align 8
  %882 = getelementptr inbounds %struct.cloudabi_sys_proc_raise_args, %struct.cloudabi_sys_proc_raise_args* %881, i32 0, i32 0
  %883 = load i32, i32* %882, align 4
  %884 = load i32*, i32** %9, align 8
  %885 = getelementptr inbounds i32, i32* %884, i64 0
  store i32 %883, i32* %885, align 4
  %886 = load i32*, i32** %8, align 8
  store i32 1, i32* %886, align 4
  br label %987

887:                                              ; preds = %4
  %888 = load i8*, i8** %6, align 8
  %889 = bitcast i8* %888 to %struct.cloudabi_sys_random_get_args*
  store %struct.cloudabi_sys_random_get_args* %889, %struct.cloudabi_sys_random_get_args** %51, align 8
  %890 = load %struct.cloudabi_sys_random_get_args*, %struct.cloudabi_sys_random_get_args** %51, align 8
  %891 = getelementptr inbounds %struct.cloudabi_sys_random_get_args, %struct.cloudabi_sys_random_get_args* %890, i32 0, i32 1
  %892 = load i32, i32* %891, align 8
  %893 = sext i32 %892 to i64
  %894 = load i64*, i64** %7, align 8
  %895 = getelementptr inbounds i64, i64* %894, i64 0
  store i64 %893, i64* %895, align 8
  %896 = load %struct.cloudabi_sys_random_get_args*, %struct.cloudabi_sys_random_get_args** %51, align 8
  %897 = getelementptr inbounds %struct.cloudabi_sys_random_get_args, %struct.cloudabi_sys_random_get_args* %896, i32 0, i32 0
  %898 = load i64, i64* %897, align 8
  %899 = load i64*, i64** %7, align 8
  %900 = getelementptr inbounds i64, i64* %899, i64 1
  store i64 %898, i64* %900, align 8
  %901 = load i32*, i32** %8, align 8
  store i32 2, i32* %901, align 4
  br label %987

902:                                              ; preds = %4
  %903 = load i8*, i8** %6, align 8
  %904 = bitcast i8* %903 to %struct.cloudabi64_sys_sock_recv_args*
  store %struct.cloudabi64_sys_sock_recv_args* %904, %struct.cloudabi64_sys_sock_recv_args** %52, align 8
  %905 = load %struct.cloudabi64_sys_sock_recv_args*, %struct.cloudabi64_sys_sock_recv_args** %52, align 8
  %906 = getelementptr inbounds %struct.cloudabi64_sys_sock_recv_args, %struct.cloudabi64_sys_sock_recv_args* %905, i32 0, i32 2
  %907 = load i32, i32* %906, align 4
  %908 = load i32*, i32** %9, align 8
  %909 = getelementptr inbounds i32, i32* %908, i64 0
  store i32 %907, i32* %909, align 4
  %910 = load %struct.cloudabi64_sys_sock_recv_args*, %struct.cloudabi64_sys_sock_recv_args** %52, align 8
  %911 = getelementptr inbounds %struct.cloudabi64_sys_sock_recv_args, %struct.cloudabi64_sys_sock_recv_args* %910, i32 0, i32 1
  %912 = load i32, i32* %911, align 4
  %913 = sext i32 %912 to i64
  %914 = load i64*, i64** %7, align 8
  %915 = getelementptr inbounds i64, i64* %914, i64 1
  store i64 %913, i64* %915, align 8
  %916 = load %struct.cloudabi64_sys_sock_recv_args*, %struct.cloudabi64_sys_sock_recv_args** %52, align 8
  %917 = getelementptr inbounds %struct.cloudabi64_sys_sock_recv_args, %struct.cloudabi64_sys_sock_recv_args* %916, i32 0, i32 0
  %918 = load i32, i32* %917, align 4
  %919 = sext i32 %918 to i64
  %920 = load i64*, i64** %7, align 8
  %921 = getelementptr inbounds i64, i64* %920, i64 2
  store i64 %919, i64* %921, align 8
  %922 = load i32*, i32** %8, align 8
  store i32 3, i32* %922, align 4
  br label %987

923:                                              ; preds = %4
  %924 = load i8*, i8** %6, align 8
  %925 = bitcast i8* %924 to %struct.cloudabi64_sys_sock_send_args*
  store %struct.cloudabi64_sys_sock_send_args* %925, %struct.cloudabi64_sys_sock_send_args** %53, align 8
  %926 = load %struct.cloudabi64_sys_sock_send_args*, %struct.cloudabi64_sys_sock_send_args** %53, align 8
  %927 = getelementptr inbounds %struct.cloudabi64_sys_sock_send_args, %struct.cloudabi64_sys_sock_send_args* %926, i32 0, i32 2
  %928 = load i32, i32* %927, align 4
  %929 = load i32*, i32** %9, align 8
  %930 = getelementptr inbounds i32, i32* %929, i64 0
  store i32 %928, i32* %930, align 4
  %931 = load %struct.cloudabi64_sys_sock_send_args*, %struct.cloudabi64_sys_sock_send_args** %53, align 8
  %932 = getelementptr inbounds %struct.cloudabi64_sys_sock_send_args, %struct.cloudabi64_sys_sock_send_args* %931, i32 0, i32 1
  %933 = load i32, i32* %932, align 4
  %934 = sext i32 %933 to i64
  %935 = load i64*, i64** %7, align 8
  %936 = getelementptr inbounds i64, i64* %935, i64 1
  store i64 %934, i64* %936, align 8
  %937 = load %struct.cloudabi64_sys_sock_send_args*, %struct.cloudabi64_sys_sock_send_args** %53, align 8
  %938 = getelementptr inbounds %struct.cloudabi64_sys_sock_send_args, %struct.cloudabi64_sys_sock_send_args* %937, i32 0, i32 0
  %939 = load i32, i32* %938, align 4
  %940 = sext i32 %939 to i64
  %941 = load i64*, i64** %7, align 8
  %942 = getelementptr inbounds i64, i64* %941, i64 2
  store i64 %940, i64* %942, align 8
  %943 = load i32*, i32** %8, align 8
  store i32 3, i32* %943, align 4
  br label %987

944:                                              ; preds = %4
  %945 = load i8*, i8** %6, align 8
  %946 = bitcast i8* %945 to %struct.cloudabi_sys_sock_shutdown_args*
  store %struct.cloudabi_sys_sock_shutdown_args* %946, %struct.cloudabi_sys_sock_shutdown_args** %54, align 8
  %947 = load %struct.cloudabi_sys_sock_shutdown_args*, %struct.cloudabi_sys_sock_shutdown_args** %54, align 8
  %948 = getelementptr inbounds %struct.cloudabi_sys_sock_shutdown_args, %struct.cloudabi_sys_sock_shutdown_args* %947, i32 0, i32 1
  %949 = load i32, i32* %948, align 4
  %950 = load i32*, i32** %9, align 8
  %951 = getelementptr inbounds i32, i32* %950, i64 0
  store i32 %949, i32* %951, align 4
  %952 = load %struct.cloudabi_sys_sock_shutdown_args*, %struct.cloudabi_sys_sock_shutdown_args** %54, align 8
  %953 = getelementptr inbounds %struct.cloudabi_sys_sock_shutdown_args, %struct.cloudabi_sys_sock_shutdown_args* %952, i32 0, i32 0
  %954 = load i32, i32* %953, align 4
  %955 = load i32*, i32** %9, align 8
  %956 = getelementptr inbounds i32, i32* %955, i64 1
  store i32 %954, i32* %956, align 4
  %957 = load i32*, i32** %8, align 8
  store i32 2, i32* %957, align 4
  br label %987

958:                                              ; preds = %4
  %959 = load i8*, i8** %6, align 8
  %960 = bitcast i8* %959 to %struct.cloudabi64_sys_thread_create_args*
  store %struct.cloudabi64_sys_thread_create_args* %960, %struct.cloudabi64_sys_thread_create_args** %55, align 8
  %961 = load %struct.cloudabi64_sys_thread_create_args*, %struct.cloudabi64_sys_thread_create_args** %55, align 8
  %962 = getelementptr inbounds %struct.cloudabi64_sys_thread_create_args, %struct.cloudabi64_sys_thread_create_args* %961, i32 0, i32 0
  %963 = load i32, i32* %962, align 4
  %964 = sext i32 %963 to i64
  %965 = load i64*, i64** %7, align 8
  %966 = getelementptr inbounds i64, i64* %965, i64 0
  store i64 %964, i64* %966, align 8
  %967 = load i32*, i32** %8, align 8
  store i32 1, i32* %967, align 4
  br label %987

968:                                              ; preds = %4
  %969 = load i8*, i8** %6, align 8
  %970 = bitcast i8* %969 to %struct.cloudabi_sys_thread_exit_args*
  store %struct.cloudabi_sys_thread_exit_args* %970, %struct.cloudabi_sys_thread_exit_args** %56, align 8
  %971 = load %struct.cloudabi_sys_thread_exit_args*, %struct.cloudabi_sys_thread_exit_args** %56, align 8
  %972 = getelementptr inbounds %struct.cloudabi_sys_thread_exit_args, %struct.cloudabi_sys_thread_exit_args* %971, i32 0, i32 1
  %973 = load i32, i32* %972, align 4
  %974 = sext i32 %973 to i64
  %975 = load i64*, i64** %7, align 8
  %976 = getelementptr inbounds i64, i64* %975, i64 0
  store i64 %974, i64* %976, align 8
  %977 = load %struct.cloudabi_sys_thread_exit_args*, %struct.cloudabi_sys_thread_exit_args** %56, align 8
  %978 = getelementptr inbounds %struct.cloudabi_sys_thread_exit_args, %struct.cloudabi_sys_thread_exit_args* %977, i32 0, i32 0
  %979 = load i32, i32* %978, align 4
  %980 = load i32*, i32** %9, align 8
  %981 = getelementptr inbounds i32, i32* %980, i64 1
  store i32 %979, i32* %981, align 4
  %982 = load i32*, i32** %8, align 8
  store i32 2, i32* %982, align 4
  br label %987

983:                                              ; preds = %4
  %984 = load i32*, i32** %8, align 8
  store i32 0, i32* %984, align 4
  br label %987

985:                                              ; preds = %4
  %986 = load i32*, i32** %8, align 8
  store i32 0, i32* %986, align 4
  br label %987

987:                                              ; preds = %985, %983, %968, %958, %944, %923, %902, %887, %878, %876, %867, %836, %815, %800, %780, %760, %725, %705, %690, %665, %634, %603, %577, %557, %542, %506, %475, %450, %419, %383, %358, %339, %315, %295, %286, %266, %251, %232, %218, %198, %173, %148, %139, %130, %121, %112, %103, %83, %69, %60
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

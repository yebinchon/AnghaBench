; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_fs.c_bdb_write_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_fs.c_bdb_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32, i64, i32 }

@BDB_CONFIG_FILE = common dso_local global i32 0, align 4
@bdb_write_config.dbconfig_contents = internal constant [1842 x i8] c"# This is the configuration file for the Berkeley DB environment\0A# used by your Subversion repository.\0A# You must run 'svnadmin recover' whenever you modify this file,\0A# for your changes to take effect.\0A\0A### Lock subsystem\0A#\0A# Make sure you read the documentation at:\0A#\0A#   http://docs.oracle.com/cd/E17076_02/html/programmer_reference/lock_max.html\0A#\0A# before tweaking these values.\0A#\0Aset_lk_max_locks   2000\0Aset_lk_max_lockers 2000\0Aset_lk_max_objects 2000\0A\0A### Log file subsystem\0A#\0A# Make sure you read the documentation at:\0A#\0A#   http://docs.oracle.com/cd/E17076_02/html/api_reference/C/envset_lg_bsize.html\0A#   http://docs.oracle.com/cd/E17076_02/html/api_reference/C/envset_lg_max.html\0A#   http://docs.oracle.com/cd/E17076_02/html/programmer_reference/log_limits.html\0A#\0A# Increase the size of the in-memory log buffer from the default\0A# of 32 Kbytes to 256 Kbytes.  Decrease the log file size from\0A# 10 Mbytes to 1 Mbyte.  This will help reduce the amount of disk\0A# space required for hot backups.  The size of the log file must be\0A# at least four times the size of the in-memory log buffer.\0A#\0A# Note: Decreasing the in-memory buffer size below 256 Kbytes will hurt\0A# hurt commit performance. For details, see:\0A#\0A#   http://svn.haxx.se/dev/archive-2002-02/0141.shtml\0A#\0Aset_lg_bsize     262144\0Aset_lg_max      1048576\0A#\0A# If you see \22log region out of memory\22 errors, bump lg_regionmax.\0A# For more information, see:\0A#\0A#   http://docs.oracle.com/cd/E17076_02/html/programmer_reference/log_config.html\0A#   http://svn.haxx.se/users/archive-2004-10/1000.shtml\0A#\0Aset_lg_regionmax 131072\0A#\0A# The default cache size in BDB is only 256k. As explained in\0A# http://svn.haxx.se/dev/archive-2004-12/0368.shtml, this is too\0A# small for most applications. Bump this number if \22db_stat -m\22\0A# shows too many cache misses.\0A#\0Aset_cachesize    0 1048576 1\0A\00", align 16
@bdb_write_config.dbconfig_options = internal constant [2 x %struct.anon] [%struct.anon { i32 4, i32 0, i8* inttoptr (i64 128 to i8*), i8* getelementptr inbounds ([221 x i8], [221 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0) }, %struct.anon { i32 4, i32 2, i8* inttoptr (i64 129 to i8*), i8* getelementptr inbounds ([233 x i8], [233 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [221 x i8] c"#\0A# Disable fsync of log files on transaction commit. Read the\0A# documentation about DB_TXN_NOSYNC at:\0A#\0A#   http://docs.oracle.com/cd/E17076_02/html/programmer_reference/log_config.html\0A#\0A# [requires Berkeley DB 4.0]\0A#\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"#set_flags DB_TXN_NOSYNC\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"set_flags DB_TXN_NOSYNC\0A\00", align 1
@.str.3 = private unnamed_addr constant [233 x i8] c"#\0A# Enable automatic removal of unused transaction log files.\0A# Read the documentation about DB_LOG_AUTOREMOVE at:\0A#\0A#   http://docs.oracle.com/cd/E17076_02/html/programmer_reference/log_config.html\0A#\0A# [requires Berkeley DB 4.2]\0A#\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"#set_flags DB_LOG_AUTOREMOVE\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"set_flags DB_LOG_AUTOREMOVE\0A\00", align 1
@bdb_write_config.dbconfig_options_length = internal constant i32 2, align 4
@APR_WRITE = common dso_local global i32 0, align 4
@APR_CREATE = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@DB_VERSION_MAJOR = common dso_local global i32 0, align 4
@DB_VERSION_MINOR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*)* @bdb_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bdb_write_config(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @BDB_CONFIG_FILE, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i8* @svn_dirent_join(i32 %10, i32 %11, i32 %14)
  store i8* %15, i8** %3, align 8
  store i32* null, i32** %4, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* @APR_WRITE, align 4
  %18 = load i32, i32* @APR_CREATE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @APR_OS_DEFAULT, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @svn_io_file_open(i32** %4, i8* %16, i32 %19, i32 %20, i32 %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @svn_io_file_write_full(i32* %26, i8* getelementptr inbounds ([1842 x i8], [1842 x i8]* @bdb_write_config.dbconfig_contents, i64 0, i64 0), i32 1841, i32* null, i32 %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %120, %1
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %123

35:                                               ; preds = %32
  store i8* null, i8** %6, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @bdb_write_config.dbconfig_options, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.anon, %struct.anon* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @svn_hash_gets(i64 %43, i8* %48)
  store i8* %49, i8** %6, align 8
  br label %50

50:                                               ; preds = %40, %35
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @bdb_write_config.dbconfig_options, i64 0, i64 %53
  %55 = getelementptr inbounds %struct.anon, %struct.anon* %54, i32 0, i32 3
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @bdb_write_config.dbconfig_options, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %59, i32 0, i32 3
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @svn_io_file_write_full(i32* %51, i8* %56, i32 %62, i32* null, i32 %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load i32, i32* @DB_VERSION_MAJOR, align 4
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @bdb_write_config.dbconfig_options, i64 0, i64 %70
  %72 = getelementptr inbounds %struct.anon, %struct.anon* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %68, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %50
  %76 = load i32, i32* @DB_VERSION_MINOR, align 4
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @bdb_write_config.dbconfig_options, i64 0, i64 %78
  %80 = getelementptr inbounds %struct.anon, %struct.anon* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp sge i32 %76, %81
  br i1 %82, label %91, label %83

83:                                               ; preds = %75, %50
  %84 = load i32, i32* @DB_VERSION_MAJOR, align 4
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @bdb_write_config.dbconfig_options, i64 0, i64 %86
  %88 = getelementptr inbounds %struct.anon, %struct.anon* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp sgt i32 %84, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %83, %75
  %92 = load i8*, i8** %6, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %104

94:                                               ; preds = %91
  %95 = load i8*, i8** %6, align 8
  %96 = call i64 @strcmp(i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @bdb_write_config.dbconfig_options, i64 0, i64 %100
  %102 = getelementptr inbounds %struct.anon, %struct.anon* %101, i32 0, i32 5
  %103 = load i8*, i8** %102, align 8
  store i8* %103, i8** %7, align 8
  br label %110

104:                                              ; preds = %94, %91, %83
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @bdb_write_config.dbconfig_options, i64 0, i64 %106
  %108 = getelementptr inbounds %struct.anon, %struct.anon* %107, i32 0, i32 4
  %109 = load i8*, i8** %108, align 8
  store i8* %109, i8** %7, align 8
  br label %110

110:                                              ; preds = %104, %98
  %111 = load i32*, i32** %4, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = call i32 @strlen(i8* %113)
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @svn_io_file_write_full(i32* %111, i8* %112, i32 %114, i32* null, i32 %117)
  %119 = call i32 @SVN_ERR(i32 %118)
  br label %120

120:                                              ; preds = %110
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  br label %32

123:                                              ; preds = %32
  %124 = load i32*, i32** %4, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32* @svn_io_file_close(i32* %124, i32 %127)
  ret i32* %128
}

declare dso_local i8* @svn_dirent_join(i32, i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_open(i32**, i8*, i32, i32, i32) #1

declare dso_local i32 @svn_io_file_write_full(i32*, i8*, i32, i32*, i32) #1

declare dso_local i8* @svn_hash_gets(i64, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @svn_io_file_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

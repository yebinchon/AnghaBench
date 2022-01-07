; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_reps-strings.c_txn_body_write_close_rep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_reps-strings.c_txn_body_write_close_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.rep_write_baton = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_8__*)* @txn_body_write_close_rep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @txn_body_write_close_rep(i8* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.rep_write_baton*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.rep_write_baton*
  store %struct.rep_write_baton* %8, %struct.rep_write_baton** %5, align 8
  %9 = load %struct.rep_write_baton*, %struct.rep_write_baton** %5, align 8
  %10 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.rep_write_baton*, %struct.rep_write_baton** %5, align 8
  %13 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @svn_fs_bdb__read_rep(%struct.TYPE_9__** %6, i32 %11, i32 %14, %struct.TYPE_8__* %15, i32 %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load %struct.rep_write_baton*, %struct.rep_write_baton** %5, align 8
  %22 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @svn_checksum_dup(i32 %23, i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.rep_write_baton*, %struct.rep_write_baton** %5, align 8
  %31 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @svn_checksum_dup(i32 %32, i32 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.rep_write_baton*, %struct.rep_write_baton** %5, align 8
  %40 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.rep_write_baton*, %struct.rep_write_baton** %5, align 8
  %43 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32* @svn_fs_bdb__write_rep(i32 %41, i32 %44, %struct.TYPE_9__* %45, %struct.TYPE_8__* %46, i32 %49)
  ret i32* %50
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_bdb__read_rep(%struct.TYPE_9__**, i32, i32, %struct.TYPE_8__*, i32) #1

declare dso_local i8* @svn_checksum_dup(i32, i32) #1

declare dso_local i32* @svn_fs_bdb__write_rep(i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

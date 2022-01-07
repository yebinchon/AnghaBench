; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_reps-strings.c_rep_read_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_reps-strings.c_rep_read_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rep_read_baton = type { i32, i32, i64 }
%struct.read_rep_args = type { i8*, i32*, %struct.rep_read_baton* }

@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*)* @rep_read_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rep_read_contents(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rep_read_baton*, align 8
  %8 = alloca %struct.read_rep_args, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.rep_read_baton*
  store %struct.rep_read_baton* %10, %struct.rep_read_baton** %7, align 8
  %11 = load %struct.rep_read_baton*, %struct.rep_read_baton** %7, align 8
  %12 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @svn_pool_clear(i32 %13)
  %15 = load %struct.rep_read_baton*, %struct.rep_read_baton** %7, align 8
  %16 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %8, i32 0, i32 2
  store %struct.rep_read_baton* %15, %struct.rep_read_baton** %16, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %8, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %8, i32 0, i32 1
  store i32* %19, i32** %20, align 8
  %21 = load %struct.rep_read_baton*, %struct.rep_read_baton** %7, align 8
  %22 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load %struct.rep_read_baton*, %struct.rep_read_baton** %7, align 8
  %27 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @txn_body_read_rep(%struct.read_rep_args* %8, i64 %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  br label %41

31:                                               ; preds = %3
  %32 = load %struct.rep_read_baton*, %struct.rep_read_baton** %7, align 8
  %33 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @TRUE, align 4
  %36 = load %struct.rep_read_baton*, %struct.rep_read_baton** %7, align 8
  %37 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @svn_fs_base__retry_txn(i32 %34, i32 (%struct.read_rep_args*, i64)* @txn_body_read_rep, %struct.read_rep_args* %8, i32 %35, i32 %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  br label %41

41:                                               ; preds = %31, %25
  %42 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %42
}

declare dso_local i32 @svn_pool_clear(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @txn_body_read_rep(%struct.read_rep_args*, i64) #1

declare dso_local i32 @svn_fs_base__retry_txn(i32, i32 (%struct.read_rep_args*, i64)*, %struct.read_rep_args*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

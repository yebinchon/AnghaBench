; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_reps-strings.c_rep_write_close_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_reps-strings.c_rep_write_close_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rep_write_baton = type { i32, i32, i64, i64, i32, i32, i32, i32 }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @rep_write_close_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rep_write_close_contents(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rep_write_baton*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.rep_write_baton*
  store %struct.rep_write_baton* %6, %struct.rep_write_baton** %4, align 8
  %7 = load %struct.rep_write_baton*, %struct.rep_write_baton** %4, align 8
  %8 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %35, label %11

11:                                               ; preds = %1
  %12 = load %struct.rep_write_baton*, %struct.rep_write_baton** %4, align 8
  %13 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %12, i32 0, i32 7
  %14 = load %struct.rep_write_baton*, %struct.rep_write_baton** %4, align 8
  %15 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.rep_write_baton*, %struct.rep_write_baton** %4, align 8
  %18 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @svn_checksum_final(i32* %13, i32 %16, i32 %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  %22 = load %struct.rep_write_baton*, %struct.rep_write_baton** %4, align 8
  %23 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %22, i32 0, i32 5
  %24 = load %struct.rep_write_baton*, %struct.rep_write_baton** %4, align 8
  %25 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.rep_write_baton*, %struct.rep_write_baton** %4, align 8
  %28 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @svn_checksum_final(i32* %23, i32 %26, i32 %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i64, i64* @TRUE, align 8
  %33 = load %struct.rep_write_baton*, %struct.rep_write_baton** %4, align 8
  %34 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %33, i32 0, i32 3
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %11, %1
  %36 = load %struct.rep_write_baton*, %struct.rep_write_baton** %4, align 8
  %37 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.rep_write_baton*, %struct.rep_write_baton** %4, align 8
  %42 = load %struct.rep_write_baton*, %struct.rep_write_baton** %4, align 8
  %43 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i32* @txn_body_write_close_rep(%struct.rep_write_baton* %41, i64 %44)
  store i32* %45, i32** %2, align 8
  br label %56

46:                                               ; preds = %35
  %47 = load %struct.rep_write_baton*, %struct.rep_write_baton** %4, align 8
  %48 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rep_write_baton*, %struct.rep_write_baton** %4, align 8
  %51 = load i32, i32* @FALSE, align 4
  %52 = load %struct.rep_write_baton*, %struct.rep_write_baton** %4, align 8
  %53 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32* @svn_fs_base__retry_txn(i32 %49, i32* (%struct.rep_write_baton*, i64)* @txn_body_write_close_rep, %struct.rep_write_baton* %50, i32 %51, i32 %54)
  store i32* %55, i32** %2, align 8
  br label %56

56:                                               ; preds = %46, %40
  %57 = load i32*, i32** %2, align 8
  ret i32* %57
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_checksum_final(i32*, i32, i32) #1

declare dso_local i32* @txn_body_write_close_rep(%struct.rep_write_baton*, i64) #1

declare dso_local i32* @svn_fs_base__retry_txn(i32, i32* (%struct.rep_write_baton*, i64)*, %struct.rep_write_baton*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

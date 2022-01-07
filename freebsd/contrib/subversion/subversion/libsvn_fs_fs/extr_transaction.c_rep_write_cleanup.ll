; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_rep_write_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_rep_write_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rep_write_baton = type { i32, i32, %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@APR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @rep_write_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rep_write_cleanup(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rep_write_baton*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.rep_write_baton*
  store %struct.rep_write_baton* %8, %struct.rep_write_baton** %4, align 8
  %9 = load %struct.rep_write_baton*, %struct.rep_write_baton** %4, align 8
  %10 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.rep_write_baton*, %struct.rep_write_baton** %4, align 8
  %13 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.rep_write_baton*, %struct.rep_write_baton** %4, align 8
  %16 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.TYPE_8__* @svn_io_file_trunc(i32 %11, i32 %14, i32 %17)
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %5, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = load %struct.rep_write_baton*, %struct.rep_write_baton** %4, align 8
  %21 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rep_write_baton*, %struct.rep_write_baton** %4, align 8
  %24 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @svn_io_file_close(i32 %22, i32 %25)
  %27 = call %struct.TYPE_8__* @svn_error_compose_create(%struct.TYPE_8__* %19, i32 %26)
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %5, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = load %struct.rep_write_baton*, %struct.rep_write_baton** %4, align 8
  %30 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.rep_write_baton*, %struct.rep_write_baton** %4, align 8
  %33 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %32, i32 0, i32 2
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @svn_fs_fs__id_txn_id(i32 %36)
  %38 = load %struct.rep_write_baton*, %struct.rep_write_baton** %4, align 8
  %39 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rep_write_baton*, %struct.rep_write_baton** %4, align 8
  %42 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @unlock_proto_rev(i32 %31, i32 %37, i32 %40, i32 %43)
  %45 = call %struct.TYPE_8__* @svn_error_compose_create(%struct.TYPE_8__* %28, i32 %44)
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %5, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = icmp ne %struct.TYPE_8__* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %6, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = call i32 @svn_error_clear(%struct.TYPE_8__* %52)
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %57

55:                                               ; preds = %1
  %56 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %48
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.TYPE_8__* @svn_io_file_trunc(i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @svn_error_compose_create(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @svn_io_file_close(i32, i32) #1

declare dso_local i32 @unlock_proto_rev(i32, i32, i32, i32) #1

declare dso_local i32 @svn_fs_fs__id_txn_id(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

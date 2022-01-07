; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_uuid.c_svn_fs_base__set_uuid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_uuid.c_svn_fs_base__set_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.set_uuid_args = type { i32, i8* }

@TRUE = common dso_local global i32 0, align 4
@txn_body_set_uuid = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_base__set_uuid(%struct.TYPE_5__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.set_uuid_args, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = load i32, i32* @TRUE, align 4
  %10 = call i32 @svn_fs__check_fs(%struct.TYPE_5__* %8, i32 %9)
  %11 = call i32 @SVN_ERR(i32 %10)
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = call i8* @svn_uuid_generate(i32* %15)
  store i8* %16, i8** %5, align 8
  br label %17

17:                                               ; preds = %14, %3
  %18 = getelementptr inbounds %struct.set_uuid_args, %struct.set_uuid_args* %7, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds %struct.set_uuid_args, %struct.set_uuid_args* %7, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = load i32, i32* @txn_body_set_uuid, align 4
  %23 = load i32, i32* @TRUE, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @svn_fs_base__retry_txn(%struct.TYPE_5__* %21, i32 %22, %struct.set_uuid_args* %7, i32 %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %17
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @apr_pstrdup(i32 %32, i8* %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %29, %17
  %38 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %38
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs__check_fs(%struct.TYPE_5__*, i32) #1

declare dso_local i8* @svn_uuid_generate(i32*) #1

declare dso_local i32 @svn_fs_base__retry_txn(%struct.TYPE_5__*, i32, %struct.set_uuid_args*, i32, i32*) #1

declare dso_local i32 @apr_pstrdup(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

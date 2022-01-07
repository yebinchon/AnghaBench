; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_util.c_svn_cl__cleanup_log_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_util.c_svn_cl__cleanup_log_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.log_msg_baton = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"   '%s'\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Your commit message was left in a temporary file:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @svn_cl__cleanup_log_msg(i8* %0, %struct.TYPE_8__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.log_msg_baton*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.log_msg_baton*
  store %struct.log_msg_baton* %11, %struct.log_msg_baton** %8, align 8
  %12 = load %struct.log_msg_baton*, %struct.log_msg_baton** %8, align 8
  %13 = icmp ne %struct.log_msg_baton* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.log_msg_baton*, %struct.log_msg_baton** %8, align 8
  %16 = getelementptr inbounds %struct.log_msg_baton, %struct.log_msg_baton* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14, %3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %4, align 8
  br label %53

21:                                               ; preds = %14
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = load %struct.log_msg_baton*, %struct.log_msg_baton** %8, align 8
  %26 = getelementptr inbounds %struct.log_msg_baton, %struct.log_msg_baton* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @FALSE, align 4
  %29 = load %struct.log_msg_baton*, %struct.log_msg_baton** %8, align 8
  %30 = getelementptr inbounds %struct.log_msg_baton, %struct.log_msg_baton* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.TYPE_8__* @svn_io_remove_file2(i32 %27, i32 %28, i32 %31)
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %4, align 8
  br label %53

33:                                               ; preds = %21
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.log_msg_baton*, %struct.log_msg_baton** %8, align 8
  %39 = getelementptr inbounds %struct.log_msg_baton, %struct.log_msg_baton* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @svn_dirent_local_style(i32 %40, i32* %41)
  %43 = call %struct.TYPE_8__* @svn_error_createf(i32 %36, i32* null, i32 %37, i32 %42)
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %9, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %49 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %50 = call i32 @svn_error_create(i32 %47, %struct.TYPE_8__* %48, i32 %49)
  %51 = call i32 @svn_error_compose(%struct.TYPE_8__* %44, i32 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %4, align 8
  br label %53

53:                                               ; preds = %33, %24, %19
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %54
}

declare dso_local %struct.TYPE_8__* @svn_io_remove_file2(i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i32, i32*) #1

declare dso_local i32 @svn_error_compose(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @svn_error_create(i32, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

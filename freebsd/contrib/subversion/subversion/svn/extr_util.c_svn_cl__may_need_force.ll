; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_util.c_svn_cl__may_need_force.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_util.c_svn_cl__may_need_force.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@SVN_ERR_UNVERSIONED_RESOURCE = common dso_local global i64 0, align 8
@SVN_ERR_CLIENT_MODIFIED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [75 x i8] c"Use --force to override this restriction (local modifications may be lost)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @svn_cl__may_need_force(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %4 = icmp ne %struct.TYPE_8__* %3, null
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SVN_ERR_UNVERSIONED_RESOURCE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %5
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SVN_ERR_CLIENT_MODIFIED, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11, %5
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = call i32 @_(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  %20 = call %struct.TYPE_8__* @svn_error_quick_wrap(%struct.TYPE_8__* %18, i32 %19)
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %2, align 8
  br label %21

21:                                               ; preds = %17, %11, %1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = call %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__* %22)
  ret %struct.TYPE_8__* %23
}

declare dso_local %struct.TYPE_8__* @svn_error_quick_wrap(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

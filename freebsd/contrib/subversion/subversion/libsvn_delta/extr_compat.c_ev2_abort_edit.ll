; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_ev2_abort_edit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_ev2_abort_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ev2_edit_baton = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @ev2_abort_edit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ev2_abort_edit(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ev2_edit_baton*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ev2_edit_baton*
  store %struct.ev2_edit_baton* %8, %struct.ev2_edit_baton** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @run_ev2_actions(i8* %9, i32* %10)
  %12 = call i32 @SVN_ERR(i32 %11)
  %13 = load %struct.ev2_edit_baton*, %struct.ev2_edit_baton** %6, align 8
  %14 = getelementptr inbounds %struct.ev2_edit_baton, %struct.ev2_edit_baton* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.ev2_edit_baton*, %struct.ev2_edit_baton** %6, align 8
  %19 = getelementptr inbounds %struct.ev2_edit_baton, %struct.ev2_edit_baton* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @svn_editor_abort(i32 %20)
  %22 = call i32* @svn_error_trace(i32 %21)
  store i32* %22, i32** %3, align 8
  br label %25

23:                                               ; preds = %2
  %24 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %24, i32** %3, align 8
  br label %25

25:                                               ; preds = %23, %17
  %26 = load i32*, i32** %3, align 8
  ret i32* %26
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @run_ev2_actions(i8*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_editor_abort(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

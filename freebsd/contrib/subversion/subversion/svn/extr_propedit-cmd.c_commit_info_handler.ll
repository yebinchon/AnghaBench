; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_propedit-cmd.c_commit_info_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_propedit-cmd.c_commit_info_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_info_baton = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Set new value for property '%s' on '%s'\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32*)* @commit_info_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @commit_info_handler(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.commit_info_baton*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.commit_info_baton*
  store %struct.commit_info_baton* %9, %struct.commit_info_baton** %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.commit_info_baton*, %struct.commit_info_baton** %7, align 8
  %13 = getelementptr inbounds %struct.commit_info_baton, %struct.commit_info_baton* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.commit_info_baton*, %struct.commit_info_baton** %7, align 8
  %16 = getelementptr inbounds %struct.commit_info_baton, %struct.commit_info_baton* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @svn_cmdline_printf(i32* %10, i32 %11, i32 %14, i32 %17)
  %19 = call i32 @SVN_ERR(i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @svn_cl__print_commit_info(i32* %20, i32* null, i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %24
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cmdline_printf(i32*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_cl__print_commit_info(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

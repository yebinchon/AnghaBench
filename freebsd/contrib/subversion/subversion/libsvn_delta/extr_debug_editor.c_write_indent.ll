; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_debug_editor.c_write_indent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_debug_editor.c_write_indent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.edit_baton*, i32*)* @write_indent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @write_indent(%struct.edit_baton* %0, i32* %1) #0 {
  %3 = alloca %struct.edit_baton*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.edit_baton* %0, %struct.edit_baton** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.edit_baton*, %struct.edit_baton** %3, align 8
  %7 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.edit_baton*, %struct.edit_baton** %3, align 8
  %10 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @svn_stream_puts(i32 %8, i8* %11)
  %13 = call i32 @SVN_ERR(i32 %12)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %26, %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.edit_baton*, %struct.edit_baton** %3, align 8
  %17 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load %struct.edit_baton*, %struct.edit_baton** %3, align 8
  %22 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @svn_stream_puts(i32 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 @SVN_ERR(i32 %24)
  br label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %14

29:                                               ; preds = %14
  %30 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %30
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_puts(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

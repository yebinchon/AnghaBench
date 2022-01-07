; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_debug_editor.c_change_file_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_debug_editor.c_change_file_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.file_baton = type { i32, %struct.edit_baton* }
%struct.edit_baton = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 (i32, i8*, %struct.TYPE_6__*, i32*)* }

@.str = private unnamed_addr constant [29 x i8] c"change_file_prop : %s -> %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"<deleted>\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, %struct.TYPE_6__*, i32*)* @change_file_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @change_file_prop(i8* %0, i8* %1, %struct.TYPE_6__* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.file_baton*, align 8
  %10 = alloca %struct.edit_baton*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.file_baton*
  store %struct.file_baton* %12, %struct.file_baton** %9, align 8
  %13 = load %struct.file_baton*, %struct.file_baton** %9, align 8
  %14 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %13, i32 0, i32 1
  %15 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  store %struct.edit_baton* %15, %struct.edit_baton** %10, align 8
  %16 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @write_indent(%struct.edit_baton* %16, i32* %17)
  %19 = call i32 @SVN_ERR(i32 %18)
  %20 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %21 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  br label %32

31:                                               ; preds = %4
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i8* [ %30, %27 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %31 ]
  %34 = call i32 @svn_stream_printf(i32 %22, i32* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %37 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32 (i32, i8*, %struct.TYPE_6__*, i32*)*, i32 (i32, i8*, %struct.TYPE_6__*, i32*)** %39, align 8
  %41 = load %struct.file_baton*, %struct.file_baton** %9, align 8
  %42 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 %40(i32 %43, i8* %44, %struct.TYPE_6__* %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %49
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @write_indent(%struct.edit_baton*, i32*) #1

declare dso_local i32 @svn_stream_printf(i32, i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
